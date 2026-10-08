# History v0.2 representative readable outputs

Generated with algorithm v2 / architecture v1. Objective debug facts and faction beliefs are separate.

## natural_and_human — seed 1

```text
History architecture v1 | generation algorithm v2 | seed 1 | play start 0
Configuration: {"ancestry_mode":"provincial_refugees","belief_profile":"ritual","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"dynastic_crown","pressure_domain":"natural","pressure_motif":"radiative_haze","recent_motif":"trade_reopening","response_motif":"regional_autonomy","successor_a_form":"infrastructure_guild","successor_b_form":"refugee_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-498 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-473 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-340 h_pressure [DISASTER] Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved.
  scope=regional | objective cause_domain=natural
  actors: Towen Well (precursor), Dalusen (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet"}]
-334 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Dalusen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-329 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Zolen (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-323 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Dalusen (regional_body), Zolen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-321 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-318 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Sedor (remnant_1), Bosil (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-314 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Toveylith (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-278 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Sera Reach (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-6,"kind":"relationship"}]
-273 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-268 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Mira Reach (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-263 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Mira Reach (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-183 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Mira Reach (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":28,"kind":"relationship"}]
-80 h_recent [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Sera Reach (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":32,"kind":"relationship"}]
-69 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Sera Reach (faction_b), Mira Reach (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":15,"kind":"relationship"}]
-46 h_discovery [ANOMALOUS_DISCOVERY] An object was exposed in a mineral layer; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Mira Reach (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"object_in_mineral_layer","origin":"unknown"}]
-27 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-10 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Mira Reach (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-6,"kind":"relationship"}]
=== PRESENT ===
Region region: Misil Ruin
Faction faction_a: Tora Well | infrastructure_guild | knowledge=
Faction faction_b: Sera Reach | refugee_community | knowledge=
Faction faction_c: Mira Reach | breakaway_clan | knowledge=observer_scholarly_term
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, province, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_response, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, province, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_response, h_body
Relationship faction_a <-> faction_b: 32; sources=h_recent
Relationship faction_a <-> faction_c: 22; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 9; sources=h_c_formed, h_aid
Settlement recent_settlement: Dasen | owner=faction_a | region=region | sources=h_expansion
Settlement service_settlement: Nafura | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Veykevak | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Nalen | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Darin | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: abandoned_hamlet | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: object_in_mineral_layer | origin=unknown | sources=h_discovery
=== BELIEFS ===
Tora Well (faction_a; knowledge=):
  [h_collapse; confidence 0.88; legitimacy] Our elders came through the former regional assemblies. Maintaining services mattered more than the old officials' titles.
  [h_pressure; confidence 0.47; interpretation] Our elders remembered a veiled sky and unusual exposure. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.79; interpretation] We compared its manufacture with ancient devices; the comparison does not settle its origin.
  [h_recent; confidence 0.50; interpretation] Recent agreements let us cooperate despite different ancestry.
Sera Reach (faction_b; knowledge=):
  [h_collapse; confidence 0.76; legitimacy] Our elders include households of the former provincial body. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.61; interpretation] Our elders remembered a veiled sky and unusual exposure. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.57; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.57; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.80; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Mira Reach (faction_c; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.41; legitimacy] Our elders include households of the former provincial body. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.70; interpretation] Our elders remembered a veiled sky and unusual exposure. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.44; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.78; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.49; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.37; belief] Some say the Observer-era builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## human_collapse — seed 4

```text
History architecture v1 | generation algorithm v2 | seed 4 | play start 0
Configuration: {"ancestry_mode":"central_remnants","belief_profile":"skeptical","collapse_pattern":"office_fragmentation","content_revision":"history-v2-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","faction_c_formation":"religious_community","middle_motif":"archive_accord","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"trade_failure","recent_motif":"border_dispute","response_motif":"regional_autonomy","successor_a_form":"military_remnant","successor_b_form":"modified_human_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-522 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-497 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Zorin Ruin (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-367 h_pressure [DISASTER] Failures across the regional trade network left stations abandoned and central levies unsupported.
  scope=regional | objective cause_domain=human
  actors: Zorin Ruin (precursor), Miwen (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route"}]
-357 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Zorin Ruin (precursor), Miwen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-349 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Zorin Ruin (precursor), Keveyvak (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-343 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Zorin Ruin (precursor), Miwen (regional_body), Keveyvak (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-341 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-338 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Veyvak (remnant_1), Lubowen (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-334 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Tomon (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-281 h_c_formed [SCHISM] A religious community separated from its parent council over communal rites.
  scope=regional | objective cause_domain=human
  actors: Darin Marsh (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-13,"kind":"relationship"}]
-276 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Funar Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-271 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Davak Gate (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-266 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Davak Gate (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-181 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Funar Well (faction_a), Davak Gate (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":14,"kind":"relationship"}]
-80 h_recent [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Funar Well (faction_a), Darin Marsh (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":-29,"kind":"relationship"},{"id":"border_watchpost","kind":"ruin","location_id":"region","ruin_kind":"watchtower"}]
-71 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Darin Marsh (faction_b), Davak Gate (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":31,"kind":"relationship"}]
-48 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Davak Gate (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-26 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Darin Marsh (faction_b) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-6 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Funar Well (faction_a), Davak Gate (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-14,"kind":"relationship"}]
=== PRESENT ===
Region region: Minar Ruin
Faction faction_a: Funar Well | military_remnant | knowledge=
Faction faction_b: Darin Marsh | modified_human_community | knowledge=
Faction faction_c: Davak Gate | religious_community | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: -29; sources=h_recent
Relationship faction_a <-> faction_c: 0; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 18; sources=h_c_formed, h_aid
Settlement recent_settlement: Zowen | owner=faction_b | region=region | sources=h_expansion
Settlement service_settlement: Fukerin | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Lumon | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Zonavak | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Zolith | owner=faction_c | region=region | sources=h_town_c
Ruin border_watchpost: watchtower | occupant= | region=region | sources=h_recent
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: damaged_route | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
=== BELIEFS ===
Funar Well (faction_a; knowledge=):
  [h_collapse; confidence 0.79; legitimacy] Our elders came through the former regional assemblies. We held local households together when the old government failed.
  [h_pressure; confidence 0.72; interpretation] Our elders remembered empty stations and obligations that trade could no longer support. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.36; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_recent; confidence 0.68; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
Darin Marsh (faction_b; knowledge=):
  [h_collapse; confidence 0.41; legitimacy] Our elders came through the former regional assemblies. Our different adaptations were treated as disloyalty; we learned to govern together.
  [h_pressure; confidence 0.54; interpretation] Our elders remembered empty stations and obligations that trade could no longer support. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.74; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.62; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.66; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Davak Gate (faction_c; knowledge=):
  [h_collapse; confidence 0.64; legitimacy] Our elders came through the former regional assemblies. The Four Moons withdrew their blessing from those old rulers.
  [h_pressure; confidence 0.78; interpretation] Our elders remembered empty stations and obligations that trade could no longer support. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.56; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_last; confidence 0.36; interpretation] Recent agreements and disputes leave our obligations to neighbours unsettled.
  [h_c_formed; confidence 0.63; interpretation] The Four Moons withdrew their blessing from those old rulers.
  [first_terraformer; confidence 0.89; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c","h_response"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## terraforming_chemical_legacy — seed 5

```text
History architecture v1 | generation algorithm v2 | seed 5 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"technical","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","faction_c_formation":"facility_community","middle_motif":"route_reopening","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"chemical_exposure","recent_motif":"maintenance_accord","response_motif":"ritual_schism","successor_a_form":"ritual_authority","successor_b_form":"village_union"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-488 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-463 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Lusil Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-340 h_pressure [DISASTER] Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified.
  scope=regional | objective cause_domain=natural
  actors: Lusil Well (precursor), Dasen (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"chemical_exposure_site"}]
-329 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Lusil Well (precursor), Dasen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-322 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Lusil Well (precursor), Lulith (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-316 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Lusil Well (precursor), Dasen (regional_body), Lulith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-314 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-311 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Selen (remnant_1), Zolumon (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-307 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Hadara (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-246 h_c_formed [SPLIT] A community separated to maintain and govern surviving facilities.
  scope=regional | objective cause_domain=human
  actors: Veylith Gate (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-23,"kind":"relationship"}]
-241 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Borin Marsh (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-236 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Veymon Ruin (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-231 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Veymon Ruin (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-159 h_middle [FOUNDING] Two communities reopened a travel route and recognized mutual access.
  scope=regional | objective cause_domain=human
  actors: Borin Marsh (faction_a), Veymon Ruin (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":14,"kind":"relationship"}]
-82 h_recent [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Borin Marsh (faction_a), Veylith Gate (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":27,"kind":"relationship"}]
-57 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Veylith Gate (faction_b), Veymon Ruin (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":17,"kind":"relationship"}]
-41 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Veymon Ruin (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-28 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Borin Marsh (faction_a) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-4 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Borin Marsh (faction_a), Veymon Ruin (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-12,"kind":"relationship"}]
=== PRESENT ===
Region region: Zora Marsh
Faction faction_a: Borin Marsh | ritual_authority | knowledge=
Faction faction_b: Veylith Gate | village_union | knowledge=
Faction faction_c: Veymon Ruin | facility_community | knowledge=observer_scholarly_term
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 27; sources=h_recent
Relationship faction_a <-> faction_c: 2; sources=h_middle, h_last
Relationship faction_b <-> faction_c: -6; sources=h_c_formed, h_aid
Settlement recent_settlement: Dabomar | owner=faction_a | region=region | sources=h_expansion
Settlement service_settlement: Dasil | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Dara | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Veyzodor | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Namar | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: chemical_exposure_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
=== BELIEFS ===
Borin Marsh (faction_a; knowledge=):
  [h_collapse; confidence 0.42; legitimacy] Our elders include households of the former provincial body. Our shared rites kept the community together when central authority failed.
  [h_pressure; confidence 0.76; interpretation] Our elders remembered harmful vapours from opened ground. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.36; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_recent; confidence 0.55; interpretation] Recent agreements let us cooperate despite different ancestry.
Veylith Gate (faction_b; knowledge=):
  [h_collapse; confidence 0.77; legitimacy] Our elders came through the former regional assemblies. Villages survived by sharing duties; no surviving central heir owns us.
  [h_pressure; confidence 0.58; interpretation] Our elders remembered harmful vapours from opened ground. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.86; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.79; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
  [h_c_formed; confidence 0.64; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Veymon Ruin (faction_c; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.84; legitimacy] Our elders came through the former regional assemblies. Who ruled mattered less than keeping old facilities serviceable.
  [h_pressure; confidence 0.80; interpretation] Our elders remembered harmful vapours from opened ground. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.88; interpretation] We compared its manufacture with Observer-era devices; the comparison does not settle its origin.
  [h_last; confidence 0.36; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.83; interpretation] Who ruled mattered less than keeping old facilities serviceable.
  [first_terraformer; confidence 0.75; belief] Some say the Observer-era builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## core_intervention — seed 10

```text
History architecture v1 | generation algorithm v2 | seed 10 | play start 0
Configuration: {"ancestry_mode":"central_remnants","belief_profile":"pragmatic","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"administrative_federation","pressure_domain":"core_intervention","pressure_motif":"core_shutdown","recent_motif":"local_alliance","response_motif":"regional_autonomy","successor_a_form":"military_remnant","successor_b_form":"migrant_confederation"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-488 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-463 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Furin Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-347 h_pressure [DISASTER] Core-associated service systems shut down regional infrastructure. The purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors: Furin Marsh (precursor), Toveysen (regional_body) | causes:
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"infrastructure_shutdown","physical_basis":"old_service_infrastructure","system_id":"deep_core","target_selection_reason":"unknown"}]
-338 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Furin Marsh (precursor), Toveysen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Furin Marsh (precursor), Havak (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-327 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Furin Marsh (precursor), Toveysen (regional_body), Havak (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-325 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-322 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Hadara (remnant_1), Semon (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-318 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Lulith (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-264 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Todor Well (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-9,"kind":"relationship"}]
-259 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Kesil Marsh (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-254 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Davak Ruin (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-249 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Davak Ruin (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-185 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Kesil Marsh (faction_a), Davak Ruin (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":26,"kind":"relationship"}]
-90 h_recent [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Kesil Marsh (faction_a), Todor Well (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":23,"kind":"relationship"}]
-59 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Todor Well (faction_b), Davak Ruin (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":10,"kind":"relationship"}]
-36 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Davak Ruin (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-29 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Kesil Marsh (faction_a) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-3 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kesil Marsh (faction_a), Davak Ruin (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-22,"kind":"relationship"}]
=== PRESENT ===
Region region: Damar Marsh
Faction faction_a: Kesil Marsh | military_remnant | knowledge=
Faction faction_b: Todor Well | migrant_confederation | knowledge=
Faction faction_c: Davak Ruin | breakaway_clan | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 23; sources=h_recent
Relationship faction_a <-> faction_c: 4; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 1; sources=h_c_formed, h_aid
Settlement recent_settlement: Hamilith | owner=faction_a | region=region | sources=h_expansion
Settlement service_settlement: Lubodor | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Darin | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Hatodor | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Kedor | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: legacy_damage_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"primary_system","intent":"unknown","operation":"infrastructure_shutdown","physical_basis":"old_service_infrastructure","scope":"local","source_event_ids":["h_pressure"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Kesil Marsh (faction_a; knowledge=):
  [h_collapse; confidence 0.78; legitimacy] Our elders came through the former regional assemblies. We held local households together when the old government failed.
  [h_pressure; confidence 0.70; interpretation] Our elders remembered altered access and services, whose reason they could not establish. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.76; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_recent; confidence 0.81; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.70; interpretation] Some attribute lost services to the Deep; the purpose of the old controls is unknown.
Todor Well (faction_b; knowledge=):
  [h_collapse; confidence 0.49; legitimacy] Our elders came through the former regional assemblies. Moving households joined because a shared welcome mattered more than inherited borders.
  [h_pressure; confidence 0.70; interpretation] Our elders remembered altered access and services, whose reason they could not establish. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.41; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.83; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.70; interpretation] Some attribute lost services to the Deep; the purpose of the old controls is unknown.
  [h_c_formed; confidence 0.37; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Davak Ruin (faction_c; knowledge=):
  [h_collapse; confidence 0.62; legitimacy] Our elders came through the former regional assemblies. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.49; interpretation] Our elders remembered altered access and services, whose reason they could not establish. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.59; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.58; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.49; interpretation] Some attribute lost services to the Deep; the purpose of the old controls is unknown.
  [h_c_formed; confidence 0.35; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.63; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c","h_response"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## extreme_seasons — seed 17

```text
History architecture v1 | generation algorithm v2 | seed 17 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"ritual","collapse_pattern":"civil_war","content_revision":"history-v2-authored-1","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"dynastic_crown","pressure_domain":"natural","pressure_motif":"extreme_seasons","recent_motif":"household_relocation","response_motif":"maintenance_secession","successor_a_form":"military_remnant","successor_b_form":"migrant_confederation"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-495 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-470 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Selith Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-363 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Selith Reach (precursor), Funar (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland"}]
-352 h_response [SPLIT] Maintainers withdrew central services and formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Selith Reach (precursor), Funar (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-349 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Selith Reach (precursor), Nanarin (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield"}]
-341 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Selith Reach (precursor), Funar (regional_body), Nanarin (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-339 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-336 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Dabonar (remnant_1), Veytolith (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-332 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Luvak (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-286 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Zomon Well (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-9,"kind":"relationship"}]
-281 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Selen Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-276 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Bomon Reach (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-271 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Bomon Reach (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-165 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Selen Well (faction_a), Bomon Reach (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":11,"kind":"relationship"}]
-94 h_recent [MIGRATION] One community accepted relocating households from another.
  scope=regional | objective cause_domain=human
  actors: Selen Well (faction_a), Zomon Well (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":36,"kind":"relationship"}]
-68 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Zomon Well (faction_b), Bomon Reach (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":21,"kind":"relationship"}]
-35 h_discovery [ANOMALOUS_DISCOVERY] An object was exposed in a mineral layer; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Bomon Reach (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"object_in_mineral_layer","origin":"unknown"}]
-19 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Zomon Well (faction_b) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-8 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Selen Well (faction_a), Bomon Reach (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-15,"kind":"relationship"}]
=== PRESENT ===
Region region: Fulith Gate
Faction faction_a: Selen Well | military_remnant | knowledge=
Faction faction_b: Zomon Well | migrant_confederation | knowledge=
Faction faction_c: Bomon Reach | breakaway_clan | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 36; sources=h_recent
Relationship faction_a <-> faction_c: -4; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 12; sources=h_c_formed, h_aid
Settlement recent_settlement: Zoveywen | owner=faction_b | region=region | sources=h_expansion
Settlement service_settlement: Fudor | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Bomon | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Luveynar | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Kesemar | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: abandoned_farmland | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
Discovery unknown_object: object_in_mineral_layer | origin=unknown | sources=h_discovery
=== BELIEFS ===
Selen Well (faction_a; knowledge=):
  [h_collapse; confidence 0.63; legitimacy] Our elders include households of the former provincial body. We held local households together when the old government failed.
  [h_pressure; confidence 0.49; interpretation] Our elders remembered seasons outside their established schedules. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.51; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_recent; confidence 0.65; interpretation] Recent agreements let us cooperate despite different ancestry.
Zomon Well (faction_b; knowledge=):
  [h_collapse; confidence 0.63; legitimacy] Our elders came through the former regional assemblies. Moving households joined because a shared welcome mattered more than inherited borders.
  [h_pressure; confidence 0.44; interpretation] Our elders remembered seasons outside their established schedules. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.38; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.67; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.77; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Bomon Reach (faction_c; knowledge=):
  [h_collapse; confidence 0.85; legitimacy] Our elders came through the former regional assemblies. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.53; interpretation] Our elders remembered seasons outside their established schedules. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.37; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.55; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
  [h_c_formed; confidence 0.82; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.81; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## facility_successor — seed 22

```text
History architecture v1 | generation algorithm v2 | seed 22 | play start 0
Configuration: {"ancestry_mode":"central_remnants","belief_profile":"skeptical","collapse_pattern":"civil_war","content_revision":"history-v2-authored-1","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","faction_c_formation":"facility_community","middle_motif":"archive_accord","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"adaptation_tension","recent_motif":"border_dispute","response_motif":"regional_autonomy","successor_a_form":"infrastructure_guild","successor_b_form":"refugee_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-502 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-477 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-357 h_pressure [SCHISM] Communities with different environmental adaptations separated from the common assembly.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (precursor), Lufurin (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet"}]
-349 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (precursor), Lufurin (regional_body), Mitolen (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-346 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (precursor), Futonar (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield"}]
-341 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (precursor), Lufurin (regional_body), Mitolen (pressure_group), Futonar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"},{"entity_id":"pressure_group","kind":"retire"}]
-339 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-336 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Nazomon (remnant_1), Dazodor (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-332 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Fuzomon (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-292 h_c_formed [SPLIT] A community separated to maintain and govern surviving facilities.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-16,"kind":"relationship"}]
-287 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-282 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Torin Reach (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-277 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Torin Reach (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-168 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (faction_a), Torin Reach (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":29,"kind":"relationship"}]
-87 h_recent [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (faction_a), Lulith Well (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":-33,"kind":"relationship"},{"id":"border_watchpost","kind":"ruin","location_id":"region","ruin_kind":"watchtower"}]
-70 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_b), Torin Reach (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":40,"kind":"relationship"}]
-48 h_discovery [ANOMALOUS_DISCOVERY] An object was exposed in a mineral layer; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Torin Reach (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"object_in_mineral_layer","origin":"unknown"}]
-26 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (faction_a) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-4 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (faction_a), Torin Reach (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-19,"kind":"relationship"}]
=== PRESENT ===
Region region: Dador Ruin
Faction faction_a: Dasil Ruin | infrastructure_guild | knowledge=observer_scholarly_term
Faction faction_b: Lulith Well | refugee_community | knowledge=
Faction faction_c: Torin Reach | facility_community | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: -33; sources=h_recent
Relationship faction_a <-> faction_c: 10; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 24; sources=h_c_formed, h_aid
Settlement recent_settlement: Haveyvak | owner=faction_a | region=region | sources=h_expansion
Settlement service_settlement: Zohalith | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Veydara | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Senador | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Hamon | owner=faction_c | region=region | sources=h_town_c
Ruin border_watchpost: watchtower | occupant= | region=region | sources=h_recent
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: abandoned_hamlet | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
Discovery unknown_object: object_in_mineral_layer | origin=unknown | sources=h_discovery
=== BELIEFS ===
Dasil Ruin (faction_a; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.84; legitimacy] Our elders came through the former regional assemblies. Maintaining services mattered more than the old officials' titles.
  [h_pressure; confidence 0.60; interpretation] Our elders remembered communities divided over their different adaptations. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.43; interpretation] We compared its manufacture with Observer-era devices; the comparison does not settle its origin.
  [h_recent; confidence 0.36; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
Lulith Well (faction_b; knowledge=):
  [h_collapse; confidence 0.41; legitimacy] Our elders came through the former regional assemblies. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.42; interpretation] Our elders remembered communities divided over their different adaptations. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.52; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.59; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.57; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Torin Reach (faction_c; knowledge=):
  [h_collapse; confidence 0.37; legitimacy] Our elders came through the former regional assemblies. Who ruled mattered less than keeping old facilities serviceable.
  [h_pressure; confidence 0.63; interpretation] Our elders remembered communities divided over their different adaptations. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.78; interpretation] We compared its manufacture with ancient devices; the comparison does not settle its origin.
  [h_last; confidence 0.66; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.52; interpretation] Who ruled mattered less than keeping old facilities serviceable.
  [first_terraformer; confidence 0.60; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c","h_response"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## observer_orbital_legacy — seed 27

```text
History architecture v1 | generation algorithm v2 | seed 27 | play start 0
Configuration: {"ancestry_mode":"central_remnants","belief_profile":"technical","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"route_reopening","precursor_form":"city_confederation","pressure_domain":"observer_legacy","pressure_motif":"orbital_fragment","recent_motif":"trade_reopening","response_motif":"household_council","successor_a_form":"ritual_authority","successor_b_form":"modified_human_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-538 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-513 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Veywen Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-361 h_pressure [DISASTER] Fragments from a failing Observer-era orbital structure fell locally, leaving identified legacy debris.
  scope=local | objective cause_domain=observer_legacy
  actors: Veywen Marsh (precursor), Mikemon (regional_body) | causes:
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"debris_fall","physical_basis":"fragmenting_orbital_structure","system_id":"orbital_defense","target_selection_reason":"unknown"}]
-352 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Veywen Marsh (precursor), Mikemon (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-343 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Veywen Marsh (precursor), Mibonar (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-338 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Veywen Marsh (precursor), Mikemon (regional_body), Mibonar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-336 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-333 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Hasil (remnant_1), Lurin (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-329 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Kemar (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-277 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Darin Well (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-19,"kind":"relationship"}]
-272 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Harin Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-267 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Hamar Ruin (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-262 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Hamar Ruin (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-171 h_middle [FOUNDING] Two communities reopened a travel route and recognized mutual access.
  scope=regional | objective cause_domain=human
  actors: Harin Well (faction_a), Hamar Ruin (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":19,"kind":"relationship"}]
-81 h_recent [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Harin Well (faction_a), Darin Well (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":23,"kind":"relationship"}]
-70 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Darin Well (faction_b), Hamar Ruin (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":39,"kind":"relationship"}]
-48 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Hamar Ruin (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-27 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Darin Well (faction_b) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-4 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Harin Well (faction_a), Hamar Ruin (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":28,"kind":"relationship"}]
=== PRESENT ===
Region region: Tomon Marsh
Faction faction_a: Harin Well | ritual_authority | knowledge=
Faction faction_b: Darin Well | modified_human_community | knowledge=
Faction faction_c: Hamar Ruin | breakaway_clan | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 23; sources=h_recent
Relationship faction_a <-> faction_c: 47; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 20; sources=h_c_formed, h_aid
Settlement recent_settlement: Kelulen | owner=faction_b | region=region | sources=h_expansion
Settlement service_settlement: Nadamar | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Dalen | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Fubosil | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Mimon | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: legacy_damage_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"observer_legacy","id":"primary_system","intent":"unknown","operation":"debris_fall","physical_basis":"fragmenting_orbital_structure","scope":"local","source_event_ids":["h_pressure"],"system_id":"orbital_defense","target_selection_reason":"unknown"}
=== BELIEFS ===
Harin Well (faction_a; knowledge=):
  [h_collapse; confidence 0.60; legitimacy] Our elders came through the former regional assemblies. Our shared rites kept the community together when central authority failed.
  [h_pressure; confidence 0.50; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.66; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_recent; confidence 0.70; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.50; interpretation] Our elders called the sky damage an enemy secret weapon or a judgment; that account may be wrong.
Darin Well (faction_b; knowledge=):
  [h_collapse; confidence 0.53; legitimacy] Our elders came through the former regional assemblies. Our different adaptations were treated as disloyalty; we learned to govern together.
  [h_pressure; confidence 0.87; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.84; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.54; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.87; interpretation] We suspect an ancient sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.82; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Hamar Ruin (faction_c; knowledge=):
  [h_collapse; confidence 0.67; legitimacy] Our elders came through the former regional assemblies. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.69; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.58; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_last; confidence 0.52; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.69; interpretation] We suspect an ancient sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.43; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.72; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c","h_response"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## recent_alliance — seed 30

```text
History architecture v1 | generation algorithm v2 | seed 30 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"technical","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","faction_c_formation":"resource_or_trade_commune","middle_motif":"settlement_competition","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","recent_motif":"local_alliance","response_motif":"household_council","successor_a_form":"kinship_clan","successor_b_form":"refugee_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-492 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-467 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Lulen Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-351 h_pressure [SPLIT] District offices stopped recognizing central appointments and formed a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Lulen Well (precursor), Nahasil (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_archive"}]
-339 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Lulen Well (precursor), Nahasil (regional_body), Veyborin (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Lulen Well (precursor), Fufulith (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-323 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Lulen Well (precursor), Nahasil (regional_body), Veyborin (pressure_group), Fufulith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"},{"entity_id":"pressure_group","kind":"retire"}]
-321 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-318 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Sevak (remnant_1), Lura (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-314 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Zomon (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-269 h_c_formed [SPLIT] A commune separated to organize workshops, exchange and local access rights.
  scope=regional | objective cause_domain=human
  actors: Bosen Marsh (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-25,"kind":"relationship"}]
-264 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-259 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Hamar Gate (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-254 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Hamar Gate (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-163 h_middle [WAR] Competition between settlements hardened a boundary dispute.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_a), Hamar Gate (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":-15,"kind":"relationship"}]
-91 h_recent [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_a), Bosen Marsh (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":34,"kind":"relationship"}]
-70 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Bosen Marsh (faction_b), Hamar Gate (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":24,"kind":"relationship"}]
-45 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Hamar Gate (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-26 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Hamar Gate (faction_c) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-9 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (faction_a), Hamar Gate (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":30,"kind":"relationship"}]
=== PRESENT ===
Region region: Milen Reach
Faction faction_a: Lulith Well | kinship_clan | knowledge=
Faction faction_b: Bosen Marsh | refugee_community | knowledge=
Faction faction_c: Hamar Gate | resource_or_trade_commune | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 34; sources=h_recent
Relationship faction_a <-> faction_c: 15; sources=h_middle, h_last
Relationship faction_b <-> faction_c: -1; sources=h_c_formed, h_aid
Settlement recent_settlement: Zohara | owner=faction_c | region=region | sources=h_expansion
Settlement service_settlement: Namira | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Zodalith | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Sewen | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Hamilen | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: abandoned_archive | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
=== BELIEFS ===
Lulith Well (faction_a; knowledge=):
  [h_collapse; confidence 0.37; legitimacy] Our elders include households of the former provincial body. Our inherited household duties survived the old state's titles.
  [h_pressure; confidence 0.37; interpretation] Our elders disputed who could appoint district officials. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.48; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_recent; confidence 0.85; interpretation] Recent agreements let us cooperate despite different ancestry.
Bosen Marsh (faction_b; knowledge=):
  [h_collapse; confidence 0.49; legitimacy] Our elders came through the former regional assemblies. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.58; interpretation] Our elders disputed who could appoint district officials. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.78; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.70; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
  [h_c_formed; confidence 0.65; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Hamar Gate (faction_c; knowledge=):
  [h_collapse; confidence 0.74; legitimacy] Our elders came through the former regional assemblies. Local workshops and exchange give us a reason to remain together.
  [h_pressure; confidence 0.58; interpretation] Our elders disputed who could appoint district officials. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.90; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.73; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.80; interpretation] Local workshops and exchange give us a reason to remain together.
  [first_terraformer; confidence 0.83; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## unusual_successors — seed 93

```text
History architecture v1 | generation algorithm v2 | seed 93 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"ritual","collapse_pattern":"office_fragmentation","content_revision":"history-v2-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","faction_c_formation":"facility_community","middle_motif":"route_reopening","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"chemical_exposure","recent_motif":"maintenance_accord","response_motif":"ritual_schism","successor_a_form":"ritual_authority","successor_b_form":"modified_human_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-536 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-511 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Sewen Ruin (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-360 h_pressure [DISASTER] Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified.
  scope=regional | objective cause_domain=natural
  actors: Sewen Ruin (precursor), Bobolith (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"chemical_exposure_site"}]
-348 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Sewen Ruin (precursor), Bobolith (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-343 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Sewen Ruin (precursor), Bora (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-337 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Sewen Ruin (precursor), Bobolith (regional_body), Bora (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-335 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-332 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Lulen (remnant_1), Dadador (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-328 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Veylith (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-277 h_c_formed [SPLIT] A community separated to maintain and govern surviving facilities.
  scope=regional | objective cause_domain=human
  actors: Veylen Gate (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-16,"kind":"relationship"}]
-272 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Bosen Gate (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-267 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Tomar Marsh (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-262 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Tomar Marsh (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-184 h_middle [FOUNDING] Two communities reopened a travel route and recognized mutual access.
  scope=regional | objective cause_domain=human
  actors: Bosen Gate (faction_a), Tomar Marsh (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":16,"kind":"relationship"}]
-93 h_recent [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bosen Gate (faction_a), Veylen Gate (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":23,"kind":"relationship"}]
-64 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Veylen Gate (faction_b), Tomar Marsh (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":25,"kind":"relationship"}]
-39 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Tomar Marsh (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-22 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Tomar Marsh (faction_c) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bosen Gate (faction_a), Tomar Marsh (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":24,"kind":"relationship"}]
=== PRESENT ===
Region region: Veyra Reach
Faction faction_a: Bosen Gate | ritual_authority | knowledge=
Faction faction_b: Veylen Gate | modified_human_community | knowledge=observer_scholarly_term
Faction faction_c: Tomar Marsh | facility_community | knowledge=observer_scholarly_term
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 23; sources=h_recent
Relationship faction_a <-> faction_c: 40; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 9; sources=h_c_formed, h_aid
Settlement recent_settlement: Tozolith | owner=faction_c | region=region | sources=h_expansion
Settlement service_settlement: Bomar | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Lurin | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Hadador | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Hadasil | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: chemical_exposure_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
=== BELIEFS ===
Bosen Gate (faction_a; knowledge=):
  [h_collapse; confidence 0.71; legitimacy] Our elders include households of the former provincial body. Our shared rites kept the community together when central authority failed.
  [h_pressure; confidence 0.40; interpretation] Our elders remembered harmful vapours from opened ground. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.76; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_recent; confidence 0.85; interpretation] Recent agreements let us cooperate despite different ancestry.
Veylen Gate (faction_b; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.84; legitimacy] Our elders came through the former regional assemblies. Our different adaptations were treated as disloyalty; we learned to govern together.
  [h_pressure; confidence 0.64; interpretation] Our elders remembered harmful vapours from opened ground. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.70; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.67; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.87; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Tomar Marsh (faction_c; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.45; legitimacy] Our elders came through the former regional assemblies. Who ruled mattered less than keeping old facilities serviceable.
  [h_pressure; confidence 0.88; interpretation] Our elders remembered harmful vapours from opened ground. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.66; interpretation] We compared its manufacture with Observer-era devices; the comparison does not settle its origin.
  [h_last; confidence 0.82; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.75; interpretation] Who ruled mattered less than keeping old facilities serviceable.
  [first_terraformer; confidence 0.37; belief] Some say the Observer-era builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```

## orbital_bombardment — seed 97

```text
History architecture v1 | generation algorithm v2 | seed 97 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"pragmatic","collapse_pattern":"civil_war","content_revision":"history-v2-authored-1","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"city_confederation","pressure_domain":"observer_legacy","pressure_motif":"orbital_bombardment","recent_motif":"local_alliance","response_motif":"ritual_schism","successor_a_form":"ritual_authority","successor_b_form":"refugee_community"}
=== CANON ===
Locked facts:
  core_and_some_management_systems: remain
  core_capabilities: bounded existing infrastructure and local boundary conditions
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  observer_civilization: gone
  observer_role: observe preserve constrain civilization
  observer_system: closed
  observer_term: developer and modern scholarly classification, not self-name
  observers_existed: true
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Observer
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  remaining_systems: not one unified current AI
  residual_orbital_assets: may remain and act rarely
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, observer_self_name, observer_political_system, observer_origin, observer_disappearance, pre_observer_intervention, core_intent, core_intervention_purpose, orbital_activation_reason, orbital_target_selection_reason, original_command_hierarchy, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-509 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-484 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-359 h_pressure [DISASTER] An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown.
  scope=local | objective cause_domain=observer_legacy
  actors: Zowen Well (precursor), Kewen (regional_body) | causes:
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","system_id":"fleet_assets","target_selection_reason":"unknown"}]
-352 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Kewen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-343 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Naharin (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield"}]
-336 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Kewen (regional_body), Naharin (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-334 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-331 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Tolusen (remnant_1), Hasenar (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-327 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Bolen (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-277 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Tomon Reach (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-19,"kind":"relationship"}]
-272 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-267 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-262 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-170 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Bonar Gate (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":27,"kind":"relationship"}]
-90 h_recent [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Tomon Reach (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":26,"kind":"relationship"}]
-66 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Tomon Reach (faction_b), Bonar Gate (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":17,"kind":"relationship"}]
-36 h_discovery [ANOMALOUS_DISCOVERY] A fragment was embedded in an old geological stratum; its origin and exact age remain unresolved.
  scope=local | objective cause_domain=unknown
  actors: Bonar Gate (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"fragment_in_old_stratum","origin":"unknown"}]
-28 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Bonar Gate (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":18,"kind":"relationship"}]
=== PRESENT ===
Region region: Miwen Marsh
Faction faction_a: Luwen Well | ritual_authority | knowledge=observer_scholarly_term
Faction faction_b: Tomon Reach | refugee_community | knowledge=observer_scholarly_term
Faction faction_c: Bonar Gate | breakaway_clan | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 26; sources=h_recent
Relationship faction_a <-> faction_c: 45; sources=h_middle, h_last
Relationship faction_b <-> faction_c: -2; sources=h_c_formed, h_aid
Settlement recent_settlement: Habolith | owner=faction_c | region=region | sources=h_expansion
Settlement service_settlement: Zomilen | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Lulen | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Sesenar | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Tofulen | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: legacy_damage_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"observer_legacy","id":"primary_system","intent":"unknown","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","scope":"local","source_event_ids":["h_pressure"],"system_id":"fleet_assets","target_selection_reason":"unknown"}
=== BELIEFS ===
Luwen Well (faction_a; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.59; legitimacy] Our elders include households of the former provincial body. Our shared rites kept the community together when central authority failed.
  [h_pressure; confidence 0.68; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.73; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_recent; confidence 0.88; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.68; interpretation] Our elders called the sky damage an enemy secret weapon or a judgment; that account may be wrong.
Tomon Reach (faction_b; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.38; legitimacy] Our elders came through the former regional assemblies. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.62; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.50; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.70; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
  [h_pressure; confidence 0.62; interpretation] We suspect an Observer-era sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.81; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Bonar Gate (faction_c; knowledge=):
  [h_collapse; confidence 0.89; legitimacy] Our elders came through the former regional assemblies. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.54; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.85; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.90; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.54; interpretation] We suspect an ancient sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.77; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.40; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```
