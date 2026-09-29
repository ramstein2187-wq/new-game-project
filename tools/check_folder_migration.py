#!/usr/bin/env python3
"""Audit M030 against a Git base: only recorded moves/path substitutions are allowed.

Run from either Windows Git or WSL with --git-dir <shared repository .git>.
The three named current documentation files may add structure/status prose;
all other pre-existing tracked files are compared, including historical docs,
scene properties, script UIDs, datasets, algorithm source and test fixtures.
"""
import argparse
import json
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]
MOVE_MAP = ROOT / "docs/reviews/2026-09-29-folder-moves.json"
DOC_ADDITIONS = {"README.md", "docs/ROADMAP.md", "docs/MILESTONES.md"}
TEXT_SUFFIXES = {".gd", ".uid", ".tscn", ".tres", ".godot", ".md", ".json", ".py", ".sh", ".yml"}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--base", required=True)
    parser.add_argument("--git-dir")
    args = parser.parse_args()
    git = ["git"] + ([f"--git-dir={args.git_dir}"] if args.git_dir else ["-C", str(ROOT)])
    names = subprocess.check_output(git + ["ls-tree", "-rz", "--name-only", args.base]).decode().rstrip("\0").split("\0")
    moves = json.loads(MOVE_MAP.read_text(encoding="utf-8"))
    assert set(moves) <= set(names), "Move map contains an unknown baseline file"
    assert len(set(moves.values())) == len(moves), "Colliding move destinations"
    substitutions = dict(moves)
    substitutions.update({
        "time_cost/actions/": "game/actions/", "time_cost/actors/": "game/actors/",
        "time_cost/ai/": "game/ai/", "time_cost/combat/": "game/combat/",
        "time_cost/simulation/": "game/simulation/", "time_cost/": "game/",
        "procgen/": "worldgen/", "micro_ap/": "prototypes/micro_ap/",
    })
    encoded = {a.encode(): b.encode() for a, b in substitutions.items()}
    pattern = re.compile(b"|".join(re.escape(key) for key in sorted(encoded, key=len, reverse=True)))
    failures, checked, uid_count, test_count = [], 0, 0, 0
    with subprocess.Popen(git + ["cat-file", "--batch"], stdin=subprocess.PIPE, stdout=subprocess.PIPE) as blobs:
        for name in names:
            blobs.stdin.write(f"{args.base}:{name}\n".encode())
            blobs.stdin.flush()
            header = blobs.stdout.readline().split()
            if len(header) != 3 or header[1] != b"blob":
                raise RuntimeError(f"Cannot read baseline blob: {name}")
            original = blobs.stdout.read(int(header[2]))
            assert blobs.stdout.read(1) == b"\n"
            target = ROOT / moves.get(name, name)
            if not target.is_file():
                failures.append(f"Missing preserved file: {name} -> {target}")
                continue
            if name in moves and (ROOT / name).exists():
                failures.append(f"Old path still exists: {name}")
            if name in DOC_ADDITIONS:
                continue
            actual = target.read_bytes()
            if target.suffix in TEXT_SUFFIXES:
                original = original.replace(b"\r\n", b"\n")
                actual = actual.replace(b"\r\n", b"\n")
                if not name.startswith("docs/") or name.startswith(("docs/specs/", "docs/wiki/", "docs/datasets/", "docs/decisions/")):
                    original = pattern.sub(lambda match: encoded[match.group()], original)
            if actual != original:
                failures.append(f"Change beyond approved paths: {name} -> {target.relative_to(ROOT)}")
            checked += 1
            uid_count += name.endswith(".gd.uid")
            test_count += name.startswith("tests/test_") and name.endswith(".gd")
        blobs.stdin.close()
        blobs.wait()
    if failures:
        raise SystemExit("\n".join(failures))
    print(f"PASS: {checked} existing files unchanged except paths; {len(moves)} moves, {uid_count} script UIDs, {test_count} unchanged test scripts")


if __name__ == "__main__":
    main()
