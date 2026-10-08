# Corpus statistics — round2

Generation5 / architecture3 / history-v5-authored-2 / history-v5-archaeology-2.
Seeds1–5000; each generated twice and compared. Hard failures: `{}`.
Elapsed1051.2s. All figures describe generated contracts, not actual encounters or executed game actions.

## Sparse causality
Event explanation proxy (event has explicit cause/prerequisite):50.91%; outside Project/Scar:40.84%. This is not a percentage of current lifestyles explained.
Edge target categories: `{'cross_episode': 0, 'other': 35432, 'project': 58701, 'scar': 20624, 'topology': 44399}`. Historical associations are excluded.
Episode exposure: `{'acute_breakdown': 1656, 'displacement': 1719, 'managed_retreat': 1678, 'partial_stabilization': 1703, 'political_bifurcation': 1714, 'slow_erosion': 1674}`. Different recorded episodes do not require explanatory closure.
Actual edge scopes: `{'cross_episode_edges': 7008, 'other_internal_edges': 10596, 'prerequisite_boundary_edges': 28564, 'project_internal_edges': 46717, 'scar_internal_edges': 21872, 'topology_edges': 44399}`. These categories are disjoint. Internal means both ends belong to the same recorded Project/Scar facility. Topology includes population/institution lineage edges. Boundary prerequisites identify available population, formation, planning context or reusable ruins, not inferred motives. Cross-episode counts all remaining edges crossing recorded episode scopes, including social incident dependencies; it is not forced to zero.

## Family structure
| Family | Worlds | Mean factions | Count distribution | Direct heirs/current | Newcomers/current | Lineage depth distribution |
|---|---:|---:|---|---:|---:|---|
| consolidation_resplit | 702 | 4.71 | `{'4': 329, '5': 249, '6': 124}` | 80.6% | 0.0% | `{'1': 133, '10': 11, '11': 3, '2': 462, '3': 724, '4': 721, '5': 522, '6': 322, '7': 248, '8': 111, '9': 48}` |
| enclave_continuity | 751 | 5.83 | `{'4': 198, '5': 128, '6': 146, '7': 161, '8': 118}` | 13.8% | 19.0% | `{'0': 2237, '1': 1131, '2': 642, '3': 235, '4': 96, '5': 26, '6': 8, '7': 4}` |
| late_fragmentation | 736 | 6.66 | `{'4': 59, '5': 87, '6': 138, '7': 216, '8': 236}` | 90.6% | 0.0% | `{'1': 344, '2': 1258, '3': 1730, '4': 1103, '5': 379, '6': 68, '7': 13, '8': 4}` |
| layered_migration | 726 | 6.50 | `{'5': 171, '6': 184, '7': 206, '8': 165}` | 13.1% | 45.3% | `{'0': 3074, '1': 1292, '2': 309, '3': 42, '4': 4}` |
| no_direct_heir | 684 | 5.80 | `{'4': 104, '5': 126, '6': 255, '7': 199}` | 0.0% | 27.8% | `{'0': 2403, '1': 1106, '2': 362, '3': 76, '4': 20, '5': 2}` |
| polycentric_succession | 682 | 6.16 | `{'5': 256, '6': 176, '7': 134, '8': 116}` | 57.8% | 0.0% | `{'1': 548, '10': 10, '2': 990, '3': 979, '4': 650, '5': 483, '6': 260, '7': 165, '8': 91, '9': 26}` |
| remnant_mosaic | 719 | 4.90 | `{'4': 351, '5': 186, '6': 103, '7': 58, '8': 21}` | 10.2% | 19.7% | `{'0': 1423, '1': 771, '10': 2, '2': 471, '3': 307, '4': 201, '5': 130, '6': 97, '7': 74, '8': 29, '9': 21}` |

### consolidation_resplit
Current formation counts: `{'direct_successor': 133, 'fragmentation': 1993, 'merger': 648, 'migration_settlement': 243, 'reorganization': 288}`.
Historical operation counts: `{'EXTINCTION': 301, 'FOUNDING': 2815, 'MERGE': 1982, 'MIGRATION': 463, 'REORGANIZATION': 569, 'SPLIT': 1757}`.

### enclave_continuity
Current formation counts: `{'direct_successor': 344, 'enclave_continuity': 751, 'fragmentation': 695, 'migration_settlement': 551, 'newcomer_formation': 831, 'reorganization': 1207}`.
Historical operation counts: `{'EXTINCTION': 795, 'FOUNDING': 2979, 'MIGRATION': 1591, 'NEWCOMER': 1159, 'REORGANIZATION': 833, 'SPLIT': 374}`.

### late_fragmentation
Current formation counts: `{'direct_successor': 344, 'fragmentation': 4033, 'merger': 249, 'reorganization': 273}`.
Historical operation counts: `{'EXTINCTION': 329, 'FOUNDING': 1106, 'MERGE': 334, 'REORGANIZATION': 360, 'SPLIT': 2556}`.

### layered_migration
Current formation counts: `{'direct_successor': 459, 'fragmentation': 444, 'migration_settlement': 520, 'newcomer_formation': 2138, 'reorganization': 1160}`.
Historical operation counts: `{'EXTINCTION': 451, 'FOUNDING': 1805, 'MIGRATION': 1069, 'NEWCOMER': 2512, 'REORGANIZATION': 242, 'SPLIT': 200}`.

### no_direct_heir
Current formation counts: `{'fragmentation': 486, 'migration_settlement': 418, 'newcomer_formation': 1103, 'reorganization': 1962}`.
Historical operation counts: `{'EXTINCTION': 2603, 'FOUNDING': 4455, 'MIGRATION': 573, 'NEWCOMER': 1493, 'REORGANIZATION': 882, 'SPLIT': 290}`.

### polycentric_succession
Current formation counts: `{'direct_successor': 548, 'fragmentation': 2302, 'merger': 269, 'migration_settlement': 359, 'reorganization': 724}`.
Historical operation counts: `{'EXTINCTION': 606, 'FOUNDING': 2717, 'MERGE': 608, 'MIGRATION': 694, 'REORGANIZATION': 1510, 'SPLIT': 1477}`.

### remnant_mosaic
Current formation counts: `{'direct_successor': 211, 'enclave_continuity': 365, 'fragmentation': 969, 'merger': 101, 'newcomer_formation': 694, 'reorganization': 1186}`.
Historical operation counts: `{'EXTINCTION': 575, 'FOUNDING': 2904, 'MERGE': 322, 'MIGRATION': 813, 'NEWCOMER': 1254, 'REORGANIZATION': 1947, 'SPLIT': 527}`.

## Formation change from v4
Same seed interval; v4 authoritative political scaffold only. Civilizational/name layers do not alter these formations. Different version RNG domains mean this is a distribution comparison.
| Current formation | v4 count | v4 share | v5 count | v5 share |
|---|---:|---:|---:|---:|
| direct_successor | 2074 | 6.73% | 2039 | 7.03% |
| enclave_continuity | 1060 | 3.44% | 1116 | 3.85% |
| fragmentation | 15668 | 50.85% | 10922 | 37.66% |
| merger | 1761 | 5.71% | 1267 | 4.37% |
| migration_settlement | 1264 | 4.10% | 2091 | 7.21% |
| newcomer_formation | 2089 | 6.78% | 4766 | 16.43% |
| reorganization | 6899 | 22.39% | 6800 | 23.45% |

## Content breadth
Authored Project stage narratives:34. Trace archetypes:116; Question archetypes:40; interaction variants:60; action types:21.
| Contract/world | Mean |
|---|---:|
| traces | 72.25 |
| major_questions | 4.42 |
| minor_discoveries | 57.42 |
| interactions | 216.77 |
| consequences | 35.00 |
| contexts | 42.60 |

Trace category counts: `{'documentary': 152575, 'institutional': 58287, 'living': 2047, 'physical': 148325}`.
Question classification counts: `{'contested_interpretation': 7862, 'open_mystery': 3303, 'recoverable_fact': 10948}`.
Evidence links/question:3.82; distinct source events/question:3.41; contexts/question:3.46.
Shared Question Traces:7936; Question budget distribution:`{'3': 1291, '4': 1366, '5': 1282, '6': 1061}`.
Interaction family counts:`{'artifact_comparison': 18027, 'biological_inspection': 1525, 'combat': 128255, 'controlled_activation': 3008, 'custody_choice': 121598, 'destruction_preservation': 193359, 'environmental_manipulation': 6587, 'escort_recovery': 88334, 'evidence_disclosure': 121702, 'exploration': 68791, 'faction_access': 40906, 'hazardous_traversal': 3244, 'machine_interaction': 3401, 'map_comparison': 13812, 'negotiation': 85444, 'repair_reactivation': 4541, 'stealth': 107616, 'technical_inspection': 5318, 'theft': 22601, 'trade': 45793}`. Action proposal types:`{'alter_access_rights': 12750, 'challenge_claim': 12750, 'destroy_evidence': 3800, 'dialogue_evidence': 2988, 'expose_responsibility': 442, 'facility_activation': 2988, 'facility_shutdown': 2988, 'hazard_prediction': 4530, 'keep_information_secret': 22113, 'machine_bypass': 2988, 'material_recipient': 3800, 'new_location_access': 22113, 'preserve_evidence': 22113, 'reopen_site': 4530, 'reveal_custody': 12750, 'safer_route': 4530, 'seal_site': 4530, 'support_claim': 12750, 'technical_procedure': 3800, 'transfer_archive': 12750, 'usable_machinery': 2988}`.
Implemented world action executions:0. Gameplay families are structured consumer contracts; they require existing runtime prerequisites. Evidence gathering and permission proposals are implemented. No percentage below should imply combat/stealth/repair/map execution has shipped.

Multiple-use Traces:361234. Questions with consequences:22113/22113. Interaction families/question distribution:`{'10': 551, '11': 113, '12': 8, '2': 22, '3': 336, '4': 1651, '5': 3598, '6': 5121, '7': 5139, '8': 3791, '9': 1783}`.
Documentary-only evidence Questions:0.13%; passive-reading-only contract Questions:0.00%. Passive reading means every offered hook is read_telemetry/read_guidance_log. Negotiation, custody, recovery and comparison are structured contracts; they count beyond reading only at the contract level. Engine-bound Questions:0. All generated map/encounter/action bindings remain integration work.

## traces exposure
Reached116/116 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| abandoned_office | 5000 | 100.00% |
| border_works | 5000 | 100.00% |
| broken_civic_archive | 5000 | 100.00% |
| civic_charter | 5000 | 100.00% |
| discovery_access | 5000 | 100.00% |
| discovery_object | 5000 | 100.00% |
| discovery_record | 5000 | 100.00% |
| succession_petition | 5000 | 100.00% |
| merged_archives | 4541 | 90.82% |
| arrival_houses | 4435 | 88.70% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| empty_habitation | 88 | 1.76% |
| missing_census | 88 | 1.76% |
| missing_residents_memorial | 88 | 1.76% |
| integration_machinery | 163 | 3.26% |
| linkage_institution | 163 | 3.26% |
| linkage_measurements | 163 | 3.26% |
| network_households | 163 | 3.26% |
| impact_belt | 177 | 3.54% |
| reentry_log | 177 | 3.54% |
| wreckage_site | 177 | 3.54% |

## questions exposure
Reached40/40 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| arrival_membership | 2096 | 41.92% |
| fragmented_archive | 2066 | 41.32% |
| legal_successor | 1995 | 39.90% |
| old_boundary | 1989 | 39.78% |
| old_trade_route | 1481 | 29.62% |
| clone_status | 1355 | 27.10% |
| reuse_rights | 934 | 18.68% |
| former_homeland | 803 | 16.06% |
| failed_deep_home | 801 | 16.02% |
| autonomous_damage | 716 | 14.32% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| resident_disappearance | 88 | 1.76% |
| orbital_operator | 107 | 2.14% |
| orbital_objects | 112 | 2.24% |
| coercive_custody | 119 | 2.38% |
| coercive_responsibility | 122 | 2.44% |
| sky_signal | 122 | 2.44% |
| irreversible_linkage | 163 | 3.26% |
| targeted_policy | 201 | 4.02% |
| constructed_machine | 221 | 4.42% |
| deep_access | 231 | 4.62% |

## interactions exposure
Reached60/60 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| arbitrate_access_dispute | 5000 | 100.00% |
| dismantle_evidence_hazard | 5000 | 100.00% |
| escort_record_specialist | 5000 | 100.00% |
| evade_site_patrol | 5000 | 100.00% |
| protect_recovery_party | 5000 | 100.00% |
| stabilize_fragile_evidence | 5000 | 100.00% |
| cross_contested_site | 4999 | 99.98% |
| seal_evidence_in_place | 4999 | 99.98% |
| secure_defense_position | 4999 | 99.98% |
| earn_archive_permit | 4998 | 99.96% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| cross_impact_belt | 83 | 1.66% |
| compare_conflicting_charts | 149 | 2.98% |
| return_ancestral_object | 191 | 3.82% |
| run_limited_array_test | 191 | 3.82% |
| match_wreck_fragments | 240 | 4.80% |
| read_guidance_log | 281 | 5.62% |
| compare_generational_measures | 292 | 5.84% |
| test_bounded_emulation | 315 | 6.30% |
| triangulate_reference_frames | 429 | 8.58% |
| verify_interface | 429 | 8.58% |
