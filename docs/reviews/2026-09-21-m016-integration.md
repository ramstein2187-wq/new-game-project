# M016 stabilization — 2026-09-21

- User request: preserve/reuse M016, reproduce/fix reset, integrate current main, full tests, docs and PR. Merge only after essential manual verification; prior M015 manual confirmation does not cover M016.
- Refreshed origin successfully. main/origin main 19ce6d1; M016 local/remote 8b5c2a6; common ancestor 792c68f. No tracked local changes or ahead commits in these branches.
- Original checkout remains chat/procgen-time-combat with 13 untracked PNG imports and docs/reviews; untouched. Existing M015 worktree remains separate. Other old registered WSL worktrees not removed.
- New worktree C:/GameDev/integration-m016, codex/integrate-m016, based on origin/main. Main adds M015 input regression and current planning/persistence documents; M016 adds adapter/scene/test and older documents.
- Adapter inherits shared TimeCostGame actions/scheduler/AI/logs. Trees/ruin cells and bounds block movement, path rows 1 and min(9,height-2) provide spawns. configure resets fixed room then installs terrain/spawns; direct reset is inherited and loses generated placements. Scene R constructs a fresh model. No shared gameplay code divergence from main.
- Next: merge M016 history, resolve documents preserving main state; add failing reset regression before fix; run full combined suite, update docs and draft PR. Native app UI control is disabled; GUI/manual checks remain pending unless user supplies M016 results.

## Implementation and validation checkpoint

- Merge commit f1b8851 preserves main and M016 parents. Conflicts only in MILESTONES, ROADMAP and the M016 milestone; main documents retained initially, then updated to current M016 state. No main tests lost.
- RED 1: new direct-reset test failed with `Direct reset must retain generated terrain and restore generated spawns` (check_godot exit 1).
- RED 2: staged map with rows TTTT / T#TT / TTTT / TT#T / TTTT was accepted despite disconnected spawns; regression failed with `Invalid or disconnected spawn data must be rejected` (exit 1).
- Fix is confined to GeneratedMapCombatGame: cache validated spawns, override reset using super.reset plus generated layout, validate route before committing configuration. TimeCostGame, Actions, scheduler, AI, generator, seeds and scene/controller remain unchanged.
- Final combined `bash tools/check_godot.sh` passes under Godot 4.7.2 Mono: import/parse, main startup and all 14 scripts (13 main + M016). Final output in 2026-09-21-m016-validation.txt. Expanded tests cover reset, damage/death, traits, malformed/disconnected maps, dimension/seed replacement, terrain retreat/ties/privacy and scene Enter/L/F3/R input. Existing fixed-room input regression confirms its reset behavior remains intact.
- Original M016 tests retained; no failing assertion weakened. Tests first failed against the old code and passed after the fix.
- No GUI/manual play performed: native app UI automation is disabled. Remaining manual checklist is in the M016 milestone. Do not reuse prior M015 manual sign-off for M016; main merge remains pending per the user's explicit condition.
- Roadmap preserves Actor/multi-NPC, animation, M002 stateful objects, world persistence, map quality/seed compatibility and later RPG content. No extension implemented.
- Publication pending: inspect final diff, commit intended files, push codex/integrate-m016 and create draft PR. WSL push must run from original checkout with explicit branch because Windows worktree gitdir backlinks are not WSL paths.
