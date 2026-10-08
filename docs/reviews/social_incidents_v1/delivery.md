# M042 delivery and validation report

M042 implements objective social history that can justify culture, without forcing a Doctrine or inventing gated lore. Generation3 / architecture2 remain; exact v2 behavior and upstream M041 topology/formation/names/relations are verified.

- Branch: `codex/history-social-incidents-v1`.
- Worktree: `C:\GameDev\history-social-incidents-v1`.
- Exact base: `ef18814f34abfa7ab278c0914ae289806b22dc12`.
- Final commit SHA and local/remote push verification: recorded after the coherent commit in the outside-checkout receipt `C:\GameDev\history-social-incidents-v1-delivery.md` (a commit cannot contain its own SHA). No main merge.
- Preserved main baseline: `10f6f31cd39f165a7e04c658921056089eb794ef`; original12 import sidecars are SHA256-audited and excluded from staging.

## Implementation and boundaries

[Full incident contract](../../specs/social_historical_incidents.md), [current Culture contract](../../specs/faction_culture.md), [milestone](../../milestones/M042_social_cultural_incidents.md). Canon constrains what can be true. History generation decides what happened. Cultures decide what it means. Simulation decides what happens next.

Pipeline: topology/formation → new objective social layer → recent relations → projector → M040 identity → culture → candidate intentions. Social history changes sites/cohorts/current institutions/historical records, never adds or removes a political faction.

RNG: `SeedDeriver(seed,["history","3","social_incidents",axis])`; independent budget, slot/family/subtype/participant and conditional clone axes. Sorted authored definitions/content make order irrelevant. Existing names are generated first; new social objects follow. Social ruins are excluded from existing ruin-reuse selection so relation/reuse RNG results remain unchanged.

Shipping catalog authorities: `content/history/social_incidents_v1.json`, `social_contacts_v1.json`. Closed `social_record` effects carry concrete objective record type/ID, faction, reference, authorized content and establish/observe/abolish operation. `social_history` retains the entire ledger; `social_facts` retains current established/unabolished facts. CultureEvidence derives source-tag records with exact events/references/content, never writes back.

History revision `history-v3-authored-4`, social revision `social-incidents-v1-authored-1`, culture revision `faction-culture-v1-authored-2`. V2 revision/output unchanged.

## Prerequisites and actual consequences

| Family/path | Required causal history | Actual consequences |
| --- | --- | --- |
| Machine conflict | Current formed human society; autonomous conflict or defense hostility | Physical ruined service site + local war/hostility observation; later safety reform/oversight |
| Machine control failure | Current formed society; actual unsafe autonomous service | Physical damage + catastrophe/harm record; no machine-war classification |
| Machine cooperation | Actual cooperative contact/long-term aid | Accommodation institution + later compact renewal; presence alone supplies none |
| Automation | Documented local capability and oversight compact/dispute | Current automation/human oversight + later authority review; no kinship assumption |
| Biotechnology | Recovered functioning workshop/testing before program | Bodily adaptation institution, local stock-loss preservation, or intentional hereditary design |
| Cloning | Equipment and stored genomes before cohort; population decline before emergency root | Real active group/cohort, human_baseline provenance, explicit dependent status; dependent follow-ups |
| Founder/replacement | Founder replication + separate prior template-person death | Replacement/inheritance dispute, never same-person identity |
| Homeland | Owned identifiable home before loss | Home retirement + ruin + replacement active settlement; same lost-site reference in memory institution |
| Deep | Human residence at newly recorded shared Deep settlement | Real site activation/ownership/residence before retirement/ruin/exile; surface homes retained; memory record |
| Rotating office | Real compact or anti-entrenchment reform | Current rotating_office institution + executed rotation review |
| Authored lineage | At least two approved human-derived resident identities; adapted content explicitly authorized | Actual lineage contact/integration or benchmark/exclusion; no procedural biology |
| Personhood | Approved historical semi-sapient contact before response | Dispute/threshold, protection or exploitation records; no procedural creatures |

Clone sequence: equipment recovery → local population decline → Emergency Reconstitution / Clone Settlement / Founder Replication / Military Batch → cohort exists → eligible Integration / Emancipation / Bottleneck / Divergence / Caste / Replacement. One follow-up plus a different second with45% conditional probability. Founder roots additionally record template death. Emancipation abolishes dependency/caste current institutions while retaining history. Each dependent event cites earlier prerequisite event(s).

Cloning ≠ genetic modification ≠ multiple lineages ≠ same person. Clone divergence here is environmental/accumulated variation, not engineering. Clone cohorts are social groups in existing polities. Local bodily programs do not invent lineage identity. Existing multi-Origin/unknown rules and political/population ancestry remain separate.

## Exposure tuning and count definition

Rarity should create different combinations, not hide expensive content from players who may see only one or two worlds. Budget15/45/30/10 for0/1/2/3 family episodes, without replacement. Family weights machine26/biotech18/clone22/homeland12/deep12/stewardship10. Empty approved lineage/contact catalogs close the other two family gates.

The requested incident count is treated as a **memorable family episode**, bounded at3. Preparation, reinforcement and clone consequences are individually recorded objective events; those are separately bounded at12 and reported below (observed max11). This deliberate extension of the suggested3–4 event bound permits real prerequisite/reinforcement chains rather than packing unsupported outcomes into a single event. An episode is not a hidden event: every supporting subtype has unconditional and conditional exposure metrics.

| Episodes | Worlds | World % | Initial target |
| --- | --- | --- | --- |
| 0 | 723 | 14.46% | 10–20% |
| 1 | 2232 | 44.64% | 40–50% |
| 2 | 1535 | 30.70% | 25–35% |
| 3+ | 510 | 10.20% | 5–15% |

85.54% of worlds have at least one episode.

| Individual objective social events | Worlds | World % |
| --- | --- | --- |
| 0 | 723 | 14.46% |
| 2 | 1462 | 29.24% |
| 3 | 288 | 5.76% |
| 4 | 821 | 16.42% |
| 5 | 510 | 10.20% |
| 6 | 405 | 8.10% |
| 7 | 392 | 7.84% |
| 8 | 171 | 3.42% |
| 9 | 156 | 3.12% |
| 10 | 66 | 1.32% |
| 11 | 6 | 0.12% |

| Family | Worlds | World % | Gate |
| --- | --- | --- | --- |
| biotechnology | 1296 | 25.92% | none |
| cloning | 1447 | 28.94% | none |
| deep | 858 | 17.16% | none |
| homeland | 847 | 16.94% | none |
| lineage | 0 | 0.00% | lineages |
| machine | 1675 | 33.50% | none |
| personhood | 0 | 0.00% | contacts |
| stewardship | 709 | 14.18% | none |

## Every authored event/subtype

Conditional percentage uses worlds with that family as denominator; support and follow-up percentages can overlap. Replacement Crisis also occurs in82/225 founder worlds =36.44%; it is5.67% of all clone-family worlds and1.64% of all worlds. No standalone tiny replacement roll.

| Event/subtype | Family | Role | Worlds | All-world % | Within-family % | Gate |
| --- | --- | --- | --- | --- | --- | --- |
| adapted_lineage_registration | biotechnology | support | 0 | 0.00 | 0.00 | adapted_lineages |
| ancestral_site_loss | homeland | primary | 271 | 5.42 | 32.00 | none |
| anti_entrenchment_reform | stewardship | primary | 358 | 7.16 | 50.49 | none |
| automation_oversight_compact | machine | primary | 252 | 5.04 | 15.04 | none |
| autonomous_authority_dispute | machine | primary | 187 | 3.74 | 11.16 | none |
| autonomous_machine_conflict | machine | primary | 296 | 5.92 | 17.67 | none |
| biotech_workshop_recovery | biotechnology | support | 1296 | 25.92 | 100.00 | none |
| bodily_adaptation_program | biotechnology | primary | 515 | 10.30 | 39.74 | none |
| clone_bottleneck | cloning | followup | 448 | 8.96 | 30.96 | none |
| clone_caste | cloning | followup | 210 | 4.20 | 14.51 | none |
| clone_divergence | cloning | followup | 407 | 8.14 | 28.13 | none |
| clone_emancipation | cloning | followup | 416 | 8.32 | 28.75 | none |
| clone_integration | cloning | followup | 537 | 10.74 | 37.11 | none |
| clone_settlement | cloning | primary | 522 | 10.44 | 36.07 | none |
| cloning_archive_recovery | cloning | support | 1447 | 28.94 | 100.00 | none |
| deep_memory_register | deep | support | 858 | 17.16 | 100.00 | none |
| deep_residence_record | deep | support | 858 | 17.16 | 100.00 | none |
| deep_settlement_evacuation | deep | primary | 858 | 17.16 | 100.00 | none |
| defense_network_hostility | machine | primary | 195 | 3.90 | 11.64 | none |
| designed_descent_program | biotechnology | primary | 291 | 5.82 | 22.45 | none |
| emergency_reconstitution | cloning | primary | 499 | 9.98 | 34.49 | none |
| exploitation_conflict | personhood | primary | 0 | 0.00 | 0.00 | contacts |
| forced_evacuation | homeland | primary | 292 | 5.84 | 34.47 | none |
| founder_replication | cloning | primary | 225 | 4.50 | 15.55 | none |
| founder_template_death_record | cloning | support | 225 | 4.50 | 15.55 | none |
| homeland_displacement | homeland | primary | 284 | 5.68 | 33.53 | none |
| homeland_memory_charter | homeland | support | 847 | 16.94 | 100.00 | none |
| human_final_authority | machine | support | 439 | 8.78 | 26.21 | none |
| lineage_coexistence_compact | lineage | primary | 0 | 0.00 | 0.00 | lineages |
| lineage_exclusion_dispute | lineage | primary | 0 | 0.00 | 0.00 | lineages |
| lineage_preservation_program | biotechnology | primary | 490 | 9.80 | 37.81 | none |
| local_population_decline | cloning | support | 1447 | 28.94 | 100.00 | none |
| machine_aid_compact | machine | primary | 347 | 6.94 | 20.72 | none |
| machine_compact_renewal | machine | support | 593 | 11.86 | 35.40 | none |
| machine_control_failure | machine | primary | 152 | 3.04 | 9.07 | none |
| machine_maintenance_cooperation | machine | primary | 246 | 4.92 | 14.69 | none |
| machine_safety_reform | machine | support | 643 | 12.86 | 38.39 | none |
| military_batch | cloning | primary | 201 | 4.02 | 13.89 | none |
| office_rotation_review | stewardship | support | 709 | 14.18 | 100.00 | none |
| personhood_dispute | personhood | primary | 0 | 0.00 | 0.00 | contacts |
| protection_compact | personhood | primary | 0 | 0.00 | 0.00 | contacts |
| replacement_crisis | cloning | followup | 82 | 1.64 | 5.67 | none |
| rotating_office_compact | stewardship | primary | 351 | 7.02 | 49.51 | none |
| semi_sapient_contact | personhood | support | 0 | 0.00 | 0.00 | contacts |

## Doctrine activation and dormant content

All14 formerly dormant Doctrines have a tested legitimate objective activation path. Nine are selected in shipping corpus; five stay at0 because author-approved biological/contact content is absent. All five have actual synthetic generated histories, not only loose tag fixtures. Synthetic contact content has a separate identity rejected by the default shipping validator and is excluded from corpus counts.

| Formerly dormant Doctrine | Objective path | Eligible factions | Selected factions | Selected-world % | Shipping status |
| --- | --- | --- | --- | --- | --- |
| Pure Flesh | actual machine war scar | 643 | 132 | 2.64 | reachable/selected |
| Machine Kinship | cooperative contact/accommodation | 593 | 173 | 3.46 | reachable/selected |
| Silent Circuit | actual autonomous harm | 643 | 135 | 2.70 | reachable/selected |
| Bounded Automation | automation + human oversight | 439 | 122 | 2.44 | reachable/selected |
| The Mutable Human | workshop + actual bodily modification | 515 | 119 | 2.38 | reachable/selected |
| Ancestral Genome | local stock loss + preservation | 490 | 117 | 2.34 | reachable/selected |
| Designed Kinship | biotechnology + intentional hereditary design | 291 | 64 | 1.28 | reachable/selected |
| Ecological Communion | adaptation + explicitly approved adapted resident | 0 | 0 | 0.00 | authored gate dormant |
| Last Human Measure | approved distinct residents + benchmark/exclusion | 0 | 0 | 0.00 | authored gate dormant |
| Many Bodies, One People | actual approved resident lineage plurality | 0 | 0 | 0.00 | authored gate dormant |
| The Thinking Threshold | approved semi-sapient historical contact | 0 | 0 | 0.00 | authored gate dormant |
| Kin Beyond Thought | approved contact; protection optional | 0 | 0 | 0.00 | authored gate dormant |
| The Reclamation | identifiable lost home | 847 | 237 | 4.74 | reachable/selected |
| Return to the Deep | actual human Deep residence + lost settlement | 1716 | 382 | 6.84 | reachable/selected |

Dormant reasons: Ecological Communion lacks explicitly authorized adapted lineage; Last Human Measure and Many Bodies, One People lack two approved distinct resident lineages; Thinking Threshold and Kin Beyond Thought lack an approved historical semi-sapient contact. Many Forms, One Hearth Trait is also gated. No physiology, creature or civilization was added to meet a frequency target.

## Dead-content audit

No gate-open shipping event or Doctrine is below1% world exposure. The only below1% rows are the7 incident definitions and5 Doctrines below, all at0 with explicit authored-content gates (conditional exposure0; the gated family itself has no shipping worlds). They are intentional dormant adapters, not accidental low RNG probabilities.

| Kind | ID | World % | Within-family % | Reason |
| --- | --- | --- | --- | --- |
| incident | adapted_lineage_registration | 0.00 | 0.00 | authored content gate |
| incident | exploitation_conflict | 0.00 | 0.00 | authored content gate |
| incident | lineage_coexistence_compact | 0.00 | 0.00 | authored content gate |
| incident | lineage_exclusion_dispute | 0.00 | 0.00 | authored content gate |
| incident | personhood_dispute | 0.00 | 0.00 | authored content gate |
| incident | protection_compact | 0.00 | 0.00 | authored content gate |
| incident | semi_sapient_contact | 0.00 | 0.00 | authored content gate |
| doctrine | ecological_communion | 0.00 | n/a | authored content gate |
| doctrine | kin_beyond_thought | 0.00 | n/a | authored content gate |
| doctrine | last_human_measure | 0.00 | n/a | authored content gate |
| doctrine | many_bodies_one_people | 0.00 | n/a | authored content gate |
| doctrine | thinking_threshold | 0.00 | n/a | authored content gate |

Initial5000 corpus showed Designed Kinship selected in0.70% of worlds and fanatic exposure24.10%. All nine specific, evidence-gated local incident Doctrines now uniformly use baseweight10 (generic norms remain5; preferences add2). This models salience of actual local experience, not a guaranteed Doctrine or intensity lottery. Final Designed Kinship exposure1.28% and fanatic29.86%; episode/subtype exposure and prerequisites did not change.

## Complete Culture distribution

Eligible/selected counts are faction occurrences; world counts deduplicate within each world.

| Society Trait | Eligible factions | Selected factions | Eligible worlds | Selected worlds |
| --- | --- | --- | --- | --- |
| Adaptive Customs | 2555 | 1696 | 1951 | 1409 |
| Archive Legitimacy | 5174 | 4043 | 3334 | 2851 |
| Borrowed Offices | 12867 | 9270 | 3158 | 2943 |
| Boundary Watch | 10989 | 7494 | 4237 | 3779 |
| Closed Roads | 5633 | 4260 | 3323 | 2854 |
| Deep Boundary Keepers | 452 | 284 | 74 | 74 |
| Hazard Memory | 16071 | 9059 | 4905 | 4340 |
| Household Sovereignty | 3894 | 2717 | 2797 | 2141 |
| Local Mandate | 8098 | 4400 | 4206 | 3010 |
| Maintenance Covenant | 8349 | 6356 | 4227 | 3712 |
| Many Forms, One Hearth | 0 | 0 | 0 | 0 |
| Mutual Obligation | 21617 | 15021 | 5000 | 4923 |
| Newcomer Charter | 2955 | 2096 | 1704 | 1383 |
| Rebuilt From Fragments | 3775 | 2501 | 3018 | 2161 |
| Ritual Stewardship | 3802 | 2723 | 2733 | 2150 |
| Rotating Stewardship | 709 | 395 | 709 | 395 |
| Route Commonwealth | 13446 | 9407 | 4636 | 4294 |
| Salvage Custom | 239 | 165 | 239 | 165 |
| Scarred by the Sky | 1033 | 656 | 167 | 166 |
| Shelter Compact | 6786 | 4767 | 3835 | 3158 |

| Doctrine | Category | Eligible factions | Selected factions | Eligible worlds | Selected worlds | Selected-world % |
| --- | --- | --- | --- | --- | --- | --- |
| Ancestral Genome | biotech | 490 | 117 | 490 | 117 | 2.34 |
| Beauty Against Ruin | art | 3011 | 484 | 2336 | 457 | 9.14 |
| Bounded Automation | machine | 439 | 122 | 439 | 122 | 2.44 |
| The Closed Sky | sky | 1360 | 219 | 221 | 138 | 2.76 |
| Doctrine of Continuity | philosophy | 13966 | 3686 | 3757 | 2345 | 46.90 |
| Debt of Shelter | ethics | 2412 | 500 | 1963 | 479 | 9.58 |
| Depth Taboo | deep | 2144 | 319 | 920 | 281 | 5.62 |
| Designed Kinship | biotech | 291 | 64 | 291 | 64 | 1.28 |
| Ecological Communion | biotech | 0 | 0 | 0 | 0 | 0.00 |
| Kin Beyond Thought | sapience | 0 | 0 | 0 | 0 | 0.00 |
| Last Human Measure | biotech | 0 | 0 | 0 | 0 | 0.00 |
| Living Archive | art | 8328 | 1601 | 4180 | 1384 | 27.68 |
| Machine Kinship | machine | 593 | 173 | 593 | 173 | 3.46 |
| Machine Revelation | machine | 2160 | 420 | 352 | 266 | 5.32 |
| Many Bodies, One People | biotech | 0 | 0 | 0 | 0 | 0.00 |
| Measured Doubt | knowledge | 11810 | 2511 | 4772 | 2044 | 40.88 |
| The Mutable Human | biotech | 515 | 119 | 515 | 119 | 2.38 |
| New Ecology | environment | 1000 | 169 | 161 | 111 | 2.22 |
| No More Masters | philosophy | 18699 | 4207 | 4938 | 2889 | 57.78 |
| Order Above Survival | philosophy | 3839 | 856 | 2721 | 775 | 15.50 |
| Practical Heresy | philosophy | 7207 | 1566 | 3651 | 1284 | 25.68 |
| Pure Flesh | machine | 643 | 132 | 643 | 132 | 2.64 |
| Radical Impermanence | philosophy | 22464 | 5239 | 4982 | 3309 | 66.18 |
| The Reclamation | environment | 847 | 237 | 847 | 237 | 4.74 |
| Return to the Deep | deep | 1716 | 382 | 858 | 342 | 6.84 |
| Sacred Craft | art | 8349 | 1416 | 4227 | 1250 | 25.00 |
| Silent Circuit | machine | 643 | 135 | 643 | 135 | 2.70 |
| Skyward Hunger | sky | 1360 | 202 | 221 | 144 | 2.88 |
| The Thinking Threshold | sapience | 0 | 0 | 0 | 0 | 0.00 |
| Truth Through Trial | knowledge | 1444 | 201 | 1419 | 201 | 4.02 |
| The Unfinished Form | art | 2080 | 373 | 1676 | 366 | 7.32 |
| Unspoiled Ground | environment | 3340 | 654 | 543 | 383 | 7.66 |
| The World Must Be Mended | philosophy | 14983 | 2906 | 4777 | 2222 | 44.44 |

| Doctrine category | Worlds with a selected Doctrine | World % |
| --- | --- | --- |
| art | 2740 | 54.80 |
| biotech | 300 | 6.00 |
| deep | 565 | 11.30 |
| environment | 713 | 14.26 |
| ethics | 479 | 9.58 |
| knowledge | 2168 | 43.36 |
| machine | 784 | 15.68 |
| philosophy | 4916 | 98.32 |
| sky | 187 | 3.74 |
| sapience | 0 | 0.00 (content gate) |

| Traits per faction | Factions |
| --- | --- |
| 1 | 339 |
| 2 | 11770 |
| 3 | 11525 |
| 4 | 7214 |

| Doctrines per faction | Factions |
| --- | --- |
| 0 | 6204 |
| 1 | 20278 |
| 2 | 4366 |

## Intensity and semantic query behavior

Levels: moderate tolerates disagreement (preference/dialogue bias); hardline represents an important norm (restriction_candidate after consumer review); fanatic represents uncompromising identity (enforcement_candidate/strong taboo/membership and goal pressure). These are semantic levels, never stat bonuses or automatic action decisions.

Strongest allowed evidence rule wins. Fanatic requires ≥3 relevant reinforcement tags and ≥2 distinct objective events; no final12% lottery. Specific machine and Deep/homeland episodes include later reviews/memory institutions; other norms use actual offices/roles plus relations when authored rules permit. Strong names remain; debug output explains intensity so moderate Pure Flesh does not imply immediate prohibition.

| Level | Selected Doctrine instances |
| --- | --- |
| fanatic | 1793 |
| hardline | 2641 |
| moderate | 24576 |

| World metric | Worlds | World % | Target |
| --- | --- | --- | --- |
| ≥1 hardline | 2075 | 41.50 | descriptive |
| ≥1 fanatic | 1493 | 29.86 | 25–40% |

| Faction profile (moderate / hardline / fanatic) | Factions |
| --- | --- |
| 0 / 0 / 0 | 6204 |
| 1 / 0 / 0 | 17163 |
| 2 / 0 / 0 | 3149 |
| 0 / 1 / 0 | 1811 |
| 1 / 1 / 0 | 707 |
| 0 / 2 / 0 | 41 |
| 0 / 0 / 1 | 1304 |
| 1 / 0 / 1 | 408 |
| 0 / 1 / 1 | 41 |
| 0 / 0 / 2 | 20 |

Actor queries preserve simultaneous positive/negative/mixed reasons even for fanatic taboo plus useful technical skill. Current standing summaries remain descriptive; no final decision, hostility, access denial or action is executed. Added future clone expression hooks; no Actor Resource/NPC/Trait system. CultureGoalQuery returns status=candidate and historical reference IDs, without target acquisition/effects/war/migration/research/quests. A future consumer validates current target/capability/policy.

Adaptive Customs replaces the former everyday Practical Heresy Trait; the Practical Heresy Doctrine keeps its meaning. Truth Through Trial requires actual research-use/testing rather than facility labels, while ritual interpretation remains compatible. Hazard Memory/Local Mandate require more specific combinations. No unsupported trait padding is added.

## Diversity, topology and pressure preservation

| Profile metric | Count |
| --- | --- |
| exact_repeat_occurrences | 18907 |
| exact_unique | 11941 |
| identity_inclusive_repeat_occurrences | 388 |
| identity_inclusive_unique | 30460 |
| near_repeat_occurrences | 19697 |
| near_unique_ignoring_intensity | 11151 |

Exact: trait IDs + doctrine IDs/intensities. Near: same IDs, ignoring intensity only. Identity-inclusive: five identity axes added; names/IDs/provenance excluded. Bare Doctrine/Trait combinations repeat61.29% (18,907/30,848); excluding intensity gives63.85%. Including the five identity axes reduces repeat occurrences to1.26% (388/30,848). These are transparent corpus combination metrics, not a promise of unique prose or low repetition for every individual Doctrine. No names/IDs are used to inflate diversity.

| Current faction count | Worlds | World % |
| --- | --- | --- |
| 4 | 699 | 13.98 |
| 5 | 982 | 19.64 |
| 6 | 1111 | 22.22 |
| 7 | 1188 | 23.76 |
| 8 | 1020 | 20.40 |

| Topology family | Worlds | World % |
| --- | --- | --- |
| consolidation_resplit | 717 | 14.34 |
| enclave_continuity | 749 | 14.98 |
| late_fragmentation | 714 | 14.28 |
| layered_migration | 716 | 14.32 |
| no_direct_heir | 719 | 14.38 |
| polycentric_succession | 663 | 13.26 |
| remnant_mosaic | 722 | 14.44 |

| Primary pressure domain | Worlds | World % | Unchanged intended probability |
| --- | --- | --- | --- |
| core_intervention | 429 | 8.58 | 8% |
| human | 2231 | 44.62 | 45% |
| natural | 2227 | 44.54 | 45% |
| observer_legacy | 113 | 2.26 | 2% |

Exact-base captured fixtures compare preexisting precursor/pressure/topology/formation ancestry/political metadata/name map/recent relations and reuse outputs for8 v3 seeds. Social entities/events/config fields are excluded deliberately; legitimate retirement metadata for lost existing homes is excluded, while all existing names/political data remain compared. Catalog reorder replay verifies stable social selection. V2 canonical hashes remain exact; old whole-v3 hash intentionally changes with expanded objective history.

## Validation evidence

| Check | Result |
| --- | --- |
| 5000 deterministic shipping histories / 30,848 factions | PASS; seeds1–5000; generation3/architecture2; all13 safety counters =0 |
| M042 focused suite in final full gate | PASS24,725 assertions (500 shipping +200 injected fixture histories, negative causes/effects, exact base/v2, intensity, mixed reasons, candidate-only) |
| Faction Culture focused suite in final gate | PASS45,063 assertions |
| Topology suite in final gate | PASS100,458 assertions /1000seeds; political count4–8 and invariants |
| History Generator suite in final gate | PASS48,463 assertions |
| Population gate suite in final gate | PASS7,539 assertions |
| Full bash tools/check_godot.sh | PASS37 test scripts, editor parse/import, main-scene startup and generated combat dataset check |
| Final synthetic raw-output analyzer invocation | PASS; reporting-only enhancement after full gate; no runtime/catalog/statistics changes |
| Qualitative raw-source reading | 29 distinct shipping histories +5 gated examples, eight answers each; see linked review |
| Docs/offline metadata and SVG validation | Final verification recorded in validation.md before commit |

| 5000 corpus safety counter | Failures |
| --- | --- |
| candidate_boundary_errors | 0 |
| chronology_errors | 0 |
| culture_replay_mismatches | 0 |
| deterministic_replay_mismatches | 0 |
| exact_conflicts | 0 |
| invalid_intensity | 0 |
| invalid_provenance | 0 |
| objective_mutations | 0 |
| objective_validation_errors | 0 |
| other_culture_errors | 0 |
| prerequisite_failures | 0 |
| unsupported_or_fabricated_evidence | 0 |
| unsupported_selections | 0 |

[Machine-readable statistics](statistics.json), [raw index](samples.md), [29-case eight-question review](qualitative_review.md), [synthetic raw examples](synthetic_samples.md), [validation commands/results](validation.md), [work log](WORK_LOG.md).

Full-gate log: `C:\GameDev\history-social-incidents-v1-full-final.log`; final corpus log: `C:\GameDev\history-social-incidents-v1-corpus-final.log`. Local file receipt after commit contains preservation/push checks. No live Notion update was performed; offline source/dataset checks are distinct.

## Known limits and next integration boundary

Episodes are causal generation records in a compressed late-history window, not full reproduction/genealogy or post-start society simulation. Baseline clone cohorts share human_baseline; cloning does not author a new distinct lineage. Human Deep residence is an additional shared local settlement with retained surface homes. Current institutions/capabilities remain until explicitly abolished; there is no simulated decay.

Machine manufacture stays unclassified; Observer/Core/orbital systems remain separate. All RESERVED mystery fields remain unresolved. Approved lineages/contacts must be authored through the established content boundary before five dormant norms ship. No new species/origin/language/religion/economy/AI/UI/player-knowledge policy/access enforcement/save migration was implemented.

The final raw reading found no further weak activation path. Redundant cause entries for co-residents sharing one formation are harmless duplicate provenance; distinct-event intensity counting deduplicates them. Bare cultural-pattern repetition remains substantial with a bounded catalog; combined identity/history differs more strongly. GUI/play/exported-package validation, balance and specialist language/lore approval are not claimed.

Next: author-approved biological/contact content and separately designed future simulation consumers. Before consuming a candidate, check actual current target/site/capability/resources/knowledge and policy; never treat a standing score as a decision. Integrate the task branch only with explicit later authorization.

## Intended file inventory

The exact final intended path list is in [intended-files.md](intended-files.md); all generated samples and the captured exact-base regression fixture are intentional evidence artifacts. User/asset sidecars and one-time authoring helpers are excluded.
