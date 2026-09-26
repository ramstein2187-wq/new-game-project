# M022 — Headless Combat Batch Simulation

Status: **Implemented and automatically validated** on `codex/m022-combat-batch-runner`, based on `origin/codex/m019-common-actor` at `a1a4b27`. Not merged to main.

## Purpose

Provide a deterministic, UI-free laboratory that can repeat the current production combat hundreds or thousands of times and report trustworthy aggregate results. The first reference scenario is symmetric Rat vs Rat. This milestone does not add a second combat implementation, change balance values, or redesign the scheduler.

## Production reuse and architecture

The simulation side A occupies the existing scheduler `player` slot while using `ActorDefinition.rat_common()` and `RatTactics`; side B uses the normal NPC slot and NPC response path. Both sides select actions through the production AI policy and execute them through `TimeCostGame.perform_action()`, the shared `TimeAction` classes, `CombatRules`, `TimeScheduler`, and `CombatEventLog`.

The small simulation adapter owns only scenario setup. The batch runner owns repetition, deterministic seed selection, termination limits, event-derived metrics, aggregation, and CLI presentation. It must not reproduce hit, damage, armor, body-part, movement, scheduler, legality, injury, retreat, or AI scoring rules.

## Determinism and termination

- Encounter seed: `base_seed + run_index`.
- Limits: positive `max_actions` and `max_world_time` per encounter.
- Outcomes remain distinct: `side_a_win`, `side_b_win`, `stalled`, and `simulation_error`.
- Wall-clock duration and throughput are presentation-only and excluded from deterministic results.

## Metrics

Batch results include scenario, seed range, requested/completed/error counts, wins, stalls, side-specific win rates, mean actions, mean world time, actual HP loss dealt by each side, and side/action-type totals plus per-encounter means. Production `CombatEvent` entries are the accounting source for actions and damage.

## CLI

Entry point:

```text
Godot --headless --path <project> --script res://tools/run_combat_batch.gd -- --runs=1000 --base-seed=0 --max-actions=500 --max-world-time=500000
```

The CLI rejects invalid or unknown arguments, prints a human-readable summary, and supports `--json` for the deterministic result without mixing benchmark timing into it.

## Work log / resumption checkpoint

- 2026-09-26: read project/user `AGENTS.md`, roadmap, milestone index, M011/M014/M015/M017/M018/M019 documents, production game/scheduler/actions/actors/AI/combat events, existing fixtures and balance probe.
- Confirmed M019 is not in main. Local and remote-tracking refs contain worldgen M020/M021 work and no M022. A separate M020 health-feedback branch also exists, so M022 remains the requested non-conflicting number.
- `git fetch origin` and `git ls-remote` could not refresh refs because Windows SSH host-key verification failed. No SSH security setting was weakened. Work proceeds from the locally available `origin/codex/m019-common-actor` at `a1a4b27` in dedicated worktree `C:\GameDev\combat-batch-m022`.
- The original checkout's untracked tileset imports and `docs/reviews` files remain untouched.
- Added a minimal `choose_ai_action(actor_id)` boundary used by the unchanged NPC dispatch and the AI-controlled side A. `CombatSimulationGame` changes only actor/scenario setup; `CombatBatchRunner` performs repetition, event consumption, guards and aggregation.
- `CombatEventLog` is drained after each side-A decision window so its 128-event presentation retention limit cannot discard statistics in long encounters. Damage uses successive event `remaining_hp` values, counting actual HP loss rather than nominal overkill.

## Validation — 2026-09-26

- `bash tools/check_godot.sh`: Godot `4.7.2.stable.mono.official.ed1daf0bf`; editor import/parse, main-scene startup and **21/21 test scripts passed**.
- New `tests/test_combat_batch_runner.gd`: production adapter inheritance and rat definitions/policies, real AI action/event/scheduler path, rat costs, deterministic aggregate replay, contiguous seed sequence, outcome/action/damage/world-time accounting and termination guards.
- CLI argument rejection was exercised with a nonpositive run count; `--json` was exercised on a two-run batch.
- Existing M011–M019 tests were retained unchanged and passed. No GUI/manual play result is claimed; this milestone's deliverable is headless and has no visual acceptance gate.
- Full evidence and exact sample summaries: [M022 validation report](../reviews/2026-09-26-m022-validation.md).

## Sample results

Both samples used `max_actions=500` and `max_world_time=500000`. Wall time is machine-dependent and excluded from deterministic output.

| Metric | 100 runs, seeds 0..99 | 1000 runs, seeds 0..999 |
| --- | ---: | ---: |
| Completed / errors | 100 / 0 | 1000 / 0 |
| Side A wins | 12 | 155 |
| Side B wins | 14 | 137 |
| Stalled | 74 | 708 |
| Mean actions | 379.990 | 364.889 |
| Mean world time | 180644.680 | 172292.902 |
| Mean damage A / B | 15.230 / 15.590 | 16.159 / 15.329 |
| Wall time | 11.664 s | 111.656 s |
| Throughput | 8.57/s | 8.96/s |

The 1000-run action totals were A: move 164131, attack 8251, interact 1000, wait 9381; B: move 161453, attack 7752, interact 0, wait 12921. The high stalled count is a measured result of current production tactics and the declared safety limit, not a draw conversion or hidden balance adjustment.

## Known limitation

Side A intentionally retains the existing player-priority ready-time semantics. Even a symmetric Rat-vs-Rat batch can therefore have first-mover/tie bias. M022 reports side A and side B separately and does not compensate for that rule. A later comparison tool may pair A-vs-B and B-vs-A runs over the same seeds.
