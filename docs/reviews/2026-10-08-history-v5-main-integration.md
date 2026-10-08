# History v5 main integration — 2026-10-08

## Git integration

- Source: `codex/history-generator-v5` at `6624c53622328bd7e4beb69096037274cc8efcd7`, including review artifact cleanup from PR #45.
- Before integration: `main` at `597275de06e8116f1c4f87195aa5e218f9cac5d0` (PR #48).
- Merge preparation: `chat/history-v5-integration-20261008` integration commit `7e92e32` (both main and v5 parents).
- Final fix commit: `bd6c8b67`.
- PR: [#50](https://github.com/ramstein2187-wq/new-game-project/pull/50), merged on 2026-10-08 into `main` at `c64083b835faa763aa61a737d46d94c491b08ed2`.
- Original Draft PR #49 was superseded; source branch was not rewritten.
- Original user checkout `/mnt/c/GameDev/새-게임-프로젝트` was dirty on `codex/con-hp-scaling` and **left untouched**. New checks ran in an isolated DevSpace worktree.

## Reconciliation

- Preserve main's M035 naming, M034 CON/HP, M046 cost query/effect ordering, M010 Micro-AP retirement and Player Experience First decision.
- Introduce M036–M044 history, faction identity/culture, social incidents, v4 projects/scars and sparse v5 evidence/archaeology contracts.
- Reconcile `README.md`, `docs/MILESTONES.md`, `docs/ROADMAP.md` without resurrecting older completed statuses.
- Preserve v5 artifact cleanup and two archived request texts. `.gitattributes` excludes precisely those two Markdown snapshots from whitespace warnings because they intentionally use trailing two-space hard breaks.
- `tools/check_project_layout.gd` skips `res://` prefixes concatenated at runtime, not arbitrary missing static references.

## Verified on the integrated result

- Godot 4.7.2 Mono editor parse/import PASS and main-scene startup PASS.
- 38/38 project test scripts PASS. A monolithic `bash tools/check_godot.sh` reached its 300-second execution limit after the first 20 scripts had succeeded; all remaining scripts were subsequently run to completion in bounded groups. **Do not describe the monolithic command itself as PASS.**
- M031 748 assertions; CON/HP 121; Character tones 53; Overview 281; Character screen 284; AI M028 64.
- Faction culture 45,063 assertions; identity 12,983; history v0.2 48,463; history topology 100,458; history v4 redesign 15,457; history v5 9,068 checks/0 failures; population strata 7,539; social incidents 24,725; naming 30,266.
- Generated combat datasets `--check`: PASS.
- Layout audit PASS: 229 resources, 182 script UIDs, 6 instantiated scenes.
- Deterministic canonical preview SHA256 for seed 42: v5 identical across two runs (`9a9dc639...`); v4 identical across two runs (`a3bb5017...`).
- `python3 tools/sync_notion_wiki.py --check`: PASS, 20 wiki pages.
- `python3 tools/sync_notion_knowledge.py --check`: PASS, 17 specs and relevant content catalogs.
- `git diff --check`: PASS after narrowly scoped archived-Markdown whitespace attributes.

## Deferred acceptance

- World-map placement, Actor action execution, playable interaction, saved-game state and human content evaluation are **not** included in this integration; v5 provides generator and consumer contracts.
- The two original 5,000-seed v5 corpus results/reviews remain historical branch evidence; this integration performed fresh project script validation and two-run per-version deterministic spot checks, not a new 10,000-seed audit.
- Manual F5/F6 gameplay, lore-language review and live Notion external-mirror verification remain separate.

## Follow-up

This record and `docs/MILESTONES.md` / `docs/ROADMAP.md` reflect the main integration after PR #50.
