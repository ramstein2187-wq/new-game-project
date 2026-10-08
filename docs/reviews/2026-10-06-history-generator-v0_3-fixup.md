# History Generator v0.3 — Contract Alignment / Follow-up Completion

2026-10-06. M039 over initial M038, isolated branch; no main merge.

## Git and delivery

- Branch: `codex/history-generator-v0.3-fixup`
- Worktree: `C:/GameDev/history-generator-v0.3-fixup`
- Exact base: `f65702590254245163d3bcd357445783050bb15a`
- Final commit is the coherent HEAD delivered with the task response and recorded in
  `C:/GameDev/history-generator-v0.3-fixup-worklog.md`; it cannot self-embed its own hash.
- Remote target: `origin/codex/history-generator-v0.3-fixup`; commit/push are the final delivery steps.
- Preservation audit covers38 pre-existing unrelated files in original/v2/v3 checkouts,
  including dirty project.godot/body_templates.json and EverRogue sidecars. New checkout's
  generated EverRogue sidecars are excluded from stage/commit. Main remains10f6f31.

## Correction of the initial v3 record

[Initial v3 review](2026-10-06-history-generator-v0_3.md) and `history_v3/` outputs remain
unchanged historical evidence. Initial implementation preselected exact6..8 targets and
used flattened display-labelled Origin sets under architecture1. Its "multi-origin334"
reported category co-residence, **not** true hybrid lineage. This follow-up changes the
contract to emergent4..8, lowercase structured strata with authored social authorization,
and generation3/architecture2. Legacy generation2/architecture1 remains intact.

## Implementation and topology preservation

Seven families and common split/merge/migration/newcomer/join/reorganization/extinction,
historical/current separation, political DAG, formation/ancestry/continuity, lifestyle/roles,
political parents vs population donors, M035 naming and SeedDeriver remain.
No topology reimplementation or v2-style A/B/C restoration.

`target_factions` is removed from generator/configuration and rejected as an extra field.
Neither target equality nor an exact stopping number is sampled. Family bands:

| Family | Current band |
| --- | --- |
| polycentric_succession | 5..8 |
| remnant_mosaic | 4..8 |
| late_fragmentation | 4..8 |
| consolidation_resplit | 4..6 |
| layered_migration | 5..8 |
| no_direct_heir | 4..7 |
| enclave_continuity | 4..8 |

After5 operations (late4), completed mandatory anchors and an in-band active count,
an independent per-step stop roll terminates with55% probability. Maximum11 operations
(late8) bounds composition. Legal operations reserve actor/anchor and minimum-band
capacity, never exceed the family maximum, and reserve consolidation's mandatory resplit.
An in-band last decision stops. Out-of-band lower counts constrain remaining legal growth,
not one exact endpoint. No retry, post-pass padding or meaningless cleanup extinction.

## Origin IDs, structured population and content gate

`content/population/origins.json` is authoritative for Godot History and Python monster
taxonomy validation. Canonical IDs are `planetary`, `human_derived`, `observer`,
`innerworld`, `outerworld`, `unknown`. English displays are Planetary, Human-derived,
Observer, Innerworld, Outerworld, Unknown; Korean displays are 행성계 토착, 인간계,
관찰자계, 심층계, 외우주계, 불명. Display changes do not change canonical state.
Composite is not an independent ID; unknown cannot share a stratum with known IDs.

Population profile: `strata[{template_id,origins[],prevalence}]`. Strata sort by template
identity; origins use catalog order, unique/nonempty. Prevalence is majority/major/minor/trace;
one majority maximum and at least majority or major residents. No percentages or census.
Mixed-Origin society means different single-Origin strata coexist. A true multi-Origin
lineage is **one authored stratum** with several origins. Serialization/rendering preserve
the distinction. Different human templates would remain separate lineage strata even
though they do not count as a mixed-Origin society.

Split inherits whole/subset strata without creating template/Origin/hybrid; prevalence may
rebalance. Merge unions donor strata, collapsing only identical templates, never fusing
origins. Join keeps residents/prevalence and adds arrival strata as minor. Political parents
and donors remain independent. Retired factions preserve historical stock and population
disposition: recorded donor successors, plus `untracked_template_ids` for strata not
represented by any successor. Untracked does not mean dead. Absorption is lineage-level
provenance, not a promise that every individual moved. Canonical events explain the history.

`SocialPopulationCatalog` is a small authored registry outside the generator. Templates
have ID, origins, random/membership/newcomer permissions and positive integer weight.
Selection filters those permissions and uses independent population namespaces.
Configuration records catalog ID; validator requires the corresponding catalog and verifies
each generated stratum/source. The precursor requires the authorized human baseline.

Investigation: world Canon authorizes humans and modified human lineages; monster native
content/export has unclassified Origin, not nonhuman social authorization. Innerworld,
Outerworld and residual Observer lore does not grant faction citizenship templates.
Shipping registry therefore contains only `human_baseline=[human_derived]`, weight100,
all three permissions true. No nonhuman shipping social population is used. Unknown
is never a random mystery-filler polity. No new species or automatic Origin hostility.

Injected `test_synthetic_only` fixtures supply all six single-Origin categories, a hybrid
`[human_derived,innerworld]`, disabled membership/random content and a local-only template
that cannot enter as an independent newcomer. Default generator never loads test fixtures.
The shipping validator rejects injected histories; fixture tests supply the matching catalog.

## Architecture, projection, relation and site regression

Explicit mapping: generation2→architecture1, generation3→architecture2. V3 serialization
uses lowercase strata, profile effects and population-disposition ledger; v2 retains its
legacy shape. No save migration/snapshot ingestion. Seed42 v2 including validation output
is byte-identical to the exact base (canonical line SHA256
`8c2353166b5ff8c72db99f58221e818fb10dff764879fedac7a24022fb88ce07`).

Sample inspection found and fixed a historical last-profile overwrite issue:
Dictionary.merge defaults to preserving existing founding metadata. Historical projection
now explicitly overwrites last profile while preserving separate founding profile. Every
fixture historical last profile is checked against its final population event.

Event Claim reads its signed delta, present Claim reads accumulated score; duplicate
evidence is suppressed/rejected. Seed1 has event delta-15 versus current score+28 without
rewriting the past dispute sentence. Optional ruin reuse still attempts independently40%,
requires hazard/type/lifestyle/purpose compatibility, and preserves ownership transfer.
Chemical/ordnance/restricted hazards never gain invented clearance.

Observer/Core policy is unchanged: primary45/45/8/2 natural/human/Core/Observer,
optional3%Core/2%Observer only if absent, at most one of each. Unknown intent/activation/
target motives, scholarly terminology gate, physical bounds and Canon mysteries remain.

## Validator and automated results

Closed schemas and version mapping; global4..8 plus family band/anchors/bounded meaningful
steps; ancestry references/DAG/chronology; living actors/merge participants; political formation;
ordered unique profiles/prevalence/unknown policy; authorized template and newcomer source;
donor inheritance/subsets/co-residence/join with no unexplained lineage/Origin; population
retirement and untracked strata; exact projection; safe ownership/reuse; sparse relations;
event/present evidence and duplicate suppression; rare budgets; Canon and deterministic replay.

Final `bash tools/check_godot.sh`: **34 test scripts PASS**, editor import/parse,
main scene startup and official combat dataset freshness check PASS. **183,785 reported
assertions across10 suites**; remaining24 scripts report pass/fail without assertion counters.

| Focused / retained suite | Assertions |
| --- | ---: |
| History topology v3 (1000 stress seeds + negative/semantic/domain checks) | 96,292 |
| Population strata/social gate/fixtures/profile replay | 7,539 |
| Explicit legacy v2 regression | 48,463 |
| Procedural naming | 30,266 |

Focused cases cover count4/5/8, no target dependency/rejected target field, all operations,
family band, disabled/newcomer template authorization, shipping human-only content,
mixed versus hybrid merge, authored hybrid inheritance, split-origin invention rejection,
lowercase serialization, qualitative profile validation, founding/last separation,
partial absorption, architecture mapping, JSON semantic round-trip, naming/catalog/display
domain isolation, event/current Claim semantics/dedup and compatible/unsafe site reuse.

## Final5000-seed corpus

Seeds1..5000, independent generation and replay per seed. Validation counters:

| Check | Failures |
| --- | ---: |
| active_count_violation | 0 |
| chronology_violation | 0 |
| deterministic_mismatch | 0 |
| generation_error | 0 |
| invalid_origin | 0 |
| invalid_reference | 0 |
| invariant_violation | 0 |
| lifecycle_failure | 0 |
| population_invariant_failure | 0 |

Current active factions (4 and5 are material, not theoretical):

| Category | Count | Percent |
| --- | ---: | ---: |
| 4 | 699 | 13.98% |
| 5 | 982 | 19.64% |
| 6 | 1,111 | 22.22% |
| 7 | 1,188 | 23.76% |
| 8 | 1,020 | 20.40% |

Family selection:

| Category | Count | Percent |
| --- | ---: | ---: |
| consolidation_resplit | 717 | 14.34% |
| enclave_continuity | 749 | 14.98% |
| late_fragmentation | 714 | 14.28% |
| layered_migration | 716 | 14.32% |
| no_direct_heir | 719 | 14.38% |
| polycentric_succession | 663 | 13.26% |
| remnant_mosaic | 722 | 14.44% |

Normalized political DAG signatures: **4,996/5000**.
First1000: **999/1000** (initial M0381000/1000). One duplicate remains under the deliberately
coarse comparable signature; there is no convergence to a few templates. We do not claim
literal uniqueness was unchanged. Full corpus99.92% unique, and4/5-count results are all
distinct in this corpus. Signature is birth-ordered adjacency, formation and active flags,
excluding names, seed, IDs, dates, populations and relations; not unlabeled graph isomorphism.
Sum of within-family unique counts equals global count, so no cross-family shared signature
appears in this corpus. Detailed family/count signatures:

| Family | Histories | Unique signatures |
| --- | ---: | ---: |
| consolidation_resplit | 717 | 717 |
| enclave_continuity | 749 | 749 |
| late_fragmentation | 714 | 713 |
| layered_migration | 716 | 713 |
| no_direct_heir | 719 | 719 |
| polycentric_succession | 663 | 663 |
| remnant_mosaic | 722 | 722 |

| Current count | Histories | Unique signatures |
| --- | ---: | ---: |
| 4 | 699 | 699 |
| 5 | 982 | 982 |
| 6 | 1111 | 1110 |
| 7 | 1188 | 1185 |
| 8 | 1020 | 1020 |

Historical political entities: **65,156**, mean13.0312;
per-history 6..24; mean 13.0312. Ancestry maximum-depth distribution: 0..10; mean 3.4924.
Depth0 means independent institutional roots, not no history. Transient bodies/cohorts are excluded.

| Transformation | Per-history range / mean | Corpus total |
| --- | --- | ---: |
| split_count | 0..6; mean 2.1254 | 10,627 |
| merge_count | 0..7; mean 0.7270 | 3,635 |
| migration_count | 0..5; mean 0.6552 | 3,276 |
| newcomer_count | 0..6; mean 0.6246 | 3,123 |
| reorganization_count | 0..7; mean 1.3452 | 6,726 |
| extinction_count | 0..7; mean 0.8918 | 4,459 |

Migration count includes joins; separate population joins=1389.

Shipping population/history frequencies:

| Category | Count | Percent |
| --- | ---: | ---: |
| human_derived_only_histories | 5,000 | 100.00% |
| mixed_origin_society_count | 0 | 0.00% |
| multi_origin_lineage_count | 0 | 0.00% |
| non_human_social_template_histories | 0 | 0.00% |
| current_direct_heir | 3,158 | 63.16% |
| no_current_direct_heir | 1,842 | 36.84% |
| multi_parent_history | 3,687 | 73.74% |
| population_absorbed_histories | 4,817 | 96.34% |

Origin/template occurrences count strata in final recorded historical polity profiles,
including extinct polities; not unique people. `human_derived` and `human_baseline` each65,156;
all other canonical Origin occurrences0. Population joins1,389, subset inheritance0 in shipping
because all stocks have one authorized baseline stratum. Mixed/hybrid/subset functionality is
tested with injected catalogs, not invented shipping content. Three saved fixtures (seeds2/3/10):
mixed histories2, true multi-lineage histories2, joins3, subsets4; see `fixture_statistics.json` for separate synthetic Origin/template counts. All six categories are exercised across150 fixture test seeds.

Relations: **17,736 edges**, per-history 2..9; mean 3.5472;
mean degree **1.144401**, mean density **0.237475**
(unweighted mean of2E/N and2E/(N(N-1)), not a fully connected graph).

Sites: reused **2,039**, abandoned/unoccupied **21,318**;
reuse in **2039 histories (40.78%)**. Ruin rows count damage
sites, not active town ownership records. Hazard/use breakdown:

| Hazard / purpose | Reuses |
| --- | ---: |
| none/research | 141 |
| none/ritual_site | 181 |
| none/scavenging | 212 |
| none/settlement | 1459 |
| structural/military_post | 9 |
| structural/research | 10 |
| structural/scavenging | 27 |

Chemical/ordnance/restricted reuse0; no hazard clearing.

Rare-lore frequencies (histories with the event):

| Category | Count | Percent |
| --- | ---: | ---: |
| no_observer_or_core | 4,219 | 84.38% |
| observer_legacy | 221 | 4.42% |
| core_intervention | 580 | 11.60% |
| orbital_bombardment | 55 | 1.10% |

## Representative histories and manual assessment

Sixteen shipping samples cover all7 families, all5 counts, compatible reuse, absorption,
Observer bombardment and Core. Three separate synthetic examples cover mixed society,
true multi-Origin lineage, joining and subset lineage loss. All nineteen full readable
outputs are saved, exceeding the requested minimum3. [Inspection notes](history_v3_fixup/inspection.md)
record all16 shipping graphs plus3 fixtures and answers to the ten manual questions.

Key contrasts: seed1 current4 from consolidation/resplit and branch consolidation;
seed6 current5 from recent splits and two real political losses; seed17 multiple old heir
branches; seed3 arrivals plus existing residents; seed9 no direct heir; seed12 an enclave
formed long before other current branches; seed4 recent nested splits yields8 and ends
with count-neutral institutional reorganization. These are not the same A/B/C skeleton.

Artifacts: [machine statistics](history_v3_fixup/diversity.json),
[16 readable shipping histories](history_v3_fixup/samples.md),
[shipping snapshots](history_v3_fixup/samples.json),
[synthetic fixture histories](history_v3_fixup/fixture_samples.md),
[synthetic snapshots](history_v3_fixup/fixture_samples.json),
[fixture statistics](history_v3_fixup/fixture_statistics.json).

## Changed files and responsibilities

- `history_topology.gd`: existing composer bands/stop/capacity and independent population draws.
- `history_generator.gd` / `history_motifs.gd` / `history_result.gd`: no target axis, catalog provenance,
  structured population/fate effects, authored revision and explicit architecture mapping.
- `origin_catalog.gd` + `content/population/origins.json`: shared stable IDs and display mapping.
- `social_population_catalog.gd` + shipping JSON: authored membership/newcomer/random permission gate.
- `population_origins.gd`: qualitative strata, canonical ordering, union/subset/join, untracked lineage,
  mixed/hybrid interpretation and presentation; no species/genetics generator.
- Entity/projector/state/validator: structured founding/last/current data, provenance/disposition,
  family/profile/content/lifecycle/evidence checks and fixed historical profile overwrite.
- Claim builder/formatter: duplicate guard, preserved delta/score sources, readable strata/fate semantics.
- Tests + fixture JSON: topology regressions and injected synthetic population assertions.
- Statistics/analyzer/fixture preview: full distributions, comparable DAG signatures and saved outputs.
- `sync_notion_knowledge.py`: monster Origin vocabulary reads the same authored ID catalog.
- Canon/contract/taxonomy/spec/wiki/diagrams/M039/indices/review: actual contracts and evidence updated.
  Existing initial-v3 review/samples/milestone remain unchanged.

## Known limitations and next integration boundary

No exact demographic quantities, births/deaths/breeding, species generator or sapient invention.
No economy, territory/map placement, personal genealogy/leaders, language/religion/culture/quest
generator, real-time world simulation or save migration. Qualitative template identity collapses
same-template cohorts; it cannot track separate individual ancestry. Untracked lineage means lost
observation, not biological extinction. Family anchors/prelude remain authored constraints; band
feasibility can restrict late choices. Finite random histories may share coarse political signatures.

Shipping population diversity is intentionally restricted until genuine nonhuman social content
is authored. The synthetic catalog cannot supply gameplay Canon. Diagnostic JSON is not a save
format. Headless checks and readable canonical inspection do not establish GUI/play/exported-package
or literary quality. Shared JSON content packaging should be checked when actual game import is built.

Recommended next boundary: a read-only world/faction import from projected stable IDs, event
provenance, ordered population strata and M035 names, with player-knowledge filtering of claims
and mysteries. Add authored social templates only through separate content approval, then preserve
the catalog/plan RNG isolation and all explicit v2 compatibility tests.

Full path inventory: [48 intended changed files](history_v3_fixup/changed_files.md).
Offline wiki metadata17 pages / specs15 and taxonomy/dataset content validation PASS;
layout192 resources /144UIDs /7 scenes PASS; both SVGs well-formed; diff whitespace audit PASS.
