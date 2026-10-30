#!/usr/bin/env python3
"""Generate a read-only, offline Code Atlas for a Godot GDScript repository.

No runtime dependencies beyond Python 3.10. This is a static reference graph,
NOT a call graph. Edges include source line evidence and interpretation labels.
"""
from __future__ import annotations

import argparse
from collections import Counter
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import subprocess

SOURCE_EXTENSIONS = {".gd", ".tscn", ".tres", ".gdshader"}
IGNORED_DIRS = {".git", ".godot", ".venv", "venv", "node_modules", "__pycache__"}
CLASS_DECLARATION = re.compile(r"^\s*class_name\s+([A-Za-z_]\w*)", re.M)
SYMBOL = re.compile(r"\b[A-Z][A-Za-z_0-9]*\b")
RESOURCE = re.compile(r'res://([^"\'\s\)\]\}]+)')
DECLARED_PARENT = re.compile(r"^\s*extends\s+([A-Za-z_]\w*)\b")
CONSTRUCTOR = re.compile(r"\b([A-Za-z_]\w*)\.new\s*\(")


def git(root: Path, *args: str) -> str:
    try:
        result = subprocess.run(
            ["git", "-C", str(root), *args], check=True, capture_output=True, text=True
        )
        return result.stdout.strip()
    except (OSError, subprocess.CalledProcessError):
        return ""


def repo_name(root: Path, override: str | None) -> str:
    if override:
        return override
    url = git(root, "remote", "get-url", "origin")
    match = re.search(r"github\.com[:/]([^/\s]+/[^/\s]+?)(?:\.git)?$", url)
    return match.group(1) if match else ""


def group_for(path: str) -> str:
    parts = path.split("/")
    if len(parts) == 1:
        return "root"
    if parts[0] in {"game", "content", "scenes", "prototypes"} and len(parts) >= 3:
        return "/".join(parts[:2])
    return parts[0]


def collect(root: Path, repository: str, branch: str, commit: str) -> dict:
    paths = sorted(
        p for p in root.rglob("*")
        if p.is_file()
        and p.suffix in SOURCE_EXTENSIONS
        and not (set(p.relative_to(root).parts) & IGNORED_DIRS)
    )
    texts: dict[str, str] = {}
    class_to_file: dict[str, str] = {}
    for path in paths:
        name = path.relative_to(root).as_posix()
        content = path.read_text(encoding="utf-8-sig", errors="replace")
        texts[name] = content
        if path.suffix == ".gd":
            match = CLASS_DECLARATION.search(content)
            if match:
                class_to_file.setdefault(match.group(1), name)

    nodes = []
    for name, source in texts.items():
        suffix = Path(name).suffix.lstrip(".")
        classes = [cls for cls, filename in class_to_file.items() if filename == name]
        nodes.append({
            "id": name,
            "name": Path(name).name,
            "path": name,
            "system": group_for(name),
            "kind": suffix,
            "class_name": classes[0] if classes else "",
            "lines": source.count("\n") + 1,
            "url": (
                "https://github.com/" + repository + "/blob/" + branch + "/" + name
                if repository else ""
            ),
        })

    # Edges are static source evidence, never an assertion that execution happened.
    edge_map: dict[tuple[str, str, str], dict] = {}

    def connect(source: str, target: str, kind: str, line_no: int, excerpt: str) -> None:
        if source == target or target not in texts:
            return
        key = (source, target, kind)
        if key in edge_map:
            edge_map[key]["hits"] += 1
            return
        edge_map[key] = {
            "from": source, "to": target, "kind": kind, "line": line_no,
            "excerpt": excerpt.strip()[:180], "hits": 1,
        }

    for filename, source in texts.items():
        for number, full_line in enumerate(source.splitlines(), 1):
            stripped = full_line.strip()
            if not stripped or stripped.startswith("#") or stripped.startswith(";"):
                continue

            # res:// references in scenes, scripts and authored resources.
            for matched in RESOURCE.finditer(full_line):
                res_path = matched.group(1).split("::", 1)[0].rstrip(",")
                if res_path in texts:
                    connect(filename, res_path, "resource-path", number, full_line)

            if not filename.endswith(".gd"):
                continue
            # Keep quoted GDScript content out of bare identifier heuristics where
            # feasible. Exact res:// paths above are examined separately.
            code = full_line.split("#", 1)[0]
            parent = DECLARED_PARENT.match(code)
            if parent and parent.group(1) in class_to_file:
                connect(filename, class_to_file[parent.group(1)], "extends", number, full_line)

            constructed = {m.group(1) for m in CONSTRUCTOR.finditer(code)}
            for symbol in constructed:
                if symbol in class_to_file:
                    connect(filename, class_to_file[symbol], "constructs", number, full_line)

            if CLASS_DECLARATION.match(code):
                continue
            # Non-constructor mentions are SYMBOL references, NOT proven function
            # calls or runtime dependencies. This intentionally overapproximates.
            for symbol in set(SYMBOL.findall(code)):
                if symbol in class_to_file and symbol not in constructed:
                    if not (parent and symbol == parent.group(1)):
                        connect(filename, class_to_file[symbol], "symbol-reference", number, full_line)

    edges = sorted(edge_map.values(), key=lambda e: (e["from"], e["to"], e["kind"]))
    systems = sorted(set(node["system"] for node in nodes))
    counts = Counter(node["kind"] for node in nodes)
    return {
        "schema": 1,
        "repository": repository,
        "branch": branch,
        "commit": commit,
        "generated_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "stats": {
            "indexed_files": len(nodes), "gd": counts["gd"],
            "scenes": counts["tscn"], "resources": counts["tres"],
            "systems": len(systems), "references": len(edges),
        },
        "systems": systems,
        "nodes": nodes,
        "edges": edges,
        "limitations": [
            "Static analysis only; it does not record actual runtime calls.",
            "Symbol references may include type mentions and false positives.",
            "Dynamic calls, string-based lookups and externally loaded resources may be missed.",
            "Only code and resource files in the selected checkout are indexed.",
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--out", type=Path, default=Path("docs/code_atlas.html"))
    parser.add_argument("--json", type=Path, help="Optionally write a machine-readable graph")
    parser.add_argument("--repo", help="GitHub owner/repo (normally inferred from origin)")
    parser.add_argument("--ref", help="Git ref for hyperlinks (defaults to exact HEAD SHA)")
    args = parser.parse_args()
    root = args.root.resolve()
    template = Path(__file__).with_name("code_atlas_human_viewer.html")
    if not template.is_file():
        parser.error("Viewer template is missing: " + str(template))
    repo = repo_name(root, args.repo)
    commit = git(root, "rev-parse", "HEAD")
    branch = args.ref or commit or git(root, "branch", "--show-current") or "main"
    graph = collect(root, repo, branch, commit)
    serialized = json.dumps(graph, ensure_ascii=False, separators=(",", ":"))
    # Prevent accidental HTML script termination from source file names.
    serialized = serialized.replace("<", "\\u003c").replace(">", "\\u003e")
    html = template.read_text(encoding="utf-8")
    marker = "/*__ATLAS_DATA__*/"
    if html.count(marker) != 1:
        parser.error("HTML template must contain exactly one data marker")
    html = html.replace(marker, "window.CODE_ATLAS = " + serialized + ";")
    out = args.out if args.out.is_absolute() else root / args.out
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(html, encoding="utf-8")
    if args.json:
        json_path = args.json if args.json.is_absolute() else root / args.json
        json_path.parent.mkdir(parents=True, exist_ok=True)
        json_path.write_text(json.dumps(graph, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({
        "html": str(out),
        "files": graph["stats"]["indexed_files"],
        "scripts": graph["stats"]["gd"],
        "references": graph["stats"]["references"],
        "systems": graph["stats"]["systems"],
        "ref": branch,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
