# M010 — Micro-AP Test Room

Status: In Progress — implementation complete, manual feel check pending

## Goal

Test whether a very small action-point turn model produces useful tactical choices without adding CRPG-scale turn complexity.

The prototype intentionally uses only:

- 3 AP per activation
- move: 1 AP
- basic attack: 2 AP
- interact: 1 AP
- remaining AP is discarded when ending the turn

## Implemented Scope

- Added a fixed grid test room separate from the existing real-time and procedural-map scenes.
- Added a pure `MicroApGame` rules model so AP and turn behavior can be tested independently from rendering.
- Added player grid movement using existing WASD / arrow inputs.
- Bumping the rat resolves as a 2 AP melee attack.
- Facing a door and pressing `E` opens or closes it for 1 AP.
- `Space` / `Enter` ends the turn and discards remaining AP.
- The rat uses the same 3 AP budget and the same move / attack / interaction costs.
- The rat pathfinds toward the player and can open the central door.
- Added simple HP, defeat, reset, AP/status UI, and a fixed room designed to exercise positioning around a door.

## Validation

Automated checks cover:

- movement costs 1 AP
- door interaction costs 1 AP
- bump attacks cost 2 AP and do not move through the target
- ending a turn runs the rat activation and refills player AP
- the test-room scene loads with its status UI

Validated with Godot 4.7.2 Mono: `bash tools/check_godot.sh` passes, including the new Micro-AP tests, and `micro_ap_test_room.tscn` starts headlessly without reported errors.

## Manual Check

Open `micro_ap/micro_ap_test_room.tscn` and run the current scene (`F6`).

Controls:

- WASD / arrows: move
- move into rat: basic attack
- E: interact with the tile currently faced
- Space / Enter: end turn
- R: reset

Questions to answer during manual play:

1. Does 3 AP create meaningful `move + attack` / `attack + move` choices?
2. Is attack at 2 AP restrictive in a good way, or does the leftover 1 AP feel wasteful?
3. Does opening a door for 1 AP create useful positioning choices?
4. Does alternating 3-AP activations feel too bursty compared with a one-action roguelike turn?
5. Is four-direction movement sufficient for this test, or is eight-direction movement necessary to judge the system?

## Deliberately Deferred

- variable maximum AP
- Quickness / speed
- AP carryover
- opportunity attacks / reactions
- initiative stats
- abilities beyond the basic attack
- integration into the procedural playground
- final graphics or animation

These should only be added after the base 3-AP rhythm has been manually evaluated.
