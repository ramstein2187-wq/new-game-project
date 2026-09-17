# M005 — Visual Procedural Map Preview

Status: Complete

## Goal

Render the deterministic procedural map data inside Godot without making the rendering layer authoritative game state.

## Completed Scope

- Added a standalone `procgen/procedural_map_preview.tscn` scene.
- Added `ProceduralMapPreview`, a lightweight `Node2D` renderer for generated map data.
- Ground, forest, and path cells are drawn as simple colored rectangles.
- The preview displays the active seed and cell legend.
- Pressing `R` increments the seed and regenerates the preview.
- Existing `SimpleMapGenerator` remains the source of map data; the preview only renders its output.
- Added a headless scene test that confirms the preview scene loads, generates a 40×30 map, and updates its seed label.

## Current Architecture

```text
SimpleMapGenerator
      ↓
PackedStringArray map data
      ↓
ProceduralMapPreview
      ↓
Node2D draw calls
```

The generator has no dependency on drawing, scenes, or input. This keeps simulation/data separate from presentation and leaves room to replace the rectangle renderer with `TileMapLayer` later.

## Preview Controls

- Run `procgen/procedural_map_preview.tscn` as the current scene.
- `R` — regenerate using the next integer seed.

## Validation

Validated with Godot 4.7.2 Mono using:

```bash
bash tools/check_godot.sh
```

Confirmed:

- editor parse/import succeeds
- existing main scene still starts headlessly
- existing interaction test still passes
- procedural generator test still passes
- procedural preview scene test passes

## Relevant Files

- `procgen/procedural_map_preview.gd`
- `procgen/procedural_map_preview.tscn`
- `tests/test_procedural_map_preview.gd`

## Next Useful Step

Either replace the temporary rectangle renderer with a small `TileSet`/`TileMapLayer` presentation, or continue improving the generator with a landmark/ruin stamp while keeping the renderer data-driven.
