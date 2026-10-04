# M035 — Cost queries and effect ID order

Status: **Complete on task branch** `codex/cost-query-and-effect-order`; main integration pending.
Base: fetched `origin/main` `5c527e2`, 2026-10-04 KST.
Workspace: `C:/GameDev/cost-query-and-effect-order`.

## Scope and completion criteria

- One authoritative arithmetic/iteration path with optional explanation construction,
  propagated through movement stat resolution and external cost modifiers.
- Reuse only sorted scalar effect IDs; preserve lexical String(id) and authored order,
  snapshot deep isolation, Actor ownership, failure behavior and mutation visibility.
- Preserve costs, AI decisions, Body, scheduler, RNG, events, logs and all fixtures.
- Baseline/after Godot measurements: 0/4/16 effects, Move/Attack, numeric/detailed,
  warm-up and repeated samples; step creations and order rebuilds counted separately.
- Extend existing attributes/effects suite; focused and full Godot/dataset validation.
- Update specs/wiki; explicit stage, commit and push; no main merge or Notion body edits.

## Resume record

- Read AGENTS, roadmap/index, M031/M033/M034, attributes/effects decision,
  cost-resolution and Character Overview specifications; inspected production
  Action/Actor/Store/AI/perform_action and Overview/Inspector call sites.
- Original checkout remains on `codex/con-hp-scaling` `005c7a6`, with existing
  untracked assets; isolated worktree created from current main. No user files moved.
- Current runtime matches reported analysis; no cost_breakdown overrides exist.
  Existing custom get_cost test overrides remain independent virtual methods.
- M034 is present (its historical task status predates PR #42); selected M035.
- Baseline captured before runtime edits using Godot 4.7.2, 300 warm-up queries,
  7 samples of 2,000 queries per Move/Attack × numeric/detailed × 0/4/16 effects.
  Uninstrumented timing and isolated instrumented counts are separate; JSON evidence
  lives in `docs/reviews/m035-cost-before.json` and `m035-cost-after.json`.
- Implemented optional include_steps flag through common cost/stat/modifier resolver;
  steps=null on numeric cost phases, unchanged formula and detailed traces.
  Cache only read-only lexical IDs; dirty on successful add/remove and clear.
- Focused attributes/effects suite passes 748 assertions including unchanged movement,
  breakdown and paired-batch golden, action parity, failures, numeric trace omission,
  cache reuse/invalidation, existing snapshot ownership and reverse insertion.
- Found existing Move efficiency → is_alive → HP/CON explanation query. Preserve this
  unrelated HP path; numeric cost-specific steps are zero, total Move still creates
  one CON BASE step/query in this benchmark. Counters separately report both.
- Current measurements pass allocation/order assertions (--verify); time is report-only.
- Final review preserves existing typed Array[Dictionary] detail fields, including
  failure traces; focused assertions and measurements repeated after this refinement.
- Focused CON/HP, Overview/Inspector/screen, M027/M028, batch and 3-seed replay guards PASS.
- Full `bash tools/check_godot.sh` PASS: import/startup, all 30 scripts and exact dataset
  check; offline fingerprints/wiki (15 pages)/knowledge (13 specs) PASS. Fixtures unchanged.
- [Measurement and validation record](../reviews/2026-10-04-m035-cost-query-and-effect-order.md).
  GUI/manual play, exported package and live Notion remain unperformed.
- Handoff uses explicit intended-file staging, one coherent commit and push of the task
  branch; do not merge main. Resume identity: `git log -1` on the branch named above.
