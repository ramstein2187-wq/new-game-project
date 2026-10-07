# M043 continuation log

- Date: 2026-10-07 Asia/Seoul.
- Branch: codex/history-generator-v4; worktree: C:/GameDev/history-generator-v4.
- Base: 8cb6f3dfc3735e648f561bb5eaa37a52228ceaf2 (M042).
- Request: request.md. Original checkout's 9 intentional terminology changes copied after diff audit; original checkout is untouched. 12 untracked EverRogue sidecars are excluded; hashes recorded in preservation_baseline.json.
- Architecture decision: preserve generation 2 and 3 exact replay and their RNG namespaces. New authored v4 project/scar/discovery/compatibility data and planner use separate history/v4 namespaces. Objective events/effects remain authority; culture and Claims consume evidence without resolving mysteries.
- Next: inspect existing projector/validator/social evidence; capture exact M042 v2/v3 baseline; implement canonical v4 boundary and data planner, tests, 5000-seed corpus, 30-40 readable reviews, documentation, full checks, explicit commit/push.
- Completion: pending. No implementation/test/corpus/commit/push claim yet.

## Implementation checkpoint
- Added authored history_v4 catalog, compatibility boundary, v4 planner/validator/Claims, history_record effect projection and v4 culture evidence/catalog.
- Legacy M042 fixtures captured BEFORE generation changes (64 seeds each for v2/v3). Existing suites now explicitly select historical v3; default generation is v4.
- First focused v4 suite passed 6924 assertions. Then added explicit assimilation distinctions, stricter regression content gate, and compatibility for the main regional cause/response/collapse; rerun in progress.
- 100-world initial corpus passed all 9 safety counters and both legacy replay sets; this is a probe, NOT the required final 5000-world result.
- Fixes discovered by tests: infrastructure-cascade Scar budget classification; actual evacuation practice is distinct from renamed collapse vocabulary; cached reverse-ID mapping to avoid rebuilding it for every nested value.
- Remaining: final focused rerun, 5000 worlds with replay, exposure tuning if any reachable type is effectively dead, readable review coverage, docs/spec/wiki/diagram/delivery, full Godot gate, preservation audit, explicit commit/push.

## First 5000-world corpus and refinement
- First complete run: 5000 histories / 30,815 current factions / 4023 political topologies; all nine safety counters zero, 128 legacy replay hashes preserved.
- Project counts 0/1/2 = 2012/2492/496; Scar counts 0/1/2 = 2690/2019/291. Each open Project/Scar/Response/Discovery reached >1% world exposure; inherited rare orbital motifs are separately identified, not silently retuned.
- Review refinement: allow >=30 years from transmutation activation to population-redesign outcome, and >=24 years from array activation to signal-fixation outcome. Added concrete ordinary-collapse observation fields (birth failure, recorded departure, failed services, continuing automation). No mystery or lineage answer added.
- Analyzer now counts signature observations once, records all event subtypes and combined cognitive/memory exposure, and reports worlds without Project or major Scar.
- First-pass statistics retained as statistics_first_pass.json. Final focused/full/corpus runs must use these refinements before delivery.

## Qualitative review checkpoint (48 raw histories)
- Read review_packet_1/2/3 plus complete representative raw ledgers. Coverage includes successful projects, Ark containment/silent denial, Last Descent, Far-Sky silence/unknown signal/correlation, all shipping Scars and ordinary no-Project/no-Scar worlds.
- Found and corrected Claim-quality defects: parity-based generic interpretation ignored actual identity mode; a Project outcome Claim hid the specialized Continuity Transfer interpretation; a generic unknown-cause Claim obscured signed targeted-extermination evidence. Claims now follow identity/adaptive stance and actual event-specific observations. They still do not resolve reserved causes or personhood.
- Failed Exodus now records the documented orbital interdiction as its physical cause while keeping purpose unknown. Preservator pressure records carry actual bounded subsystem provenance; unclassified intervention remains unknown.
- Interrupted pre-correction second corpus/full runs. Final canonical output must be checked using the complete third runs; earlier results are diagnostic evidence only.

## Final validation and review checkpoint
- Final corpus complete: 5000 histories plus 5000 canonical regenerations, 30815 factions,4023 political sequences; all nine safety counters0.
- Focused final6952 assertions PASS; full38-script Godot/import/startup/dataset gate PASS.
- Rebuilt final48-history review packets and verified corrected Ark/Continuity/targeted/machine interpretations. All new shipping Project/Scar/Response/Discovery entries exceed1%; only three explicitly gated authored events unobserved.
- Created final corpus, qualitative, validation and delivery reports; refreshed milestone/spec/index status. Original21-file preservation audit passed.
- Remaining: final offline metadata/diff/staged audit, explicit commit and native Git using WSL SSH push, remote SHA verification and external receipt. No main merge.

## Commit preparation
- Offline checks:17 specs,19 wiki pages and all relevant JSON PASS. Git whitespace audit clean (only harmless preserved CRLF notices).
- Explicit intended pathspec:77 implementation/content/test/doc/review/log files; no assets paths. Final commit/push receipt will be stored outside the checkout to keep tracked delivery artifacts clean.
- Commit and push are authorized by the original request; main merge is not authorized and is not performed.
- Staged whitespace audit found a redundant blank line at samples.md EOF; removed only trailing line terminators, preserving all generated records. Recheck required before commit.
