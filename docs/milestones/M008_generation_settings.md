# M008 — Procedural Generation Settings

Status: Complete

## Goal

Move procedural tuning values out of generator code so map generation can be adjusted through reusable data without rewriting algorithms.

## Completed Scope

- Added `GenerationSettings` as a Godot `Resource`.
- Added `default_generation_settings.tres` as the current default preset.
- Moved map size, forest threshold/frequency/octaves, path wander probability, and ruin placement distances into settings data.
- Updated `SimpleMapGenerator` to consume a settings resource.
- Updated the visual preview and ASCII tool to use the shared default settings.
- Added automated checks that custom dimensions are applied and lower forest thresholds create denser forests for the same seed.

## Relevant Files

- `procgen/generation_settings.gd`
- `procgen/default_generation_settings.tres`
- `procgen/simple_map_generator.gd`
- `tests/test_generation_settings.gd`

## Validation

Validated with Godot 4.7.2 Mono through `bash tools/check_godot.sh`.

## Next Useful Step

Use the generated map data and the same settings resource to build a small playable scene with collision derived from blocking cells.
