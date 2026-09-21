# M012 — Structured Combat Log Prototype

Status: Complete on the M011–M015 integration branch; automated validation passed and manual validation confirmed by the user on 2026-09-21. Main integration: PR #2.

## Goal

Replace M011's text-only scheduler history with structured events while retaining the time-cost rules and the M010 comparison baseline.

## Implemented

- `CombatEvent`: event type, actor/target/action identifiers, time, cost, importance, observation list, reason codes, and result data.
- `CombatEventLog`: bounded in-memory event history (128 events), recent lookup, reset.
- `CombatLogFormatter`: separate observer-aware player text and full developer trace; default player mode suppresses trivial moves/waits, detailed mode includes them.
- M011 gameplay emits events for player/rat moves, attacks, door interaction, and waits in scheduler execution order.
- Test room: `L` toggles detailed player messages; `F3` toggles developer trace.
- Reasons for rat behavior remain structured codes rather than player-visible omniscient explanations. A visible move into melee range gets its own presentation cue.

## Design Boundaries

- The entire fixed test room is currently treated as observable. This is **not** a production perception/LOS system; future scenes must set each event's observers at the time it occurs.
- Event records are a log of outcomes, not a replay/rollback or quest-event bus. They are in-memory and limited to 128 entries; no serialization, localization or aggregate grouping yet.
- No global `EventBus`/autoload or generalized GameEvent hierarchy was added; wait for another real consumer before introducing those abstractions.
- The existing M011 scheduler and action costs are unchanged. Player-facing text is currently English prototype copy.

## Validation

`bash tools/check_godot.sh` passes on Godot 4.7.2 Mono, including `tests/test_combat_log.gd` and existing scheduler and Micro-AP tests.

New tests cover event order and action context, developer reason retention, player visibility/privacy in normal and detailed modes, minor-event filtering, bounded history, reset, and log UI scene references.

## Manual Check

Open `time_cost/time_cost_test_room.tscn` in Godot and run the current scene (`F6`). Move into the rat, open the door, attack or wait, toggle `L` (minor messages) and `F3` (developer trace). Confirm the log is readable and does not obscure the tactical room.

## Follow-up

- Rework UI layout and language based on direct play feedback.
- Introduce world perception/visibility only when connected to a scene with occlusion.
- If quests/social systems begin consuming events, explicitly decide between ephemeral event signals and persisted narrative histories rather than silently reusing the combat-log buffer.
