# M023 — Threat Measurement Foundation

Status: **Implemented and automatically validated on `chat/threat-rating-lab`; not merged to main.**

## Purpose

Extend M022 from its fixed Rat-vs-Rat infrastructure check into a reusable production-combat matchup laboratory suitable for later Threat Rating calibration.

M023 does **not** assign final Threat Rating numbers. It establishes the measurement protocol needed before a rating scale is calibrated.

## Scope

- Inject arbitrary valid `ActorDefinition` instances into `CombatSimulationGame`.
- Preserve the production combat path: AI -> `TimeAction` -> `TimeCostGame.perform_action()` -> scheduler/combat/body/events.
- Add paired side-swap measurement using the same seed set in both orientations.
- Map reversed slot results back to combatant identity.
- Keep slot A/B results visible so scheduler/room bias can still be measured.
- Add event-derived combat metrics:
  - attack attempts
  - hits / misses
  - armor outcomes
  - body-part disable transitions
  - actual HP loss
  - ending HP
- Keep the original M022 `run()` result and CLI behavior available.
- Add `--paired` CLI mode for the current Rat baseline.

## Measurement protocol

For combatants A and B and seed `s`:

1. Run A in side-A/player slot versus B in side-B/NPC slot.
2. Run B in side-A/player slot versus A in side-B/NPC slot.
3. Reuse the exact same seed range for both batches.
4. Aggregate wins, damage and combat metrics by combatant identity.
5. Separately retain slot-A/slot-B decisive win rates as a bias diagnostic.
6. Keep `stalled` and `simulation_error` distinct from wins.

This does not mathematically prove all geometry or scheduling bias is removed. It makes the dominant current slot asymmetry observable and reduces its effect on combatant comparison.

## Production reuse

`CombatSimulationGame.configure_matchup()` changes only the definitions and initial side positions. Resolution remains owned by existing production systems. M023 does not duplicate hit, armor, body, AI, movement or scheduler rules.

## Completion criteria

- Existing M022 Rat-vs-Rat batch remains deterministic.
- A configurable matchup can inject distinct actor definitions.
- Forward/reverse batches reuse the same encounter seeds.
- Reverse-slot victories are correctly mapped back to original combatant identity.
- Attack attempts equal hits + misses.
- Armor outcomes account for all hits.
- Slot performance remains separately reportable.
- Existing termination guards remain intact.
- Full project automated validation passes.

## Validation

- `bash tools/check_godot.sh` passed after the final code/documentation update, including the paired CLI changes: editor parse/import, main-scene startup and all project test scripts.
- `tests/test_combat_batch_runner.gd` now validates injected definitions, deterministic paired runs, same-seed side swaps, identity mapping, slot metrics, hit/miss accounting and armor-outcome accounting.
- A direct ad-hoc paired CLI smoke was not recorded because the execution request was blocked by the surrounding tool security gate. No numeric Threat sample is claimed from that blocked command. The paired API itself is exercised by the automated Godot test.

## Explicit non-goals / follow-ups

- No final Threat Rating formula or component weights.
- No standard benchmark player profiles yet.
- No statistical confidence intervals yet.
- No pairwise matrix across the planned monster catalog yet.
- No new weapon/armor/monster runtime content in this milestone.
- No D&D-style damage-dice migration in this milestone.
- No AI tuning to reduce the current high stall rate.
- No exact per-action scheduler stepping; M022's scheduling-window guard semantics remain.
- Non-`rat_tactics` AI policies require production policy support before those actors can produce meaningful autonomous matchup results.

The next Threat milestone should first implement the agreed combat dataset and benchmark profiles, then use this paired protocol to generate calibration evidence before choosing a final rating scale.
