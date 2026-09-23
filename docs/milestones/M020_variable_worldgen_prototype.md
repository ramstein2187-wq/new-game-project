# M020 — Variable-size overworld generation prototype

Status: **Independent prototype implemented and automated checks passed on `chat/variable-worldgen-prototype`**; visual acceptance, integration, and performance profiling remain pending. `M019` is already assigned to the common Actor work on `codex/m019-common-actor` and is unrelated to this milestone.

## Goal and scope

Create a deterministic and configurable *overworld* data generator inspired by concepts examined in `df-style-worldgen`, without copying that Python code or its third-party tilesets. World width and height are independent of `GenerationSettings.map_width/map_height`, which continue to configure existing playable local maps.

- `procgen/world/world_gen_settings.gd`: independently configurable world width/height (16–1024 per axis; current budget at most 1,048,576 cells), sea level, optional ocean border, continent/detail/mountain noise and river threshold. A bounded prototype, NOT infinite world generation.
- `procgen/world/world_data.gd`: packed environmental fields, square-grid coordinates, biome and landform separate. No game actors, persistent regions or live scene data.
- `procgen/world/world_generator.gd`: namespaced terrain/climate noise via the existing SeedDeriver; continental/ridge noise, coastal falloff, latitude/elevation temperature, simplified west-to-east humidity and orographic rainfall, drainage, strictly downhill 4-neighbor routing, topological flow accumulation, inland sink markers and moisture-based biome classification.
- `procgen/world/world_preview.tscn` and `.gd`: standalone diagnostic scene with editable seed/settings and biome/elevation/temperature/rainfall/drainage/river layers. No changes to F5 default game scene.
- `tests/test_world_generation.gd`: rectangular sizes, deterministic repeated generation, normalized elevations, ocean border constraints and strictly downhill/in-bounds routing.

## Validation performed

On the isolated DevSpace worktree using the local Godot **4.7.2** executable, `bash tools/check_godot.sh` passed its editor import/parse check, default game startup smoke test, and all **18** included test scripts (including the new world-generation invariants test). The independent preview scene also started headlessly and printed `World preview: 128x96 seed=12345 generator=v1`. This validates loading, NOT subjective visual quality or performance for larger worlds. No changes were made to the user’s local `codex/m019-common-actor` checkout or its untracked files.

## Explicit limitations / next scope

- Existing playable local-map generator, actor/combat behavior and save files are not connected to this overworld prototype. There is no world travel, Sector/Zone handoff, border contract, roads, landmarks, settlements, civilizations, start-position selection or world-clock/persistence integration.
- No hydraulic erosion, real tectonics, accurate meteorology or basin-filling algorithm. Ridged noise approximates mountain bands and precipitation is simplified. Local minima are marked as *lake candidates*, not flooded basins with spillways. Rivers follow strictly downhill cardinal edges.
- User-set world size changes the generated world’s topology and coordinates: it is NOT a backward-compatible resize of a saved world. Generator version is recorded but migration and cross-Godot-version determinism are not yet guaranteed.
- Memory/time budgets need measurement across representative sizes and seeds. There is no need to raise the cell cap or introduce threading until profiling identifies a bottleneck.
- Before live integration, decide world-cell geographic scale, square vs hex traversal, World→Sector→Zone mapping, river/road boundary contracts, suitable start sites, per-zone regeneration, and stable IDs per `docs/decisions/world_persistence.md`.

## Repeatable commands

```bash
bash tools/check_godot.sh
# Run this scene in the editor for actual visual inspection:
# res://procgen/world/world_preview.tscn
```

Add a dedicated performance/quality inspection across 128×96, 256×256 and 512×512 in the next iteration; do not treat the automated invariants as final player-facing acceptance.
