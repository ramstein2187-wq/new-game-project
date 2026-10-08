# Corpus statistics — round1

Generation5 / architecture3 / history-v5-authored-1 / history-v5-archaeology-1.
Seeds1–5000; each generated twice and compared. Hard failures: `{}`.
Elapsed1108.9s. All figures describe generated contracts, not actual encounters or executed game actions.

## Sparse causality
Event explanation proxy (event has explicit cause/prerequisite):50.91%; outside Project/Scar:40.84%. This is not a percentage of current lifestyles explained.
Edge target categories: `{'cross_episode': 0, 'other': 35669, 'project': 58701, 'scar': 20624, 'topology': 45149}`. Historical associations are excluded.
Episode exposure: `{'acute_breakdown': 1656, 'displacement': 1719, 'managed_retreat': 1678, 'partial_stabilization': 1703, 'political_bifurcation': 1714, 'slow_erosion': 1674}`. Different recorded episodes do not require explanatory closure.

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
Authored Project stage narratives:34. Trace archetypes:100; Question archetypes:40; interaction variants:60; action types:21.
| Contract/world | Mean |
|---|---:|
| traces | 79.40 |
| major_questions | 4.49 |
| minor_discoveries | 62.10 |
| interactions | 238.16 |
| consequences | 34.21 |
| contexts | 7.20 |

Trace category counts: `{'documentary': 163004, 'institutional': 90244, 'living': 2438, 'physical': 141320}`.
Question classification counts: `{'contested_interpretation': 9592, 'open_mystery': 1718, 'recoverable_fact': 11139}`.
Evidence links/question:3.89; distinct source events/question:3.42; contexts/question:2.25.
Shared Question Traces:737; Question budget distribution:`{'3': 1267, '4': 1261, '5': 1228, '6': 1244}`.
Interaction family counts:`{'artifact_comparison': 41173, 'biological_inspection': 29160, 'combat': 41545, 'controlled_activation': 17530, 'custody_choice': 65130, 'destruction_preservation': 41671, 'environmental_manipulation': 41410, 'escort_recovery': 42886, 'evidence_disclosure': 145009, 'exploration': 55113, 'faction_access': 96743, 'hazardous_traversal': 41240, 'machine_interaction': 19111, 'map_comparison': 12942, 'negotiation': 146702, 'repair_reactivation': 18083, 'stealth': 41300, 'technical_inspection': 160935, 'theft': 53065, 'trade': 80038}`. Action proposal types:`{'alter_access_rights': 11331, 'challenge_claim': 11331, 'destroy_evidence': 3444, 'dialogue_evidence': 4353, 'expose_responsibility': 220, 'facility_activation': 4353, 'facility_shutdown': 4353, 'hazard_prediction': 3685, 'keep_information_secret': 22449, 'machine_bypass': 4353, 'material_recipient': 3444, 'new_location_access': 22449, 'preserve_evidence': 22449, 'reopen_site': 3685, 'reveal_custody': 11331, 'safer_route': 3685, 'seal_site': 3685, 'support_claim': 11331, 'technical_procedure': 3444, 'transfer_archive': 11331, 'usable_machinery': 4353}`.
Implemented world action executions:0. Gameplay families are structured consumer contracts; they require existing runtime prerequisites. Evidence gathering and permission proposals are implemented. No percentage below should imply combat/stealth/repair/map execution has shipped.

## traces exposure
Reached100/100 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| abandoned_office | 5000 | 100.00% |
| border_works | 5000 | 100.00% |
| broken_civic_archive | 5000 | 100.00% |
| civic_charter | 5000 | 100.00% |
| succession_petition | 5000 | 100.00% |
| reuse_custody | 4622 | 92.44% |
| merged_archives | 4621 | 92.42% |
| arrival_compact | 4438 | 88.76% |
| migration_register | 4435 | 88.70% |
| old_route | 4339 | 86.78% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| empty_habitation | 88 | 1.76% |
| missing_census | 88 | 1.76% |
| missing_residents_memorial | 88 | 1.76% |
| integration_machinery | 163 | 3.26% |
| linkage_measurements | 163 | 3.26% |
| network_households | 163 | 3.26% |
| impact_belt | 177 | 3.54% |
| reentry_log | 177 | 3.54% |
| wreckage_site | 177 | 3.54% |
| coercion_enforcement | 183 | 3.66% |

## questions exposure
Reached40/40 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| civic_identity | 2629 | 52.58% |
| arrival_membership | 2278 | 45.56% |
| service_dependency | 2051 | 41.02% |
| old_trade_route | 1762 | 35.24% |
| fragmented_archive | 1519 | 30.38% |
| old_boundary | 1496 | 29.92% |
| legal_successor | 1469 | 29.38% |
| maintenance_rights | 1303 | 26.06% |
| reuse_rights | 856 | 17.12% |
| clone_status | 655 | 13.10% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| resident_disappearance | 50 | 1.00% |
| coercive_responsibility | 60 | 1.20% |
| orbital_operator | 60 | 1.20% |
| coercive_custody | 64 | 1.28% |
| orbital_objects | 70 | 1.40% |
| irreversible_linkage | 85 | 1.70% |
| targeted_policy | 96 | 1.92% |
| altered_humans | 114 | 2.28% |
| autonomous_damage | 122 | 2.44% |
| machine_personhood | 143 | 2.86% |

## interactions exposure
Reached60/60 (100.0%); unreachable:`[]`.

Top10 (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| redact_personal_identifiers | 5000 | 100.00% |
| share_corroborated_dossier | 5000 | 100.00% |
| arbitrate_access_dispute | 4999 | 99.98% |
| earn_archive_permit | 4999 | 99.98% |
| petition_archive_custodian | 4999 | 99.98% |
| publish_policy_evidence | 4999 | 99.98% |
| return_ancestral_object | 4999 | 99.98% |
| read_telemetry | 4998 | 99.96% |
| inspect_service_dependency | 4995 | 99.90% |
| negotiate_cohort_consent | 4995 | 99.90% |

Bottom10 reached (world exposure):
| Archetype | Worlds | Exposure |
|---|---:|---:|
| triangulate_reference_frames | 2587 | 51.74% |
| trace_historical_boundary | 2610 | 52.20% |
| compare_conflicting_charts | 2636 | 52.72% |
| cycle_isolated_junction | 3106 | 62.12% |
| run_limited_array_test | 3135 | 62.70% |
| test_bounded_emulation | 3138 | 62.76% |
| repair_reading_head | 3200 | 64.00% |
| patch_local_sensor | 3201 | 64.02% |
| restore_reader_power | 3209 | 64.18% |
| challenge_machine_handshake | 3273 | 65.46% |
