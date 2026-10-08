# M038 — Variable historical topology and population origins

2026-10-06. **Complete on task branch; not merged into main.**
Branch: `codex/history-generator-v0.3`.
Worktree: `C:\GameDev\history-generator-v0.3`.
Exact base: `9380df358ce1e27fc38d38fa8a45bcb73eacec21` (v0.2).

## Scope and outcome

Default algorithm3 retains explicit algorithm2 regression path. One bounded shared
composer applies seven family biases/anchors and split/merge/migration/newcomer/
reorganization/extinction;6..8 current factions result from planned operations, no padding.
Political multi-parent DAG, formation origin, institutional continuity, founding population,
lifestyle and regional roles are separate. Population donor effects replay inherited/subset/
co-resident/joined Origin sets (six categories, no Composite). Extinct political records
and populations remain in history; active actions require living participants.

Sparse diplomacy distinguishes event delta/evidence from present accumulated score.
Optional reuse requires site/hazard/lifestyle/purpose compatibility; ownership transfers
and extinction scars are canonical. Retained v2 rare budgets, reviewed physical motifs,
LOCKED/RESERVED Canon and M035 naming. No gameplay, genetics, census or live simulation.

## Validation

- `bash tools/check_godot.sh`:33 scripts PASS, editor import, main startup and exact
  generated dataset exporter PASS. V3:119,402 assertions; v2:48,463; Naming:30,266.
  Nine suites explicitly report199,356 assertions in total; other legacy suites have no
  assertion counters, so this is a reported subtotal rather than a fabricated total.
- Seed1..1000 exact replay: generation/reference/chronology/count/Origin/invariant/
  deterministic failures0. Active6/7/8:340/333/327. Historical polities9..24; depth1..11.
- 1,000 normalized chronological political DAG signatures, with variation within every
  family. Signatures exclude IDs/names/dates/prose/motifs/populations/relations/seed;
  they are not a general unlabeled-graph isomorphism analysis.
- Multi-origin histories334; multi-parent899; direct institutional heir present630 /
  absent370. Compatible reuse414. No Observer/Core861, Observer38, Core103, bombardment11.
- Ten readable outputs and canonical snapshots inspected; five key structures explained
  in the [review](../reviews/2026-10-06-history-generator-v0_3.md). All7family coverage.
- Offline wiki17/spec15 metadata and dataset fingerprints PASS. Layout audit187resources,
  139 script UIDs,7 instantiated scenes PASS. V2seed42 canonical output matches exact base.
- Original checkout and v2checkout preservation:26/26 SHA256 checks. Main remains
  `10f6f31cd39f165a7e04c658921056089eb794ef`; v2 remains exact base. Twelve EverRogue import
  sidecars generated in the new worktree are excluded from staging/delivery.

## Handoff

[Spec](../specs/history_generator.md), [wiki](../wiki/history_generator.md),
[distribution](../reviews/history_v3/diversity.json),
[ten outputs](../reviews/history_v3/samples.md),
[snapshots](../reviews/history_v3/samples.json).
`tools/preview_history.gd -- SEED [--json] [--v2]`;
`tools/analyze_history.gd -- 1000 OUTPUT_DIRECTORY [--v2]`.
Final commit/remote SHA and resumable external work record are delivered with this task.
No main merge. GUI/play/package/balance, literary/language review and live Notion acceptance
remain separate. Diagnostic JSON has no untrusted ingestion/save loader contract.
