# M029 — Combat content single source

Status: Complete on integration branch `chat/m029-m030-integration`, rebased from `main` `6c64fdb` after M030. Original implementation and automated validation completed on `codex/combat-content-single-source` at `bce4614`; this branch relocates and revalidates it without merging to `main`.

## Scope and decision

Per-item native `.tres` files own weapon, armor, natural attack and actor tuning.
`CombatContentCatalog` remains the compatible runtime facade. Actor content refers
to existing BodyTemplate factories, avoiding duplicated anatomy. Rat uses the same
pipeline; old `rat_common()` and `CombatSpecies.rat()` delegate to it.

Native Resources provide Inspector and text editing without a second JSON loader
schema. GDScript factories were easy to code but spread authoring across executable
code; JSON would need explicit type conversion/validation and export packaging.
The existing Resource classes already fit this task. No third-party dependency.

## Acceptance

- Baseline full Godot check passed (24 test scripts).
- Automatic migration saved existing Resource values, not retyped balance tables.
- Before/after full Resource property snapshots are byte-identical.
- Existing 3-seed replay and normalized legacy replay pass without hash changes.
- Final Godot 4.7.2 editor import/parse, default startup, all 25 scripts and exact exporter `--check` passed.
- Temporary single-file edits: Boar HP 32 -> 39; Longsword penetration 30 -> 37 and d8 -> d10; Iron Helmet armor 60 -> 73. Each passed all 25 scripts, runtime/coverage assertions and dataset generation. Original bytes restored.
- All pre-existing dataset gameplay fields preserved; source staleness and manual generated-file edits rejected. Offline Notion knowledge (9 specs, 6 datasets) and wiki (13 pages) validations pass.
- Full definition snapshot SHA-256 before/after: `f2d14876666edd8a6be599ac9dd45651236962abe40bb2f77bf7693efb1d43c1`.
- Duplicate/reference/body/profile/action validation and external-resource copy isolation covered. Legacy scheduler/replay tests use explicit synthetic fixtures; balance propagation tests use live resources.
- Manual Inspector/visual/gameplay and exported-package verification were not performed. The original M029 branch was not merged directly; this integration branch relocates the validated implementation onto the M030 responsibility-based project structure.

Detailed continuation/evidence: [work record](../reviews/2026-09-29-combat-content-single-source.md).

## M030 relocation validation

- Authoritative combat content now lives under top-level `content/`; runtime facades use `game/` paths.
- Existing M029 gameplay/content values were preserved while paths, exporter source inventory, CI filters and documentation references were relocated.
- Godot 4.7.2 editor import and configured main-scene startup passed.
- All 25 project tests passed, including `test_combat_content_source.gd`.
- `export_combat_datasets.gd -- --check` and `python3 tools/check_combat_datasets.py` passed with regenerated source/output fingerprints.
- M030 `check_project_layout.gd` passed after import: 123 resources, 85 script UIDs, 6 scenes instantiated.
- Offline Notion knowledge validation passed (9 specs, 6 datasets) and wiki validation passed (13 pages).
- Changed-file old-path scan found no remaining `time_cost/content`, `res://time_cost`, or `procgen/` references.
- Manual Inspector/visual/gameplay and exported-package verification remain unperformed; `main` is unchanged by this integration branch.
