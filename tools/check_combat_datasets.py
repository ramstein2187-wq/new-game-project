#!/usr/bin/env python3
"""Verify committed Godot-generated datasets without requiring Godot in Notion CI.

The headless exporter verifies exact semantic output locally. This lightweight
check verifies its source inventory and hashes and rejects stale/hand-edited files.
"""
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_text(encoding="utf-8").encode("utf-8")).hexdigest()


def check() -> None:
    manifest = json.loads((ROOT / "docs/datasets/combat_content_manifest.json").read_text(encoding="utf-8"))
    paths = []
    for name in json.loads((ROOT / "tools/combat_dataset_sources.json").read_text(encoding="utf-8")):
        path = ROOT / name
        if path.is_dir():
            paths.extend(p for p in path.rglob("*") if p.suffix in {".gd", ".tres"})
        else:
            paths.append(path)
    actual = {p.relative_to(ROOT).as_posix(): digest(p) for p in sorted(paths)}
    if actual != manifest["sources"]:
        raise ValueError("Combat content changed: regenerate with Godot --headless --path . --script res://tools/export_combat_datasets.gd")
    expected = {"docs/datasets/equipment.json", "docs/datasets/monsters.json"}
    if set(manifest["outputs"]) != expected:
        raise ValueError("Invalid generated combat dataset inventory")
    for name, checksum in manifest["outputs"].items():
        if digest(ROOT / name) != checksum:
            raise ValueError(f"Generated dataset edited or stale: {name}; run the Godot exporter")


if __name__ == "__main__":
    check()
    print("PASS: generated combat datasets match source and output fingerprints")
