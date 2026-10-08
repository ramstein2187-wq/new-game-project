# Intended change inventory

Branch `codex/history-generator-v5`, exact base
`c43b4f33a52cf9494b9bbedec8c3d9c02ea8d0ea`; no main merge.
Final Git path inventory and artifact size/preservation audit are recorded at
handoff. Unrelated `assets/tilesets/ever_rogue/**/*.png.import` are excluded.

| Area | Files and purpose |
|---|---|
| Generation routing | `history_generator.gd`, `history_result.gd`, `history_validator.gd`, `history_debug_formatter.gd`: explicit5/architecture3 route and version-scoped serialization/formatting |
| Legacy reuse | `history_v4_planner.gd`: virtual RNG dispatch with unchanged v4 default; identity/culture/evidence resolvers accept5 through read-only existing compatibility lens |
| Sparse objective runtime | `history_v5_catalog.gd`, `history_v5_scaffold.gd`, `history_v5_topology.gd`, `history_v5_planner.gd`, `history_v5_materials.gd`, `history_v5_validator.gd`: factual events, operation-first politics, provenance and authored gates |
| Derived investigation | `history_archaeology.gd`, `history_investigation.gd`, `history_v5_renderer.gd`: typed evidence, subject/anchor-bound questions, corroborated current proposals, independent prose |
| Authored content | `content/history/history_v5.json`, `history_v5_archaeology.json`, `tools/author_history_v5.py`:8 Projects/15 Scars/6 episode patterns,116 Traces/40 Questions/60 variants/20 families/21 action types |
| Regression proof | `tests/test_history_v5.gd`,384-hash legacy fixture and refuse-overwrite fixture writer; historical v4 tests/probes/preview explicitly request4 |
| Corpus and review tooling | v5 analyzer, political v4 baseline measurement, OS sampler, immutable raw exporter, report/manual-note aggregation/comparison, frozen-input/preservation audit scripts |
| Current documentation | wiki/spec plus SVG/Mermaid, M044 milestone, roadmap/milestone index |
| Delivery evidence | two aggregate5000 statistics,40 immutable complete raw histories,40 manual eight-score/two-hook notes, honest critique/comparison, validation and continuation records |

Generated Godot `.gd.uid` sidecars for new source files are intentional. No
individual-world5000 JSON dump belongs in the commit. Small aggregate diagnostic
summaries are distinct from authored runtime content and are never generation inputs.

## Exact intended Git path inventory

Snapshot before staging; all modified/new task paths below, excluding12 unrelated asset sidecars. Raw40 texts and manual40 notes are included. Review directory is approximately3.18MB; largest raw102540 bytes. No individual5000-world JSON dumps.

- content/history/history_v5_archaeology.json
- content/history/history_v5.json
- docs/diagrams/history_generator_v5.svg
- docs/MILESTONES.md
- docs/milestones/M044_history_v5_sparse_archaeology.md
- docs/reviews/history_v5/architecture.md
- docs/reviews/history_v5/artifact_audit.json
- docs/reviews/history_v5/before_after.md
- docs/reviews/history_v5/changed_files.md
- docs/reviews/history_v5/continuation.md
- docs/reviews/history_v5/corpus_pre_isolation.log
- docs/reviews/history_v5/corpus_revision2_final_smoke.log
- docs/reviews/history_v5/corpus_revision2_smoke.log
- docs/reviews/history_v5/corpus_round1.log
- docs/reviews/history_v5/corpus_round2.log
- docs/reviews/history_v5/corpus_statistics_round1.md
- docs/reviews/history_v5/corpus_statistics_round2.md
- docs/reviews/history_v5/corpus_statistics.md
- docs/reviews/history_v5/delivery.md
- docs/reviews/history_v5/export_round1.log
- docs/reviews/history_v5/final_catalog_hashes.json
- docs/reviews/history_v5/final_runtime_hashes.json
- docs/reviews/history_v5/focused_revision2.log
- docs/reviews/history_v5/focused_round1.log
- docs/reviews/history_v5/focused_round2.log
- docs/reviews/history_v5/freeze_legacy.log
- docs/reviews/history_v5/full_validation_revision2.log
- docs/reviews/history_v5/full_validation_round2.log
- docs/reviews/history_v5/import_initial.log
- docs/reviews/history_v5/import.log
- docs/reviews/history_v5/preservation_baseline.json
- docs/reviews/history_v5/preservation_final.json
- docs/reviews/history_v5/probe.log
- docs/reviews/history_v5/prose_repetition.json
- docs/reviews/history_v5/qualitative_protocol.md
- docs/reviews/history_v5/qualitative_review_round1.md
- docs/reviews/history_v5/qualitative_review_round2.md
- docs/reviews/history_v5/qualitative_scores_round1.json
- docs/reviews/history_v5/qualitative_scores_round2.json
- docs/reviews/history_v5/raw_round1/seed_0327.md
- docs/reviews/history_v5/raw_round1/seed_0474.md
- docs/reviews/history_v5/raw_round1/seed_0806.md
- docs/reviews/history_v5/raw_round1/seed_1139.md
- docs/reviews/history_v5/raw_round1/seed_1791.md
- docs/reviews/history_v5/raw_round1/seed_1815.md
- docs/reviews/history_v5/raw_round1/seed_1890.md
- docs/reviews/history_v5/raw_round1/seed_1896.md
- docs/reviews/history_v5/raw_round1/seed_1910.md
- docs/reviews/history_v5/raw_round1/seed_2239.md
- docs/reviews/history_v5/raw_round1/seed_2319.md
- docs/reviews/history_v5/raw_round1/seed_2440.md
- docs/reviews/history_v5/raw_round1/seed_2700.md
- docs/reviews/history_v5/raw_round1/seed_2720.md
- docs/reviews/history_v5/raw_round1/seed_2920.md
- docs/reviews/history_v5/raw_round1/seed_3097.md
- docs/reviews/history_v5/raw_round1/seed_3211.md
- docs/reviews/history_v5/raw_round1/seed_4078.md
- docs/reviews/history_v5/raw_round1/seed_4255.md
- docs/reviews/history_v5/raw_round1/seed_4772.md
- docs/reviews/history_v5/raw_round2/seed_0085.md
- docs/reviews/history_v5/raw_round2/seed_0228.md
- docs/reviews/history_v5/raw_round2/seed_0543.md
- docs/reviews/history_v5/raw_round2/seed_0639.md
- docs/reviews/history_v5/raw_round2/seed_1270.md
- docs/reviews/history_v5/raw_round2/seed_1454.md
- docs/reviews/history_v5/raw_round2/seed_1515.md
- docs/reviews/history_v5/raw_round2/seed_1781.md
- docs/reviews/history_v5/raw_round2/seed_2188.md
- docs/reviews/history_v5/raw_round2/seed_2580.md
- docs/reviews/history_v5/raw_round2/seed_2710.md
- docs/reviews/history_v5/raw_round2/seed_2771.md
- docs/reviews/history_v5/raw_round2/seed_2792.md
- docs/reviews/history_v5/raw_round2/seed_3277.md
- docs/reviews/history_v5/raw_round2/seed_3330.md
- docs/reviews/history_v5/raw_round2/seed_3563.md
- docs/reviews/history_v5/raw_round2/seed_4062.md
- docs/reviews/history_v5/raw_round2/seed_4418.md
- docs/reviews/history_v5/raw_round2/seed_4679.md
- docs/reviews/history_v5/raw_round2/seed_4691.md
- docs/reviews/history_v5/reading_notes_round1/seed_0327.md
- docs/reviews/history_v5/reading_notes_round1/seed_0474.md
- docs/reviews/history_v5/reading_notes_round1/seed_0806.md
- docs/reviews/history_v5/reading_notes_round1/seed_1139.md
- docs/reviews/history_v5/reading_notes_round1/seed_1791.md
- docs/reviews/history_v5/reading_notes_round1/seed_1815.md
- docs/reviews/history_v5/reading_notes_round1/seed_1890.md
- docs/reviews/history_v5/reading_notes_round1/seed_1896.md
- docs/reviews/history_v5/reading_notes_round1/seed_1910.md
- docs/reviews/history_v5/reading_notes_round1/seed_2239.md
- docs/reviews/history_v5/reading_notes_round1/seed_2319.md
- docs/reviews/history_v5/reading_notes_round1/seed_2440.md
- docs/reviews/history_v5/reading_notes_round1/seed_2700.md
- docs/reviews/history_v5/reading_notes_round1/seed_2720.md
- docs/reviews/history_v5/reading_notes_round1/seed_2920.md
- docs/reviews/history_v5/reading_notes_round1/seed_3097.md
- docs/reviews/history_v5/reading_notes_round1/seed_3211.md
- docs/reviews/history_v5/reading_notes_round1/seed_4078.md
- docs/reviews/history_v5/reading_notes_round1/seed_4255.md
- docs/reviews/history_v5/reading_notes_round1/seed_4772.md
- docs/reviews/history_v5/reading_notes_round2/seed_0085.md
- docs/reviews/history_v5/reading_notes_round2/seed_0228.md
- docs/reviews/history_v5/reading_notes_round2/seed_0543.md
- docs/reviews/history_v5/reading_notes_round2/seed_0639.md
- docs/reviews/history_v5/reading_notes_round2/seed_1270.md
- docs/reviews/history_v5/reading_notes_round2/seed_1454.md
- docs/reviews/history_v5/reading_notes_round2/seed_1515.md
- docs/reviews/history_v5/reading_notes_round2/seed_1781.md
- docs/reviews/history_v5/reading_notes_round2/seed_2188.md
- docs/reviews/history_v5/reading_notes_round2/seed_2580.md
- docs/reviews/history_v5/reading_notes_round2/seed_2710.md
- docs/reviews/history_v5/reading_notes_round2/seed_2771.md
- docs/reviews/history_v5/reading_notes_round2/seed_2792.md
- docs/reviews/history_v5/reading_notes_round2/seed_3277.md
- docs/reviews/history_v5/reading_notes_round2/seed_3330.md
- docs/reviews/history_v5/reading_notes_round2/seed_3563.md
- docs/reviews/history_v5/reading_notes_round2/seed_4062.md
- docs/reviews/history_v5/reading_notes_round2/seed_4418.md
- docs/reviews/history_v5/reading_notes_round2/seed_4679.md
- docs/reviews/history_v5/reading_notes_round2/seed_4691.md
- docs/reviews/history_v5/request.md
- docs/reviews/history_v5/round2_reading_checkpoint.md
- docs/reviews/history_v5/samples_round1.json
- docs/reviews/history_v5/samples_round1.md
- docs/reviews/history_v5/samples_round2.json
- docs/reviews/history_v5/samples_round2.md
- docs/reviews/history_v5/selection_round1.json
- docs/reviews/history_v5/selection_round2.json
- docs/reviews/history_v5/self_critique.md
- docs/reviews/history_v5/statistics_before_final_hook_constraints.json
- docs/reviews/history_v5/statistics_pre_isolation.json
- docs/reviews/history_v5/statistics_revision2_final_smoke.json
- docs/reviews/history_v5/statistics_revision2_smoke.json
- docs/reviews/history_v5/statistics_round1.json
- docs/reviews/history_v5/statistics_round2.json
- docs/reviews/history_v5/statistics.json
- docs/reviews/history_v5/topology_v4_baseline.json
- docs/reviews/history_v5/topology_v4_baseline.log
- docs/reviews/history_v5/validation.md
- docs/reviews/history_v5/verified_final_inputs.json
- docs/reviews/history_v5/WORK_LOG.md
- docs/ROADMAP.md
- docs/specs/history_generator.md
- docs/wiki/history_generator.md
- game/history/culture_evidence.gd
- game/history/faction_culture_resolver.gd
- game/history/faction_identity_resolver.gd
- game/history/history_archaeology.gd
- game/history/history_archaeology.gd.uid
- game/history/history_debug_formatter.gd
- game/history/history_generator.gd
- game/history/history_investigation.gd
- game/history/history_investigation.gd.uid
- game/history/history_result.gd
- game/history/history_v4_planner.gd
- game/history/history_v5_catalog.gd
- game/history/history_v5_catalog.gd.uid
- game/history/history_v5_materials.gd
- game/history/history_v5_materials.gd.uid
- game/history/history_v5_planner.gd
- game/history/history_v5_planner.gd.uid
- game/history/history_v5_renderer.gd
- game/history/history_v5_renderer.gd.uid
- game/history/history_v5_scaffold.gd
- game/history/history_v5_scaffold.gd.uid
- game/history/history_v5_topology.gd
- game/history/history_v5_topology.gd.uid
- game/history/history_v5_validator.gd
- game/history/history_v5_validator.gd.uid
- game/history/history_validator.gd
- tests/fixtures/history_v5_legacy.json
- tests/test_history_v4.gd
- tests/test_history_v5.gd
- tests/test_history_v5.gd.uid
- tools/analyze_history_v4.gd
- tools/analyze_history_v5.gd
- tools/analyze_history_v5.gd.uid
- tools/audit_history_v5_delivery.py
- tools/audit_history_v5_preservation.ps1
- tools/author_history_v5.py
- tools/compare_history_v5.py
- tools/export_history_v5_samples.gd
- tools/export_history_v5_samples.gd.uid
- tools/freeze_history_v5_legacy.gd
- tools/freeze_history_v5_legacy.gd.uid
- tools/measure_history_v4_topology.gd
- tools/measure_history_v4_topology.gd.uid
- tools/preview_history.gd
- tools/probe_history_v4.gd
- tools/report_history_v5.py
- tools/review_history_v5.py
- tools/sample_history_v5.py
- tools/verify_history_v5_inputs.py
