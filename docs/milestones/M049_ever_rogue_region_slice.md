# M049 — Ever Rogue Region Exploration Slice v1

Status: Implemented on `chat/ever-rogue-region-slice`; pending manual visual/play acceptance and main integration.

## Goal

Replace abstract colored-map exploration with a 96×96 playable forest/ruin
benchmark using the repository's existing CC0 Ever Rogue 1.0 PNG sprites.

## Scope and controls

- `scenes/debug/ever_rogue_region_playground.tscn` (F6): camera-led exploration
  with TileMapLayer obstacles/details, an optional M-key whole-region view,
  keyboard movement, one initial opponent using existing action-cost combat, wait, combat log and R reroll.
- `worldgen/forest_ruins_region.gd`: authored roads, clearings, pond, two
  stone ruins, pillars and seven reachable site anchors. Seed changes vegetation
  layout; authored geometry stays stable.
- The terrain characters remain compatible with `GeneratedMapCombatGame`:
  `.` ground, `#` traversable road, `T` tree **or water** collision,
  `R` blocking masonry. Water and stone-floor visuals are sidecar data.
- This scene deliberately does **not** change the default F5 scene or connect
  generated regional history. POI anchors are layout references, not quests.
- Graphics are the original Ever Rogue sprites over simple authored terrain
  colors; the illustrated concept art is **not** the game tilemap.

## Verification

- Focused `tests/test_ever_rogue_region.gd`: 3 seeds, deterministic replay,
  all site reachability, water collision contract, instantiated scene,
  TileMapLayer, camera zoom, and reseeding.
- Godot 4.7.2 editor import and headless scene startup performed.
- Focused baseline regressions: `test_generated_map_combat.gd` and `test_simple_map_generator.gd` pass.
- The monolithic `tools/check_godot.sh` exceeded the available 295-second execution window; it is **not** recorded as passed. Full segmented regression and manual visual/play acceptance remain separately required.

## Next visual iteration

Manually review sprite atlas coordinates and spacing, map-wide readability,
collision silhouettes, exploration pacing, camera zoom and enemy spawns.
The first static map intentionally avoids a generalized biome generator,
POI interactions, save/persistence and historical site integration.
