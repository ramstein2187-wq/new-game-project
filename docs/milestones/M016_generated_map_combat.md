# M016 — Generated-Map Turn Combat Integration

Status: **Complete on `main` as of 2026-09-21** — automated validation passed on `codex/integrate-m016`, user confirmed all required manual play/visual checks, and [PR #3](https://github.com/ramstein2187-wq/new-game-project/pull/3) merged at `9b92d80`.

## Goal and scope

Use the existing generated map with M011–M015 action-cost turns, shared Actions, one rat's tactical AI and structured logs. Preserve `main.tscn`, the continuous-movement procedural playground, Micro-AP comparison and fixed-room combat scenes. No startup-scene change, new gameplay framework or generator/seed change.

## Integration and implemented behavior

- Based on main `19ce6d1` (M011–M015 merged via PR #2). History-preserving merge of existing `chat/procgen-time-combat` at `8b5c2a6`; existing M016 code was reused, not rebuilt. Document conflicts were reconciled using main's latest completed statuses and this current M016 record.
- `GeneratedMapCombatGame` adapts TimeCostGame boundaries/blockers to generated rows. Trees and ruin cells block both actors. Default spawns are path cells on row 1 and row min(9, height - 2); positions are deterministic, distinct and connected.
- Both actors still execute the existing Move/Attack/Wait actions via TimeCostGame, TimeScheduler, RatTactics and CombatEvent. No separate M016 combat rules or AI were introduced. Observation remains full-map prototype visibility, not sight/hearing.
- `generated_map_combat_playground.tscn` renders terrain/actors, routes inputs, presents player/debug logs, and R creates a fresh game for the next seed. The scene/controller are unchanged from the original M016 implementation.

## Initialization defects fixed

1. Reproduced a failing regression: inherited direct `reset()` retained generated terrain but restored fixed-room actor positions and door. The adapter now retains validated spawn positions and overrides `reset()`: reuse the base HP/clock/log/AI reset, then restore the generated layout and disabled door. Before first configure, construction retains base defaults. TimeCostGame itself is unchanged.
2. Reproduced acceptance of disconnected path spawns. `configure()` now validates connectivity against proposed rows before changing any live state. Empty/undersized/ragged maps, missing spawns and disconnected spawns are rejected without altering the current game or reset baseline.
3. Successful reconfiguration commits terrain/dimensions/spawns together before reset. Same-map repeated reset, post-combat/death reset and new-seed replacement clear time, HP, game-over, logs, ready times, response counts and temporary AI traits. No recursion or duplicate combat-reset implementation.

## Automated validation — 2026-09-21

Command: `bash tools/check_godot.sh` in `C:/GameDev/integration-m016`.
Engine: **Godot 4.7.2.stable.mono.official.ed1daf0bf**.
Result: editor parse/import and main startup pass; **all 14 test scripts pass**, exit 0, no reported script errors. Both `test_time_cost_input.gd` from main and `test_generated_map_combat.gd` from M016 are present and executed. Captured final output: `docs/reviews/2026-09-21-m016-validation.txt`.

Expanded the existing M016 test script (no existing tests removed/weakened):

- Direct/repeated reset, advanced time, damage and temporary AI state; rat death/unregistration and player defeat; valid spawns and disabled fixed-room door after reset.
- Minimum 4×4 map and changed dimensions; replacement by seed 1235 matches a fresh instance, including scheduler/log/state.
- Invalid map cases leave a complete active-state snapshot unchanged, and later reset still uses the previous valid map.
- Four deterministic generated seeds; matching dimensions/spawns, route availability, tree/ruin collision and all map boundaries.
- Generated-terrain constrained retreat, legal cells, injury/aggression choice changes, shared costs/reasons, player-priority ties, observable retreat without private score leakage.
- Headless scene viewport inputs Enter/L/F3/R check wait actions, log switching and complete rendered-map/game replacement. These are automated input tests, not GUI/manual verification.
- Existing fixed-room reset/input lifecycle and all earlier map, Action, scheduler, AI and log tests remain passing.

## Manual verification and `main` integration — 2026-09-21

The user reported completing **all** required M016 manual play/visual checks on the integration branch with no issues. The checked scope was generated-map movement/wait/collision, combat and rat retreat/defeat, reset across seeds and after encounters, player/developer log modes, and actual display readability. This is a user-reported sign-off; the agent did not directly run or observe the native Godot GUI playthrough. It is distinct from the earlier M011–M015 manual sign-off.

After the user confirmed the manual gate, [PR #3](https://github.com/ramstein2187-wq/new-game-project/pull/3) was merged. The resulting `main` merge commit is `9b92d80` (`Merge pull request #3 from ramstein2187-wq/codex/integrate-m016`); local `main` was fast-forwarded to match `origin/main` on 2026-09-21. No additional M016 gameplay changes or manual checks are claimed beyond the validated integration branch and the user's confirmation.

## Boundaries and subsequent work

One player/rat; default 40×30 display layout, atomic actions, English prototype log and full-map observation. No new tileset, animation, general Actor registry, multiple NPCs, perception, factions, abilities, equipment, larger world/biomes or persistence. These remain separate roadmap items; reusable stateful interaction objects remain M002. Seed compatibility and ruin reachability follow-ups remain unchanged.

Historical integration handoff and automated validation evidence: `docs/reviews/2026-09-21-m016-integration.md` and `docs/reviews/2026-09-21-m016-validation.txt`. Unfinished extensions are tracked in `docs/ROADMAP.md`.
