# Worktree and experimental-prototype retirement audit — 2026-10-08

## Decision scope and safety

This is a **read-only disk/worktree audit** plus a separately proposed, reversible M010 Micro-AP source retirement. The user explicitly requested cleanup, but **no local historical worktree, raw folder, user-modified file or branch was deleted** in this pass; automated worktree deletion is deferred until per-worktree safeguards and a tool that safely supports file operations are available.

The audit used `git worktree list --porcelain`, source-worktree status checks, alternate per-worktree Git directories for Windows-generated `.git` pointers, checked remote refs and examined prototype resource consumers.

**Warning:** Windows-side `.git` files frequently point to `C:/GameDev/...`; from WSL, `git worktree list` may show these as **prunable even when the files physically exist and the remote commit is preserved**. Never run `git worktree prune` / `git worktree remove --force` or delete the directory solely because of that label.

## Observed workspace inventory

- Git reports **80 registered worktrees** including the main checkout.
- **61 under `/home/y89114/.devspace/worktrees`**: 25 wholly clean, 25 with only untracked Godot PNG import sidecars, **11 with additional real modified or untracked files** (some also include PNG import sidecars).
- The `C:\GameDev\` working folders contain at least **17 still-registered named worktrees** whose branch HEAD matched `origin/<branch>` at the audit. Most have 12 generated PNG import sidecars.
- Additional older `C:\GameDev\` folders have `.git` worktree pointers but their registry directory is missing. They are **orphans requiring individualized inspection**, not a `git worktree prune` target. Examples: `basic-melee-v2`, `combat-batch-m022`, `integration-m015`, `integration-m016`, `integration-m019-m022`, `m024-combat-data`, `m027-physical-combat`.
- The actual `C:\GameDev\새-게임-프로젝트` checkout is user-modified (`docs/datasets/body_templates.json`, `project.godot`, import sidecars) and is never a cleanup target.
- The current v5 `history-generator-v5` worktree is deliberately retained as the latest unmerged development branch, regardless of remote preservation.

### Protected DevSpace worktrees (non-import changes)

| Folder | Important status |
| --- | --- |
| `repo-16f91878` | `chat/map-generator-research`: untracked procedural-map research scripts |
| `repo-221aeaf1` | `chat/preservator-faith-terminology`: changes to historical/cultural content and canon |
| `repo-3a3350ab` | detached worktree: changed milestone/roadmap/datasets |
| `repo-5ec09b2d` | detached worktree: modified world generator/test and untracked UIDs |
| `repo-669ec889` | detached worktree: temporary naming preview files (untracked, still preserve until reviewed) |
| `repo-883e7d62` | `chat/knowledge-catalog-expansion`: staged data catalog mutations |
| `repo-b0e4b227` | detached: earlier v5 artifact-hygiene documentation edits and generated report |
| `repo-de1b9e20` | `chat/character-overview-adaptive-inspector`: UI decision/report changes |
| `repo-e266872e` | detached: earlier Player Experience First documentation edits |
| `repo-f3f028ba` | `chat/compact-character-attributes`: character UI code/doc changes |
| `repo-f85e2531` | `chat/specs-and-datasets`: untracked diagrams/tool |

Windows protected: `character-overview-v1` has modified `project.godot`; `history-social-incidents-v1` has nine modified source/spec/canon files, in addition to untracked import files. Both require manual preservation/reconciliation before any worktree retirement.

## Recommended worktree retirement order (no execution here)

1. **Archive all untracked/mutated worktrees** or complete their intended PRs before changing directories. Never equate `git status -uno` with a clean worktree: it excludes untracked files.
2. **Identify 25 fully clean DevSpace worktrees** and confirm no active session or editor uses them; require remote-tracked or otherwise deliberately preserved SHA before removal. Use normal `git worktree remove <exact path>` with **no force** only after safety conditions are satisfied.
3. **Review 25 import-only DevSpace worktrees.** PNG `.import` sidecars appear generated, but they are still untracked local files. Do not silently erase them; explicitly distinguish import metadata and actual authored assets, then regenerate/discard only with verified source and user authorization.
4. **Handle Windows worktrees from a Windows-aware environment.** Fix the WSL/Windows path mismatch when checking status; `prunable` alone is not proof the path is gone. Require clean tracked files, verified additional untracked files, matching remote SHA, and no active Godot/agent session.
5. **Reconcile orphaned directories** with broken historical worktree pointers separately. Do not manually `rm -rf` their folders. Decide archive vs safe normal retirement after recovering their original commit and checking for uncommitted work.
6. **Delete branch refs only as a separate later decision.** Deleting a working directory must not automatically delete local/remote branches or the ability to recover history.

Record a before/after worktree list and disk usage in the final execution report. If no safe deletion tool is available, provide the explicit guardrails rather than claiming disk space was reclaimed.

## Experimental runtime dependency audit

### Retire: M010 Micro-AP test prototype

- The chosen production time system is **M011 action-cost**, not M010's alternate 3-AP turns.
- The only current non-document code references to `prototypes/micro_ap` are its **own test-room scene/script** and `tests/test_micro_ap_game.gd`.
- The project's `run/main_scene` points to `scenes/debug/generated_map_combat_playground.tscn`.
- The test runner dynamically runs `tests/test_*.gd`; retiring the M010-only test alongside the unused scene and model does not require rewriting a static test list.
- Proposed source deletion: `prototypes/micro_ap/micro_ap_game.gd`, `.uid`, `micro_ap_test_room.gd`, `.uid`, `micro_ap_test_room.tscn`, and `tests/test_micro_ap_game.gd`, `.uid` (**seven paths**).
- Preserve M010 milestone and associated time-model design rationale; mark wiki and README appropriately. Do not rewrite old recorded test evidence.
- Source is recoverable from parent revision and the Git history if an AP comparison becomes useful again.

### Retain: original exploration prototype

`scenes/debug/procedural_playground.tscn` directly imports `prototypes/exploration/player.gd`, and `tests/test_basic_interaction.gd` loads `prototypes/exploration/main.tscn`. Do **not** delete the exploration folder until a separate replacement is implemented and manually/automatically tested.

### Retain: other diagnostic and version tests

Keep all M011 action-cost, M012 logging, character, world-generation and combat tests, historical fixture data, script UID references, and scenario tools unless a focused consumer/dependency audit shows they are genuinely obsolete.

## Validation and status

- Pre-change **main full Godot gate** executed: editor import, startup smoke, all test scripts, and combat dataset check passed.
- Static consumer audit found no external gameplay consumer of Micro-AP after deleting its dedicated test/scene.
- **Post-deletion Godot test has not yet been run on the proposed GitHub branch**. This source-retirement PR should be merged only after an exact checkout of the proposed branch passes the full `bash tools/check_godot.sh` gate and an import/scene reference check.
- The branch proposal is documentation + removal of one unused self-contained prototype; no gameplay algorithm or chosen scheduler is changed.

## Next steps

1. Review and validate the M010 retirement PR in an actual post-change checkout; merge only after tests pass.
2. Run a controlled, independent worktree-retirement operation for clean candidates with the safeguards above.
3. Repeat the inventory and record actual reclaimed disk space.
4. Revisit remaining legacy diagnostics only when their test coverage and reproduction purpose have been replaced.

Related: [Repository artifact cleanup audit](https://github.com/ramstein2187-wq/new-game-project/blob/chat/history-v5-artifact-cleanup-20261008/docs/reviews/2026-10-08-repository-hygiene-audit.md) exists in a separate v5-derived branch; PR #45 targets v5 rather than main. Player Experience First is separately documented in PR #44.
