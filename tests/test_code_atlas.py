#!/usr/bin/env python3
"""Focused regression tests for the read-only Code Atlas tool (stdlib only)."""
from __future__ import annotations

import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
SCANNER = ROOT / "tools" / "code_atlas.py"


def write(root: Path, name: str, data: str) -> None:
    path = root / name
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(data, encoding="utf-8")


class CodeAtlasTest(unittest.TestCase):
    def test_generated_graph_and_offline_page(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            write(root, "game/actor.gd", "class_name Actor\nextends RefCounted\n")
            write(root, "game/enemy.gd", "class_name Enemy\nextends Actor\n")
            write(root, "game/main.gd", (
                "class_name GameMain\nextends RefCounted\n"
                "var current: Actor\nvar enemy = Enemy.new()\n"
                "const EXTRA = preload(\"res://game/enemy.gd\")\n"
                "# Actor must not be counted from this comment.\n"
            ))
            write(root, "scenes/start.tscn", (
                '[gd_scene load_steps=2 format=3]\n'
                '[ext_resource type="Script" path="res://game/main.gd" id="1"]\n'
            ))
            write(root, "data/data.tres", '[gd_resource type="Resource"]\n')
            write(root, ".godot/cache/ignore.gd", "class_name Invisible\n")
            subprocess.run(
                [
                    sys.executable, str(SCANNER), "--root", str(root),
                    "--repo", "example/project", "--ref", "demo-branch",
                    "--out", "atlas.html", "--json", "atlas.json",
                ], check=True, capture_output=True, text=True,
            )
            atlas = json.loads((root / "atlas.json").read_text(encoding="utf-8"))
            page = (root / "atlas.html").read_text(encoding="utf-8")
            self.assertEqual(atlas["stats"]["gd"], 3)
            self.assertEqual(atlas["stats"]["scenes"], 1)
            self.assertEqual(atlas["stats"]["resources"], 1)
            self.assertEqual(atlas["stats"]["indexed_files"], 5)
            self.assertEqual(atlas["repository"], "example/project")
            self.assertEqual(atlas["branch"], "demo-branch")
            kinds = {(e["from"], e["to"], e["kind"]) for e in atlas["edges"]}
            self.assertIn(("game/enemy.gd", "game/actor.gd", "extends"), kinds)
            self.assertIn(("game/main.gd", "game/enemy.gd", "constructs"), kinds)
            self.assertIn(("game/main.gd", "game/enemy.gd", "resource-path"), kinds)
            self.assertIn(("scenes/start.tscn", "game/main.gd", "resource-path"), kinds)
            self.assertIn(("game/main.gd", "game/actor.gd", "symbol-reference"), kinds)
            self.assertNotIn("Invisible", json.dumps(atlas))
            self.assertIn("window.CODE_ATLAS = ", page)
            self.assertNotIn("/*__ATLAS_DATA__*/", page)
            self.assertIn("https://github.com/example/project/blob/demo-branch/game/actor.gd", page)

    def test_safe_html_embedding(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            write(root, "tools/a.gd", 'class_name Example\nconst DANGEROUS = "</script>"\n')
            subprocess.run(
                [sys.executable, str(SCANNER), "--root", str(root), "--out", "atlas.html"],
                check=True, capture_output=True, text=True,
            )
            page = (root / "atlas.html").read_text(encoding="utf-8")
            # Data is not allowed to add closing script elements.
            self.assertEqual(page.count("</script>"), 2)


if __name__ == "__main__":
    unittest.main()
