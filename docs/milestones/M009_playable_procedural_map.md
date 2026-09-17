# M009 — Playable Procedural Map

Status: Complete

## Goal

Turn generated map data into a small playable Godot scene so movement and collision can validate whether procedural layouts work as game space.

## Completed Scope

- Added `procedural_playground.tscn` and `ProceduralPlayground`.
- Uses the shared `GenerationSettings` preset and current world seed.
- Renders generated ground, forest, path, and ruin cells.
- Builds blocking collision shapes from tree and ruin cells while keeping ground and paths walkable.
- Spawns the player on the generated north-south path.
- Reuses the existing player movement script with optional automatic centering disabled for this scene.
- Pressing `R` regenerates the playground with the next seed and resets the player onto the new path.
- Ruin stamps now clear their interior floor cells instead of leaving underlying trees inside the ruin.

## Validation

Validated with Godot 4.7.2 Mono:

- full `bash tools/check_godot.sh` passes
- playground scene starts headlessly without reported errors
- generated blocking-cell count matches tree plus ruin cells
- player spawn resolves to a path cell
- automated physics check confirms player motion collides with a generated blocking cell

## Relevant Files

- `procgen/procedural_playground.gd`
- `procgen/procedural_playground.tscn`
- `player.gd`
- `tests/test_procedural_playground.gd`

## Manual Check

Open `procgen/procedural_playground.tscn` and run the current scene (`F6`). Move with WASD or arrow keys and press `R` to regenerate with the next seed.

## Next Useful Step

Play several seeds manually and record concrete layout problems before adding more generation complexity or tuning tools.
