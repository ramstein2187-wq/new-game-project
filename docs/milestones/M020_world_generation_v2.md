# M020 — Layered World Generation Prototype

## Goal

Create a deterministic global-world generator inspired by the useful ideas in
`df-style-worldgen`, but redesigned for this project's long-term world/region/local-map
architecture.

This milestone does not replace the existing M003–M009 playable local-map prototype.
It introduces a separate global geography layer that can later feed region generation.

## Scope

- Variable rectangular world dimensions configured by data.
- Dense numeric fields stored separately from presentation.
- Namespaced deterministic sub-seeds using the existing `SeedDeriver`.
- Layered elevation generation:
  - broad continental noise
  - detail noise
  - ridge-like mountain contribution
  - optional ocean-biased map edges
- Climate fields:
  - latitude/elevation temperature
  - deterministic rainfall noise
  - simplified west/east prevailing-wind and orographic effect
  - drainage field influenced by local slope
- Hydrology:
  - D8 downhill receiver map
  - runoff accumulation
  - river classification
  - explicit closed-basin candidates
- Surface moisture derived from rainfall, drainage, rivers and basins.
- Landform classification separated from biome classification.
- Deterministic automated tests for dimensions, value validity, seed replay,
  biome diversity and downhill rivers.

## Explicitly deferred

- Priority-Flood/depression filling and true lake water levels.
- Erosion that modifies the generated elevation field.
- River width, watershed objects and named river graph data.
- Hex-grid world movement.
- Region boundary contracts and local-map generation from the world fields.
- Settlement, civilization and history simulation.
- Save/persistence integration and generator migration policy.
- Visual/debug map UI beyond automated data validation.

## Architectural intent

The global generator produces geography data, not gameplay tiles. Presentation and
local-map generation must consume this data instead of being embedded in the generator.
Dense fields use packed arrays; sparse features should become separate records later.

World dimensions are settings, not constants. Generation frequencies are scaled relative
to the largest world dimension so changing map size does not simply stretch a fixed
tile-frequency tuning value.

## Validation

Automated validation completed on `chat/worldgen-v2-prototype`:

- `bash tools/check_godot.sh` passes the editor parse/import check, main-scene smoke test and all project test scripts including `tests/test_world_generator.gd`.
- Determinism, different-seed divergence, variable dimensions, normalized fields, land/ocean presence, multiple land biomes and downhill river links are covered by the focused test.
- `tools/profile_world_generator.gd` baseline on the current development machine:
  - 64x48: ~30 ms
  - 128x96: ~121 ms
  - 256x192: ~489 ms
  - 512x384: ~2000 ms
- The benchmark indicates near cell-count scaling at these sizes. River thresholds are scaled by linear world extent relative to a configurable reference size so larger worlds do not automatically become disproportionately river-dense.

No manual visual quality pass has been performed yet; visual/debug map rendering is explicitly deferred.
