# M019 — Common Actor and multiple NPCs

Status: **Complete on main** at `b109ffd` via [PR #7](https://github.com/ramstein2187-wq/new-game-project/pull/7); 20/20 integration scripts passed. User explicitly authorized main integration on 2026-09-27; **manual play acceptance remains unverified**. [Integration record](../reviews/2026-09-27-m019-m022-integration.md).
Base: main `b232dce`. Implementation commit: `e3143ce`. Final evidence/documentation is in the subsequent commit on the same branch.

[User specification](../designs/M019_common_actor_spec.md) · [Architecture decision](../decisions/common_actor_model.md) · [Validation report](../reviews/2026-09-22-m019-validation.md)

## Delivered scope

- ActorDefinition Resource, Actor runtime ownership and stable ActorRegistry. Independent HP, abilities, bodies, position/facing and AI state; ready times remain in the existing scheduler.
- Arbitrary-ID actions, costs, attacks, damage, occupancy, NPC dispatch and target-aware rat tactics. Lifecycle updates registry/scheduler together; dead NPCs retain bodies but cannot occupy or act.
- Default generated scene: player + three numbered rats. Deterministic reachable spawn selection preserves the original terrain/first spawns and combat RNG. Small layouts gracefully use fewer NPCs. Direct reset restores the configured roster.
- Registry-driven rendering, HP/body/cost inspection and named player-visible logs. F3 retains per-ID timing and full decision traces.
- Preserved M011–M018 numbers/rules. Fixed-room default remains one rat; legacy tests explicitly request one generated NPC where their assertions measure that scenario.

## Checkpoints / resumption

- 2026-09-22: read AGENTS, roadmap, M013–M018 milestones and relevant combat/time/explainability decisions; verified main b232dce and preserved unrelated untracked imports/review work. Archived the supplied specification unchanged.
- Phase A: introduced ActorDefinition/Actor/ActorRegistry with isolation and lifecycle tests.
- Phase B: moved state ownership and generic action/AI dispatch. Captured single-rat replay at main b232dce before refactoring; post-change three-seed checksum matches all positions, HP/body damage, clock, event data and RNG state.
- Phase C: deterministic generated three-NPC roster, per-actor scene loops, named events and expanded body panel. Existing single-NPC fixtures retain their assertions and use explicit count 1.
- Phase D: all 20 test scripts, editor parse/import and main startup passed. Added actual-scene input tests for three independent moves/attacks, one rat's retreat, selected-target death and displayed status. Rendered the default scene and visually inspected the capture at 1152×648; this is automated presentation evidence, not manual play acceptance.
- Implementation checkpoint e3143ce was committed and pushed to origin/codex/m019-common-actor. Final handoff records, test output and screenshot are in the following documentation commit on that same branch. At that historical checkpoint, no main merge was authorized; the 2026-09-27 integration request supersedes that restriction without supplying manual play evidence.

## Validation and decisions

`bash tools/check_godot.sh` passed all 20 scripts. [Raw output](../reviews/2026-09-22-m019-check.txt), [test inventory and scope](../reviews/2026-09-22-m019-validation.md), [render capture](../reviews/2026-09-22-m019-scene.png).

No design principles or balance values changed. New decisions: shared immutable definitions with isolated species tuning copies; retained dead registry entries; default three-NPC deterministic placement with explicit count-1 fixtures; temporary forwarding compatibility accessors. Details and constraints are in the architecture decision.

## Manual acceptance checklist

1. Open `time_cost/generated_map_combat_playground.tscn` with F6, or F5 (default main scene). Confirm blue player and red markers 1, 2, 3, each with its own HP/body row.
2. Use WASD/arrows or keypad 1–9 (except center) to move; Space/Enter waits. Watch three distinct NPCs approach and attack without overlapping. Retreat or corner obstructions should cause individual decisions.
3. Bump a chosen NPC to attack it. Observe that only its HP/body status changes, wounded rats can retreat, and a defeated rat disappears from the map, remains marked dead in UI and stops taking turns. Other rats continue.
4. Hover the body status for per-ID part integrity. Player STR/DEX/etc allocation and reset buttons still work; ability reset preserves wounds/HP. Injury slows movement and can disable attacks.
5. Toggle L for routine actions, F3 for actor/target IDs, timestamps, costs, candidate scores and reasons. Healthy straight/diagonal costs are player 1000/1400 and rat 750/1050; injury scales once. Hidden reasoning must disappear when F3 is off.
6. R generates the next seed and recreates a fresh player + three rats; no old HP, injuries, traits, clock or log remains. Fixed-room `time_cost/time_cost_test_room.tscn` F6 retains one rat, cardinal E door interaction and R same-room reset.
7. Check pacing/readability under actual play. All NPC actions still resolve atomically; perception is full-map, routing is shortest steps, and the layout targets 1152×648. Three-rat balance and smaller/larger-roster UI are not claimed accepted.

## Follow-ups

Manual play/encounter balance remains a follow-up; the user explicitly authorized main integration on 2026-09-27 without claiming manual acceptance. Existing roadmap entries cover action animation, inventory/equipment, factions/companions/controllers, statuses, world/save persistence, perception/memory and species content. No M011–M018 completed milestone documents were expanded.
