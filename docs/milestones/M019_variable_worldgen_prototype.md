# M019 — Variable-size overworld generation prototype

Status: **Implementation on `chat/variable-worldgen-prototype`; validation pending.** No changes to `main` or the existing playable local-map generator.

## Goal

Create a deterministic, configurable *overworld* data generator inspired by concepts examined in `df-style-worldgen`, without copying its Python code or third-party tilesets. World width and height are independent of `GenerationSettings.map_width/map_height`, which continue to configure existing playable local maps.

## Current scope and files

- `procgen/world/world_gen_settings.gd`: independently configurable world width/height (16–1024 per axis; currently max 1,048,576 cells), sea level, optional ocean border, continent/detail/mountain noise and river threshold. Sizes are NOT hard-coded presets or unrestricted/infinite worlds.
- `procgen/world/world_data.gd`: packed dense environmental fields, square-grid coordinates, safe read API, biome and landform kept separate. No game actors/scenes or persistent region objects.
- `procgen/world/world_generator.gd`: SeedDeriver-namespaced terrain/continent/ridge noise, optional coastal falloff, latitude/elevation temperature, simplified west-to-east humidity and orographic rain, drainage noise, strictly downhill 4-neighbor routing, topological flow accumulation, local-sink lake markers, moisture/vegetation and biome classification.
- `tests/test_world_generation.gd`: intended automated invariants for variable rectangular sizes, deterministic results, boundary behavior and downhill routing.

## Explicit limitations / follow-ups

- This is a **new independent data prototype**; there is no world-map UI, world travel, playable LocalMap handoff, landmark placement, civilization, world-clock integration or save/load yet. Existing M003–M009 behavior remains unchanged.
- Terrain is inspired by hill/noise-based world generation ideas but does not reproduce original `df-style-worldgen` terrain or its water-droplet erosion. Ridged noise approximates mountain bands, not real tectonics; climatic wind/rainshadow is simplified.
- Hydrology uses strictly downhill cardinal edges; local minima are identified as lake *candidates*, not simulated flooded basins. No Priority-Flood, lake spillways, rivers across grid-type changes, deltas or shoreline-aware routing yet.
- `WorldGenSettings` bounds dimensions to avoid accidental allocation spikes. Benchmark before raising the cell budget or moving work to background threads.
- Generator version is recorded, but compatibility/migration across algorithms and Godot versions is NOT guaranteed. Never silently regenerate existing saved worlds under changed algorithms.
- Sea-border option can force an ocean rim; it is not a statement that all world settings must be surrounded by water. No default player start is at the center.
- `tests/test_world_generation.gd` still requires actual Godot headless execution; a file being committed is not a passing test.

## Validation commands (once local checkout/runner is available)

```bash
godot --headless --path . --script res://tests/test_world_generation.gd
bash tools/check_godot.sh
```

Record runtime, memory, and representative seed maps for 128×96, 256×256, and 512×512 after the checks pass. Review Godot parse errors, deterministic equality, downstream in-bounds/downhill and ocean-edge constraints before integrating with the live game.

## Integration decision gate

Before any existing scene is modified, establish world-cell geographical scale, Sector/Zone cardinality, grid topology (square or hex), edge contracts for rivers/roads, spawn-site eligibility and region persistence boundaries. Keep a separate `WorldDefinition` and `WorldState` per `docs/decisions/world_persistence.md`. Do not equate world-cell coordinates with current local-map tile coordinates.
