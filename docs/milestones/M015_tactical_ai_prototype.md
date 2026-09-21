# M015 — Explainable Tactical AI Prototype

Status: Complete on the M011–M015 integration branch; automated validation passed and manual validation confirmed by the user on 2026-09-21. Main integration: PR #2.

## Goal

Replace the test rat's fixed if/else chase script with a small, extensible **candidate → validate/score → choose → shared Action → CombatEvent** loop. Preserve the selected M011 turn model, M013 scheduler, M014 Action execution and M012 observer-aware logs.

## Implemented

- `time_cost/ai/tactical_choice.gd`: candidate action, goal, numeric utility, contributing factors, reason codes and an explicitly observable cue.
- `time_cost/ai/tactical_planner.gd`: generic highest-score valid-action selection with stable candidate-order tie breaking. Candidate construction remains an NPC policy decision; any `TimeAction` subclass can be considered without editing the planner or scheduler.
- `time_cost/ai/rat_tactics.gd`: produces attack, chase, door opening, retreat and fallback wait candidates from *current* HP, aggression and geometry every time the rat is scheduled. Retreat only proposes walkable tiles that increase distance. It never queues future actions.
- `TimeCostGame`: configurable prototype `rat_aggression`, HP-derived fear and `rat_fear_bonus`; uses the chosen action through unchanged `perform_action()`. Chosen goal, score, factors and candidate scores are attached to structured CombatEvents for debug. Existing positive action costs and player-priority ties are unchanged.
- `CombatLogFormatter`: an **observable** retreat cue appears in the default player log. Hidden AI reason codes, candidate evaluations and fear numbers remain developer-only.

## Validation

`bash tools/check_godot.sh` passes under Godot 4.7.2 Mono. New `tests/test_tactical_ai.gd` checks accepting a custom Action without changing the planner, excluding illegal actions, deterministic ties, original chase timing, structured reasoning trace, wounded retreat, player-visible cue without hidden reason leakage, and changing the same rat's aggression between turns. Earlier scheduler test fixes the rat's aggression high to test defeat/removal independently of the new retreat behavior. Earlier log/action tests check for required legacy reasons while allowing additional contributing factors.

## Manual check

Open `time_cost/time_cost_test_room.tscn` and run the current scene (F6). Attack the rat twice, then watch for a retreat when it gets a chance to act; press F3 to compare the internal score/reasons with the player-facing log. Use R to reset. Headless tests do not validate animations or final UI legibility.

## Boundaries / deferred

- Still one rat in a fixed fully visible test room. Generic multi-NPC AI, faction data, sight/hearing, perception, goals beyond a simple combat survival loop, and procedural-map integration are not implemented.
- Numeric utility values and retreat threshold are experimental, **not** final balance. `rat_aggression` and `rat_fear_bonus` are temporary test parameters, not the game's final personality model.
- Action effects still apply atomically: a movement path may be selected, but the rat executes only **one tile per scheduled action**, without tweened animations.
- When adding a new NPC ability, that NPC's candidate-producing policy must propose it; the generic evaluator, common action executor and time scheduler do not need action-type branches.
