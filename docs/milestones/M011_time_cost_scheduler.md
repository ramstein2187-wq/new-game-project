# M011 — Time-Cost Scheduler Test Room

Status: Complete on the M011–M015 integration branch; automated validation passed and manual validation confirmed by the user on 2026-09-21. Main integration: PR #2.

## Goal

Test the compromise turn model discussed after the Micro-AP experiment:

- player-facing rhythm remains one deliberate action at a time
- simulation-facing time advances by action cost
- actors act whenever their next ready time is earlier than the player's
- no global Quickness stat yet

This milestone is an experiment, not a commitment to the final combat architecture.

## Why This Exists

M010 tests short alternating AP activations. M011 keeps M010 intact as a comparison baseline and tests a different question:

> Can action duration create useful tactical timing without exposing the player to a complicated continuous-time system?

The prototype intentionally keeps the scheduler inside the pure rules model instead of creating a generalized manager framework before the timing model has been validated.

## Implemented Rules

Player action costs:

- door interaction: 500
- move one tile: 1000
- wait: 1000
- basic bump attack: 1250

Rat action costs:

- door interaction: 500
- move one tile: 750
- attack: 1000
- blocked wait: 1000

Each actor owns a `next_ready_time`.

After the player commits an action:

1. increase the player's ready time by that action's cost
2. repeatedly select rat actions while `rat_next_ready_time < player_next_ready_time`
3. stop at the player's next decision time
4. if ready times are equal, the player gets the next decision

The tie rule deliberately preserves a readable player-facing turn rhythm.

## Explainability

The test-room UI exposes:

- current world time
- player and rat next-ready times
- last player action cost
- number of rat responses caused by that action
- recent scheduler events
- a simple reason string for rat movement, door opening, waiting, or attacking

The reason text is developer-facing prototype output, but it is sourced from the same decision that produced the action. This keeps the experiment compatible with the project's explainable-systemic-behavior principle.

## Validation

Automated checks cover:

- a 1000-cost player move allows two 750-cost rat moves before the next player decision
- a 500-cost door interaction creates a shorter response window
- a 1250-cost attack can create two attack openings for an already-adjacent rat
- equal ready times stop on the player's decision rather than granting the rat another action
- the test-room scene loads with timeline and event-log UI

Validated with Godot 4.7.2 Mono using `bash tools/check_godot.sh`; all existing tests and the new time-cost tests pass.

## Manual Check

Open `time_cost/time_cost_test_room.tscn` and run the current scene (`F6`).

Controls:

- WASD / arrows: move, cost 1000
- move into rat: basic attack, cost 1250
- E: interact with faced door, cost 500
- Space / Enter: wait, cost 1000
- R: reset

Questions to answer during manual play:

1. Does one input at a time still feel as readable as the simpler roguelike turn model?
2. Does seeing the rat act twice after a slower action feel understandable rather than arbitrary?
3. Does a fast 500-cost interaction feel meaningfully safer than a 1000- or 1250-cost action?
4. Is the exact numeric timeline useful, or should the eventual player UI show qualitative speed labels instead?
5. Does the fast rat demonstrate useful simulation depth, or does it make ordinary movement too punishing?
6. Should the final model preserve player priority on equal ready times?

## Deliberately Deferred

- Quickness or global actor-speed multipliers
- a reusable standalone scheduler class
- data-driven Action resources
- multiple NPCs and deterministic tie ordering among NPCs
- reactions / opportunity attacks
- status-effect ticking
- action wind-up and interruption
- animation timing
- procedural-map integration
- final AI utility scoring

These should be added only after the basic timing model has been manually compared with M010.
