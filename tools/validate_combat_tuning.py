#!/usr/bin/env python3
"""Temporarily tune one authoritative file at a time, run Godot, restore in finally.

Run in an idle task checkout: this intentionally writes content and generated
JSON briefly. No tests or runtime source are rewritten. Uses only Python stdlib.
"""
import argparse
import json
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--godot", required=True, help="Godot executable (WSL or native path)")
    parser.add_argument("--project", default=str(ROOT), help="Project path as seen by Godot")
    args = parser.parse_args()
    generated = [ROOT / "docs/datasets" / name for name in
                 ("equipment.json", "monsters.json", "combat_content_manifest.json")]
    content = [ROOT / "content" / name for name in
               ("actors/boar.tres", "weapons/longsword.tres", "armor/iron_helmet.tres")]
    originals = {p: p.read_bytes() for p in content + generated}

    def godot(script: str, *parameters: str) -> None:
        command = [args.godot, "--headless", "--path", args.project, "--script", f"res://{script}"]
        if parameters:
            command += ["--", *parameters]
        result = subprocess.run(command, cwd=ROOT, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=180)
        print(result.stdout, end="", flush=True)
        if result.returncode or "SCRIPT ERROR" in result.stdout or "ERROR:" in result.stdout:
            raise RuntimeError(f"Godot validation failed: {script}")

    def tune(path: Path, field: str, delta: int) -> float:
        text = path.read_text(encoding="utf-8")
        pattern = rf"^{field} = ([-\d.]+)$"
        matches = list(re.finditer(pattern, text, re.MULTILINE))
        if len(matches) != 1:
            raise ValueError(f"Expected one {field} in {path}")
        old = matches[0].group(1)
        value = float(old) + delta
        literal = str(value) if "." in old else str(int(value))
        path.write_text(re.sub(pattern, f"{field} = {literal}", text, flags=re.MULTILINE), encoding="utf-8")
        print(f"TUNE {path.relative_to(ROOT)}: {field} {old} -> {literal}", flush=True)
        return value

    scenarios = [
        (content[0], [("max_hp", 7, "--boar-hp")]),
        (content[1], [("penetration", 7, "--longsword-penetration"), ("dice_size", 2, "--longsword-die-size")]),
        (content[2], [("armor", 13, "--helmet-armor")]),
    ]
    try:
        for path, fields in scenarios:
            parameters = []
            values = {}
            for field, delta, flag in fields:
                values[field] = tune(path, field, delta)
                parameters.append(f"{flag}={values[field]}")
            godot("tests/test_combat_content_source.gd", *parameters)
            # The unchanged complete test suite must tolerate these content edits.
            for test in sorted((ROOT / "tests").glob("test_*.gd")):
                if test.name != "test_combat_content_source.gd":
                    godot(test.relative_to(ROOT).as_posix())
            stale = subprocess.run([sys.executable, "tools/check_combat_datasets.py"], cwd=ROOT, capture_output=True)
            if stale.returncode == 0:
                raise RuntimeError("Freshness check failed to detect edited content")
            godot("tools/export_combat_datasets.gd")
            godot("tools/export_combat_datasets.gd", "--check")
            equipment = json.loads(generated[0].read_text(encoding="utf-8"))
            monsters = json.loads(generated[1].read_text(encoding="utf-8"))
            if path == content[0]:
                assert next(r for r in monsters["records"] if r["id"] == "boar")["hp"] == values["max_hp"]
            elif path == content[1]:
                weapon = next(r for r in equipment["weapons"] if r["id"] == "longsword")
                assert weapon["penetration"] == values["penetration"] and weapon["damage"]["size"] == values["dice_size"]
            else:
                assert next(r for r in equipment["armor"] if r["id"] == "iron_helmet")["armor"] == values["armor"]
            for saved_path, data in originals.items():
                saved_path.write_bytes(data)
        print("PASS: all three source tuning scenarios, complete suites and generated datasets", flush=True)
    finally:
        for path, data in originals.items():
            path.write_bytes(data)
        print("Restored source and generated files byte-for-byte", flush=True)


if __name__ == "__main__":
    main()
