# History Generator v0.3 implementation and graph review

2026-10-06. Branch `codex/history-generator-v0.3`, isolated base
`9380df358ce1e27fc38d38fa8a45bcb73eacec21`. No main merge.

## Implementation

- Default algorithm3 retains explicit algorithm2 path and all v2 regression assertions.
- `history_topology.gd` composes the same bounded split/merge/migration/newcomer/
  reorganization/extinction operations under seven family biases/anchors. Counts are
  constrained during each operation, no padding. Current6..8 is distinct from historical9..24.
- `historical_entity.gd` stores political parent DAG, formation/ancestry, founding Origin
  profile, institutional continuity, independent lifestyle/roles and lifecycle event IDs.
- `population` effects record sources and inheritance/subset/co-residence/join. Parent
  polities and population donors can differ; no Composite/genetic fusion.
- Projector retains extinct polities, founding/last populations, donor ledger, ownership
  transfers and provenance. Claims cannot mutate it.
- Event relation memory reads delta; present sentiment reads accumulated score in a
  separate scope. Validator checks each evidence record. Renderer exposes both.
- Optional reuse selects compatible site/hazard/lifestyle/purpose; hazardous sites can
  remain untouched. Legacy probabilities and Canon remain unchanged; names use M035.

## Representative canonical graph inspection

I compared the ten generated chronological operation lists, all historical parent/lifecycle
rows, population donors, current factions, relations and sites. This is a source/data
inspection, not a GUI/playtest or literary review. Full readable outputs and exported
canonical data are [samples.md](history_v3/samples.md) and [samples.json](history_v3/samples.json).

| Seed / family | Concrete canonical structural difference |
| --- | --- |
| 17 / Polycentric Succession | Four separate old-office heirs. f_03 survives directly; f_02 starts a migration branch, then splits; descendants cross-merge into f_18 while f_00/f_01 lines merge into f_20. Seven active factions; no required ruin reuse. |
| 1 / Consolidation → Resplit | f_00+f_02 merge into f_03 at -302, then f_03 splits into f_07/f_08/f_09 at -238. Some f_01 offspring coexist with their retained parent, later three-way merger f_15 crosses descendant branches. Eight active,18 historical including precursor. |
| 5 / Consolidation → Resplit | Two separate consolidation nodes form, multiple further mergers alternate with splits. f_04 initially survives its split, then another merged branch f_11 splits while retained. Seven active,19 historical; research reuse targets terminal_site rather than obligatorily pressure_site. This differs within the same family from seed1. |
| 3 / Layered Migration | Three newcomer cohorts arrive; f_02 is an independent Innerworld polity. Resident f_01 and newcomer f_04 form f_05 with Planetary+Human-derived+Unknown donors. Splits select Human-derived subsets; f_11 retains the three-Origin profile. Eight active with no old-office heir. |
| 9 / No Direct Heir | f_00/f_01 explicitly go extinct at -305/-304. Five later organizations have no political parents yet inherit the former population stock. Newcomer f_07 has Innerworld profile. Reorganizations have one or two parents, none current retains old offices; eight active,23 historical. |
| 12 / Enclave Continuity | Parentless f_00 forms at -496, well before collapse, survives untouched and remains outside current diplomacy. Other branches split/reorganize/become extinct; newcomer f_10 contributes Unknown residents to f_11, descendant f_13 retains Human-derived+Unknown. Six active; scavenging uses abandoned_f_06. |
| 4 / Late Fragmentation | One successor persists from -314 until transformations begin at -95. Recent descendants reorganize and merge into a three-parent f_06; f_02 and f_08 remain alongside successive children. Seven current factions share a close early ancestor and have recent formation times. |
| 2 / Remnant Mosaic | Older parentless enclave with Planetary+Human-derived coexists with an institutional heir and independent mixed stock. Two branches die; others merge/reorganize, and retained f_01 splits repeatedly. Eight active; no site reuse. |
| 7 / multi-origin Remnant Mosaic | Two newcomers plus heir f_01 merge into f_05 with three-Origin co-residence. Descendant subsets select Planetary; a later arrival joins f_08. Old enclave persists, multiple polity extinctions leave reusable ruins. Seven active with distinct political vs population inheritance. |
| 13 / rare bombardment Consolidation | Three-parent consolidation, retained merged faction's repeated splits, another cross-branch consolidation and renewed splits; seven active. Rare orbital bombardment leaves reviewed physical damage but explains neither activation nor ancient civilization origins; no reuse. |

These graphs differ in root count, surviving roots, multi-parent nodes, operation sequence,
ancestry depth, losses, chronological concentration and arrival sources. They are not
merely renamed A/B/C. Family anchors repeat by design; the remaining graph is variable.
The common regional collapse prelude remains bounded and authored.

## Validation

Final `bash tools/check_godot.sh` passed33 test scripts, editor import, main startup and exact dataset exporter. V3:119,402 assertions; retained v2:48,463; Naming:30,266. Nine counted suites report199,356 assertions; other legacy suites do not expose counters. Offline wiki17/spec15 metadata, combat fingerprints and layout(187 resources /139 UIDs /7 scenes) passed. Original/v2 dirty files:26/26 SHA256 unchanged; main and v2 refs unchanged. Twelve new worktree import sidecars excluded. Task branch is committed/pushed separately; exact final commit/remote SHA is delivered in the task completion record, avoiding a self-referential commit hash.
The generated [distribution](history_v3/diversity.json) is the machine-readable authority
for this seed corpus. Seed1..1000 had no invalid history/reference/chronology/count/Origin
or deterministic mismatch. Active6/7/8=340/333/327. Histories without Observer/Core861;
Observer38/Core103/bombardment11. Reuse414; multi-origin histories334; multi-parent899.
Historical polities9..24, depth1..11; counts exclude transient groups and include precursor.
Signatures normalize nodes by chronological activation, removing ID text, names, dates,
prose, population, relations and seed. This is not general unlabeled graph isomorphism.

## Limits

One region and coarse population membership only. No actual migration paths, census,
territory/economic/war simulation, AI or full culture/faith/institution generation. Documentary
scars do not promise gameplay access. Site hazard policy cannot clear hazards. Explicit
v2 compatibility remains to protect old regressions; its older relation claims keep legacy
semantics, while v3 corrects those scopes. GUI/play/package/balance, Korean literary
quality and live Notion synchronization are not claimed by automated tests.

## Main files

| File | Change |
| --- | --- |
| game/history/history_topology.gd (new) | Shared bounded family composer |
| game/history/history_sites.gd (new) | Hazard and reuse compatibility |
| game/history/historical_entity.gd / historical_event.gd / historical_claim.gd | Lifecycle, political/population fields, operation types and evidence scopes |
| game/history/history_generator.gd / history_motifs.gd / canon_policy.gd | Defaultv3 dispatch, independent configuration, closed operation schemas; explicitv2 path |
| game/history/history_projector.gd / history_state.gd / history_result.gd | Historical/current projections, population ledger, ownership transfers and serialization |
| game/history/history_claim_builder.gd / history_debug_formatter.gd | Canonical event/current semantics and readable diagnostics |
| game/history/history_name_source.gd | Existing M035 versioned naming context |
| tests/test_history_topology.gd (new) / test_history_generator.gd | New1000seed/negative/semantic checks; preservedv2 assertions |
| tools/history_topology_statistics.gd (new) / analyze_history.gd / preview_history.gd | ID-free graph comparison, distributions,10outputs and explicitv2 CLI |
| docs/specs/history_generator.md / docs/wiki/history_generator.md / docs/diagrams/history_generator.svg | Current model, constraints and data flow |
| docs/specs/monster_taxonomy.md / docs/diagrams/monster_taxonomy.svg / tools/sync_notion_knowledge.py | Unify six-Origin vocabulary; existing monster nulls unchanged |
