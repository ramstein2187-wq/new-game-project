# M020 — Health lifecycle and actionable failure feedback

Status: implemented and automated validation passed on `chat/m019-health-action-feedback` (based on M019 task branch `a1a4b27`); manual play pending, not merged to `main`.

## Scope

Address two M019 review follow-ups without changing the combat balance, scheduler/tie rules, RNG, or existing Action success behavior:

1. Any registered Actor HP assignment, including direct fixture/legacy writes, must update death-related game/scheduler state. Provide explicit public damage/healing/HP-change entry points for future effects.
2. An invalid player Action should explain the actual failure: disabled attack part/function, lost movement function, attack range, blocked diagonal attack, terrain obstruction, occupied tile, or invalid interaction. Invalid Actions must remain free and unlogged.

## Design

- `Actor.hp` is the only stored HP value. Its setter clamps to `[0, max_hp]` and emits `health_changed` on effective changes. `TimeCostGame` connects registered actors and removes dead NPCs from the scheduler or marks the player game-over, including changes made through the legacy HP accessors. Callbacks verify the Actor instance identity so stale references from old resets cannot alter a replacement actor. Explicit NPC removal disconnects the callback.
- A zero-HP actor is terminal for this prototype. Setting its HP positive cannot silently resurrect an unscheduled actor; reset constructs a fresh actor. `set_actor_hp`, `damage_actor`, `heal_actor` centralize normal live-actor changes, with healing limited to living actors. Proper resurrection, corpses and cross-zone restoration are separate follow-ups.
- `TimeAction.failure_reason()` supplies a stable internal reason code; Move/Attack/Interact Actions use the same checks for both `can_execute` and their reason. The Game maps only rejected player actions to observable text. Existing custom Actions can use the fallback message. AI scores/reasons remain developer-only; attack success, misses and blocks still spend their normal time.

## Validation and handoff

- `tests/test_actor_health_action_feedback.gd` checks direct NPC/player death synchronization, capped health/healing, no accidental resurrection, stale actor references, reset, unavailable right-arm attacks, out-of-range and blocked-corner attacks, and movement loss/terrain messages without time or log changes.
- `bash tools/check_godot.sh`: editor parse/import, startup smoke test, and all 21 test scripts passed on the isolated task worktree. The pre-M019 single-rat replay fixture still passed.
- Manual check pending: disable the player's right arm, bump a nearby rat and confirm the right-arm-specific message; compare distant/blocked-corner attacks; verify no time is consumed. The normal M019 multi-NPC manual acceptance remains pending.

## Follow-ups

- A true resurrection operation would need explicit occupancy, scheduling, and game-over policies. Do not implement it by assigning HP to a dead Actor.
- Future status-effect/terrain damage must call Game's health API (and separately generate its own observable combat event when relevant). The current prototype does not yet implement such effects.
