# M047 History v6 Phase B — Dynamic Civilization

Status: complete and validated on `codex/history-generator-v6-phase-b` (task branch only).
Base: M045 `c0f1f920904342db37e29b585b697b6df560e6cc`.
M046 remains assigned to cost-query/effect-order optimization on main.

## Scope and recovery log

- 2026-10-08: read the supplied Phase B request, Phase A contracts/core, world Canon,
  history contract and governing decisions. Fetched origin/main (`e83da36`); it
  contains newer agent-documentation rules but no Phase A implementation.
- Created isolated worktree `C:\GameDev\history-generator-v6-phase-b`.
  Primary checkout and Phase A checkout are preserved. Primary snapshot:
  `C:\GameDev\m046-history-phase-b-preservation.json`.
- Design: retain the five Phase A concepts and the same engine/reducer/log.
  Add an optional typed civilization state, bounded effect operations, reusable
  population/facility/political/project/scar rules, and a pure World Manifest.
  Phase A remains the default; Phase B uses an explicit entry point and version.
- Completed: implementation, 100-seed focused checks, 1,000 replay/Manifest checks,
  long-history experiment, 20 fixed random sample reviews, full Godot gate,
  final report and preservation audit. Commit/push identities are recorded after
  publication in `C:\GameDev\m046-history-phase-b-handoff.md` and the final response.

## Acceptance

### Implementation checkpoint

- Six contextual rule families share the original selector/reducer/engine/log.
  State owns typed localities, facility inventories, Project conditions, Scar residue,
  population loss/lineage and separate political formation/absorption provenance.
- Prototype corpus: 100 histories, zero generation/replay/Manifest errors;
  preserved Phase A suite: 8,516 checks, zero failures. Transaction, Canon, malformed
  consumer and idle-time tests added without weakening old tests.
- Common defects found and fixed: successor ownership cleanup; missing initial
  Deep entry access; building shelter for a remote region's need; finite resource
  exhaustion. Added bounded local gathering and deterministic skips to known time
  thresholds. Initial 6,000-year diagnostic (17/100 all ruined, all quiescent) retained
  in `docs/reviews/history_v6_phase_b/diagnostic_before_recovery.json`.
- Final common-rule corrections: physical access is separate from usable function;
  Deep surveys produce survey records, never genomic records; custody requires
  actual access and cooperation; Archive outcomes reflect surviving assets;
  construction records donor inventory provenance. All bounded effects use the
  same authoritative atomic reducer.
- Final validation: 893 focused checks, preserved Phase A 8,516 checks and legacy
  v2–v5 48 fixture hashes; all 41 Godot test scripts, editor/startup and combat
  dataset gate passed. Layout/UID and 21 wiki metadata checks passed.
- Final 1,000-history corpus and 100-history/6,000-year experiment: zero generation,
  serialized replay or independent Manifest errors. All ended at their time horizon.
  Reviewed the 20 once-randomly-selected worlds with reproducible seed records.
- Long-history limits remain explicit: 4/100 worlds end with every facility ruined,
  6/100 local regions with one faction; repeated maintenance remains costly.
  Closed-cohort population conservation does not validate births, aging or lifespans.
- Primary HEAD/branch/main, 14 file hashes and 12 untracked paths are preserved;
  Phase A HEAD and tracked clean state are preserved. No main merge.

Partial population transitions with a loss ledger; geographic localities distinct
from facilities; bounded repair/reuse; contextual politics/needs; three dynamic
Projects and three evidence-backed Scars; varied centuries; independent Manifest
consumer; Canon/legacy preservation. No gameplay/map/UI integration or main merge.
Evidence and all ten architecture answers: [final report](../reviews/history_v6_phase_b/report.md).
Design and reproduction commands: [existing v6 specification](../specs/history_generator_v6.md).
GUI/play/package, actual Notion publication and human readability approval were
not performed. The generator remains opt-in; playable-world binding is follow-up work.
