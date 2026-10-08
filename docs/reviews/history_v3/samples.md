# History v0.3 representative readable outputs

Generated with algorithm v3 / architecture v1. Objective debug facts and faction beliefs are separate.

## consolidation_resplit — seed 1

```text
History architecture v1 | generation algorithm v3 | seed 1 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-1","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","response_motif":"household_council","target_factions":8,"topology_family":"consolidation_resplit"}
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
-560 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-535 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-347 h_pressure [SPLIT] District offices stopped recognizing central appointments and formed a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_archive","site_type":"records"}]
-340 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body), Mibomar (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Towen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body), Mibomar (pressure_group), Towen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"}]
-314 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-313 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-312 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-302 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kesen Reach (f_00), Bowen Marsh (f_02) | causes: t_root_f_00, t_root_f_02
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_02","kind":"retire"}]
-270 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veynar Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"a":"f_01","b":"f_04","delta":-13,"kind":"relationship"}]
-238 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dawen Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_03","kind":"retire"}]
-206 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veywen Reach (f_07) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_07","kind":"retire"}]
-174 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dador Well (f_08) | causes: t_step_02
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_08","kind":"retire"}]
-142 t_step_05 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Selith Reach (f_14), Sesil Gate (f_11), Sera Marsh (f_13) | causes: t_step_04, t_step_03, t_step_04
  effects: [{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_14"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"home_f_14","kind":"site_owner","owner_id":"f_15"},{"entity_id":"f_14","kind":"retire"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_15"},{"entity_id":"f_11","kind":"retire"},{"entity_id":"home_f_13","kind":"site_owner","owner_id":"f_15"},{"entity_id":"f_13","kind":"retire"}]
-110 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zosen Reach (f_06) | causes: t_step_01
  effects: [{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_06"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_16"},{"entity_id":"f_06","kind":"retire"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Zodor Gate (f_04), Tosil Reach (f_16) | causes: t_step_01, t_step_06
  effects: [{"a":"f_04","b":"f_16","delta":-15,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Veynar Ruin (f_01), Tosil Reach (f_16) | causes: t_root_f_01, t_step_06
  effects: [{"a":"f_01","b":"f_16","delta":21,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Zodor Gate (f_04), Semon Well (f_09) | causes: t_step_01, t_step_02
  effects: [{"a":"f_04","b":"f_09","delta":13,"kind":"relationship"}]
-22 h_relation_3 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Semon Well (f_09), Sesen Ruin (f_10) | causes: t_step_02, t_step_03
  effects: [{"a":"f_09","b":"f_10","delta":-15,"kind":"relationship"},{"hazard":"structural","id":"watchpost_3","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Kerin Gate (f_12) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zodor Gate (f_04), Tosil Reach (f_16) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_16","delta":43,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kesen Reach | -314..-302 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Veynar Ruin | -313..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Bowen Marsh | -312..-302 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Dawen Gate | -302..-238 | extinct | parents=f_00, f_02 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Zodor Gate | -270..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_05: Lusen Well | -270..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Zosen Reach | -270..-110 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Veywen Reach | -238..-206 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Dador Well | -238..-174 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Semon Well | -238..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_10: Sesen Ruin | -206..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_11: Sesil Gate | -206..-142 | extinct | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_12: Kerin Gate | -174..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_13: Sera Marsh | -174..-142 | extinct | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_14: Selith Reach | -174..-142 | extinct | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_15: Zora Marsh | -142..present | active | parents=f_14, f_11, f_13 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_16: Tosil Reach | -110..present | active | parents=f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
precursor: Tomar Well | -560..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-560 precursor: Human-derived | mode=seed | donors= | events=h_found
-314 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-313 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-312 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-302 f_03: Human-derived | mode=inherit | donors=f_00 | events=t_step_00
-270 f_04: Human-derived | mode=inherit | donors=f_01 | events=t_step_01
-270 f_05: Human-derived | mode=inherit | donors=f_01 | events=t_step_01
-270 f_06: Human-derived | mode=inherit | donors=f_01 | events=t_step_01
-238 f_07: Human-derived | mode=inherit | donors=f_03 | events=t_step_02
-238 f_08: Human-derived | mode=inherit | donors=f_03 | events=t_step_02
-238 f_09: Human-derived | mode=inherit | donors=f_03 | events=t_step_02
-206 f_10: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-206 f_11: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-174 f_12: Human-derived | mode=inherit | donors=f_08 | events=t_step_04
-174 f_13: Human-derived | mode=inherit | donors=f_08 | events=t_step_04
-174 f_14: Human-derived | mode=inherit | donors=f_08 | events=t_step_04
-142 f_15: Human-derived | mode=inherit | donors=f_14 | events=t_step_05
-110 f_16: Human-derived | mode=inherit | donors=f_06 | events=t_step_06
=== CURRENT WORLD ===
Region region: Zorin Marsh
Faction f_01: Veynar Ruin | frontier_settlement_league | knowledge=observer_scholarly_term
  origins=Human-derived | formation=direct_successor | regional_roles=isolation
Faction f_04: Zodor Gate | regional_commune | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_05: Lusen Well | frontier_settlement_league | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Faction f_09: Semon Well | migrant_confederation | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=shelter
Faction f_10: Sesen Ruin | trading_house | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Faction f_12: Kerin Gate | military_remnant | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Faction f_15: Zora Marsh | breakaway_clan | knowledge=
  origins=Human-derived | formation=merger | regional_roles=shelter
Faction f_16: Tosil Reach | military_remnant | knowledge=
  origins=Human-derived | formation=reorganization | regional_roles=border_watch
Ancestry f_01: parents=precursor; ancestors=precursor; sources=t_root_f_01, h_found, h_collapse
Ancestry f_04: parents=f_01; ancestors=f_01, precursor; sources=t_step_01, t_root_f_01, h_found, h_collapse
Ancestry f_05: parents=f_01; ancestors=f_01, precursor; sources=t_step_01, t_root_f_01, h_found, h_collapse
Ancestry f_09: parents=f_03; ancestors=f_00, f_02, f_03, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_02, h_found, h_collapse
Ancestry f_10: parents=f_07; ancestors=f_00, f_02, f_03, f_07, precursor; sources=t_step_03, t_root_f_00, t_step_00, t_root_f_02, t_step_02, h_found, h_collapse
Ancestry f_12: parents=f_08; ancestors=f_00, f_02, f_03, f_08, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_02, t_step_02, h_found, h_collapse
Ancestry f_15: parents=f_14, f_11, f_13; ancestors=f_00, f_02, f_03, f_07, f_08, f_11, f_13, f_14, precursor; sources=t_step_05, t_root_f_00, t_step_00, t_root_f_02, t_step_02, t_step_03, t_step_04, h_found, h_collapse
Ancestry f_16: parents=f_06; ancestors=f_01, f_06, precursor; sources=t_step_06, t_root_f_01, t_step_01, h_found, h_collapse
Relationship f_01 <-> f_04: -13; sources=t_step_01
Relationship f_01 <-> f_16: 21; sources=h_relation_1
Relationship f_04 <-> f_09: 13; sources=h_relation_2
Relationship f_04 <-> f_16: 28; sources=h_relation_0, h_last
Relationship f_09 <-> f_10: -15; sources=h_relation_3
Settlement home_f_00: Bovak | owner=f_10 | region=region | sources=t_root_f_00, t_step_00, t_step_02, t_step_03
Settlement home_f_01: Lura | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_02: Sekerin | owner=f_10 | region=region | sources=t_root_f_02, t_step_00, t_step_02, t_step_03
Settlement home_f_03: Fubosil | owner=f_10 | region=region | sources=t_step_00, t_step_02, t_step_03
Settlement home_f_04: Lumar | owner=f_04 | region=region | sources=t_step_01
Settlement home_f_05: Danar | owner=f_05 | region=region | sources=t_step_01
Settlement home_f_06: Kesil | owner=f_16 | region=region | sources=t_step_01, t_step_06
Settlement home_f_07: Zolith | owner=f_10 | region=region | sources=t_step_02, t_step_03
Settlement home_f_08: Lubora | owner=f_12 | region=region | sources=t_step_02, t_step_04
Settlement home_f_09: Nabolen | owner=f_09 | region=region | sources=t_step_02
Settlement home_f_10: Veywen | owner=f_10 | region=region | sources=t_step_03
Settlement home_f_11: Kesen | owner=f_15 | region=region | sources=t_step_03, t_step_05
Settlement home_f_12: Bokemon | owner=f_12 | region=region | sources=t_step_04
Settlement home_f_13: Veynasil | owner=f_15 | region=region | sources=t_step_04, t_step_05
Settlement home_f_14: Fumivak | owner=f_15 | region=region | sources=t_step_04, t_step_05
Settlement home_f_15: Bomar | owner=f_15 | region=region | sources=t_step_05
Settlement home_f_16: Naveywen | owner=f_16 | region=region | sources=t_step_06
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_archive | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_3: watchtower | occupant= | region=region | sources=h_relation_3
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Veynar Ruin (f_01; knowledge=observer_scholarly_term):
  [t_root_f_01; confidence 0.89; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.69; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.36; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":-13}
  [h_relation_1; confidence 0.83; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_16","delta":21}
  [h_discovery; confidence 0.42; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.51; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_04","score":-13}
  [; confidence 0.59; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_16","score":21}
Zodor Gate (f_04; knowledge=):
  [t_step_01; confidence 0.64; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.41; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.36; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_16","delta":-15}
  [h_relation_2; confidence 0.79; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":13}
  [h_discovery; confidence 0.73; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.74; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_16","delta":43}
  [; confidence 0.65; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_04","score":-13}
  [; confidence 0.43; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_09","score":13}
  [; confidence 0.70; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_16","score":28}
Lusen Well (f_05; knowledge=):
  [t_step_01; confidence 0.82; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.40; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Semon Well (f_09; knowledge=):
  [t_step_02; confidence 0.40; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.69; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.56; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":13}
  [h_relation_3; confidence 0.83; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-15}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.87; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_09","score":13}
  [; confidence 0.40; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-15}
Sesen Ruin (f_10; knowledge=):
  [t_step_03; confidence 0.80; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.83; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-15}
  [h_discovery; confidence 0.78; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.38; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-15}
Kerin Gate (f_12; knowledge=):
  [t_step_04; confidence 0.74; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.42; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.90; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Zora Marsh (f_15; knowledge=):
  [t_step_05; confidence 0.56; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.66; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Tosil Reach (f_16; knowledge=):
  [t_step_06; confidence 0.67; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.51; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_16","delta":-15}
  [h_relation_1; confidence 0.40; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_16","delta":21}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.38; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_16","delta":43}
  [; confidence 0.60; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_16","score":21}
  [; confidence 0.68; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_16","score":28}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":22,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response","h_body"],"causal_ratio":1.0,"direct_count":20,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":22}
```

## remnant_mosaic — seed 2

```text
History architecture v1 | generation algorithm v3 | seed 2 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-1","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"ritual_schism","target_factions":8,"topology_family":"remnant_mosaic"}
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
-508 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-483 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-473 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","origin_ids":["Planetary","Human-derived"],"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-340 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body), Zotovak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-328 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Seluwen (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-318 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body), Zotovak (pressure_group), Seluwen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"}]
-305 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-304 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","origin_ids":["Human-derived","Unknown"],"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-294 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_01","b":"f_03","delta":-10,"kind":"relationship"}]
-268 t_step_01 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bosen Well (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_03","kind":"retire"},{"entity_id":"home_f_03","kind":"retire"},{"hazard":"none","id":"abandoned_f_03","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-242 t_step_02 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Sesil Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-216 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Fulith Ruin (f_04), Fusil Well (f_05) | causes: t_step_00, t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"}]
-189 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_01","b":"f_07","delta":-13,"kind":"relationship"}]
-163 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Semar Marsh (f_08) | causes: t_step_04
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"}]
-137 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Selen Well (f_09) | causes: t_step_05
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_09"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_09","kind":"retire"}]
-110 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"a":"f_01","b":"f_11","delta":-16,"kind":"relationship"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Veylen Gate (f_06), Zonar Well (f_07) | causes: t_step_03, t_step_04
  effects: [{"a":"f_06","b":"f_07","delta":-31,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Veylen Gate (f_06), Nalith Ruin (f_10) | causes: t_step_03, t_step_06
  effects: [{"a":"f_06","b":"f_10","delta":-19,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Nalith Ruin (f_10), Sewen Reach (f_11) | causes: t_step_06, t_step_07
  effects: [{"a":"f_10","b":"f_11","delta":13,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01), Nalen Ruin (f_12) | causes: t_root_f_01, t_step_07
  effects: [{"a":"f_01","b":"f_12","delta":32,"kind":"relationship"}]
-20 h_relation_4 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01), Nalith Ruin (f_10) | causes: t_root_f_01, t_step_06
  effects: [{"a":"f_01","b":"f_10","delta":19,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Fudor Reach (f_13) | causes: t_step_07
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Veylen Gate (f_06), Zonar Well (f_07) | causes: h_relation_0
  effects: [{"a":"f_06","b":"f_07","delta":22,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Tosil Well | -473..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Planetary, Human-derived | last_origins=Planetary, Human-derived
f_01: Dalith Gate | -305..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Sesil Well | -304..-242 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived, Unknown | last_origins=Human-derived, Unknown
f_03: Bosen Well | -294..-268 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Fulith Ruin | -294..-216 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_05: Fusil Well | -294..-216 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Veylen Gate | -216..present | active | parents=f_04, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Zonar Well | -189..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Semar Marsh | -189..-163 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Selen Well | -163..-137 | extinct | parents=f_08 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_10: Nalith Ruin | -137..present | active | parents=f_09 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_11: Sewen Reach | -110..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_12: Nalen Ruin | -110..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_13: Fudor Reach | -110..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
precursor: Serin Gate | -508..-318 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-508 precursor: Human-derived | mode=seed | donors= | events=h_found
-473 f_00: Planetary, Human-derived | mode=seed | donors= | events=t_root_f_00
-305 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-304 f_02: Human-derived, Unknown | mode=seed | donors= | events=t_root_f_02
-294 f_03: Human-derived | mode=inherit | donors=f_01 | events=t_step_00
-294 f_04: Human-derived | mode=inherit | donors=f_01 | events=t_step_00
-294 f_05: Human-derived | mode=inherit | donors=f_01 | events=t_step_00
-216 f_06: Human-derived | mode=inherit | donors=f_04 | events=t_step_03
-189 f_07: Human-derived | mode=inherit | donors=f_01 | events=t_step_04
-189 f_08: Human-derived | mode=inherit | donors=f_01 | events=t_step_04
-163 f_09: Human-derived | mode=inherit | donors=f_08 | events=t_step_05
-137 f_10: Human-derived | mode=inherit | donors=f_09 | events=t_step_06
-110 f_11: Human-derived | mode=inherit | donors=f_01 | events=t_step_07
-110 f_12: Human-derived | mode=inherit | donors=f_01 | events=t_step_07
-110 f_13: Human-derived | mode=inherit | donors=f_01 | events=t_step_07
=== CURRENT WORLD ===
Region region: Zosen Well
Faction f_00: Tosil Well | military_remnant | knowledge=
  origins=Planetary, Human-derived | formation=enclave_continuity | regional_roles=border_watch
Faction f_01: Dalith Gate | provincial_council | knowledge=
  origins=Human-derived | formation=direct_successor | regional_roles=isolation
Faction f_06: Veylen Gate | modified_human_community | knowledge=
  origins=Human-derived | formation=merger | regional_roles=isolation
Faction f_07: Zonar Well | refugee_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_10: Nalith Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=reorganization | regional_roles=isolation
Faction f_11: Sewen Reach | regional_commune | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=archives
Faction f_12: Nalen Ruin | trading_house | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_13: Fudor Reach | resource_or_trade_commune | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_01: parents=precursor; ancestors=precursor; sources=t_root_f_01, h_found, h_collapse
Ancestry f_06: parents=f_04, f_05; ancestors=f_01, f_04, f_05, precursor; sources=t_step_03, t_root_f_01, t_step_00, h_found, h_collapse
Ancestry f_07: parents=f_01; ancestors=f_01, precursor; sources=t_step_04, t_root_f_01, h_found, h_collapse
Ancestry f_10: parents=f_09; ancestors=f_01, f_08, f_09, precursor; sources=t_step_06, t_root_f_01, t_step_04, t_step_05, h_found, h_collapse
Ancestry f_11: parents=f_01; ancestors=f_01, precursor; sources=t_step_07, t_root_f_01, h_found, h_collapse
Ancestry f_12: parents=f_01; ancestors=f_01, precursor; sources=t_step_07, t_root_f_01, h_found, h_collapse
Ancestry f_13: parents=f_01; ancestors=f_01, precursor; sources=t_step_07, t_root_f_01, h_found, h_collapse
Relationship f_01 <-> f_07: -13; sources=t_step_04
Relationship f_01 <-> f_10: 19; sources=h_relation_4
Relationship f_01 <-> f_11: -16; sources=t_step_07
Relationship f_01 <-> f_12: 32; sources=h_relation_3
Relationship f_06 <-> f_07: -9; sources=h_relation_0, h_last
Relationship f_06 <-> f_10: -19; sources=h_relation_1
Relationship f_10 <-> f_11: 13; sources=h_relation_2
Settlement home_f_00: Nabomar | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Sehawen | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_04: Kerin | owner=f_06 | region=region | sources=t_step_00, t_step_03
Settlement home_f_05: Bodor | owner=f_06 | region=region | sources=t_step_00, t_step_03
Settlement home_f_06: Kemar | owner=f_06 | region=region | sources=t_step_03
Settlement home_f_07: Fulith | owner=f_07 | region=region | sources=t_step_04
Settlement home_f_08: Nara | owner=f_10 | region=region | sources=t_step_04, t_step_05, t_step_06
Settlement home_f_09: Fuselen | owner=f_10 | region=region | sources=t_step_05, t_step_06
Settlement home_f_10: Bolith | owner=f_10 | region=region | sources=t_step_06
Settlement home_f_11: Sebodor | owner=f_11 | region=region | sources=t_step_07
Settlement home_f_12: Kelith | owner=f_12 | region=region | sources=t_step_07
Settlement home_f_13: Fukemon | owner=f_13 | region=region | sources=t_step_07
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_02
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_03: administrative_site | occupant= | region=region | sources=t_step_01
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Tosil Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.57; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.84; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.39; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Dalith Gate (f_01; knowledge=):
  [t_root_f_01; confidence 0.46; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.60; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_03","delta":-10}
  [t_step_04; confidence 0.60; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_07","delta":-13}
  [t_step_07; confidence 0.48; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_11","delta":-16}
  [h_relation_3; confidence 0.84; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_12","delta":32}
  [h_relation_4; confidence 0.52; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_10","delta":19}
  [h_discovery; confidence 0.55; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.76; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_07","score":-13}
  [; confidence 0.85; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_10","score":19}
  [; confidence 0.70; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_11","score":-16}
  [; confidence 0.37; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_12","score":32}
Veylen Gate (f_06; knowledge=):
  [t_step_03; confidence 0.74; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.66; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":-31}
  [h_relation_1; confidence 0.58; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_10","delta":-19}
  [h_discovery; confidence 0.66; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.37; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":22}
  [; confidence 0.48; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":-9}
  [; confidence 0.82; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_10","score":-19}
Zonar Well (f_07; knowledge=):
  [t_step_04; confidence 0.43; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.48; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.43; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_07","delta":-13}
  [h_relation_0; confidence 0.67; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":-31}
  [h_discovery; confidence 0.47; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.77; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":22}
  [; confidence 0.72; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_07","score":-13}
  [; confidence 0.59; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":-9}
Nalith Ruin (f_10; knowledge=observer_scholarly_term):
  [t_step_06; confidence 0.56; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.45; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.75; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_10","delta":-19}
  [h_relation_2; confidence 0.82; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":13}
  [h_relation_4; confidence 0.65; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_10","delta":19}
  [h_discovery; confidence 0.58; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.65; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_10","score":19}
  [; confidence 0.63; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_10","score":-19}
  [; confidence 0.67; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_11","score":13}
Sewen Reach (f_11; knowledge=observer_scholarly_term):
  [t_step_07; confidence 0.83; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.59; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_07; confidence 0.39; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_11","delta":-16}
  [h_relation_2; confidence 0.67; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":13}
  [h_discovery; confidence 0.60; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.38; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_01","b":"f_11","score":-16}
  [; confidence 0.39; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_11","score":13}
Nalen Ruin (f_12; knowledge=):
  [t_step_07; confidence 0.54; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.47; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_12","delta":32}
  [h_discovery; confidence 0.86; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.70; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_12","score":32}
Fudor Reach (f_13; knowledge=):
  [t_step_07; confidence 0.68; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.52; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":24,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","h_response","h_body"],"causal_ratio":1.0,"direct_count":22,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07"],"important_events":24}
```

## layered_migration — seed 3

```text
History architecture v1 | generation algorithm v3 | seed 3 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-1","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"ritual_schism","target_factions":8,"topology_family":"layered_migration"}
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
-482 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-457 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-349 h_pressure [MIGRATION] Overextended garrisons withdrew and organized displaced households around abandoned posts.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-341 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body), Kesen (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Dasesen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body), Kesen (pressure_group), Dasesen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"}]
-320 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-319 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","origin_ids":["Planetary","Human-derived"],"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-308 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","origin_ids":["Innerworld"],"source_ids":[]},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Innerworld"],"source_ids":["cohort_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-286 t_step_01 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-264 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","origin_ids":["Human-derived"],"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["cohort_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-242 t_step_03 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","origin_ids":["Unknown"],"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Unknown"],"source_ids":["cohort_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-220 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Havak Well (f_01), Kewen Well (f_04) | causes: t_root_f_01, t_step_03
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"co_residence","origin_ids":["Planetary","Human-derived","Unknown"],"source_ids":["f_01","f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"}]
-198 t_step_05 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dador Well (f_05) | causes: t_step_04
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"subset","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"subset","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_05","b":"f_06","delta":-14,"kind":"relationship"}]
-176 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fuvak Ruin (f_07) | causes: t_step_05
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_07","kind":"retire"}]
-154 t_step_07 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Hanar Well (f_03) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_03","kind":"retire"}]
-132 t_step_08 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dador Well (f_05) | causes: t_step_04
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Planetary","Human-derived","Unknown"],"source_ids":["f_05"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_05","kind":"retire"}]
-110 t_step_09 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kevak Well (f_08) | causes: t_step_06
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_08","kind":"retire"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Damar Ruin (f_11) | causes: h_collapse, t_step_08
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_11"},{"kind":"reoccupy","owner_id":"f_11","purpose":"ritual_site","ruin_id":"old_administration","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Milith Well (f_02), Tomon Well (f_10) | causes: t_step_00, t_step_07
  effects: [{"a":"f_02","b":"f_10","delta":20,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Milith Well (f_02), Kemon Marsh (f_12) | causes: t_step_00, t_step_09
  effects: [{"a":"f_02","b":"f_12","delta":17,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_09), Veyra Marsh (f_14) | causes: t_step_06, t_step_09
  effects: [{"a":"f_09","b":"f_14","delta":35,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_09), Tomon Well (f_10) | causes: t_step_06, t_step_07
  effects: [{"a":"f_09","b":"f_10","delta":24,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Selith Well (f_13) | causes: t_step_09
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Milith Well (f_02), Tomon Well (f_10) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_10","delta":-13,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nanar Ruin | -320..-286 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_01: Havak Well | -319..-220 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Planetary, Human-derived | last_origins=Planetary, Human-derived
f_02: Milith Well | -308..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Innerworld | last_origins=Innerworld
f_03: Hanar Well | -264..-154 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_04: Kewen Well | -242..-220 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Unknown | last_origins=Unknown
f_05: Dador Well | -220..-132 | extinct | parents=f_01, f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Planetary, Human-derived, Unknown | last_origins=Planetary, Human-derived, Unknown
f_06: Danar Marsh | -198..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_07: Fuvak Ruin | -198..-176 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_08: Kevak Well | -176..-110 | extinct | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_09: Funar Reach | -176..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_10: Tomon Well | -154..present | active | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_11: Damar Ruin | -132..present | active | parents=f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Planetary, Human-derived, Unknown | last_origins=Planetary, Human-derived, Unknown
f_12: Kemon Marsh | -110..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_13: Selith Well | -110..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_14: Veyra Marsh | -110..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
precursor: Nanar Reach | -482..-332 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-482 precursor: Human-derived | mode=seed | donors= | events=h_found
-320 f_00: Human-derived | mode=seed | donors= | events=t_root_f_00
-319 f_01: Planetary, Human-derived | mode=seed | donors= | events=t_root_f_01
-308 cohort_00: Innerworld | mode=arrival | donors= | events=t_step_00
-308 f_02: Innerworld | mode=inherit | donors=cohort_00 | events=t_step_00
-264 cohort_01: Human-derived | mode=arrival | donors= | events=t_step_02
-264 f_03: Human-derived | mode=inherit | donors=cohort_01 | events=t_step_02
-242 cohort_02: Unknown | mode=arrival | donors= | events=t_step_03
-242 f_04: Unknown | mode=inherit | donors=cohort_02 | events=t_step_03
-220 f_05: Planetary, Human-derived, Unknown | mode=co_residence | donors=f_01, f_04 | events=t_step_04
-198 f_06: Human-derived | mode=subset | donors=f_05 | events=t_step_05
-198 f_07: Human-derived | mode=subset | donors=f_05 | events=t_step_05
-176 f_08: Human-derived | mode=inherit | donors=f_07 | events=t_step_06
-176 f_09: Human-derived | mode=inherit | donors=f_07 | events=t_step_06
-154 f_10: Human-derived | mode=inherit | donors=f_03 | events=t_step_07
-132 f_11: Planetary, Human-derived, Unknown | mode=inherit | donors=f_05 | events=t_step_08
-110 f_12: Human-derived | mode=inherit | donors=f_08 | events=t_step_09
-110 f_13: Human-derived | mode=inherit | donors=f_08 | events=t_step_09
-110 f_14: Human-derived | mode=inherit | donors=f_08 | events=t_step_09
=== CURRENT WORLD ===
Region region: Bolith Well
Faction f_02: Milith Well | trading_house | knowledge=
  origins=Innerworld | formation=newcomer_formation | regional_roles=archives
Faction f_06: Danar Marsh | military_remnant | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_09: Funar Reach | kinship_clan | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_10: Tomon Well | modified_human_community | knowledge=
  origins=Human-derived | formation=reorganization | regional_roles=isolation
Faction f_11: Damar Ruin | ritual_authority | knowledge=
  origins=Planetary, Human-derived, Unknown | formation=reorganization | regional_roles=maintenance
Faction f_12: Kemon Marsh | trading_house | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Faction f_13: Selith Well | village_union | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=archives
Faction f_14: Veyra Marsh | ritual_authority | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Ancestry f_02: parents=; ancestors=; sources=t_step_00
Ancestry f_06: parents=f_05; ancestors=f_01, f_04, f_05; sources=t_step_05, t_root_f_01, t_step_04, t_step_03, t_step_08
Ancestry f_09: parents=f_07; ancestors=f_01, f_04, f_05, f_07; sources=t_step_06, t_root_f_01, t_step_04, t_step_03, t_step_08, t_step_05
Ancestry f_10: parents=f_03; ancestors=f_03; sources=t_step_07, t_step_02
Ancestry f_11: parents=f_05; ancestors=f_01, f_04, f_05; sources=t_step_08, t_root_f_01, t_step_04, t_step_03
Ancestry f_12: parents=f_08; ancestors=f_01, f_04, f_05, f_07, f_08; sources=t_step_09, t_root_f_01, t_step_04, t_step_03, t_step_08, t_step_05, t_step_06
Ancestry f_13: parents=f_08; ancestors=f_01, f_04, f_05, f_07, f_08; sources=t_step_09, t_root_f_01, t_step_04, t_step_03, t_step_08, t_step_05, t_step_06
Ancestry f_14: parents=f_08; ancestors=f_01, f_04, f_05, f_07, f_08; sources=t_step_09, t_root_f_01, t_step_04, t_step_03, t_step_08, t_step_05, t_step_06
Relationship f_02 <-> f_10: 7; sources=h_relation_0, h_last
Relationship f_02 <-> f_12: 17; sources=h_relation_1
Relationship f_09 <-> f_10: 24; sources=h_relation_3
Relationship f_09 <-> f_14: 35; sources=h_relation_2
Settlement home_f_01: Hanar | owner=f_11 | region=region | sources=t_root_f_01, t_step_04, t_step_08
Settlement home_f_02: Kedavak | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Ludamar | owner=f_10 | region=region | sources=t_step_02, t_step_07
Settlement home_f_04: Sera | owner=f_11 | region=region | sources=t_step_03, t_step_04, t_step_08
Settlement home_f_05: Misil | owner=f_11 | region=region | sources=t_step_04, t_step_08
Settlement home_f_06: Sesil | owner=f_06 | region=region | sources=t_step_05
Settlement home_f_07: Semisen | owner=f_12 | region=region | sources=t_step_05, t_step_06, t_step_09
Settlement home_f_08: Luzodor | owner=f_12 | region=region | sources=t_step_06, t_step_09
Settlement home_f_09: Zomar | owner=f_09 | region=region | sources=t_step_06
Settlement home_f_10: Zowen | owner=f_10 | region=region | sources=t_step_07
Settlement home_f_11: Bomar | owner=f_11 | region=region | sources=t_step_08
Settlement home_f_12: Dahara | owner=f_12 | region=region | sources=t_step_09
Settlement home_f_13: Veyveylith | owner=f_13 | region=region | sources=t_step_09
Settlement home_f_14: Veywen | owner=f_14 | region=region | sources=t_step_09
Settlement reused_site: Damar | owner=f_11 | region=region | sources=h_reuse
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_step_01
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant=f_11 | region=region | sources=h_collapse, h_reuse
  site_type=records | hazard=none | recorded_use=ritual_site
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
=== BELIEFS ===
Milith Well (f_02; knowledge=):
  [t_step_00; confidence 0.69; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_10","delta":20}
  [h_relation_1; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_12","delta":17}
  [h_discovery; confidence 0.48; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.77; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_10","delta":-13}
  [; confidence 0.80; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_10","score":7}
  [; confidence 0.57; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_12","score":17}
Danar Marsh (f_06; knowledge=):
  [t_step_05; confidence 0.48; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.74; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.39; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-14}
  [h_discovery; confidence 0.73; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Funar Reach (f_09; knowledge=):
  [t_step_06; confidence 0.86; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.58; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.40; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_14","delta":35}
  [h_relation_3; confidence 0.66; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":24}
  [h_discovery; confidence 0.51; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.78; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":24}
  [; confidence 0.69; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_14","score":35}
Tomon Well (f_10; knowledge=):
  [t_step_07; confidence 0.71; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.83; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_10","delta":20}
  [h_relation_3; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":24}
  [h_discovery; confidence 0.67; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.83; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_10","delta":-13}
  [; confidence 0.74; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_10","score":7}
  [; confidence 0.41; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":24}
Damar Ruin (f_11; knowledge=):
  [t_step_08; confidence 0.71; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.73; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Kemon Marsh (f_12; knowledge=):
  [t_step_09; confidence 0.40; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.45; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_12","delta":17}
  [h_discovery; confidence 0.63; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.62; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_12","score":17}
Selith Well (f_13; knowledge=):
  [t_step_09; confidence 0.84; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.85; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Veyra Marsh (f_14; knowledge=):
  [t_step_09; confidence 0.47; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.54; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_14","delta":35}
  [h_discovery; confidence 0.50; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.69; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_14","score":35}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09"],"important_events":25}
```

## late_fragmentation — seed 4

```text
History architecture v1 | generation algorithm v3 | seed 4 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-1","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","target_factions":7,"topology_family":"late_fragmentation"}
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
-510 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-485 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-345 h_pressure [MIGRATION] Overextended garrisons withdrew and organized displaced households around abandoned posts.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-335 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body), Lufura (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Zowen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body), Lufura (pressure_group), Zowen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"}]
-314 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-95 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zomar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"a":"f_00","b":"f_01","delta":-8,"kind":"relationship"}]
-86 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Furin Well (f_01) | causes: t_step_00
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_01","kind":"retire"}]
-77 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zomar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_00","kind":"retire"}]
-67 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Dalith Reach (f_04), Fulith Reach (f_03), Halith Gate (f_05) | causes: t_step_01, t_step_00, t_step_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_04","f_03","f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"}]
-58 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_02","b":"f_07","delta":-10,"kind":"relationship"}]
-48 t_step_05 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Nalith Ruin (f_08) | causes: t_step_04
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"a":"f_08","b":"f_09","delta":-17,"kind":"relationship"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Fulith Well (f_07), Kenar Reach (f_11) | causes: t_step_04, t_step_05
  effects: [{"a":"f_07","b":"f_11","delta":-20,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Fulith Well (f_07), Bosil Well (f_10) | causes: t_step_04, t_step_05
  effects: [{"a":"f_07","b":"f_10","delta":-27,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02), Kenar Reach (f_11) | causes: t_step_00, t_step_05
  effects: [{"a":"f_02","b":"f_11","delta":28,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] Erosion exposed a sealed object; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Fulith Well (f_07) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"sealed_object_in_erosion","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fulith Well (f_07), Kenar Reach (f_11) | causes: h_relation_0
  effects: [{"a":"f_07","b":"f_11","delta":29,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zomar Ruin | -314..-77 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Furin Well | -95..-86 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Furin Gate | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Fulith Reach | -95..-67 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Dalith Reach | -86..-67 | extinct | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_05: Halith Gate | -77..-67 | extinct | parents=f_00 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_06: Misen Ruin | -67..present | active | parents=f_04, f_03, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Fulith Well | -58..present | active | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Nalith Ruin | -58..present | active | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Nasil Marsh | -48..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_10: Bosil Well | -48..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_11: Kenar Reach | -48..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
precursor: Torin Marsh | -510..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-510 precursor: Human-derived | mode=seed | donors= | events=h_found
-314 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-95 f_01: Human-derived | mode=inherit | donors=f_00 | events=t_step_00
-95 f_02: Human-derived | mode=inherit | donors=f_00 | events=t_step_00
-95 f_03: Human-derived | mode=inherit | donors=f_00 | events=t_step_00
-86 f_04: Human-derived | mode=inherit | donors=f_01 | events=t_step_01
-77 f_05: Human-derived | mode=inherit | donors=f_00 | events=t_step_02
-67 f_06: Human-derived | mode=co_residence | donors=f_04, f_03, f_05 | events=t_step_03
-58 f_07: Human-derived | mode=inherit | donors=f_02 | events=t_step_04
-58 f_08: Human-derived | mode=inherit | donors=f_02 | events=t_step_04
-48 f_09: Human-derived | mode=inherit | donors=f_08 | events=t_step_05
-48 f_10: Human-derived | mode=inherit | donors=f_08 | events=t_step_05
-48 f_11: Human-derived | mode=inherit | donors=f_08 | events=t_step_05
=== CURRENT WORLD ===
Region region: Lunar Gate
Faction f_02: Furin Gate | village_union | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_06: Misen Ruin | provincial_council | knowledge=
  origins=Human-derived | formation=merger | regional_roles=local_exchange
Faction f_07: Fulith Well | facility_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_08: Nalith Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Faction f_09: Nasil Marsh | religious_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_10: Bosil Well | village_union | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Faction f_11: Kenar Reach | military_remnant | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Ancestry f_02: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, t_step_02, h_found, h_collapse
Ancestry f_06: parents=f_04, f_03, f_05; ancestors=f_00, f_01, f_03, f_04, f_05, precursor; sources=t_step_03, t_root_f_00, t_step_02, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_07: parents=f_02; ancestors=f_00, f_02, precursor; sources=t_step_04, t_root_f_00, t_step_02, t_step_00, h_found, h_collapse
Ancestry f_08: parents=f_02; ancestors=f_00, f_02, precursor; sources=t_step_04, t_root_f_00, t_step_02, t_step_00, h_found, h_collapse
Ancestry f_09: parents=f_08; ancestors=f_00, f_02, f_08, precursor; sources=t_step_05, t_root_f_00, t_step_02, t_step_00, t_step_04, h_found, h_collapse
Ancestry f_10: parents=f_08; ancestors=f_00, f_02, f_08, precursor; sources=t_step_05, t_root_f_00, t_step_02, t_step_00, t_step_04, h_found, h_collapse
Ancestry f_11: parents=f_08; ancestors=f_00, f_02, f_08, precursor; sources=t_step_05, t_root_f_00, t_step_02, t_step_00, t_step_04, h_found, h_collapse
Relationship f_02 <-> f_07: -10; sources=t_step_04
Relationship f_02 <-> f_11: 28; sources=h_relation_2
Relationship f_07 <-> f_10: -27; sources=h_relation_1
Relationship f_07 <-> f_11: 9; sources=h_relation_0, h_last
Relationship f_08 <-> f_09: -17; sources=t_step_05
Settlement home_f_00: Veydamar | owner=f_06 | region=region | sources=t_root_f_00, t_step_02, t_step_03
Settlement home_f_01: Darin | owner=f_06 | region=region | sources=t_step_00, t_step_01, t_step_03
Settlement home_f_02: Ketolith | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Miwen | owner=f_06 | region=region | sources=t_step_00, t_step_03
Settlement home_f_04: Kevak | owner=f_06 | region=region | sources=t_step_01, t_step_03
Settlement home_f_05: Nafusil | owner=f_06 | region=region | sources=t_step_02, t_step_03
Settlement home_f_06: Nalen | owner=f_06 | region=region | sources=t_step_03
Settlement home_f_07: Kebora | owner=f_07 | region=region | sources=t_step_04
Settlement home_f_08: Zofulith | owner=f_08 | region=region | sources=t_step_04
Settlement home_f_09: Fura | owner=f_09 | region=region | sources=t_step_05
Settlement home_f_10: Bosen | owner=f_10 | region=region | sources=t_step_05
Settlement home_f_11: Torin | owner=f_11 | region=region | sources=t_step_05
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: sealed_object_in_erosion | origin=unknown | sources=h_discovery
=== BELIEFS ===
Furin Gate (f_02; knowledge=):
  [t_step_00; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.37; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_07","delta":-10}
  [h_relation_2; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":28}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.68; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_07","score":-10}
  [; confidence 0.72; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_11","score":28}
Misen Ruin (f_06; knowledge=):
  [t_step_03; confidence 0.79; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_07; knowledge=):
  [t_step_04; confidence 0.61; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.71; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_07","delta":-10}
  [h_relation_0; confidence 0.82; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_11","delta":-20}
  [h_relation_1; confidence 0.55; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-27}
  [h_discovery; confidence 0.57; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.68; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_11","delta":29}
  [; confidence 0.74; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_07","score":-10}
  [; confidence 0.42; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-27}
  [; confidence 0.53; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_11","score":9}
Nalith Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.47; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.37; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-17}
  [h_discovery; confidence 0.75; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.80; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-17}
Nasil Marsh (f_09; knowledge=):
  [t_step_05; confidence 0.71; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.84; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-17}
  [h_discovery; confidence 0.50; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.56; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-17}
Bosil Well (f_10; knowledge=):
  [t_step_05; confidence 0.67; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.53; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-27}
  [h_discovery; confidence 0.41; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.51; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-27}
Kenar Reach (f_11; knowledge=):
  [t_step_05; confidence 0.57; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.38; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_11","delta":-20}
  [h_relation_2; confidence 0.66; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":28}
  [h_discovery; confidence 0.35; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_11","delta":29}
  [; confidence 0.63; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_11","score":28}
  [; confidence 0.82; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_11","score":9}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":18}
```

## compatible_site_reuse — seed 5

```text
History architecture v1 | generation algorithm v3 | seed 5 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-1","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"geophysical_stress","response_motif":"household_council","target_factions":7,"topology_family":"consolidation_resplit"}
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
-515 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-490 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-352 h_pressure [DISASTER] Recurrent stress on an already critical fault released locally, damaging structures and travel routes; tidal stress was a small contributor, not a moon-alignment switch.
  scope=regional | objective cause_domain=natural
  actors: Tomon Well (precursor), Hara (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-340 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Hara (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Lulith (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-325 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Hara (regional_body), Lulith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-313 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-312 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-311 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-310 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-301 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Milen Reach (f_00), Tolith Marsh (f_02) | causes: t_root_f_00, t_root_f_02
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_00","kind":"retire"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_02","kind":"retire"}]
-278 t_step_01 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (f_01), Hanar Gate (f_03) | causes: t_root_f_01, t_root_f_03
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"}]
-254 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zolith Marsh (f_04) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_04","b":"f_06","delta":-24,"kind":"relationship"}]
-230 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Lulen Ruin (f_07), Namon Reach (f_08) | causes: t_step_02, t_step_02
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"}]
-206 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Danar Gate (f_06) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_06"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_06","kind":"retire"}]
-182 t_step_05 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kelith Reach (f_10), Zonar Marsh (f_09) | causes: t_step_04, t_step_03
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_10","f_09"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_09","kind":"retire"}]
-158 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Hamon Ruin (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_05","kind":"retire"}]
-134 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sewen Well (f_11) | causes: t_step_05
  effects: [{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_11"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_11"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"a":"f_11","b":"f_14","delta":-21,"kind":"relationship"}]
-110 t_step_08 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veylen Ruin (f_12) | causes: t_step_06
  effects: [{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"f_17","kind":"activate"},{"entity_id":"f_17","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_17","kind":"activate"},{"entity_id":"home_f_17","kind":"settlement","location_id":"region","owner_id":"f_17"},{"entity_id":"home_f_12","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_16"},{"entity_id":"f_12","kind":"retire"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Bowen Well (f_14) | causes: h_failure, t_step_07
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_14"},{"kind":"reoccupy","owner_id":"f_14","purpose":"research","ruin_id":"terminal_site","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Fudor Ruin (f_13), Bowen Well (f_14) | causes: t_step_06, t_step_07
  effects: [{"a":"f_13","b":"f_14","delta":32,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Bolith Ruin (f_15), Nawen Gate (f_16) | causes: t_step_07, t_step_08
  effects: [{"a":"f_15","b":"f_16","delta":34,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fudor Ruin (f_13), Nawen Gate (f_16) | causes: t_step_06, t_step_08
  effects: [{"a":"f_13","b":"f_16","delta":11,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Bolith Ruin (f_15), Veylith Gate (f_17) | causes: t_step_07, t_step_08
  effects: [{"a":"f_15","b":"f_17","delta":16,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Fudor Ruin (f_13), Bowen Well (f_14) | causes: h_relation_0
  effects: [{"a":"f_13","b":"f_14","delta":-27,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Milen Reach | -313..-301 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Serin Gate | -312..-278 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Tolith Marsh | -311..-301 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Hanar Gate | -310..-278 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Zolith Marsh | -301..present | active | parents=f_00, f_02 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_05: Hamon Ruin | -278..-158 | extinct | parents=f_01, f_03 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Danar Gate | -254..-206 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Lulen Ruin | -254..-230 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Namon Reach | -254..-230 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Zonar Marsh | -230..-182 | extinct | parents=f_07, f_08 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_10: Kelith Reach | -206..-182 | extinct | parents=f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_11: Sewen Well | -182..present | active | parents=f_10, f_09 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_12: Veylen Ruin | -158..-110 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_13: Fudor Ruin | -158..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_14: Bowen Well | -134..present | active | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_15: Bolith Ruin | -134..present | active | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_16: Nawen Gate | -110..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_17: Veylith Gate | -110..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
precursor: Tomon Well | -515..-325 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-515 precursor: Human-derived | mode=seed | donors= | events=h_found
-313 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-312 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-311 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-310 f_03: Human-derived | mode=inherit | donors=precursor | events=t_root_f_03
-301 f_04: Human-derived | mode=inherit | donors=f_00 | events=t_step_00
-278 f_05: Human-derived | mode=inherit | donors=f_01 | events=t_step_01
-254 f_06: Human-derived | mode=inherit | donors=f_04 | events=t_step_02
-254 f_07: Human-derived | mode=inherit | donors=f_04 | events=t_step_02
-254 f_08: Human-derived | mode=inherit | donors=f_04 | events=t_step_02
-230 f_09: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-206 f_10: Human-derived | mode=inherit | donors=f_06 | events=t_step_04
-182 f_11: Human-derived | mode=co_residence | donors=f_10, f_09 | events=t_step_05
-158 f_12: Human-derived | mode=inherit | donors=f_05 | events=t_step_06
-158 f_13: Human-derived | mode=inherit | donors=f_05 | events=t_step_06
-134 f_14: Human-derived | mode=inherit | donors=f_11 | events=t_step_07
-134 f_15: Human-derived | mode=inherit | donors=f_11 | events=t_step_07
-110 f_16: Human-derived | mode=inherit | donors=f_12 | events=t_step_08
-110 f_17: Human-derived | mode=inherit | donors=f_12 | events=t_step_08
=== CURRENT WORLD ===
Region region: Semon Marsh
Faction f_04: Zolith Marsh | frontier_settlement_league | knowledge=
  origins=Human-derived | formation=merger | regional_roles=archives
Faction f_11: Sewen Well | religious_community | knowledge=
  origins=Human-derived | formation=merger | regional_roles=local_exchange
Faction f_13: Fudor Ruin | kinship_clan | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Faction f_14: Bowen Well | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=shelter
Faction f_15: Bolith Ruin | breakaway_clan | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Faction f_16: Nawen Gate | ritual_authority | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_17: Veylith Gate | refugee_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=maintenance
Ancestry f_04: parents=f_00, f_02; ancestors=f_00, f_02, precursor; sources=t_step_00, t_root_f_00, t_root_f_02, h_found, h_collapse
Ancestry f_11: parents=f_10, f_09; ancestors=f_00, f_02, f_04, f_06, f_07, f_08, f_09, f_10, precursor; sources=t_step_05, t_root_f_00, t_step_00, t_root_f_02, t_step_02, t_step_04, t_step_03, h_found, h_collapse
Ancestry f_13: parents=f_05; ancestors=f_01, f_03, f_05, precursor; sources=t_step_06, t_root_f_01, t_step_01, t_root_f_03, h_found, h_collapse
Ancestry f_14: parents=f_11; ancestors=f_00, f_02, f_04, f_06, f_07, f_08, f_09, f_10, f_11, precursor; sources=t_step_07, t_root_f_00, t_step_00, t_root_f_02, t_step_02, t_step_04, t_step_03, t_step_05, h_found, h_collapse
Ancestry f_15: parents=f_11; ancestors=f_00, f_02, f_04, f_06, f_07, f_08, f_09, f_10, f_11, precursor; sources=t_step_07, t_root_f_00, t_step_00, t_root_f_02, t_step_02, t_step_04, t_step_03, t_step_05, h_found, h_collapse
Ancestry f_16: parents=f_12; ancestors=f_01, f_03, f_05, f_12, precursor; sources=t_step_08, t_root_f_01, t_step_01, t_root_f_03, t_step_06, h_found, h_collapse
Ancestry f_17: parents=f_12; ancestors=f_01, f_03, f_05, f_12, precursor; sources=t_step_08, t_root_f_01, t_step_01, t_root_f_03, t_step_06, h_found, h_collapse
Relationship f_11 <-> f_14: -21; sources=t_step_07
Relationship f_13 <-> f_14: 5; sources=h_relation_0, h_last
Relationship f_13 <-> f_16: 11; sources=h_relation_2
Relationship f_15 <-> f_16: 34; sources=h_relation_1
Relationship f_15 <-> f_17: 16; sources=h_relation_3
Settlement home_f_00: Haveyrin | owner=f_04 | region=region | sources=t_root_f_00, t_step_00
Settlement home_f_01: Havak | owner=f_16 | region=region | sources=t_root_f_01, t_step_01, t_step_06, t_step_08
Settlement home_f_02: Bomon | owner=f_04 | region=region | sources=t_root_f_02, t_step_00
Settlement home_f_03: Sesevak | owner=f_16 | region=region | sources=t_root_f_03, t_step_01, t_step_06, t_step_08
Settlement home_f_04: Totonar | owner=f_04 | region=region | sources=t_step_00
Settlement home_f_05: Daveylith | owner=f_16 | region=region | sources=t_step_01, t_step_06, t_step_08
Settlement home_f_06: Dafuvak | owner=f_11 | region=region | sources=t_step_02, t_step_04, t_step_05
Settlement home_f_07: Bobosil | owner=f_11 | region=region | sources=t_step_02, t_step_03, t_step_05
Settlement home_f_08: Damon | owner=f_11 | region=region | sources=t_step_02, t_step_03, t_step_05
Settlement home_f_09: Narin | owner=f_11 | region=region | sources=t_step_03, t_step_05
Settlement home_f_10: Tosil | owner=f_11 | region=region | sources=t_step_04, t_step_05
Settlement home_f_11: Hawen | owner=f_11 | region=region | sources=t_step_05
Settlement home_f_12: Mirin | owner=f_16 | region=region | sources=t_step_06, t_step_08
Settlement home_f_13: Veyra | owner=f_13 | region=region | sources=t_step_06
Settlement home_f_14: Bozowen | owner=f_14 | region=region | sources=t_step_07
Settlement home_f_15: Botomon | owner=f_15 | region=region | sources=t_step_07
Settlement home_f_16: Seveydor | owner=f_16 | region=region | sources=t_step_08
Settlement home_f_17: Kenar | owner=f_17 | region=region | sources=t_step_08
Settlement reused_site: Sera | owner=f_14 | region=region | sources=h_reuse
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant=f_14 | region=region | sources=h_failure, h_reuse
  site_type=records | hazard=none | recorded_use=research
=== BELIEFS ===
Zolith Marsh (f_04; knowledge=):
  [t_step_00; confidence 0.84; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.45; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.52; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-24}
Sewen Well (f_11; knowledge=):
  [t_step_05; confidence 0.61; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.50; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_07; confidence 0.57; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_14","delta":-21}
  [; confidence 0.65; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_11","b":"f_14","score":-21}
Fudor Ruin (f_13; knowledge=observer_scholarly_term):
  [t_step_06; confidence 0.84; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.47; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":32}
  [h_relation_2; confidence 0.47; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_16","delta":11}
  [h_last; confidence 0.80; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":-27}
  [; confidence 0.57; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":5}
  [; confidence 0.54; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_16","score":11}
Bowen Well (f_14; knowledge=observer_scholarly_term):
  [t_step_07; confidence 0.51; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.64; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_07; confidence 0.75; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_14","delta":-21}
  [h_relation_0; confidence 0.77; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":32}
  [h_last; confidence 0.38; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":-27}
  [; confidence 0.70; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_11","b":"f_14","score":-21}
  [; confidence 0.58; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":5}
Bolith Ruin (f_15; knowledge=):
  [t_step_07; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":34}
  [h_relation_3; confidence 0.49; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_17","delta":16}
  [; confidence 0.63; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":34}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_17","score":16}
Nawen Gate (f_16; knowledge=observer_scholarly_term):
  [t_step_08; confidence 0.89; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.73; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":34}
  [h_relation_2; confidence 0.57; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_16","delta":11}
  [; confidence 0.41; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_16","score":11}
  [; confidence 0.85; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":34}
Veylith Gate (f_17; knowledge=):
  [t_step_08; confidence 0.44; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.36; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.57; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_17","delta":16}
  [; confidence 0.66; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_17","score":16}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08"],"important_events":25}
```

## multi_origin — seed 7

```text
History architecture v1 | generation algorithm v3 | seed 7 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-1","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","precursor_form":"city_confederation","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"ritual_schism","target_factions":7,"topology_family":"remnant_mosaic"}
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
-519 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-494 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-484 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-341 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Minar Gate (precursor), Setolen (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland","site_type":"agricultural"}]
-329 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Setolen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-320 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Navak (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-316 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Setolen (regional_body), Navak (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-303 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-302 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-292 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","origin_ids":["Unknown"],"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Unknown"],"source_ids":["cohort_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-274 t_step_01 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","origin_ids":["Planetary"],"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["cohort_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-256 t_step_02 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Kemar Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-238 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Zowen Reach (f_01), Fumon Well (f_04), Kerin Well (f_03) | causes: t_root_f_01, t_step_01, t_step_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"co_residence","origin_ids":["Planetary","Human-derived","Unknown"],"source_ids":["f_01","f_04","f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"}]
-220 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Tonar Marsh (f_05) | causes: t_step_03
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"subset","origin_ids":["Planetary"],"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Planetary","Human-derived","Unknown"],"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"}]
-201 t_step_05 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bosen Gate (f_07) | causes: t_step_04
  effects: [{"entity_id":"f_07","kind":"retire"},{"entity_id":"home_f_07","kind":"retire"},{"hazard":"none","id":"abandoned_f_07","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-183 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dasen Marsh (f_06) | causes: t_step_04
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_06"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_06"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_06","b":"f_08","delta":-5,"kind":"relationship"}]
-165 t_step_07 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Tolen Reach (f_09) | causes: t_step_06
  effects: [{"entity_id":"f_09","kind":"retire"},{"entity_id":"home_f_09","kind":"retire"},{"hazard":"none","id":"abandoned_f_09","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-147 t_step_08 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_08) | causes: t_step_06
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","origin_ids":["Planetary"],"source_ids":[]},{"entity_id":"f_08","kind":"population","mode":"join","origin_ids":["Planetary"],"source_ids":["f_08","cohort_02"]}]
-129 t_step_09 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_08) | causes: t_step_06
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"a":"f_08","b":"f_10","delta":-20,"kind":"relationship"}]
-110 t_step_10 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_08) | causes: t_step_06
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_08"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Planetary"],"source_ids":["f_08"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"a":"f_08","b":"f_12","delta":-15,"kind":"relationship"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Kera Ruin (f_00) | causes: t_step_05, t_root_f_00
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_00"},{"kind":"reoccupy","owner_id":"f_00","purpose":"settlement","ruin_id":"abandoned_f_07","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_08), Lulith Ruin (f_13) | causes: t_step_06, t_step_10
  effects: [{"a":"f_08","b":"f_13","delta":12,"kind":"relationship"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Kera Ruin (f_00), Funar Reach (f_08) | causes: t_root_f_00, t_step_06
  effects: [{"a":"f_00","b":"f_08","delta":-15,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Dasen Marsh (f_06), Lulith Ruin (f_13) | causes: t_step_04, t_step_10
  effects: [{"a":"f_06","b":"f_13","delta":30,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Funar Reach (f_08), Lulith Ruin (f_13) | causes: h_relation_0
  effects: [{"a":"f_08","b":"f_13","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kera Ruin | -484..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_01: Zowen Reach | -303..-238 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Kemar Marsh | -302..-256 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_03: Kerin Well | -292..-238 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Unknown | last_origins=Unknown
f_04: Fumon Well | -274..-238 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Planetary | last_origins=Planetary
f_05: Tonar Marsh | -238..-220 | extinct | parents=f_01, f_04, f_03 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Planetary, Human-derived, Unknown | last_origins=Planetary, Human-derived, Unknown
f_06: Dasen Marsh | -220..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_07: Bosen Gate | -220..-201 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary, Human-derived, Unknown | last_origins=Planetary, Human-derived, Unknown
f_08: Funar Reach | -183..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_09: Tolen Reach | -183..-165 | extinct | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_10: Veysil Well | -129..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_11: Harin Gate | -129..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_12: Minar Ruin | -110..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
f_13: Lulith Ruin | -110..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Planetary | last_origins=Planetary
precursor: Minar Gate | -519..-316 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-519 precursor: Human-derived | mode=seed | donors= | events=h_found
-484 f_00: Human-derived | mode=seed | donors= | events=t_root_f_00
-303 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-302 f_02: Human-derived | mode=seed | donors= | events=t_root_f_02
-292 cohort_00: Unknown | mode=arrival | donors= | events=t_step_00
-292 f_03: Unknown | mode=inherit | donors=cohort_00 | events=t_step_00
-274 cohort_01: Planetary | mode=arrival | donors= | events=t_step_01
-274 f_04: Planetary | mode=inherit | donors=cohort_01 | events=t_step_01
-238 f_05: Planetary, Human-derived, Unknown | mode=co_residence | donors=f_01, f_04, f_03 | events=t_step_03
-220 f_06: Planetary | mode=subset | donors=f_05 | events=t_step_04
-220 f_07: Planetary, Human-derived, Unknown | mode=inherit | donors=f_05 | events=t_step_04
-183 f_08: Planetary | mode=inherit | donors=f_06 | events=t_step_06
-183 f_09: Planetary | mode=inherit | donors=f_06 | events=t_step_06
-147 cohort_02: Planetary | mode=arrival | donors= | events=t_step_08
-147 f_08: Planetary | mode=join | donors=f_08, cohort_02 | events=t_step_08
-129 f_10: Planetary | mode=inherit | donors=f_08 | events=t_step_09
-129 f_11: Planetary | mode=inherit | donors=f_08 | events=t_step_09
-110 f_12: Planetary | mode=inherit | donors=f_08 | events=t_step_10
-110 f_13: Planetary | mode=inherit | donors=f_08 | events=t_step_10
=== CURRENT WORLD ===
Region region: Fulith Gate
Faction f_00: Kera Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=enclave_continuity | regional_roles=maintenance
Faction f_06: Dasen Marsh | trading_house | knowledge=observer_scholarly_term
  origins=Planetary | formation=fragmentation | regional_roles=archives
Faction f_08: Funar Reach | kinship_clan | knowledge=
  origins=Planetary | formation=fragmentation | regional_roles=local_exchange
Faction f_10: Veysil Well | facility_community | knowledge=observer_scholarly_term
  origins=Planetary | formation=fragmentation | regional_roles=border_watch
Faction f_11: Harin Gate | frontier_settlement_league | knowledge=
  origins=Planetary | formation=fragmentation | regional_roles=local_exchange
Faction f_12: Minar Ruin | village_union | knowledge=
  origins=Planetary | formation=fragmentation | regional_roles=archives
Faction f_13: Lulith Ruin | breakaway_clan | knowledge=
  origins=Planetary | formation=fragmentation | regional_roles=shelter
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_06: parents=f_05; ancestors=f_01, f_03, f_04, f_05, precursor; sources=t_step_04, t_root_f_01, t_step_03, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_08: parents=f_06; ancestors=f_01, f_03, f_04, f_05, f_06, precursor; sources=t_step_06, t_root_f_01, t_step_03, t_step_00, t_step_01, t_step_04, h_found, h_collapse
Ancestry f_10: parents=f_08; ancestors=f_01, f_03, f_04, f_05, f_06, f_08, precursor; sources=t_step_09, t_root_f_01, t_step_03, t_step_00, t_step_01, t_step_04, t_step_06, h_found, h_collapse
Ancestry f_11: parents=f_08; ancestors=f_01, f_03, f_04, f_05, f_06, f_08, precursor; sources=t_step_09, t_root_f_01, t_step_03, t_step_00, t_step_01, t_step_04, t_step_06, h_found, h_collapse
Ancestry f_12: parents=f_08; ancestors=f_01, f_03, f_04, f_05, f_06, f_08, precursor; sources=t_step_10, t_root_f_01, t_step_03, t_step_00, t_step_01, t_step_04, t_step_06, h_found, h_collapse
Ancestry f_13: parents=f_08; ancestors=f_01, f_03, f_04, f_05, f_06, f_08, precursor; sources=t_step_10, t_root_f_01, t_step_03, t_step_00, t_step_01, t_step_04, t_step_06, h_found, h_collapse
Relationship f_00 <-> f_08: -15; sources=h_relation_1
Relationship f_06 <-> f_08: -5; sources=t_step_06
Relationship f_06 <-> f_13: 30; sources=h_relation_2
Relationship f_08 <-> f_10: -20; sources=t_step_09
Relationship f_08 <-> f_12: -15; sources=t_step_10
Relationship f_08 <-> f_13: -14; sources=h_relation_0, h_last
Settlement home_f_00: Mikelen | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Tolumar | owner=f_06 | region=region | sources=t_root_f_01, t_step_03, t_step_04
Settlement home_f_03: Zodasen | owner=f_06 | region=region | sources=t_step_00, t_step_03, t_step_04
Settlement home_f_04: Bowen | owner=f_06 | region=region | sources=t_step_01, t_step_03, t_step_04
Settlement home_f_05: Mimon | owner=f_06 | region=region | sources=t_step_03, t_step_04
Settlement home_f_06: Semar | owner=f_06 | region=region | sources=t_step_04
Settlement home_f_08: Tora | owner=f_08 | region=region | sources=t_step_06
Settlement home_f_10: Havak | owner=f_10 | region=region | sources=t_step_09
Settlement home_f_11: Miludor | owner=f_11 | region=region | sources=t_step_09
Settlement home_f_12: Keveysen | owner=f_12 | region=region | sources=t_step_10
Settlement home_f_13: Veykenar | owner=f_13 | region=region | sources=t_step_10
Settlement reused_site: Dasemon | owner=f_00 | region=region | sources=h_reuse
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_02
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_07: administrative_site | occupant=f_00 | region=region | sources=t_step_05, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin abandoned_f_09: administrative_site | occupant= | region=region | sources=t_step_07
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_farmland | occupant= | region=region | sources=h_pressure
  site_type=agricultural | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Kera Ruin (f_00; knowledge=observer_scholarly_term):
  [t_root_f_00; confidence 0.80; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.47; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-15}
  [; confidence 0.48; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-15}
Dasen Marsh (f_06; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.66; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.43; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_06; confidence 0.76; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-5}
  [h_relation_2; confidence 0.35; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_13","delta":30}
  [; confidence 0.66; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":-5}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_13","score":30}
Funar Reach (f_08; knowledge=):
  [t_step_06; confidence 0.83; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.72; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_06; confidence 0.49; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-5}
  [t_step_09; confidence 0.79; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-20}
  [t_step_10; confidence 0.84; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-15}
  [h_relation_0; confidence 0.71; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":12}
  [h_relation_1; confidence 0.53; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-15}
  [h_last; confidence 0.65; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":-26}
  [; confidence 0.77; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-15}
  [; confidence 0.42; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":-5}
  [; confidence 0.55; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-20}
  [; confidence 0.65; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":-15}
  [; confidence 0.86; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_13","score":-14}
Veysil Well (f_10; knowledge=observer_scholarly_term):
  [t_step_09; confidence 0.43; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_09; confidence 0.74; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-20}
  [; confidence 0.84; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-20}
Harin Gate (f_11; knowledge=):
  [t_step_09; confidence 0.44; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.82; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Minar Ruin (f_12; knowledge=):
  [t_step_10; confidence 0.55; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_10; confidence 0.66; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-15}
  [; confidence 0.88; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":-15}
Lulith Ruin (f_13; knowledge=):
  [t_step_10; confidence 0.45; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.49; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":12}
  [h_relation_2; confidence 0.54; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_13","delta":30}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":-26}
  [; confidence 0.70; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_13","score":30}
  [; confidence 0.65; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_13","score":-14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10"],"important_events":25}
```

## no_direct_heir — seed 9

```text
History architecture v1 | generation algorithm v3 | seed 9 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-1","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"trade_failure","response_motif":"regional_autonomy","target_factions":8,"topology_family":"no_direct_heir"}
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
-557 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-532 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-342 h_pressure [DISASTER] Failures across the regional trade network left stations abandoned and central levies unsupported.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-332 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-327 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Veyminar (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-323 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body), Veyminar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-311 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-310 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-305 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Fusen Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-304 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Halith Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-293 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-292 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-291 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-290 t_root_f_05 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-289 t_root_f_06 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"}]
-281 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","origin_ids":["Innerworld"],"source_ids":[]},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Innerworld"],"source_ids":["cohort_00"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"}]
-264 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Milith Ruin (f_04), Veyvak Gate (f_03) | causes: t_root_f_04, t_root_f_03
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_04","f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_03","kind":"retire"}]
-247 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bovak Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_02","kind":"retire"}]
-230 t_step_03 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zosil Ruin (f_08) | causes: t_step_01
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_08","kind":"retire"}]
-213 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zosen Reach (f_09) | causes: t_step_02
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_09"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_09"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_09"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"a":"f_09","b":"f_12","delta":-24,"kind":"relationship"}]
-196 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Fuvak Gate (f_14) | causes: t_step_04
  effects: [{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_14"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"home_f_14","kind":"site_owner","owner_id":"f_15"},{"entity_id":"f_14","kind":"retire"}]
-179 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Minar Marsh (f_10), Misil Gate (f_06) | causes: t_step_02, t_root_f_06
  effects: [{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_10"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_16"},{"entity_id":"f_10","kind":"retire"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_16"},{"entity_id":"f_06","kind":"retire"}]
-162 t_step_07 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Sewen Marsh (f_11), Zosen Reach (f_09) | causes: t_step_03, t_step_02
  effects: [{"entity_id":"f_17","kind":"activate"},{"entity_id":"f_17","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_11","f_09"]},{"entity_id":"home_f_17","kind":"activate"},{"entity_id":"home_f_17","kind":"settlement","location_id":"region","owner_id":"f_17"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_17"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_17"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_17"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_17"},{"entity_id":"f_11","kind":"retire"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_17"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_17"},{"entity_id":"f_09","kind":"retire"}]
-145 t_step_08 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Bomon Well (f_15) | causes: t_step_05
  effects: [{"entity_id":"f_18","kind":"activate"},{"entity_id":"f_18","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_15"]},{"entity_id":"home_f_18","kind":"activate"},{"entity_id":"home_f_18","kind":"settlement","location_id":"region","owner_id":"f_18"},{"entity_id":"home_f_15","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_14","kind":"site_owner","owner_id":"f_18"},{"entity_id":"f_15","kind":"retire"}]
-128 t_step_09 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Bolen Gate (f_16), Lumar Gate (f_05) | causes: t_step_06, t_root_f_05
  effects: [{"entity_id":"f_19","kind":"activate"},{"entity_id":"f_19","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_16","f_05"]},{"entity_id":"home_f_19","kind":"activate"},{"entity_id":"home_f_19","kind":"settlement","location_id":"region","owner_id":"f_19"},{"entity_id":"home_f_16","kind":"site_owner","owner_id":"f_19"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_19"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_19"},{"entity_id":"f_16","kind":"retire"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_19"},{"entity_id":"f_05","kind":"retire"}]
-110 t_step_10 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dara Reach (f_12) | causes: t_step_04
  effects: [{"entity_id":"f_20","kind":"activate"},{"entity_id":"f_20","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_20","kind":"activate"},{"entity_id":"home_f_20","kind":"settlement","location_id":"region","owner_id":"f_20"},{"entity_id":"f_21","kind":"activate"},{"entity_id":"f_21","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_21","kind":"activate"},{"entity_id":"home_f_21","kind":"settlement","location_id":"region","owner_id":"f_21"},{"a":"f_12","b":"f_20","delta":-7,"kind":"relationship"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (f_13), Bosen Ruin (f_20) | causes: t_step_04, t_step_10
  effects: [{"a":"f_13","b":"f_20","delta":-33,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zowen Ruin (f_18), Bosen Ruin (f_20) | causes: t_step_08, t_step_10
  effects: [{"a":"f_18","b":"f_20","delta":10,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Fumar Ruin (f_07), Bowen Gate (f_21) | causes: t_step_00, t_step_10
  effects: [{"a":"f_07","b":"f_21","delta":29,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Lulith Well (f_13) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Lulith Well (f_13), Bosen Ruin (f_20) | causes: h_relation_0
  effects: [{"a":"f_13","b":"f_20","delta":42,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Fusen Marsh | -311..-305 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Halith Ruin | -310..-304 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Bovak Well | -293..-247 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_03: Veyvak Gate | -292..-264 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_04: Milith Ruin | -291..-264 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_05: Lumar Gate | -290..-128 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_06: Misil Gate | -289..-179 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_07: Fumar Ruin | -281..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Innerworld | last_origins=Innerworld
f_08: Zosil Ruin | -264..-230 | extinct | parents=f_04, f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_09: Zosen Reach | -247..-162 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_10: Minar Marsh | -247..-179 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_11: Sewen Marsh | -230..-162 | extinct | parents=f_08 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_12: Dara Reach | -213..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_13: Lulith Well | -213..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_14: Fuvak Gate | -213..-196 | extinct | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_15: Bomon Well | -196..-145 | extinct | parents=f_14 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_16: Bolen Gate | -179..-128 | extinct | parents=f_10, f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_17: Mira Well | -162..present | active | parents=f_11, f_09 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_18: Zowen Ruin | -145..present | active | parents=f_15 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_19: Tolith Marsh | -128..present | active | parents=f_16, f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_20: Bosen Ruin | -110..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_21: Bowen Gate | -110..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
precursor: Harin Marsh | -557..-323 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-557 precursor: Human-derived | mode=seed | donors= | events=h_found
-311 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-310 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-293 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-292 f_03: Human-derived | mode=inherit | donors=precursor | events=t_root_f_03
-291 f_04: Human-derived | mode=inherit | donors=precursor | events=t_root_f_04
-290 f_05: Human-derived | mode=inherit | donors=precursor | events=t_root_f_05
-289 f_06: Human-derived | mode=inherit | donors=precursor | events=t_root_f_06
-281 cohort_00: Innerworld | mode=arrival | donors= | events=t_step_00
-281 f_07: Innerworld | mode=inherit | donors=cohort_00 | events=t_step_00
-264 f_08: Human-derived | mode=co_residence | donors=f_04, f_03 | events=t_step_01
-247 f_09: Human-derived | mode=inherit | donors=f_02 | events=t_step_02
-247 f_10: Human-derived | mode=inherit | donors=f_02 | events=t_step_02
-230 f_11: Human-derived | mode=inherit | donors=f_08 | events=t_step_03
-213 f_12: Human-derived | mode=inherit | donors=f_09 | events=t_step_04
-213 f_13: Human-derived | mode=inherit | donors=f_09 | events=t_step_04
-213 f_14: Human-derived | mode=inherit | donors=f_09 | events=t_step_04
-196 f_15: Human-derived | mode=inherit | donors=f_14 | events=t_step_05
-179 f_16: Human-derived | mode=inherit | donors=f_10 | events=t_step_06
-162 f_17: Human-derived | mode=co_residence | donors=f_11, f_09 | events=t_step_07
-145 f_18: Human-derived | mode=inherit | donors=f_15 | events=t_step_08
-128 f_19: Human-derived | mode=co_residence | donors=f_16, f_05 | events=t_step_09
-110 f_20: Human-derived | mode=inherit | donors=f_12 | events=t_step_10
-110 f_21: Human-derived | mode=inherit | donors=f_12 | events=t_step_10
=== CURRENT WORLD ===
Region region: Tolen Ruin
Faction f_07: Fumar Ruin | migrant_confederation | knowledge=
  origins=Innerworld | formation=newcomer_formation | regional_roles=maintenance
Faction f_12: Dara Reach | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=shelter
Faction f_13: Lulith Well | religious_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_17: Mira Well | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=reorganization | regional_roles=shelter
Faction f_18: Zowen Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=Human-derived | formation=reorganization | regional_roles=border_watch
Faction f_19: Tolith Marsh | modified_human_community | knowledge=
  origins=Human-derived | formation=reorganization | regional_roles=maintenance
Faction f_20: Bosen Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_21: Bowen Gate | village_union | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Ancestry f_07: parents=; ancestors=; sources=t_step_00
Ancestry f_12: parents=f_09; ancestors=f_02, f_09; sources=t_step_04, t_root_f_02, t_step_02, t_step_07
Ancestry f_13: parents=f_09; ancestors=f_02, f_09; sources=t_step_04, t_root_f_02, t_step_02, t_step_07
Ancestry f_17: parents=f_11, f_09; ancestors=f_02, f_03, f_04, f_08, f_09, f_11; sources=t_step_07, t_root_f_02, t_step_02, t_root_f_03, t_step_01, t_root_f_04, t_step_03
Ancestry f_18: parents=f_15; ancestors=f_02, f_09, f_14, f_15; sources=t_step_08, t_root_f_02, t_step_02, t_step_07, t_step_04, t_step_05
Ancestry f_19: parents=f_16, f_05; ancestors=f_02, f_05, f_06, f_10, f_16; sources=t_step_09, t_root_f_02, t_step_02, t_root_f_05, t_root_f_06, t_step_06
Ancestry f_20: parents=f_12; ancestors=f_02, f_09, f_12; sources=t_step_10, t_root_f_02, t_step_02, t_step_07, t_step_04
Ancestry f_21: parents=f_12; ancestors=f_02, f_09, f_12; sources=t_step_10, t_root_f_02, t_step_02, t_step_07, t_step_04
Relationship f_07 <-> f_21: 29; sources=h_relation_2
Relationship f_12 <-> f_20: -7; sources=t_step_10
Relationship f_13 <-> f_20: 9; sources=h_relation_0, h_last
Relationship f_18 <-> f_20: 10; sources=h_relation_1
Settlement home_f_02: Zolith | owner=f_17 | region=region | sources=t_root_f_02, t_step_02, t_step_07
Settlement home_f_03: Midor | owner=f_17 | region=region | sources=t_root_f_03, t_step_01, t_step_03, t_step_07
Settlement home_f_04: Veysil | owner=f_17 | region=region | sources=t_root_f_04, t_step_01, t_step_03, t_step_07
Settlement home_f_05: Fufurin | owner=f_19 | region=region | sources=t_root_f_05, t_step_09
Settlement home_f_06: Minamar | owner=f_19 | region=region | sources=t_root_f_06, t_step_06, t_step_09
Settlement home_f_07: Daluwen | owner=f_07 | region=region | sources=t_step_00
Settlement home_f_08: Bowen | owner=f_17 | region=region | sources=t_step_01, t_step_03, t_step_07
Settlement home_f_09: Mizonar | owner=f_17 | region=region | sources=t_step_02, t_step_07
Settlement home_f_10: Veysen | owner=f_19 | region=region | sources=t_step_02, t_step_06, t_step_09
Settlement home_f_11: Semar | owner=f_17 | region=region | sources=t_step_03, t_step_07
Settlement home_f_12: Veylurin | owner=f_12 | region=region | sources=t_step_04
Settlement home_f_13: Dasen | owner=f_13 | region=region | sources=t_step_04
Settlement home_f_14: Tonamon | owner=f_18 | region=region | sources=t_step_04, t_step_05, t_step_08
Settlement home_f_15: Fumon | owner=f_18 | region=region | sources=t_step_05, t_step_08
Settlement home_f_16: Fululen | owner=f_19 | region=region | sources=t_step_06, t_step_09
Settlement home_f_17: Veydor | owner=f_17 | region=region | sources=t_step_07
Settlement home_f_18: Selith | owner=f_18 | region=region | sources=t_step_08
Settlement home_f_19: Bonar | owner=f_19 | region=region | sources=t_step_09
Settlement home_f_20: Sewen | owner=f_20 | region=region | sources=t_step_10
Settlement home_f_21: Bolen | owner=f_21 | region=region | sources=t_step_10
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_failed_0
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
=== BELIEFS ===
Fumar Ruin (f_07; knowledge=):
  [t_step_00; confidence 0.50; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.86; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.83; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_21","delta":29}
  [h_discovery; confidence 0.66; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.63; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_21","score":29}
Dara Reach (f_12; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.35; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.82; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_12","delta":-24}
  [t_step_10; confidence 0.68; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_12","b":"f_20","delta":-7}
  [h_discovery; confidence 0.51; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.84; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_12","b":"f_20","score":-7}
Lulith Well (f_13; knowledge=):
  [t_step_04; confidence 0.85; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.88; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_20","delta":-33}
  [h_discovery; confidence 0.43; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.88; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_20","delta":42}
  [; confidence 0.66; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_20","score":9}
Mira Well (f_17; knowledge=observer_scholarly_term):
  [t_step_07; confidence 0.64; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.43; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.43; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Zowen Ruin (f_18; knowledge=observer_scholarly_term):
  [t_step_08; confidence 0.81; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.56; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_18","b":"f_20","delta":10}
  [h_discovery; confidence 0.35; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.42; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_18","b":"f_20","score":10}
Tolith Marsh (f_19; knowledge=):
  [t_step_09; confidence 0.56; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.41; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Bosen Ruin (f_20; knowledge=observer_scholarly_term):
  [t_step_10; confidence 0.37; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_10; confidence 0.45; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_12","b":"f_20","delta":-7}
  [h_relation_0; confidence 0.87; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_20","delta":-33}
  [h_relation_1; confidence 0.77; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_18","b":"f_20","delta":10}
  [h_discovery; confidence 0.41; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_20","delta":42}
  [; confidence 0.70; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_12","b":"f_20","score":-7}
  [; confidence 0.70; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_20","score":9}
  [; confidence 0.73; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_18","b":"f_20","score":10}
Bowen Gate (f_21; knowledge=):
  [t_step_10; confidence 0.69; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.48; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_21","delta":29}
  [h_discovery; confidence 0.82; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.73; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_21","score":29}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":31,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10","h_response","h_body"],"causal_ratio":1.0,"direct_count":29,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10"],"important_events":31}
```

## enclave_continuity — seed 12

```text
History architecture v1 | generation algorithm v3 | seed 12 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-1","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"adaptation_tension","response_motif":"regional_autonomy","target_factions":6,"topology_family":"enclave_continuity"}
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
-531 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-506 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-496 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-350 h_pressure [SCHISM] Communities with different environmental adaptations separated from the common assembly.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"}]
-339 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body), Havak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Bomisil (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body), Havak (pressure_group), Bomisil (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"}]
-313 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-312 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-311 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-310 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-302 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_04) | causes: t_root_f_04
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_04","b":"f_05","delta":-11,"kind":"relationship"}]
-278 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Veyra Ruin (f_07) | causes: t_step_00
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_07","kind":"retire"}]
-254 t_step_02 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Luvak Well (f_06) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"retire"},{"entity_id":"home_f_06","kind":"retire"},{"hazard":"none","id":"abandoned_f_06","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-230 t_step_03 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Sedor Marsh (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_03","kind":"retire"}]
-206 t_step_04 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","origin_ids":["Unknown"],"source_ids":[]},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Unknown"],"source_ids":["cohort_00"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"}]
-182 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Harin Reach (f_10), Fulen Marsh (f_09) | causes: t_step_04, t_step_03
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"co_residence","origin_ids":["Human-derived","Unknown"],"source_ids":["f_10","f_09"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_09","kind":"retire"}]
-158 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Hamar Reach (f_11) | causes: t_step_05
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived","Unknown"],"source_ids":["f_11"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived","Unknown"],"source_ids":["f_11"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_11","kind":"retire"}]
-134 t_step_07 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Zolen Gate (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-110 t_step_08 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Kemar Marsh (f_12) | causes: t_step_06
  effects: [{"entity_id":"f_12","kind":"retire"},{"entity_id":"home_f_12","kind":"retire"},{"entity_id":"home_f_11","kind":"retire"},{"entity_id":"home_f_10","kind":"retire"},{"entity_id":"home_f_09","kind":"retire"},{"entity_id":"home_f_03","kind":"retire"},{"hazard":"none","id":"abandoned_f_12","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Mirin Reach (f_08) | causes: t_step_02, t_step_01
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_08"},{"kind":"reoccupy","owner_id":"f_08","purpose":"scavenging","ruin_id":"abandoned_f_06","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_04), Selen Reach (f_13) | causes: t_root_f_04, t_step_06
  effects: [{"a":"f_04","b":"f_13","delta":17,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Mirin Reach (f_08), Selen Reach (f_13) | causes: t_step_01, t_step_06
  effects: [{"a":"f_08","b":"f_13","delta":14,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Havak Marsh (f_05), Mirin Reach (f_08) | causes: t_step_00, t_step_01
  effects: [{"a":"f_05","b":"f_08","delta":13,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Selen Reach (f_13) | causes: t_step_06
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_04), Selen Reach (f_13) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_13","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nawen Marsh | -496..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_01: Hador Well | -313..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_02: Zolen Gate | -312..-134 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Sedor Marsh | -311..-230 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Halith Reach | -310..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_05: Havak Marsh | -302..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Luvak Well | -302..-254 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Veyra Ruin | -302..-278 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Mirin Reach | -278..present | active | parents=f_07 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_09: Fulen Marsh | -230..-182 | extinct | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_10: Harin Reach | -206..-182 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=Unknown | last_origins=Unknown
f_11: Hamar Reach | -182..-158 | extinct | parents=f_10, f_09 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived, Unknown | last_origins=Human-derived, Unknown
f_12: Kemar Marsh | -158..-110 | extinct | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived, Unknown | last_origins=Human-derived, Unknown
f_13: Selen Reach | -158..present | active | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=Human-derived, Unknown | last_origins=Human-derived, Unknown
precursor: Dasen Reach | -531..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-531 precursor: Human-derived | mode=seed | donors= | events=h_found
-496 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-313 f_01: Human-derived | mode=seed | donors= | events=t_root_f_01
-312 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-311 f_03: Human-derived | mode=inherit | donors=precursor | events=t_root_f_03
-310 f_04: Human-derived | mode=inherit | donors=precursor | events=t_root_f_04
-302 f_05: Human-derived | mode=inherit | donors=f_04 | events=t_step_00
-302 f_06: Human-derived | mode=inherit | donors=f_04 | events=t_step_00
-302 f_07: Human-derived | mode=inherit | donors=f_04 | events=t_step_00
-278 f_08: Human-derived | mode=inherit | donors=f_07 | events=t_step_01
-230 f_09: Human-derived | mode=inherit | donors=f_03 | events=t_step_03
-206 cohort_00: Unknown | mode=arrival | donors= | events=t_step_04
-206 f_10: Unknown | mode=inherit | donors=cohort_00 | events=t_step_04
-182 f_11: Human-derived, Unknown | mode=co_residence | donors=f_10, f_09 | events=t_step_05
-158 f_12: Human-derived, Unknown | mode=inherit | donors=f_11 | events=t_step_06
-158 f_13: Human-derived, Unknown | mode=inherit | donors=f_11 | events=t_step_06
=== CURRENT WORLD ===
Region region: Namar Marsh
Faction f_00: Nawen Marsh | resource_or_trade_commune | knowledge=
  origins=Human-derived | formation=enclave_continuity | regional_roles=maintenance
Faction f_01: Hador Well | religious_community | knowledge=
  origins=Human-derived | formation=reorganization | regional_roles=archives
Faction f_04: Halith Reach | military_remnant | knowledge=
  origins=Human-derived | formation=direct_successor | regional_roles=border_watch
Faction f_05: Havak Marsh | provincial_council | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_08: Mirin Reach | military_remnant | knowledge=
  origins=Human-derived | formation=reorganization | regional_roles=isolation
Faction f_13: Selen Reach | modified_human_community | knowledge=
  origins=Human-derived, Unknown | formation=fragmentation | regional_roles=archives
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_01: parents=; ancestors=; sources=t_root_f_01
Ancestry f_04: parents=precursor; ancestors=precursor; sources=t_root_f_04, h_found, h_collapse
Ancestry f_05: parents=f_04; ancestors=f_04, precursor; sources=t_step_00, t_root_f_04, h_found, h_collapse
Ancestry f_08: parents=f_07; ancestors=f_04, f_07, precursor; sources=t_step_01, t_root_f_04, t_step_00, h_found, h_collapse
Ancestry f_13: parents=f_11; ancestors=f_03, f_09, f_10, f_11, precursor; sources=t_step_06, t_root_f_03, t_step_03, t_step_05, t_step_04, h_found, h_collapse
Relationship f_04 <-> f_05: -11; sources=t_step_00
Relationship f_04 <-> f_13: -9; sources=h_relation_0, h_last
Relationship f_05 <-> f_08: 13; sources=h_relation_2
Relationship f_08 <-> f_13: 14; sources=h_relation_1
Settlement home_f_00: Dara | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Lusil | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_04: Namon | owner=f_04 | region=region | sources=t_root_f_04
Settlement home_f_05: Veyveynar | owner=f_05 | region=region | sources=t_step_00
Settlement home_f_07: Kesen | owner=f_08 | region=region | sources=t_step_00, t_step_01
Settlement home_f_08: Bohasen | owner=f_08 | region=region | sources=t_step_01
Settlement home_f_13: Kelen | owner=f_13 | region=region | sources=t_step_06
Settlement reused_site: Bosewen | owner=f_08 | region=region | sources=h_reuse
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_07
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_06: administrative_site | occupant=f_08 | region=region | sources=t_step_02, h_reuse
  site_type=records | hazard=none | recorded_use=scavenging
Ruin abandoned_f_12: administrative_site | occupant= | region=region | sources=t_step_08
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_hamlet | occupant= | region=region | sources=h_pressure
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Nawen Marsh (f_00; knowledge=):
  [t_root_f_00; confidence 0.59; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.88; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Hador Well (f_01; knowledge=):
  [t_root_f_01; confidence 0.79; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.51; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.51; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Halith Reach (f_04; knowledge=):
  [t_root_f_04; confidence 0.73; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.78; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.74; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":-11}
  [h_relation_0; confidence 0.77; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_13","delta":17}
  [h_discovery; confidence 0.43; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_13","delta":-26}
  [; confidence 0.90; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":-11}
  [; confidence 0.41; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_13","score":-9}
Havak Marsh (f_05; knowledge=):
  [t_step_00; confidence 0.71; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.59; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.71; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":-11}
  [h_relation_2; confidence 0.80; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_08","delta":13}
  [h_discovery; confidence 0.47; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.84; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":-11}
  [; confidence 0.63; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_08","score":13}
Mirin Reach (f_08; knowledge=):
  [t_step_01; confidence 0.73; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.82; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":14}
  [h_relation_2; confidence 0.40; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_08","delta":13}
  [h_discovery; confidence 0.71; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.51; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_08","score":13}
  [; confidence 0.66; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_13","score":14}
Selen Reach (f_13; knowledge=):
  [t_step_06; confidence 0.65; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_13","delta":17}
  [h_relation_1; confidence 0.58; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_13","delta":14}
  [h_discovery; confidence 0.46; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.72; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_13","delta":-26}
  [; confidence 0.61; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_13","score":-9}
  [; confidence 0.48; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_13","score":14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":26,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","h_response","h_body"],"causal_ratio":1.0,"direct_count":24,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08"],"important_events":26}
```

## rare_bombardment — seed 13

```text
History architecture v1 | generation algorithm v3 | seed 13 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-1","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"orbital_bombardment","precursor_form":"dynastic_crown","pressure_domain":"core_intervention","pressure_motif":"core_quarantine","response_motif":"regional_autonomy","target_factions":7,"topology_family":"consolidation_resplit"}
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
-538 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-513 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-343 h_pressure [DISASTER] Core-associated barriers isolated a district using existing infrastructure. The underlying purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors: Dara Gate (precursor), Bokelith (regional_body) | causes:
  effects: [{"hazard":"restricted","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"quarantine","physical_basis":"existing_barrier_infrastructure","system_id":"deep_core","target_selection_reason":"unknown"}]
-331 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Bokelith (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-325 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Dadamon (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-317 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Bokelith (regional_body), Dadamon (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-305 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-304 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-303 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-302 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-301 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-293 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Sesen Marsh (f_03), Tora Gate (f_04), Nasil Ruin (f_00) | causes: t_root_f_03, t_root_f_04, t_root_f_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_00","kind":"retire"}]
-263 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Sesen Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_02","kind":"retire"}]
-232 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kesil Ruin (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_05","b":"f_07","delta":-9,"kind":"relationship"}]
-202 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Mirin Reach (f_08), Bolith Well (f_07), Lulith Gate (f_01) | causes: t_step_02, t_step_02, t_root_f_01
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_08","kind":"retire"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_07","kind":"retire"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_01","kind":"retire"}]
-171 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kesil Ruin (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_05"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_05","kind":"retire"}]
-141 t_step_05 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Fura Marsh (f_13), Bowen Reach (f_06) | causes: t_step_04, t_step_01
  effects: [{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_13"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"home_f_13","kind":"site_owner","owner_id":"f_14"},{"entity_id":"f_13","kind":"retire"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_14"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_14"},{"entity_id":"f_06","kind":"retire"}]
-115 h_legacy_orbital [DISASTER] An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown.
  scope=local | objective cause_domain=observer_legacy
  actors:  | causes:
  effects: [{"activation_reason":"unknown","id":"legacy_orbital","intent":"unknown","kind":"system_trace","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","system_id":"fleet_assets","target_selection_reason":"unknown"}]
-110 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_10) | causes: t_step_03
  effects: [{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_10"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_10"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"a":"f_10","b":"f_15","delta":-9,"kind":"relationship"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_10), Dador Gate (f_11) | causes: t_step_03, t_step_04
  effects: [{"a":"f_10","b":"f_11","delta":30,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_10), Veylen Reach (f_16) | causes: t_step_03, t_step_06
  effects: [{"a":"f_10","b":"f_16","delta":11,"kind":"relationship"}]
-24 h_relation_2 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (f_09), Dador Gate (f_11) | causes: t_step_02, t_step_04
  effects: [{"a":"f_09","b":"f_11","delta":-26,"kind":"relationship"},{"hazard":"structural","id":"watchpost_2","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Nanar Ruin (f_10) | causes: t_step_03
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_10), Dador Gate (f_11) | causes: h_relation_0
  effects: [{"a":"f_10","b":"f_11","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nasil Ruin | -305..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Lulith Gate | -304..-202 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Sesen Well | -303..-263 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Sesen Marsh | -302..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Tora Gate | -301..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_05: Kesil Ruin | -293..-171 | extinct | parents=f_03, f_04, f_00 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Bowen Reach | -263..-141 | extinct | parents=f_02 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_07: Bolith Well | -232..-202 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Mirin Reach | -232..-202 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Minar Gate | -232..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_10: Nanar Ruin | -202..present | active | parents=f_08, f_07, f_01 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_11: Dador Gate | -171..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_12: Dalith Well | -171..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_13: Fura Marsh | -171..-141 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_14: Selen Ruin | -141..present | active | parents=f_13, f_06 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_15: Kelith Marsh | -110..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_16: Veylen Reach | -110..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
precursor: Dara Gate | -538..-317 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-538 precursor: Human-derived | mode=seed | donors= | events=h_found
-305 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-304 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-303 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-302 f_03: Human-derived | mode=inherit | donors=precursor | events=t_root_f_03
-301 f_04: Human-derived | mode=inherit | donors=precursor | events=t_root_f_04
-293 f_05: Human-derived | mode=inherit | donors=f_03 | events=t_step_00
-263 f_06: Human-derived | mode=inherit | donors=f_02 | events=t_step_01
-232 f_07: Human-derived | mode=inherit | donors=f_05 | events=t_step_02
-232 f_08: Human-derived | mode=inherit | donors=f_05 | events=t_step_02
-232 f_09: Human-derived | mode=inherit | donors=f_05 | events=t_step_02
-202 f_10: Human-derived | mode=inherit | donors=f_08 | events=t_step_03
-171 f_11: Human-derived | mode=inherit | donors=f_05 | events=t_step_04
-171 f_12: Human-derived | mode=inherit | donors=f_05 | events=t_step_04
-171 f_13: Human-derived | mode=inherit | donors=f_05 | events=t_step_04
-141 f_14: Human-derived | mode=inherit | donors=f_13 | events=t_step_05
-110 f_15: Human-derived | mode=inherit | donors=f_10 | events=t_step_06
-110 f_16: Human-derived | mode=inherit | donors=f_10 | events=t_step_06
=== CURRENT WORLD ===
Region region: Hara Ruin
Faction f_09: Minar Gate | village_union | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Faction f_10: Nanar Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=Human-derived | formation=merger | regional_roles=isolation
Faction f_11: Dador Gate | military_remnant | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=isolation
Faction f_12: Dalith Well | provincial_council | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=shelter
Faction f_14: Selen Ruin | religious_community | knowledge=
  origins=Human-derived | formation=merger | regional_roles=shelter
Faction f_15: Kelith Marsh | regional_commune | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=local_exchange
Faction f_16: Veylen Reach | trading_house | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=archives
Ancestry f_09: parents=f_05; ancestors=f_00, f_03, f_04, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_03, t_root_f_04, t_step_04, h_found, h_collapse
Ancestry f_10: parents=f_08, f_07, f_01; ancestors=f_00, f_01, f_03, f_04, f_05, f_07, f_08, precursor; sources=t_step_03, t_root_f_00, t_step_00, t_root_f_01, t_root_f_03, t_root_f_04, t_step_04, t_step_02, h_found, h_collapse
Ancestry f_11: parents=f_05; ancestors=f_00, f_03, f_04, f_05, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_03, t_root_f_04, h_found, h_collapse
Ancestry f_12: parents=f_05; ancestors=f_00, f_03, f_04, f_05, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_03, t_root_f_04, h_found, h_collapse
Ancestry f_14: parents=f_13, f_06; ancestors=f_00, f_02, f_03, f_04, f_05, f_06, f_13, precursor; sources=t_step_05, t_root_f_00, t_step_00, t_root_f_02, t_step_01, t_root_f_03, t_root_f_04, t_step_04, h_found, h_collapse
Ancestry f_15: parents=f_10; ancestors=f_00, f_01, f_03, f_04, f_05, f_07, f_08, f_10, precursor; sources=t_step_06, t_root_f_00, t_step_00, t_root_f_01, t_step_03, t_root_f_03, t_root_f_04, t_step_04, t_step_02, h_found, h_collapse
Ancestry f_16: parents=f_10; ancestors=f_00, f_01, f_03, f_04, f_05, f_07, f_08, f_10, precursor; sources=t_step_06, t_root_f_00, t_step_00, t_root_f_01, t_step_03, t_root_f_03, t_root_f_04, t_step_04, t_step_02, h_found, h_collapse
Relationship f_09 <-> f_11: -26; sources=h_relation_2
Relationship f_10 <-> f_11: 4; sources=h_relation_0, h_last
Relationship f_10 <-> f_15: -9; sources=t_step_06
Relationship f_10 <-> f_16: 11; sources=h_relation_1
Settlement home_f_00: Luvak | owner=f_11 | region=region | sources=t_root_f_00, t_step_00, t_step_04
Settlement home_f_01: Senar | owner=f_10 | region=region | sources=t_root_f_01, t_step_03
Settlement home_f_02: Fulith | owner=f_14 | region=region | sources=t_root_f_02, t_step_01, t_step_05
Settlement home_f_03: Harin | owner=f_11 | region=region | sources=t_root_f_03, t_step_00, t_step_04
Settlement home_f_04: Sehalith | owner=f_11 | region=region | sources=t_root_f_04, t_step_00, t_step_04
Settlement home_f_05: Hanalen | owner=f_11 | region=region | sources=t_step_00, t_step_04
Settlement home_f_06: Bomirin | owner=f_14 | region=region | sources=t_step_01, t_step_05
Settlement home_f_07: Zonar | owner=f_10 | region=region | sources=t_step_02, t_step_03
Settlement home_f_08: Misevak | owner=f_10 | region=region | sources=t_step_02, t_step_03
Settlement home_f_09: Tomilen | owner=f_09 | region=region | sources=t_step_02
Settlement home_f_10: Fubovak | owner=f_10 | region=region | sources=t_step_03
Settlement home_f_11: Veyra | owner=f_11 | region=region | sources=t_step_04
Settlement home_f_12: Lumon | owner=f_12 | region=region | sources=t_step_04
Settlement home_f_13: Sebovak | owner=f_14 | region=region | sources=t_step_04, t_step_05
Settlement home_f_14: Kesera | owner=f_14 | region=region | sources=t_step_05
Settlement home_f_15: Serin | owner=f_15 | region=region | sources=t_step_06
Settlement home_f_16: Sezora | owner=f_16 | region=region | sources=t_step_06
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: legacy_damage_site | occupant= | region=region | sources=h_pressure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_2: watchtower | occupant= | region=region | sources=h_relation_2
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"observer_legacy","id":"legacy_orbital","intent":"unknown","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","scope":"local","source_event_ids":["h_legacy_orbital"],"system_id":"fleet_assets","target_selection_reason":"unknown"}
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"primary_system","intent":"unknown","operation":"quarantine","physical_basis":"existing_barrier_infrastructure","scope":"local","source_event_ids":["h_pressure"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Minar Gate (f_09; knowledge=):
  [t_step_02; confidence 0.90; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.47; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.46; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-26}
  [h_discovery; confidence 0.83; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.57; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":-26}
Nanar Ruin (f_10; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.37; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.54; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.54; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.36; interpretation] Some suspect an Observer-era sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [t_step_06; confidence 0.66; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":-9}
  [h_relation_0; confidence 0.38; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":30}
  [h_relation_1; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_16","delta":11}
  [h_discovery; confidence 0.60; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.87; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":-26}
  [; confidence 0.85; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_11","score":4}
  [; confidence 0.70; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":-9}
  [; confidence 0.74; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_16","score":11}
Dador Gate (f_11; knowledge=):
  [t_step_04; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.70; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.88; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":30}
  [h_relation_2; confidence 0.56; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-26}
  [h_discovery; confidence 0.45; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.35; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_11","delta":-26}
  [; confidence 0.44; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":-26}
  [; confidence 0.59; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_11","score":4}
Dalith Well (f_12; knowledge=):
  [t_step_04; confidence 0.40; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.50; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.49; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Selen Ruin (f_14; knowledge=):
  [t_step_05; confidence 0.50; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.78; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.65; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Kelith Marsh (f_15; knowledge=):
  [t_step_06; confidence 0.81; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.40; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [t_step_06; confidence 0.62; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":-9}
  [h_discovery; confidence 0.48; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.40; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":-9}
Veylen Reach (f_16; knowledge=):
  [t_step_06; confidence 0.61; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Some attribute district barriers to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.66; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.37; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_16","delta":11}
  [h_discovery; confidence 0.37; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.70; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_16","score":11}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":23,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_orbital","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response"],"causal_ratio":0.958333333333333,"direct_count":22,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_orbital","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":24}
```

## polycentric_succession — seed 17

```text
History architecture v1 | generation algorithm v3 | seed 17 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-1","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"chemical_exposure","response_motif":"regional_autonomy","target_factions":7,"topology_family":"polycentric_succession"}
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
-552 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","origin_ids":["Human-derived"],"source_ids":[]}]
-527 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-360 h_pressure [DISASTER] Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified.
  scope=regional | objective cause_domain=natural
  actors: Sewen Reach (precursor), Milurin (regional_body) | causes: h_body
  effects: [{"hazard":"chemical","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"chemical_exposure_site","site_type":"chemical"}]
-350 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Milurin (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-341 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Kemar (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Milurin (regional_body), Kemar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-320 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-319 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-318 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-317 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-308 t_step_00 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Luwen Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_01","kind":"retire"}]
-289 t_step_01 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Todor Ruin (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_02","b":"f_05","delta":14,"kind":"relationship"}]
-269 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Todor Ruin (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_02"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_02","kind":"retire"}]
-249 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (f_07) | causes: t_step_02
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_07"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"}]
-229 t_step_04 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Nawen Marsh (f_11), Kevak Gate (f_09) | causes: t_step_03, t_step_03
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_11","f_09"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_11","kind":"retire"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_09","kind":"retire"}]
-209 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zovak Gate (f_08), Bovak Well (f_06) | causes: t_step_02, t_step_02
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_08","f_06"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_08","kind":"retire"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_06","kind":"retire"}]
-190 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zomar Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_00"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_14"},{"entity_id":"f_00","kind":"retire"}]
-170 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Namon Reach (f_12) | causes: t_step_04
  effects: [{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"f_17","kind":"activate"},{"entity_id":"f_17","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_12"]},{"entity_id":"home_f_17","kind":"activate"},{"entity_id":"home_f_17","kind":"settlement","location_id":"region","owner_id":"f_17"},{"entity_id":"home_f_12","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_16"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_16"},{"entity_id":"f_12","kind":"retire"}]
-150 t_step_08 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kelen Marsh (f_10), Lulith Marsh (f_16), Serin Well (f_13) | causes: t_step_03, t_step_07, t_step_05
  effects: [{"entity_id":"f_18","kind":"activate"},{"entity_id":"f_18","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_10"]},{"entity_id":"home_f_18","kind":"activate"},{"entity_id":"home_f_18","kind":"settlement","location_id":"region","owner_id":"f_18"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_18"},{"entity_id":"f_10","kind":"retire"},{"entity_id":"home_f_16","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_12","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_18"},{"entity_id":"f_16","kind":"retire"},{"entity_id":"home_f_13","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_18"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_18"},{"entity_id":"f_13","kind":"retire"}]
-130 t_step_09 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Borin Well (f_17) | causes: t_step_07
  effects: [{"entity_id":"f_19","kind":"activate"},{"entity_id":"f_19","kind":"population","mode":"inherit","origin_ids":["Human-derived"],"source_ids":["f_17"]},{"entity_id":"home_f_19","kind":"activate"},{"entity_id":"home_f_19","kind":"settlement","location_id":"region","owner_id":"f_19"},{"a":"f_17","b":"f_19","delta":19,"kind":"relationship"}]
-110 t_step_10 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (f_04), Dasil Marsh (f_14) | causes: t_step_00, t_step_06
  effects: [{"entity_id":"f_20","kind":"activate"},{"entity_id":"f_20","kind":"population","mode":"co_residence","origin_ids":["Human-derived"],"source_ids":["f_04","f_14"]},{"entity_id":"home_f_20","kind":"activate"},{"entity_id":"home_f_20","kind":"settlement","location_id":"region","owner_id":"f_20"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_20"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_20"},{"entity_id":"f_04","kind":"retire"},{"entity_id":"home_f_14","kind":"site_owner","owner_id":"f_20"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_20"},{"entity_id":"f_14","kind":"retire"}]
-28 h_relation_0 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Miwen Ruin (f_15), Bosil Well (f_19) | causes: t_step_06, t_step_09
  effects: [{"a":"f_15","b":"f_19","delta":26,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Luvak Reach (f_05), Borin Well (f_17) | causes: t_step_01, t_step_07
  effects: [{"a":"f_05","b":"f_17","delta":10,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veywen Ruin (f_03), Milith Marsh (f_18) | causes: t_root_f_03, t_step_08
  effects: [{"a":"f_03","b":"f_18","delta":13,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Borin Well (f_17) | causes: t_step_07
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Miwen Ruin (f_15), Bosil Well (f_19) | causes: h_relation_0
  effects: [{"a":"f_15","b":"f_19","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zomar Marsh | -320..-190 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_01: Luwen Gate | -319..-308 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_02: Todor Ruin | -318..-269 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_03: Veywen Ruin | -317..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_04: Kelith Ruin | -308..-110 | extinct | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_05: Luvak Reach | -289..present | active | parents=f_02 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_06: Bovak Well | -269..-209 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_07: Zowen Well | -269..-249 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_08: Zovak Gate | -269..-209 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_09: Kevak Gate | -249..-229 | extinct | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_10: Kelen Marsh | -249..-150 | extinct | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_11: Nawen Marsh | -249..-229 | extinct | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_12: Namon Reach | -229..-170 | extinct | parents=f_11, f_09 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_13: Serin Well | -209..-150 | extinct | parents=f_08, f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=Human-derived | last_origins=Human-derived
f_14: Dasil Marsh | -190..-110 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_15: Miwen Ruin | -190..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_16: Lulith Marsh | -170..-150 | extinct | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_17: Borin Well | -170..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_18: Milith Marsh | -150..present | active | parents=f_10, f_16, f_13 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_19: Bosil Well | -130..present | active | parents=f_17 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
f_20: Veylith Well | -110..present | active | parents=f_04, f_14 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
precursor: Sewen Reach | -552..-332 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=Human-derived | last_origins=Human-derived
=== POPULATION PROVENANCE (distinct from political parents) ===
-552 precursor: Human-derived | mode=seed | donors= | events=h_found
-320 f_00: Human-derived | mode=inherit | donors=precursor | events=t_root_f_00
-319 f_01: Human-derived | mode=inherit | donors=precursor | events=t_root_f_01
-318 f_02: Human-derived | mode=inherit | donors=precursor | events=t_root_f_02
-317 f_03: Human-derived | mode=inherit | donors=precursor | events=t_root_f_03
-308 f_04: Human-derived | mode=inherit | donors=f_01 | events=t_step_00
-289 f_05: Human-derived | mode=inherit | donors=f_02 | events=t_step_01
-269 f_06: Human-derived | mode=inherit | donors=f_02 | events=t_step_02
-269 f_07: Human-derived | mode=inherit | donors=f_02 | events=t_step_02
-269 f_08: Human-derived | mode=inherit | donors=f_02 | events=t_step_02
-249 f_09: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-249 f_10: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-249 f_11: Human-derived | mode=inherit | donors=f_07 | events=t_step_03
-229 f_12: Human-derived | mode=co_residence | donors=f_11, f_09 | events=t_step_04
-209 f_13: Human-derived | mode=co_residence | donors=f_08, f_06 | events=t_step_05
-190 f_14: Human-derived | mode=inherit | donors=f_00 | events=t_step_06
-190 f_15: Human-derived | mode=inherit | donors=f_00 | events=t_step_06
-170 f_16: Human-derived | mode=inherit | donors=f_12 | events=t_step_07
-170 f_17: Human-derived | mode=inherit | donors=f_12 | events=t_step_07
-150 f_18: Human-derived | mode=inherit | donors=f_10 | events=t_step_08
-130 f_19: Human-derived | mode=inherit | donors=f_17 | events=t_step_09
-110 f_20: Human-derived | mode=co_residence | donors=f_04, f_14 | events=t_step_10
=== CURRENT WORLD ===
Region region: Nawen Well
Faction f_03: Veywen Ruin | resource_or_trade_commune | knowledge=
  origins=Human-derived | formation=direct_successor | regional_roles=archives
Faction f_05: Luvak Reach | breakaway_clan | knowledge=
  origins=Human-derived | formation=migration_settlement | regional_roles=local_exchange
Faction f_15: Miwen Ruin | regional_commune | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=shelter
Faction f_17: Borin Well | refugee_community | knowledge=
  origins=Human-derived | formation=fragmentation | regional_roles=border_watch
Faction f_18: Milith Marsh | modified_human_community | knowledge=
  origins=Human-derived | formation=merger | regional_roles=shelter
Faction f_19: Bosil Well | resource_or_trade_commune | knowledge=
  origins=Human-derived | formation=migration_settlement | regional_roles=local_exchange
Faction f_20: Veylith Well | religious_community | knowledge=
  origins=Human-derived | formation=merger | regional_roles=shelter
Ancestry f_03: parents=precursor; ancestors=precursor; sources=t_root_f_03, h_found, h_collapse
Ancestry f_05: parents=f_02; ancestors=f_02, precursor; sources=t_step_01, t_root_f_02, t_step_02, h_found, h_collapse
Ancestry f_15: parents=f_00; ancestors=f_00, precursor; sources=t_step_06, t_root_f_00, h_found, h_collapse
Ancestry f_17: parents=f_12; ancestors=f_02, f_07, f_09, f_11, f_12, precursor; sources=t_step_07, t_root_f_02, t_step_02, t_step_03, t_step_04, h_found, h_collapse
Ancestry f_18: parents=f_10, f_16, f_13; ancestors=f_02, f_06, f_07, f_08, f_09, f_10, f_11, f_12, f_13, f_16, precursor; sources=t_step_08, t_root_f_02, t_step_02, t_step_05, t_step_03, t_step_04, t_step_07, h_found, h_collapse
Ancestry f_19: parents=f_17; ancestors=f_02, f_07, f_09, f_11, f_12, f_17, precursor; sources=t_step_09, t_root_f_02, t_step_02, t_step_03, t_step_04, t_step_07, h_found, h_collapse
Ancestry f_20: parents=f_04, f_14; ancestors=f_00, f_01, f_04, f_14, precursor; sources=t_step_10, t_root_f_00, t_step_06, t_root_f_01, t_step_00, h_found, h_collapse
Relationship f_03 <-> f_18: 13; sources=h_relation_2
Relationship f_05 <-> f_17: 10; sources=h_relation_1
Relationship f_15 <-> f_19: 0; sources=h_relation_0, h_last
Relationship f_17 <-> f_19: 19; sources=t_step_09
Settlement home_f_00: Kelulen | owner=f_20 | region=region | sources=t_root_f_00, t_step_06, t_step_10
Settlement home_f_01: Danar | owner=f_20 | region=region | sources=t_root_f_01, t_step_00, t_step_10
Settlement home_f_02: Dasera | owner=f_18 | region=region | sources=t_root_f_02, t_step_02, t_step_05, t_step_08
Settlement home_f_03: Zosil | owner=f_03 | region=region | sources=t_root_f_03
Settlement home_f_04: Lufumar | owner=f_20 | region=region | sources=t_step_00, t_step_10
Settlement home_f_05: Kelusil | owner=f_05 | region=region | sources=t_step_01
Settlement home_f_06: Danarin | owner=f_18 | region=region | sources=t_step_02, t_step_05, t_step_08
Settlement home_f_07: Zoveymon | owner=f_18 | region=region | sources=t_step_02, t_step_03, t_step_04, t_step_07, t_step_08
Settlement home_f_08: Nadamar | owner=f_18 | region=region | sources=t_step_02, t_step_05, t_step_08
Settlement home_f_09: Zovak | owner=f_18 | region=region | sources=t_step_03, t_step_04, t_step_07, t_step_08
Settlement home_f_10: Dalen | owner=f_18 | region=region | sources=t_step_03, t_step_08
Settlement home_f_11: Bofumon | owner=f_18 | region=region | sources=t_step_03, t_step_04, t_step_07, t_step_08
Settlement home_f_12: Hafurin | owner=f_18 | region=region | sources=t_step_04, t_step_07, t_step_08
Settlement home_f_13: Fulen | owner=f_18 | region=region | sources=t_step_05, t_step_08
Settlement home_f_14: Dasedor | owner=f_20 | region=region | sources=t_step_06, t_step_10
Settlement home_f_15: Tolunar | owner=f_15 | region=region | sources=t_step_06
Settlement home_f_16: Nador | owner=f_18 | region=region | sources=t_step_07, t_step_08
Settlement home_f_17: Zowen | owner=f_17 | region=region | sources=t_step_07
Settlement home_f_18: Tozolith | owner=f_18 | region=region | sources=t_step_08
Settlement home_f_19: Tora | owner=f_19 | region=region | sources=t_step_09
Settlement home_f_20: Fumirin | owner=f_20 | region=region | sources=t_step_10
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: chemical_exposure_site | occupant= | region=region | sources=h_pressure
  site_type=chemical | hazard=chemical | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Veywen Ruin (f_03; knowledge=):
  [t_root_f_03; confidence 0.74; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.40; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_18","delta":13}
  [h_discovery; confidence 0.40; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.89; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_18","score":13}
Luvak Reach (f_05; knowledge=):
  [t_step_01; confidence 0.36; legitimacy] Our recorded formation was migration_settlement. Our offices continue an older political lineage. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.76; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.63; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":14}
  [h_relation_1; confidence 0.69; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_17","delta":10}
  [h_discovery; confidence 0.60; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.64; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_17","score":10}
Miwen Ruin (f_15; knowledge=):
  [t_step_06; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.43; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_19","delta":26}
  [h_discovery; confidence 0.48; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.69; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_19","delta":-26}
  [; confidence 0.44; interpretation] Current obligations remain unsettled.
    reference_scope=present | evidence={"a":"f_15","b":"f_19","score":0}
Borin Well (f_17; knowledge=):
  [t_step_07; confidence 0.52; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_09; confidence 0.83; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_17","b":"f_19","delta":19}
  [h_relation_1; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_17","delta":10}
  [h_discovery; confidence 0.59; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.82; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_17","score":10}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_17","b":"f_19","score":19}
Milith Marsh (f_18; knowledge=):
  [t_step_08; confidence 0.44; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_18","delta":13}
  [h_discovery; confidence 0.63; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.72; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_18","score":13}
Bosil Well (f_19; knowledge=):
  [t_step_09; confidence 0.39; legitimacy] Our recorded formation was migration_settlement. Our offices continue an older political lineage. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_09; confidence 0.67; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_17","b":"f_19","delta":19}
  [h_relation_0; confidence 0.35; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_19","delta":26}
  [h_discovery; confidence 0.59; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.52; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_19","delta":-26}
  [; confidence 0.75; interpretation] Current obligations remain unsettled.
    reference_scope=present | evidence={"a":"f_15","b":"f_19","score":0}
  [; confidence 0.49; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_17","b":"f_19","score":19}
Veylith Well (f_20; knowledge=):
  [t_step_10; confidence 0.79; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.84; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.43; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":26,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10","h_response","h_body"],"causal_ratio":1.0,"direct_count":24,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","t_step_09","t_step_10"],"important_events":26}
```
