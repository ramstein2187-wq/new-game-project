# M016 — Generated-Map Turn Combat Integration

Status: Automated validation complete on `chat/procgen-time-combat`; manual Godot play/visual check pending.

## Goal

Play the existing deterministic generated terrain using the M011–M015 action-cost turn loop, one rat's tactical AI, and structured observable/debug logs. Preserve the original continuous-movement procedural playground and fixed-room M011 test scene.

## Scope and acceptance

- Add a small terrain adapter for the current TimeCostGame: map boundaries and tree/ruin blockers come from generated rows; reset places player and one rat on connected path cells and disables fixed-room door interactions.
- Add a separate Godot scene with turn movement, melee attack, NPC responses, logs and next-seed regeneration. Do not change the procedural generator, its seed semantics, or project startup scene.
- Validate multiple seeds for deterministic terrain/spawns, collision, actor movement and melee, AI routing, time reset and no regressions in earlier tests.

## Implemented

- `time_cost/generated_map_combat_game.gd`: a small TimeCostGame terrain adapter that reads generated rows, uses actual map dimensions, blocks tree/ruin tiles and off-map movement, spawns the player on the path at row 1 and one rat on the connected path at row 9, and disables the fixed-room door. Existing Action, scheduler, AI, combat event and log classes are reused.
- `time_cost/generated_map_combat_playground.tscn` and `.gd`: separate playable grid-turn scene. WASD/arrows move one tile, bump the rat to attack, Space/Enter waits, R loads the next seed with a fresh clock/rat/log, L toggles detailed log, F3 toggles developer trace. Renders generated terrain and both actors without altering the original real-time `procgen/procedural_playground.tscn` or the fixed-room combat test.
- The generated map and spawn locations are deterministic for a given seed. This is one generated local map, not a connected procedural world.

## Validation

- Godot 4.7.2 Mono: `bash tools/check_godot.sh` passes, including `tests/test_generated_map_combat.gd` and all existing map, AI, action, scheduler and log tests.
- The new scene also starts with headless Godot without reported errors.
- Four different seeds tested for deterministic terrain/spawns, traversable path and rat turn response; also verified tree/ruin/bounds collision, rejected blocked movement without a time cost, melee and AI reasons, and next-seed reinitialization.

## Manual check

Open `time_cost/generated_map_combat_playground.tscn` and press F6. Try several seeds with R, examine actor movement and the log/trace while fighting the rat. Check map readability and label overflow at the user's display size. The automatic checks do not assess appearance or pacing.

## Boundaries / follow-ups

One test rat; no multi-NPC world state, tile art, player perception/field of view, physics-body movement, action animation, arbitrary map transitions or persistence. UI layout is tuned for the default 40×30 map, not every generated map dimension. Fixed-room door interactions are not part of the generated map. Existing hardcoded English rat log text is prototype output; visual/manual gameplay verification remains necessary.
