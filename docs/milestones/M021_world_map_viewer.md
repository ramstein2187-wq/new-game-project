# M021 — Global World Map Viewer

## Goal

Visually inspect the independent M020 global geography generator without replacing
or changing the existing playable local map and F5 main scene.

## Branch and dependency

- Work branch: `chat/worldgen-v2-viewer`.
- Based on `chat/worldgen-v2-prototype` (`d7e8108`), which may not be merged to `main`.
- The viewer is a separate scene: `res://procgen/world/world_map_viewer.tscn`.

## Implementation

- World width/height SpinBoxes (16–2048), signed integer seed input and regenerate button.
- Initial settings 128×96 / seed 12345; per-regeneration dimensions do not change the
  shared default settings Resource.
- 10 display modes: biome, elevation, temperature, rainfall, drainage, moisture,
  landform, rivers, logarithmic accumulated flow, closed-basin candidates.
- River overlay, nearest-neighbor zoom (1×/2×/4×/8×/16×), scrollable image and
  mouse-hover cell details including numeric field values.
- Display uses a one-pixel-per-world-cell ImageTexture rather than per-cell scene nodes.
  Layer switching and zooming reuse generated WorldData without rerunning world generation.
- No changes to the M020 world-generation algorithm, default F5 scene or older local
  map generator.

## How to run

1. Open this branch as a Godot project (separate project checkout/worktree if another
   branch or unsaved editor work is active).
2. In Godot's FileSystem dock, open `procgen/world/world_map_viewer.tscn`.
3. Run **Current Scene (F6)**, not the F5 default game scene.
4. Choose dimensions/seed and press `월드 생성`; change `표시 필드`, toggle river
   overlay, zoom or hover to inspect a cell.
5. Large maps may block the main thread while generating and rasterizing;
   the 16–2048 range is a configuration range, not a performance guarantee.

## Validation

- `tests/test_world_map_viewer.gd`: initial world/image, layers, immutable generation
  data during layer changes, variable dimensions, texture zoom, cell details,
  same-seed replay and invalid seed entry.
- `bash tools/check_godot.sh`: editor parse/import, default scene smoke test, all
  existing tests and new viewer test.
- Manual visual/in-editor inspection is left to the user after checkout.

## Deferred

- Interactive editing of terrain/generator parameter sliders beyond width, height and seed.
- World movement and region/local-map transitions.
- Lake-water levels and improved river physics (M020 limitations).
- Asynchronous very-large-map generation and map export.
