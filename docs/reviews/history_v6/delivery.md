# M045 delivery record

Branch: `codex/history-generator-v6-core`.
Worktree: `C:/GameDev/history-generator-v6-core`.
Base: `c32cce0` (latest fetched origin/main; v5 integrated via PR #50,
documentation via PR #51). No main commit or merge.

Implementation: independent event-driven Phase A, six rules, typed world/event/effect
records, atomic copy-on-apply reducer, deterministic selection and JSON log replay.
Default HistoryGenerator remains v5. [Architecture and findings](report.md),
[contract](../../specs/history_generator_v6.md), [ten full readable histories](samples.md),
[complete changed-file inventory](changed_files.md).

## Validation

- Godot 4.7.2 focused v6: 8,516 assertions, zero failures.
- Initial 100-seed pilot, final 100-seed and final 1,000-seed corpora: zero errors;
  all final generation and serialized-log replays match. Final statistics:
  35,969 events; 10,059 explicit enabling/displacement edges; no adjacent same type.
- Exact-base v2/v3/v4/v5 fixture: 48/48 hashes match; existing fixtures unchanged.
- Final `bash tools/check_godot.sh`: **exit 0, all 40 test scripts PASS**, including
  editor import, main startup, 8,516 v6 checks, 48/48 legacy hashes and the combat
  dataset freshness check. No script/parse/error markers in the final gate log.
  [Recorded validation output](validation.md).
- Layout audit: 247 resources, 200 script UIDs, six instantiated scenes, PASS.
- Wiki metadata: 21 pages, PASS. No live Notion update was sent.
- Staged whitespace/diff review: PASS.

## Preservation and limits

Original checkout `C:/GameDev/새-게임-프로젝트` remains on
`codex/con-hp-scaling` at `005c7a637695595680d7225c58011a2c0d3f1aa2`.
Local main remains `10f6f31cd39f165a7e04c658921056089eb794ef`.
Both modified files (`project.godot`, `docs/datasets/body_templates.json`) and
all 12 original untracked import sidecars retain their exact SHA256 hashes.
Run `tools/audit_history_v6_preservation.ps1` with the archived baseline to recheck.
New-worktree generated import sidecars are intentionally untracked and unstaged.
The separate `C:/GameDev/m045-baseline-check` remains available at detached
`c32cce0` for reproducing the legacy capture; it contains only the added capture
helper/fixture and generated imports in addition to the base checkout.

No manual GUI/play, exported-package, balance, or human worldbuilding approval.
Phase A does not wire history to gameplay. Six-group faction saturation, alternating
relation/migration/custody cycles and monotonically increasing damage remain.
The report distinguishes enabling provenance from motives and observed sequences.

## Git handoff

Commit/push receipt will be appended to the external continuation file
`C:/GameDev/m045-work-record.md` after successful delivery; this file is committed
with the implementation, so it does not contain a self-referential commit hash.
