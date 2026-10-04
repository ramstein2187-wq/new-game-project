# M035 validation and performance record

2026-10-04 KST. Branch: `codex/cost-query-and-effect-order`; base: fetched
`origin/main` `5c527e2`. Dedicated worktree: `C:/GameDev/cost-query-and-effect-order`.
Original checkout remains on `codex/con-hp-scaling`, with its edits to project.godot,
body_templates.json and 12 untracked texture imports preserved.

## Implementation and scope

- `time_action.gd`: get_cost calls the common resolver with include_steps=false;
  cost_breakdown retains its default detailed call.
- `action_cost_resolver.gd`, `actor.gd`, `stat_resolver.gd`, `effect_store.gd`:
  propagate this optional flag to Move speed and external modifiers. Only explanation
  construction is conditional; all arithmetic, iteration, failure reasons, final
  epsilon/ceil/minimum and existing subclass base/tags/intrinsic hooks remain shared.
- `effect_store.gd`: dirty sorted scalar-ID cache; successful add/remove and every
  clear invalidate it. Failed mutations do not. First query rebuilds lexically using
  String(id), then locks the new array read-only. Public snapshots remain deep copies.
- Existing attributes/effects suite extended, test-only benchmark runner added,
  M035 registered; specs/wiki/decision and existing diagram updated.
- Generated dataset manifest refreshed through the official exporter. Only five
  runtime source hashes changed; dataset output values/notes and all fixtures unchanged.
- AI, TimeCostGame, scheduler, Body, content, RNG/events/log schema and UI code untouched.

## Measurement protocol

Same machine, Windows Godot `4.7.2.stable.mono.official.ed1daf0bf`, headless debug
script. Each scenario warms up 300 times, then takes 7 samples of 2,000 queries,
reporting the median and min/max. Fresh TimeCostGame/player per effect count; reused
cardinal MoveAction and basic AttackAction. Effects 0/4/16, inserted in reverse ID
order. Each effect: movement-speed +0.01 PERCENT, PHYSICAL cost -0.005 PERCENT and
+0.25 FLAT. Healthy Body, default weapon. Numeric and detailed queries are separate.
Timing does not include effect setup or instrumentation. Separate counters observe
2,000 additional queries after warm-up in a temporary project copy. No runtime
counter/hook/branch remains in production. Absolute times are never a pass criterion.

Baseline timing was captured **before runtime edits**. After discovering the existing
CON/HP side query, only its counter classification was repeated against runtime files
from `5c527e2`; the original timing samples were retained. Checksums agree before/after
and between uninstrumented/instrumented runs for every scenario.

Median milliseconds per 2,000 queries, before → after:

| Effects | Move numeric | Move detailed | Attack numeric | Attack detailed |
| ---: | ---: | ---: | ---: | ---: |
| 0 | 38.512 → 30.431 | 37.715 → 37.015 | 12.844 → 8.584 | 12.461 → 12.181 |
| 4 | 92.601 → 48.279 | 92.089 → 87.468 | 44.012 → 17.490 | 43.596 → 42.118 |
| 16 | 268.683 → 100.649 | 268.201 → 251.094 | 142.212 → 45.518 | 143.330 → 141.222 |

Raw min/max and counts: [before](m035-cost-before.json), [after](m035-cost-after.json).
Some detailed-query sample ranges overlap (0-effect Move and 16-effect Move/Attack).
These local observations do not establish a stable percentage speedup or whole-game
frame-time/throughput improvement. No percentage extrapolation is made.

Explanation Dictionary creations per 2,000 queries:

| Effects | Move numeric cost steps | Attack numeric cost steps | Move detailed cost steps | Attack detailed cost steps |
| ---: | ---: | ---: | ---: | ---: |
| 0 | 12,000 → 0 | 6,000 → 0 | 12,000 → 12,000 | 6,000 → 6,000 |
| 4 | 36,000 → 0 | 22,000 → 0 | 36,000 → 36,000 | 22,000 → 22,000 |
| 16 | 108,000 → 0 | 70,000 → 0 | 108,000 → 108,000 | 70,000 → 70,000 |

Existing `movement_efficiency → is_alive → hp → max_hp_breakdown → CON` creates an
additional **2,000** CON BASE steps in every Move scenario, before and after. Thus
total numeric Move step creations are 14,000/38,000/110,000 → 2,000, not zero.
HP query optimization is excluded by scope. Cost-specific arrays/steps/nested Move
stat explanations are omitted; unrelated HP explanation remains.

Sorted-ID rebuilds per 2,000 warmed queries, all effect counts and both modes:
Move **6,000 → 0** (speed, CON and cost queries); Attack **2,000 → 0**.
Mutation contract tests separately verify first-query rebuilds and failed paths.

Reproduction in WSL after editor import:

```bash
python3 tools/benchmark_cost_queries.py --output /tmp/cost-after.json --verify
# Reclassify the stored baseline counts without recapturing timings:
python3 tools/benchmark_cost_queries.py --output docs/reviews/m035-cost-before.json \
  --count-runtime-ref 5c527e2 --git-dir /mnt/c/GameDev/새-게임-프로젝트/.git
```

The counter runner matches current and base source sites for BASE and appended step
Dictionaries and sorting; append_array transfers are not double-counted. Counters and
timing runs are separate so instrumentation overhead never enters reported times.

## Validation

- Editor import/parse and attributes/effects: **748 assertions PASS**. New contracts
  cover numeric/detail scalar equality, all six action variants, mixed/tag-filtered
  effects, injuries, integer boundary 3080, minimum 1, disabled movement, invalid
  base/speed/intrinsic/weapon/actor, signed overflow, pure queries, no cost trace arrays
  or modifier-step construction, original typed detail arrays (including failure
  results), unchanged-order reuse, failures and mutation lifecycle.
- Existing reverse insertion, authored phase order, deep snapshot/Actor ownership
  and provenance checks remain active; movement golden, breakdown SHA and paired
  combat golden pass unchanged. No fixture recapture.
- Focused CON/HP **121**, Overview **281**, Inspector tones **53**, Character screen
  **284**, M028 **64** assertions PASS; M027 weapon/body/RNG and production batch PASS.
- Single-actor original CON/HP, M027 and normalized M024 replays: **3 seeds each PASS**.
- `bash tools/check_godot.sh`: **PASS**, exit 0; editor parse/import, startup, all
  **30 test scripts**, exact Godot dataset exporter --check. No script errors/warnings.
- `python3 tools/check_combat_datasets.py`: PASS. Offline wiki --check: **15 pages**;
  knowledge --check: **13 specs** and all six dataset catalogs PASS.
- Benchmark --verify: PASS for zero cost-specific numeric steps and zero stable-list
  rebuilds. No absolute-time thresholds.
- `git diff --check`: PASS. Intentional staging excludes generated texture imports.

GUI/manual F5/F6 play/readability, exported package and live Notion sync were not
performed. This is behavior-preserving query optimization, not balance acceptance.
Git is the source for the existing automatic Notion mirror after main integration.
Task branch is the handoff target; main is not merged.
