# M014 — Common Action System

Status: Complete on the M011–M015 integration branch; automated validation passed and manual validation confirmed by the user on 2026-09-21. Main integration: PR #2.

## Goal

Use one action execution path for player input and NPC decisions while keeping action rules separate from the independent M013 time scheduler and the M012 structured combat event log.

## Scope

- Added `time_cost/actions/time_action.gd` with `can_execute(game, actor_id)`, `get_cost(game, actor_id)` and `execute(game, actor_id, cost)` returning a `CombatEvent`.
- Added concrete `MoveAction`, `AttackAction`, `InteractAction` and `WaitAction`, each owning its validity rules, action cost, state change and event payload.
- Added `TimeCostGame.perform_action(actor_id, action)` as the common entry point. It rejects invalid/dead/unregistered/out-of-turn actors and nonpositive costs; accepted actions produce a structured event, preserve the action's reason codes, and advance the scheduler by the action's cost.
- Player controls choose these same actions (bumping the rat chooses AttackAction). The existing rat AI still chooses its next goal using the old simple chase logic but now dispatches the same Action classes.
- Kept the existing action costs, player-first time ties, event format, room, and 3-AP comparison scene unchanged.

## Validation

`bash tools/check_godot.sh` passes under Godot 4.7.2 Mono. `tests/test_common_action_system.gd` verifies that a new synthetic action integrates without scheduler changes; invalid actions consume neither time nor events; player and rat door interactions use the shared path; attack damage, timing and AI reasons remain stable; unregistered actors cannot act. Existing scheduler, combat event, and test-room tests still pass.

## Limitations / next steps

- This is a prototype action interface, not yet data-driven ability content. Adding a new action means adding an Action subclass; the current scheduler does not need edits.
- The playable room still contains one rat. Actor HP/positions and action costs use the existing room's player/rat properties, not a full actor registry. Generalizing game-state access for arbitrary actors belongs with multi-NPC gameplay, not with the scheduler.
- The action applies state changes immediately; animation, wind-up/interruption and a richer AI decision/evaluation layer are deferred.
- Open `time_cost/time_cost_test_room.tscn` and run F6 to judge interaction pace, event-log readability and the apparent sequence of multiple rat responses.
