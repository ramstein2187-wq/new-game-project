# M043 final 5,000-seed corpus

Final run: seeds 1–5000, generation4 / architecture2; 5,000 independently repeated canonical outputs, 30,815 current factions, 4,023 distinct political transformation sequences. Elapsed 324.1 seconds. [Raw statistics](statistics.json), [run log](corpus.log).

Occurrences can exceed worlds because a world can contain two regional chains or more than one Project. World exposure counts each world once. Faction exposure counts current factions with access to those **regional records**, not direct involvement, personal memories or biological descent. It is a record-access measurement, not a gameplay encounter probability. New event subtype exposures are also retained in statistics.json.

## Overall distribution

| Metric | Worlds | Exposure |
| --- | --- | --- |
| any_project | 2988 | 59.76% |
| any_scar | 2310 | 46.20% |
| no_project_or_major_scar | 1282 | 25.64% |
| preservator_activity | 2406 | 48.12% |
| any_cognitive_memory_anomaly | 1430 | 28.60% |

| Current factions | Worlds |
| --- | --- |
| 4 | 659 |
| 5 | 996 |
| 6 | 1163 |
| 7 | 1235 |
| 8 | 947 |

Event counts: 19–65, mean 37.27; exact histogram follows.

| Events | Worlds |
| --- | --- |
| 19 | 2 |
| 20 | 4 |
| 21 | 14 |
| 22 | 30 |
| 23 | 57 |
| 24 | 65 |
| 25 | 91 |
| 26 | 115 |
| 27 | 137 |
| 28 | 171 |
| 29 | 208 |
| 30 | 171 |
| 31 | 199 |
| 32 | 198 |
| 33 | 189 |
| 34 | 234 |
| 35 | 213 |
| 36 | 217 |
| 37 | 256 |
| 38 | 240 |
| 39 | 261 |
| 40 | 245 |
| 41 | 243 |
| 42 | 218 |
| 43 | 197 |
| 44 | 158 |
| 45 | 146 |
| 46 | 123 |
| 47 | 111 |
| 48 | 93 |
| 49 | 79 |
| 50 | 76 |
| 51 | 57 |
| 52 | 36 |
| 53 | 41 |
| 54 | 27 |
| 55 | 26 |
| 56 | 14 |
| 57 | 13 |
| 58 | 10 |
| 59 | 8 |
| 60 | 4 |
| 61 | 1 |
| 63 | 1 |
| 65 | 1 |

| Count | Project worlds | Scar worlds |
| --- | --- | --- |
| 0 | 2012 | 2690 |
| 1 | 2492 | 2019 |
| 2 | 496 | 291 |

| Project outcome | Projects |
| --- | --- |
| abandonment | 690 |
| catastrophe | 629 |
| partial_success | 685 |
| success | 1056 |
| unknown_outcome | 424 |

## Pressure domains and motifs

Domains below are regional-pressure event counts, not disjoint world counts: a world has a main chain and an additional compatible signature chain. Preservator world exposure above also includes actual recorded activity elsewhere in history. Unknown primary/additional pressure exposure is `unclassified_intervention`; other events retain their own unknown fields.

| Domain | Pressure events |
| --- | --- |
| human | 4366 |
| natural | 3126 |
| observer_legacy | 97 |
| preservator_intervention | 2205 |
| unknown | 206 |

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| adaptation_tension | 609 | 592 | 11.84% | 3689 | 11.97% |
| administrative_fragmentation | 568 | 552 | 11.04% | 3395 | 11.02% |
| augmentation_conflict | 254 | 254 | 5.08% | 1538 | 4.99% |
| chemical_exposure | 803 | 773 | 15.46% | 4773 | 15.49% |
| climate_desynchronization | 262 | 258 | 5.16% | 1565 | 5.08% |
| continuity_crisis | 239 | 239 | 4.78% | 1465 | 4.75% |
| extreme_seasons | 766 | 749 | 14.98% | 4600 | 14.93% |
| geophysical_stress | 816 | 792 | 15.84% | 4895 | 15.89% |
| hydrological_reversal | 279 | 276 | 5.52% | 1711 | 5.55% |
| identity_dispute | 172 | 172 | 3.44% | 1056 | 3.43% |
| memory_ownership_dispute | 133 | 133 | 2.66% | 815 | 2.64% |
| migration_pressure | 634 | 610 | 12.20% | 3766 | 12.22% |
| military_overextension | 563 | 544 | 10.88% | 3368 | 10.93% |
| network_severance | 272 | 269 | 5.38% | 1671 | 5.42% |
| orbital_bombardment | 30 | 30 | 0.60% | 179 | 0.58% |
| orbital_fragment | 33 | 33 | 0.66% | 203 | 0.66% |
| orbital_reentry | 18 | 18 | 0.36% | 109 | 0.35% |
| radiative_haze | 741 | 723 | 14.46% | 4466 | 14.49% |
| regulation_quarantine | 277 | 274 | 5.48% | 1678 | 5.45% |
| regulation_spasm | 262 | 260 | 5.20% | 1597 | 5.18% |
| sealed_horizon | 277 | 276 | 5.52% | 1690 | 5.48% |
| service_cascade | 292 | 291 | 5.82% | 1753 | 5.69% |
| subsurface_pressure_bloom | 284 | 283 | 5.66% | 1743 | 5.66% |
| succession_dispute | 581 | 569 | 11.38% | 3514 | 11.40% |
| surveillance_failure | 16 | 16 | 0.32% | 93 | 0.30% |
| trade_failure | 613 | 597 | 11.94% | 3728 | 12.10% |
| unclassified_intervention | 206 | 206 | 4.12% | 1259 | 4.09% |
| lineage_persecution | 0 | 0 | 0.00% | 0 | 0.00% |

The 24 authored additional-pressure entries comprise 23 shipping entries and gated lineage_persecution. Four inherited Observer-era orbital motifs remain available in the conservative scaffold. Their pressure exposure is 0.32–0.66%; this inherited rarity was retained rather than silently changing historical flavor. Orbital bombardment/reentry/fragment also appear in separate legacy events, so their total event exposure differs; both counts are in statistics.json.

## Responses

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| regional_autonomy | 1829 | 1717 | 34.34% | 10554 | 34.25% |
| religious_schism | 847 | 817 | 16.34% | 5068 | 16.45% |
| maintainer_secession | 1822 | 1736 | 34.72% | 10752 | 34.89% |
| household_council | 1772 | 1668 | 33.36% | 10297 | 33.42% |
| quarantine_cordon | 492 | 492 | 9.84% | 2981 | 9.67% |
| population_dispersal | 785 | 785 | 15.70% | 4876 | 15.82% |
| archive_evacuation | 785 | 785 | 15.70% | 4832 | 15.68% |
| continuity_project | 237 | 237 | 4.74% | 1450 | 4.71% |
| sealed_districts | 426 | 426 | 8.52% | 2673 | 8.67% |
| gene_bank_refuge | 110 | 110 | 2.20% | 663 | 2.15% |
| machine_delegation | 128 | 128 | 2.56% | 799 | 2.59% |
| identity_registry | 146 | 146 | 2.92% | 894 | 2.90% |
| memory_custody | 122 | 122 | 2.44% | 755 | 2.45% |
| emergency_collective | 499 | 499 | 9.98% | 3016 | 9.79% |

## Collapse patterns

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| civil_war | 1078 | 1026 | 20.52% | 6358 | 20.63% |
| mass_exodus | 4874 | 3729 | 74.58% | 22877 | 74.24% |
| administrative_breakdown | 3532 | 2944 | 58.88% | 18152 | 58.91% |
| targeted_extermination | 236 | 236 | 4.72% | 1498 | 4.86% |
| silent_depopulation | 227 | 227 | 4.54% | 1404 | 4.56% |
| continuity_transfer | 88 | 88 | 1.76% | 526 | 1.71% |
| population_failure | 106 | 106 | 2.12% | 678 | 2.20% |
| infrastructure_cascade | 292 | 253 | 5.06% | 1564 | 5.08% |
| identity_collapse | 237 | 237 | 4.74% | 1471 | 4.77% |
| automated_succession | 123 | 123 | 2.46% | 772 | 2.51% |
| ecological_displacement | 248 | 248 | 4.96% | 1505 | 4.88% |

## Civilizational Projects

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| ark_project | 371 | 371 | 7.42% | 2294 | 7.44% |
| deep_descent_project | 379 | 379 | 7.58% | 2343 | 7.60% |
| deep_space_listening_array | 410 | 410 | 8.20% | 2557 | 8.30% |
| continuity_vault | 379 | 379 | 7.58% | 2314 | 7.51% |
| genome_ark | 393 | 393 | 7.86% | 2387 | 7.75% |
| orbital_habitat_project | 365 | 365 | 7.30% | 2257 | 7.32% |
| climate_reconstruction_array | 375 | 375 | 7.50% | 2313 | 7.51% |
| machine_coordination_nexus | 397 | 397 | 7.94% | 2486 | 8.07% |
| transmutation_complex | 415 | 415 | 8.30% | 2536 | 8.23% |

## Civilizational Scars

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| biological_shutdown | 205 | 205 | 4.10% | 1288 | 4.18% |
| chosen_cognitive_regression | 228 | 228 | 4.56% | 1400 | 4.54% |
| collective_mind_fracture | 56 | 56 | 1.12% | 365 | 1.18% |
| continuity_transfer | 88 | 88 | 1.76% | 526 | 1.71% |
| failed_exodus | 323 | 323 | 6.46% | 1986 | 6.44% |
| identity_collapse | 237 | 237 | 4.74% | 1471 | 4.77% |
| infrastructure_cascade | 253 | 253 | 5.06% | 1564 | 5.08% |
| last_descent | 190 | 190 | 3.80% | 1163 | 3.77% |
| machine_insurrection | 60 | 60 | 1.20% | 371 | 1.20% |
| mass_morphogenic_event | 215 | 215 | 4.30% | 1341 | 4.35% |
| mechanogenic_assimilation | 63 | 63 | 1.26% | 388 | 1.26% |
| reproductive_shutdown | 220 | 220 | 4.40% | 1350 | 4.38% |
| silent_depopulation | 227 | 227 | 4.54% | 1404 | 4.56% |
| targeted_extermination | 236 | 236 | 4.72% | 1498 | 4.86% |
| imposed_cognitive_regression | 0 | 0 | 0.00% | 0 | 0.00% |

Collective Fracture is displayed through collective_mind_fracture; Reproductive Silence uses reproductive_shutdown. Cognitive/biological/machine histories do not add a species or Origin.

## Discoveries

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| crater_machine | 269 | 269 | 5.38% | 1642 | 5.33% |
| embedded_artifact | 285 | 285 | 5.70% | 1764 | 5.72% |
| manufactured_fragment | 285 | 285 | 5.70% | 1815 | 5.89% |
| sealed_chamber | 259 | 259 | 5.18% | 1547 | 5.02% |
| stratum_fragment | 260 | 260 | 5.20% | 1635 | 5.31% |
| surface_wreckage | 262 | 262 | 5.24% | 1601 | 5.20% |
| memory_lattice | 272 | 272 | 5.44% | 1674 | 5.43% |
| cognitive_echo | 265 | 265 | 5.30% | 1663 | 5.40% |
| identity_duplicate | 267 | 267 | 5.34% | 1644 | 5.34% |
| empty_settlement | 255 | 255 | 5.10% | 1576 | 5.11% |
| preserved_cohort | 244 | 244 | 4.88% | 1529 | 4.96% |
| chronological_anomaly | 227 | 227 | 4.54% | 1395 | 4.53% |
| biological_archive | 250 | 250 | 5.00% | 1527 | 4.96% |
| unmapped_substructure | 265 | 265 | 5.30% | 1627 | 5.28% |
| silent_regulation_node | 292 | 292 | 5.84% | 1790 | 5.81% |
| active_regulation_node | 248 | 248 | 4.96% | 1516 | 4.92% |
| nonlocal_material | 275 | 275 | 5.50% | 1702 | 5.52% |
| sealed_human_record | 250 | 250 | 5.00% | 1509 | 4.90% |
| cognitive_archive | 270 | 270 | 5.40% | 1659 | 5.38% |

## Other signatures and Ark/Far-Sky outcomes

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| distributed_identity | 251 | 251 | 5.02% | 1544 | 5.01% |
| memory_convergence | 211 | 211 | 4.22% | 1309 | 4.25% |
| orbital_reaction | 57 | 57 | 1.14% | 348 | 1.13% |
| signal_fixation | 76 | 76 | 1.52% | 470 | 1.53% |
| transmission_reversal | 76 | 76 | 1.52% | 471 | 1.53% |
| unclassified_signal | 79 | 79 | 1.58% | 520 | 1.69% |

| Canonical ID | Occurrences | Worlds | World exposure | Current factions | Faction exposure |
| --- | --- | --- | --- | --- | --- |
| array_silence | 60 | 60 | 1.20% | 377 | 1.22% |
| array_continues | 62 | 62 | 1.24% | 371 | 1.20% |
| ark_departure_unresolved | 48 | 48 | 0.96% | 308 | 1.00% |
| orbital_interdiction_launch_destruction | 60 | 60 | 1.20% | 361 | 1.17% |
| orbital_interdiction_guidance_capture | 68 | 68 | 1.36% | 416 | 1.35% |
| orbital_interdiction_propulsion_suppression | 78 | 78 | 1.56% | 486 | 1.58% |
| orbital_interdiction_orbital_containment | 65 | 65 | 1.30% | 398 | 1.29% |
| orbital_interdiction_silent_denial | 52 | 52 | 1.04% | 325 | 1.05% |
| population_redesign | 194 | 194 | 3.88% | 1193 | 3.87% |
| biological_assimilation | 64 | 64 | 1.28% | 397 | 1.29% |
| cognitive_assimilation | 230 | 230 | 4.60% | 1399 | 4.54% |
| social_assimilation | 237 | 237 | 4.74% | 1463 | 4.75% |
| network_assimilation | 63 | 63 | 1.26% | 403 | 1.31% |

## Safety and replay

| Failure category | Failures |
| --- | --- |
| chronology_failures | 0 |
| deterministic_replay_failures | 0 |
| fabricated_evidence | 0 |
| invalid_population_content | 0 |
| mystery_resolution_violations | 0 |
| other_validation_failures | 0 |
| prerequisite_failures | 0 |
| v2_compatibility_failures | 0 |
| v3_compatibility_failures | 0 |

M042-before-change fixtures: 64 fixed seeds × each of v2 and v3, exact canonical hash equality. All 5,000 v4 histories were generated again, not only projected from one event list. Focused mutation tests separately reject missing/future prerequisites, false causes, unrelated target groups, non-facility project references, fabricated projection, invented lineage and injected unapproved contact content.

## Rarity decisions and gated content

All nine shipping Projects, fourteen shipping Scars, fourteen Responses and nineteen Discoveries exceeded 1% world exposure. The closest shipping Scar is Collective Fracture (1.12%); keep it under observation in future distribution changes. Spectacle budgets allow at most two Projects and two major Scars. 1,282 worlds (25.64%) have neither; ordinary political history remains in every world.

Three of 170 authored event entries were unobserved: imposed_cognitive_regression, approved_contact_register, v4_lineage_persecution. These are intentionally blocked by absent author-approved population/contact content. The imposed-regression path is exercised with explicit synthetic authorization and is rejected by the shipping validator. Full machine factions are deferred; present shipping machine conflict refers to historically recorded infrastructure and human participants.

This is a reproducible regional-history corpus, not player encounter, global simulation or balance validation.
