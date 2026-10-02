# CON → Max HP integration work log

## Request and isolation

- Repository: ramstein2187-wq/new-game-project.
- Verified fetched main: `78ab715b226efc2ba4441b6d4016a46079b5886c`.
- New branch/worktree: `codex/con-hp-scaling-integration`, `C:/GameDev/con-hp-scaling-integration`.
- Reference implementation: `005c7a637695595680d7225c58011a2c0d3f1aa2` on `codex/con-hp-scaling`; already completed/pushed, not unfinished.
- Original checkout has modified project.godot/body dataset and 12 untracked import files. Do not change it.
- No merge/cherry-pick, destructive Git commands, force push, or main merge.

## Review findings

- Original formula: max(1, round(Base HP × (1 + 0.05 × (resolved CON − 10)))); Human Base HP changes 50 → 30.
- Original Actor queries stat_breakdown(CON), not an independent raw-CON path. ActorDefinition.max_hp is retained as authored Base HP.
- Original policy: preserve absolute damage; full actors stay full when maximum grows, wounded actors gain/lose the maximum delta; a decrease can kill, and later increases do not revive.
- Original refresh covers Actor effect APIs and new allocation wrappers, but direct AbilityScores.allocate/reset can bypass it. Address supported mutation paths and HP clamping.
- Original Overview uses Actor.max_hp_breakdown, but Inspector does not show the nested CON Effect sources.
- Original replay versions the 30-HP result and checks historical 50 HP against M027, but drops the normalized M018 guard. Retain both historical guards.
- Original exporter changes monster hp from definition Base HP to fresh runtime Max HP. Current monster CON is 10, so numeric monster records should remain identical; document the meaning and verify against real Actors.
- Original primary_attribute_semantics decision duplicates M033 semantics. Current main authority is docs/decisions/attributes_effects.md plus docs/specs/primary_attribute_checks.md. Do not import the old semantic document.

## Final implementation and verified evidence

- Retained original formula, baseline/minimum/rounding, Human Base HP 30, absolute damage policy and original 30-HP replay fixture.
- Max HP is a pure read-only resolved query. Actor stores damage/death state rather than a second writable/cached maximum; explicit HP writes clamp to bounds.
- AbilityScores.changed covers existing allocate/reset callers without duplicate Actor wrappers or debug-panel changes.
- Lethal CON mutations call existing game death handling; removed/reset actors cannot affect new state. Signal passes the actor as an argument rather than retaining a bound Actor reference.
- Overview Inspector additionally explains the nested resolved-CON Effect steps and provenance.
- M033 semantic authority remains in existing docs; added only the narrowly scoped CON-HP decision/spec/M034 and updated current wiki/roadmap/index.
- Dataset hp comes from fresh Actor.max_hp; current monster records remain numerically unchanged because authored CON is 10. Exported notes explain Base HP vs resolved maximum.
- Kept the limb-disable test on explicit synthetic 50 Base HP rather than weakening the existing assertion to accept HP death first. Default 30-HP behavior is covered separately.
- First full run: 30/30 scripts passed; generated dataset rejected stale notes/hashes. Regenerated with the official Godot exporter.
- Final `wsl --cd /mnt/c/GameDev/con-hp-scaling-integration bash tools/check_godot.sh`: exit 0, **All Godot checks passed**. Editor import/main startup + all 30 scripts + exporter exact check.
- Assertions: CON HP 121; M033 attributes/effects 422; Character Overview 281, tones 53, screen 284; M028 64. Body, multiple NPC, production batch and scheduler pass.
- Replay: original 005c7a6 30-HP fixture unchanged and passes; historical 50-HP M027 + normalized M024/M018 pass across seeds 17017/82/999. No fixture recapture; only intended Human Base HP change affects default replay.
- Offline wiki metadata (15 pages) and knowledge/spec/dataset validation (13 specs) pass; no live Notion writes.
- Additional path/UID/scene audit passes: 146 resources, 107 script UIDs and all 7 scenes. Initially it rejected an absent pre-existing ignored capture-output directory; created `.godot/character-overview-captures` as the tool prerequisite without changing source. This is not GUI/capture evidence.
- Final original-checkout status matches the initial status (same two modified files and 12 untracked imports); HEAD remains 005c7a6. Original feature remains 1 ahead/17 behind main, merge base 10f6f31.

## Changed files

- Runtime: game/actors/actor.gd, game/actors/actor_definition.gd, game/combat/ability_scores.gd, game/time_cost_game.gd.
- Presentation: game/ui/character_overview_query.gd, game/ui/character_overview_text.gd.
- Dataset: tools/export_combat_datasets.gd, docs/datasets/monsters.json, docs/datasets/combat_content_manifest.json, docs/datasets/README.md.
- Tests: tests/test_con_hp_scaling.gd (+uid), tests/test_common_actor.gd, tests/test_multiple_npcs.gd, tests/test_combat_body.gd, tests/test_single_actor_replay.gd, tests/support/fixed_combat_game.gd, tests/fixtures/primary_attribute_hp_single_rat_replay.sha256.
- Documentation: docs/decisions/con_max_hp.md, docs/decisions/attributes_effects.md, docs/specs/con_max_hp.md, docs/specs/character_overview.md, docs/diagrams/con_max_hp.svg, docs/diagrams/character_overview.svg, docs/wiki/attributes_effects.md, docs/wiki/character_screen.md, docs/milestones/M034_con_max_hp.md, docs/MILESTONES.md, docs/ROADMAP.md, this log.

## Remaining handoff

Commit/push task branch; create/attach PR. Manual F5/F6 health Inspector readability,
interactive health feedback/play/balance, exported-package and live Notion acceptance
remain unperformed. No direct main merge. Generated untracked tile .import files are
preserved and excluded from the task commit.

The final commit SHA/remote/PR handoff is recorded locally in
`C:/GameDev/con-hp-scaling-integration-handoff.md` after commit creation, avoiding
a self-referential commit SHA inside its own source tree.
