# M048 — History v6 Phase C: Playable World

Status: complete and validated on `codex/history-v6-phase-c-playable-world` (2026-10-09; task branch only).
Exact base and verified remote Phase B SHA: `12f48bae75636782005a05a08742a0bd6412fee8`.
Remote main observed: `e83da36818cbb23e69e4e16297ac4332885658f1`; no main merge.

## Scope / recovery log

- Independent worktree: `C:\GameDev\history-v6-phase-c-playable-world`.
- Preserve original and Phase A/B checkouts. Original file/ref snapshot:
  `C:\GameDev\m048-preservation.json`.
- Implement an opt-in vertical slice: immutable Manifest → connected locality
  zones → existing Actor/Action/Scheduler gameplay → authoritative runtime
  overrides → revisit and versioned save/load. Preserve historical generators.
- Implemented: three connected Manifest localities, deterministic environment
  without the generic ruin stamp, facilities/actual stocks/objects, current hazards,
  Scar and Project space, ordinary structural interventions and current custody.
  Existing Actor/Action/Scheduler execute movement, Rat combat and interactions.
- Versioned runtime override/ownership/Actor/effect/RNG save model; inactive Actors
  freeze, active time stays in the existing Scheduler. Restore consumes saved
  Manifest only, never regenerates historical events.
- Final focused scenarios: 613 checks passed. 100/500 seed corpora, including final
  Project placement, have no generation/path failures (1,500 zones / 2,624 facilities
  / 16,033 reachable objects in the larger set). Phase A/B/Manifest 16-seed exact-base
  hashes match; legacy v2–v5 48 output hashes also match.
- Actual GPU scene/input run passed movement, travel, Save/Load and Character
  Overview; three rendered captures inspected. This is automated visual evidence,
  not human play/fun approval.
- Fixes: normalize JSON numbers before integrity hashing; retain actual current
  hazards rather than restoring obsolete Scar damage; distinguish explorable ruin
  shells from intentional sealed intact/damaged facilities.
- Corrected stock-record duplication at the source; retained already applied
  effects once and terminal defeat/remaining readiness through save/load.
- Final full Godot gate: editor/startup, all 42 test scripts and combat dataset
  check passed (`C:\GameDev\m048-full-final.log`). Layout/UID 272/224/7 and
  22 wiki metadata checks passed. The official exporter updated only two source
  hashes after the common interaction contract changed.
- Original 14 file hashes and primary HEAD/branch/main verified unchanged.
  Commit/push SHA and post-push audit are recorded in
  `C:\GameDev\m048-history-phase-c-handoff.md` after publication.

## Validation / handoff

[Integrated report, actual scenarios, performance and manual checklist](../reviews/history_v6_phase_c/report.md).
[Contract and reproduction](../specs/history_playable_world.md).
Human manual play/fun, exported-package and live Notion acceptance were not performed.
Next: human self-directed play and navigation/reward/access feedback; broad world
simulation remains out of scope. No main merge or default-scene replacement.
