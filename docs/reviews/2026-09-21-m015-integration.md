# M011–M015 integration preparation — 2026-09-21

## Resume checkpoint
- Source checkout: C:/GameDev/새-게임-프로젝트, chat/procgen-time-combat at 8b5c2a6. Preserve 13 untracked PNG import files and docs/reviews/ from prior work.
- Separate worktree: C:/GameDev/integration-m015, codex/integrate-m011-m015, created from main 3df96cb.
- WSL git fetch origin succeeded. Windows Git SSH host verification failed; gh unavailable on Windows and WSL. Use WSL for remote Git and connected GitHub tools for PRs.
- Verified linear ancestry: main -> M010 ecd5302 -> M011 ee48940 -> M012 b6cfce6 -> M013 404e62b -> M014 375c2a0 -> M015 bccffd0 -> roadmap sync 792c68f.
- World persistence 18f7511 adds design/roadmap only after 792c68f. Merge this cumulative tip once; do not duplicate individual milestone merges.
- M016 already registered/implemented separately at 8b5c2a6, diverging after 792c68f. Preserve as subsequent work; exclude M016 code from this PR.
- No relevant tracked local changes or unpushed commits observed. chat/devlog is behind its remote by two commits; unrelated.
- Completed: cumulative merge, code/test inspection, clean-worktree automated validation, input lifecycle regression and document synchronization. Publication status is recorded below. Native app automation is disabled in this session; no manual play was performed.

## Branch audit and integration strategy

Remote refs were refreshed successfully using WSL `git fetch origin`; the connected GitHub branch listing agreed with the local remote inventory. Windows SSH failed host-key verification, so its failed fetch was not used as evidence of freshness. Both Windows and WSL lack `gh`; use the connected GitHub tools for PR metadata.

| Branch (chat/ prefix except main) | Tip | Commits beyond main | Verified contents / disposition |
| --- | --- | --- | --- |
| main | 3df96cb | 0 | M009 baseline; unchanged |
| micro-ap-test-room | ecd5302 | 2 | M010 plus explainability decision; preserve paused comparison |
| time-cost-scheduler | ee48940 | 4 | M011 plus 13 Ever Rogue PNG assets; preserve accumulated history |
| structured-combat-log | b6cfce6 | 5 | M012, includes preceding prototypes |
| independent-time-scheduler | 404e62b | 6 | M013, includes M012 |
| common-action-system | 375c2a0 | 7 | M014, includes M013 |
| tactical-ai-prototype | bccffd0 | 8 | M015, includes all M010–M014 code/tests |
| roadmap-milestone-local-sync | 792c68f | 9 | Only AGENTS/index/roadmap changes beyond M015 |
| world-persistence-design (remote only locally) | 18f7511 | 11 | Two commits after local-sync: decision document and roadmap; no persistence code |
| procgen-time-combat | 8b5c2a6 | 10 | One M016 commit after local-sync; generated-map adapter/scene/test, separate from persistence design |

Evidence: `git log --all --graph`, `git rev-list --left-right --count`, `git merge-base --is-ancestor`, per-branch `git diff --name-status`, source and test reads. All named M010–M015 and roadmap/persistence tips are ancestors of integration merge `70409f2`; M016 is not. The two later branches share `792c68f`, with persistence-only 2 / M016-only 1 commits. No relevant tracked local changes or unpublished commits were found after fetch. Unrelated `chat/devlog` is two commits behind origin; the old `chat/map-generator-research` has no upstream and a separately registered worktree, and is already an ancestor of main. Neither was modified.

Created `codex/integrate-m011-m015` from main in `C:/GameDev/integration-m015`; merged `origin/chat/world-persistence-design` once with `--no-ff`. This cumulative source contains the requested code and latest relevant documents. Merge had **no conflicts**. No individual M010–M015 merges/cherry-picks were duplicated. Generator, baseline scenes, player/chest code and `project.godot` are unchanged relative to main; startup remains `main.tscn`, with experiments run via F6.

Existing [PR #1](https://github.com/ramstein2187-wq/new-game-project/pull/1), `chat/roadmap-milestone-workflow` -> main, is open and unmerged (head `70fb392`). Its three files were compared: the integration includes its documentation workflow intent plus later milestone history and explainability rules. It is not an ancestor. A non-mutating `git merge-tree --write-tree` trial reports `docs/MILESTONES.md` content and `docs/ROADMAP.md` add/add conflicts if both lines are merged unchanged. Recommend treating #1 as superseded when this candidate is accepted; leave #1 and its branch untouched. If #1 lands first, refresh main and reconcile those documents before merging this candidate.

## Actual implementation and validation

| Milestone | Code verified | Automated result in this worktree | Manual / main integration |
| --- | --- | --- | --- |
| M010 | Separate MicroApGame/scene, 3 AP baseline | Existing test passes | Paused; included for comparison, not selected model |
| M011 | Positive action costs, player-first ties, multiple rat responses | `test_time_cost_game.gd` passes | Pacing pending; not on main |
| M012 | Structured events, 128-entry history, observer filtering, player/debug formatters | `test_combat_log.gd` passes | UI legibility pending; not on main |
| M013 | Independent scheduler, stable NPC ordering, removal and reset | `test_time_scheduler.gd` passes, including three NPC IDs | Playable model still one rat; not on main |
| M014 | Shared Move/Attack/Interact/Wait pipeline; legality, cost, event and clock handling | `test_common_action_system.gd` passes | Actual interaction feel pending; not on main |
| M015 | Valid candidate scoring, deterministic ties, per-action injury/aggression reevaluation, observable retreat cue | `test_tactical_ai.gd` passes | Visible retreat/timing play pending; not on main |
| M016 | Separate generated terrain adapter, gameplay scene and test inspected at 8b5c2a6 | Historical record only; not rerun here | Excluded code; manual still pending |
| M002 / persistence | Room door is hardcoded; initial chest only prints. Persistence branch contains design, not implementation | No claim of implementation validation | M002 planned; persistence design only |

`bash tools/check_godot.sh` ran twice: first on the newly imported worktree with 12 existing test scripts, then after adding the input regression with 13 scripts. Both exited 0 under `4.7.2.stable.mono.official.ed1daf0bf`; editor parse/import and main startup passed, and every script printed PASS with no reported engine/script errors. Final captured output: `docs/reviews/2026-09-21-m015-validation.txt`.

New `tests/test_time_cost_input.gd` pushes keyboard events through the live headless viewport, covering actual scene readiness/input routing, echo suppression, L/F3 toggles and private-reason suppression, door cost/occupied-door rejection, NPC tie rejection, lethal response termination, post-defeat input rejection, reset and resumed Enter wait. This closes wiring/lifecycle coverage gaps; it is **automated**, not a manual play result. No production-code defect was reproduced in the requested fixed-room scope, so no game code was changed or feature expanded.

## Follow-up classification

### A — required before main merge

- Automated basic rules and regression suite: passed as above. Re-run if source/main changes or a fix is made.
- Manual fixed-room check for M011/M013: 500-cost door vs 1000 move/wait vs 1250 bump attack, fast rat multiple responses, player-first ties, readable sequence.
- Manual M012 check: L/F3 toggles, default vs detailed player messages, developer trace, text wrapping/room overlap at the actual display size. Automated label-content checks do not validate layout.
- Manual M014 lifecycle check: blocked movement, door open/close including occupied doorway, attack/wait, death, R reset. Automated coverage passes, actual input feel remains pending.
- Manual M015: injure the rat, observe a legal retreat and its player-visible cue; compare F3 explanation. No hidden factor leakage in player text. Fix only reproduced basic defects and add focused regressions if necessary.
- No confirmed production fix remains for the fixed-room scope; manual verification is an explicit outstanding merge gate. Main merge is not authorized by this task.

### B — generated-map integration, existing M016

- Reuse the registered M016 and its existing `chat/procgen-time-combat` work. Minimal goal: generated-map player/rat movement and combat through shared actions, generated blockers/bounds, correct clock and logs. Preserve fixed-room and original procedural scenes.
- Validate deterministic connected spawns, several seeds, no terrain penetration, encounter/combat/retreat loop, regeneration and log reset, and full regression suite after combining branches.
- Direct `GeneratedMapCombatGame.reset()` inherits fixed-room placements/door while generated rows remain; code inspection agrees with the prior local review. Reproduce/fix in M016 with a direct-reset regression. Current UI R creates/configures a new model; do not label that path failed.
- Manual map/log readability and pacing remain pending. Full-map observation is an explicit prototype limit; sight/hearing is not added as a gate.
- M016 must exclude world-size/biome expansion, factions, equipment, long-term AI and full world persistence.

### C — separately scoped later work

- Common Actor state and multiple NPC gameplay; scheduler ID support alone is insufficient.
- NPC movement/action animation; current atomic one-tile actions are within M015 scope.
- Reusable stateful doors/chests under M002; persistence later consumes their state rather than counting room door booleans as M002 completion.
- Sight/hearing, factions, richer goals, new abilities and broader explainable feedback.
- Three small Zones (persistent village, renewable wilderness, persistent ruin), freeze/restore and save/load with unique entity/item ownership; design only until a new implementation milestone is scoped.
- Later RPG content/world expansion. Do not assign M017+ preemptively.

Existing baseline concerns from the preserved 2026-09-20 local review (seed input folding and ruin reachability) were recorded as follow-ups, not silently repaired or claimed retested. Generator/seed contracts remain unchanged. They become relevant before save compatibility is fixed or ruins become required gameplay destinations.

## Document changes and next handoff

- Synchronized `docs/MILESTONES.md` and `docs/ROADMAP.md`: candidate vs main, automatic vs manual, A/B/C, M002 and design-only persistence.
- Imported the existing M016 milestone document as a branch-qualified handoff, retaining its historical validation and narrowing next checks; no M016 implementation copied.
- Original M010–M015 milestone histories and long-lived decisions are retained without expanding their completion criteria. Previously deferred scheduler/Action/AI extractions were realized by M013–M015, not new open requirements on M011.
- Original checkout remains on `chat/procgen-time-combat` at `8b5c2a6`, with original untracked imports/reviews preserved. Integration import generated its own 13 untracked asset metadata files, excluded from commits.
- Published [Draft PR #2](https://github.com/ramstein2187-wq/new-game-project/pull/2): `codex/integrate-m011-m015` -> `main`. Integration merge: `70409f2`; validation/document commit: `d899264`. This final handoff-only commit records publication; use `git log -1 codex/integrate-m011-m015` for its SHA. Main and all pre-existing branches remain unchanged.
- WSL cannot resolve the Windows-created worktree's `.git` backlink. Remote push therefore ran from the original checkout with an explicit `codex/integrate-m011-m015` ref; it did not switch or edit the original checkout. For later pushes use `wsl --exec git -C /mnt/c/GameDev/새-게임-프로젝트 push origin codex/integrate-m011-m015`; use Windows Git in the integration worktree for local operations.
- Before merge, complete A manual checks, inspect the PR diff, refresh main and resolve any intervening document changes. Do not merge main or delete any branch as part of this preparation. M011–M015 remain implemented/automatically verified on the candidate, not manually completed or merged.

## Superseding handoff

The preparation snapshot above is historical. On 2026-09-21 the user confirmed manual validation complete and authorized main merge. The A gate is closed; see `docs/reviews/2026-09-21-m015-merge.md` and PR #2 for the current handoff. M016 remains separate; prior prohibitions on merging applied to the preparation request, not this subsequent explicit authorization.
