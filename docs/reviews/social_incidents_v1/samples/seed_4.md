# Seed 4 — incident_autonomous_machine_conflict

```text
History architecture v2 | generation algorithm v3 | seed 4 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"late_fragmentation"}
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
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
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
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-314 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-95 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zomar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_01"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_01","f_02","f_03"],"untracked_template_ids":[]}]
-89 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_02","b":"f_04","delta":-13,"kind":"relationship"}]
-82 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Halith Gate (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_06","f_07"],"untracked_template_ids":[]}]
-75 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fulith Reach (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_03","b":"f_08","delta":-24,"kind":"relationship"}]
-69 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dalith Reach (f_04) | causes: t_step_01
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_10"],"untracked_template_ids":[]}]
-47 s_00_00_autonomous_machine_conflict [SOCIAL_INCIDENT] Local autonomous machines fought residents and damaged a service site. Their manufacture and relationship to ancient systems are unclassified; no Core or Observer motive is asserted.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"hazard":"restricted","id":"s_damage_0","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_02"}]
-46 s_00_01_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00, s_00_00_autonomous_machine_conflict
  effects: [{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_02"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02), Fulith Reach (f_03) | causes: t_step_00, t_step_00
  effects: [{"a":"f_02","b":"f_03","delta":-20,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Nalith Ruin (f_08), Nasil Marsh (f_09) | causes: t_step_03, t_step_03
  effects: [{"a":"f_08","b":"f_09","delta":-27,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] Erosion exposed a sealed object; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Misen Ruin (f_06) | causes: t_step_02
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"sealed_object_in_erosion","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02), Fulith Reach (f_03) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_03","delta":29,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zomar Ruin | -314..-95 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Furin Well | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Furin Gate | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Fulith Reach | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Dalith Reach | -89..-69 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Halith Gate | -89..-82 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Misen Ruin | -82..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Fulith Well | -82..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Nalith Ruin | -75..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Nasil Marsh | -75..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Bosil Well | -69..present | active | parents=f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Torin Marsh | -510..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-510 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-314 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-95 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-89 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-89 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-82 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-82 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-75 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-75 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-69 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-326 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-95 f_00: absorbed | absorbed_into=f_01, f_02, f_03 | untracked_strata= | events=t_step_00
-82 f_05: absorbed | absorbed_into=f_06, f_07 | untracked_strata= | events=t_step_02
-69 f_04: absorbed | absorbed_into=f_10 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_02","source_event_ids":["s_00_00_autonomous_machine_conflict"],"year":-47}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_02","source_event_ids":["s_00_00_autonomous_machine_conflict"],"year":-47}
Social record: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_02","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Region region: Lunar Gate
Faction f_01: Furin Well | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=reformer/institution/preserve | interpretation=ritual/rupture | sources=t_step_00, h_collapse
  society patterns: Borrowed Offices, Ritual Stewardship
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Furin Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/ritual/preserve | interpretation=skeptical/continuity | sources=t_step_00
  society patterns: Boundary Watch, Local Mandate
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Fulith Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/locality/withdraw | interpretation=ritual/grievance | sources=t_step_00, t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Closed Roads, Local Mandate
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Misen Ruin | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=breakaway/exchange/rebuild | interpretation=technical/opportunity | sources=t_step_02, h_discovery
  society patterns: Borrowed Offices, Route Commonwealth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Fulith Well | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/kin/rebuild | interpretation=pragmatic/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Maintenance Covenant
  Beauty Against Ruin — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Nalith Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/craft/adapt | interpretation=technical/continuity | sources=t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Maintenance Covenant, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Nasil Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/ritual/withdraw | interpretation=technical/continuity | sources=t_step_03
  society patterns: Boundary Watch, Closed Roads, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Bosil Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/refuge/rebuild | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Local Mandate, Maintenance Covenant, Mutual Obligation
  Beauty Against Ruin — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=adaptive:rebuild, role:maintenance
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_01: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_02: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_03: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_06: parents=f_05; ancestors=f_00, f_02, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_07: parents=f_05; ancestors=f_00, f_02, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_08: parents=f_03; ancestors=f_00, f_03, precursor; sources=t_step_03, t_root_f_00, t_step_00, h_found, h_collapse
Ancestry f_09: parents=f_03; ancestors=f_00, f_03, precursor; sources=t_step_03, t_root_f_00, t_step_00, h_found, h_collapse
Ancestry f_10: parents=f_04; ancestors=f_00, f_02, f_04, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Relationship f_02 <-> f_03: 9; sources=h_relation_0, h_last
Relationship f_03 <-> f_08: -24; sources=t_step_03
Relationship f_08 <-> f_09: -27; sources=h_relation_1
Settlement home_f_00: Veydamar | owner=f_01 | region=region | sources=t_root_f_00, t_step_00
Settlement home_f_01: Darin | owner=f_01 | region=region | sources=t_step_00
Settlement home_f_02: Ketolith | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Miwen | owner=f_03 | region=region | sources=t_step_00
Settlement home_f_04: Kevak | owner=f_10 | region=region | sources=t_step_01, t_step_04
Settlement home_f_05: Nafusil | owner=f_06 | region=region | sources=t_step_01, t_step_02
Settlement home_f_06: Nalen | owner=f_06 | region=region | sources=t_step_02
Settlement home_f_07: Kebora | owner=f_07 | region=region | sources=t_step_02
Settlement home_f_08: Zofulith | owner=f_08 | region=region | sources=t_step_03
Settlement home_f_09: Fura | owner=f_09 | region=region | sources=t_step_03
Settlement home_f_10: Bosen | owner=f_10 | region=region | sources=t_step_04
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin s_damage_0: legacy_damage_site | occupant= | region=region | sources=s_00_00_autonomous_machine_conflict
  site_type=legacy | hazard=restricted | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: sealed_object_in_erosion | origin=unknown | sources=h_discovery
=== BELIEFS ===
Furin Well (f_01; knowledge=):
  [t_step_00; confidence 0.40; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.88; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.62; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
Furin Gate (f_02; knowledge=):
  [t_step_00; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered withdrawn garrisons and displaced households. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.39; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.77; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.62; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.35; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
Fulith Reach (f_03; knowledge=):
  [t_step_00; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as a failure of obligations people still argue about, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_0; confidence 0.50; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.83; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.41; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.69; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
  [; confidence 0.40; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
Misen Ruin (f_06; knowledge=):
  [t_step_02; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_07; knowledge=):
  [t_step_02; confidence 0.38; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Nalith Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.55; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_1; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.75; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.62; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
  [; confidence 0.43; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Nasil Marsh (f_09; knowledge=):
  [t_step_03; confidence 0.47; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.60; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.50; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Bosil Well (f_10; knowledge=):
  [t_step_04; confidence 0.59; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.41; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_autonomous_machine_conflict","s_00_01_machine_safety_reform","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_autonomous_machine_conflict","s_00_01_machine_safety_reform","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

## Furin Well (f_01)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions"
	],
	"doctrine_intensities": {
		"continuity": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"preserve_institutions"
			],
			"display_name": "Doctrine of Continuity",
			"fears": [
				"social_collapse"
			],
			"goal_candidates": [
				{
					"desire": "preserve_institutions",
					"explanation": "Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.",
					"id": "preserve_institutions"
				}
			],
			"id": "continuity",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
				"id": "continuity",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"taboos": [
				"gratuitous_institutional_destruction"
			],
			"values": [
				"duty",
				"institutional_continuity",
				"record_preservation"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"maintenance_covenant",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"h_collapse"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:religious_community": [
			{
				"detail": "religious_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:maintenance": [
			{
				"detail": "maintenance",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00",
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_00"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_01"
			}
		]
	},
	"faction_id": "f_01",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_00",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:religious_community",
			"role:maintenance",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:religious_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:religious_community": [
					{
						"detail": "religious_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
			"id": "continuity",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 2
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"tension_tags": [
				"anti_authority"
			],
			"value_tags": [
				"duty",
				"institutional_continuity"
			]
		},
		{
			"category": "memory",
			"display_name": "Ritual Stewardship",
			"id": "ritual_stewardship",
			"provenance": {
				"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
				"id": "ritual_stewardship",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:religious_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:religious_community": [
						{
							"detail": "religious_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"tension_tags": [
				"ritual_desecration"
			],
			"value_tags": [
				"ritualism",
				"memory_preservation"
			]
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"ritual_desecration"
	],
	"value_tags": [
		"duty",
		"institutional_continuity",
		"memory_preservation",
		"record_preservation",
		"ritualism"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Furin Gate (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"renew_institutions"
	],
	"doctrine_intensities": {
		"radical_impermanence": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"renew_institutions"
			],
			"display_name": "Radical Impermanence",
			"fears": [
				"institutional_stagnation"
			],
			"goal_candidates": [
				{
					"desire": "renew_institutions",
					"explanation": "Consider renew institutions as a future social priority; no target, capability or completed action is asserted.",
					"id": "renew_institutions"
				}
			],
			"id": "radical_impermanence",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
				"id": "radical_impermanence",
				"kind": "doctrine",
				"matched_preferences": [
					"identity:breakaway"
				],
				"matched_required": [
					"formation:fragmentation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"formation:fragmentation": [
						{
							"detail": "fragmentation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "identity.continuity_stance"
						}
					]
				}
			},
			"taboos": [
				"unquestioned_hereditary_authority"
			],
			"values": [
				"institutional_reform",
				"adaptability"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"measured_doubt",
		"no_more_masters",
		"pure_flesh",
		"radical_impermanence",
		"silent_circuit",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:autonomous_machine_conflict": [
			{
				"detail": "autonomous_machine_conflict",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:machine_safety_reform": [
			{
				"detail": "machine_safety_reform",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"history:cooperation": [
			{
				"detail": "29",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_harm_memory": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_harm_memory",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_history:practice:machine_harm_memory"
			}
		],
		"history:recent_machine_hostility": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:machine_war": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_02"
			}
		]
	},
	"faction_id": "f_02",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_00"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:village_union",
			"role:border_watch",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:border_watch",
				"event:border_dispute"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"event:border_dispute": [
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "event.narrative_key"
					}
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
			"id": "local_mandate",
			"kind": "society_trait",
			"matched_preferences": [
				"life:village_union"
			],
			"matched_required": [
				"structure:local_settlement",
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "present.settlements:home_f_02"
					}
				]
			}
		},
		{
			"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
			"id": "radical_impermanence",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:breakaway"
			],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"formation:fragmentation": [
					{
						"detail": "fragmentation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "identity.continuity_stance"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 2
	},
	"society_traits": [
		{
			"category": "boundaries",
			"display_name": "Boundary Watch",
			"id": "boundary_watch",
			"provenance": {
				"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
				"id": "boundary_watch",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:border_watch",
					"event:border_dispute"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"event:border_dispute": [
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "event.narrative_key"
						}
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
			]
		},
		{
			"category": "institutions",
			"display_name": "Local Mandate",
			"id": "local_mandate",
			"provenance": {
				"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
				"id": "local_mandate",
				"kind": "society_trait",
				"matched_preferences": [
					"life:village_union"
				],
				"matched_required": [
					"structure:local_settlement",
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "present.settlements:home_f_02"
						}
					]
				}
			},
			"tension_tags": [
				"external_domination"
			],
			"value_tags": [
				"local_service"
			]
		}
	],
	"taboo_tags": [
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"duty",
		"institutional_reform",
		"local_service",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_00"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Fulith Reach (f_03)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"resist_domination"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"resist_domination"
			],
			"display_name": "No More Masters",
			"fears": [
				"subjugation"
			],
			"goal_candidates": [
				{
					"desire": "resist_domination",
					"explanation": "Consider resist domination as a future social priority; no target, capability or completed action is asserted.",
					"id": "resist_domination"
				}
			],
			"id": "no_more_masters",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
				"id": "no_more_masters",
				"kind": "doctrine",
				"matched_preferences": [
					"identity:breakaway"
				],
				"matched_required": [
					"formation:fragmentation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"formation:fragmentation": [
						{
							"detail": "fragmentation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_00",
								"t_step_03"
							],
							"source_path": "identity.continuity_stance"
						}
					]
				}
			},
			"taboos": [
				"absolute_authority",
				"external_domination"
			],
			"values": [
				"household_autonomy",
				"shared_responsibility"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"closed_roads",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "29",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-24",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_03"
			}
		]
	},
	"faction_id": "f_03",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "grievance",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_00",
			"t_step_03"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:village_union",
			"role:isolation",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"event:border_dispute"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"event:border_dispute": [
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
			"id": "closed_roads",
			"kind": "society_trait",
			"matched_preferences": [
				"adaptive:withdraw"
			],
			"matched_required": [
				"role:isolation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"adaptive:withdraw": [
					{
						"detail": "withdraw",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_00",
							"t_step_03"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"role:isolation": [
					{
						"detail": "isolation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
			"id": "local_mandate",
			"kind": "society_trait",
			"matched_preferences": [
				"life:village_union"
			],
			"matched_required": [
				"structure:local_settlement",
				"anchor:locality",
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 5
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_00",
							"t_step_03"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "present.settlements:home_f_03"
					}
				]
			}
		},
		{
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:breakaway"
			],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"formation:fragmentation": [
					{
						"detail": "fragmentation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_00",
							"t_step_03"
						],
						"source_path": "identity.continuity_stance"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 4
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"tension_tags": [
				"anti_authority"
			],
			"value_tags": [
				"duty",
				"institutional_continuity"
			]
		},
		{
			"category": "boundaries",
			"display_name": "Boundary Watch",
			"id": "boundary_watch",
			"provenance": {
				"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
				"id": "boundary_watch",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"event:border_dispute"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"event:border_dispute": [
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
			]
		},
		{
			"category": "boundaries",
			"display_name": "Closed Roads",
			"id": "closed_roads",
			"provenance": {
				"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
				"id": "closed_roads",
				"kind": "society_trait",
				"matched_preferences": [
					"adaptive:withdraw"
				],
				"matched_required": [
					"role:isolation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"adaptive:withdraw": [
						{
							"detail": "withdraw",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_00",
								"t_step_03"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"role:isolation": [
						{
							"detail": "isolation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"boundary_caution"
			]
		},
		{
			"category": "institutions",
			"display_name": "Local Mandate",
			"id": "local_mandate",
			"provenance": {
				"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
				"id": "local_mandate",
				"kind": "society_trait",
				"matched_preferences": [
					"life:village_union"
				],
				"matched_required": [
					"structure:local_settlement",
					"anchor:locality",
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 5
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_00",
								"t_step_03"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "present.settlements:home_f_03"
						}
					]
				}
			},
			"tension_tags": [
				"external_domination"
			],
			"value_tags": [
				"local_service"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"local_service",
		"shared_responsibility",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_00","t_step_03"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Misen Ruin (f_06)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions"
	],
	"doctrine_intensities": {
		"continuity": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"preserve_institutions"
			],
			"display_name": "Doctrine of Continuity",
			"fears": [
				"social_collapse"
			],
			"goal_candidates": [
				{
					"desire": "preserve_institutions",
					"explanation": "Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.",
					"id": "preserve_institutions"
				}
			],
			"id": "continuity",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
				"id": "continuity",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"taboos": [
				"gratuitous_institutional_destruction"
			],
			"values": [
				"duty",
				"institutional_continuity",
				"record_preservation"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:erosion_seal": [
			{
				"detail": "erosion_seal",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "sealed_object_in_erosion",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "effect.discovery.observation"
			}
		],
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "opportunity",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_02",
			"h_discovery"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:provincial_council",
			"role:local_exchange",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [
				"life:provincial_council"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"life:provincial_council": [
					{
						"detail": "provincial_council",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
			"id": "route_commonwealth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:local_exchange"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"role:local_exchange": [
					{
						"detail": "local_exchange",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
			"id": "continuity",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 4
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [
					"life:provincial_council"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"life:provincial_council": [
						{
							"detail": "provincial_council",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"tension_tags": [
				"anti_authority"
			],
			"value_tags": [
				"duty",
				"institutional_continuity"
			]
		},
		{
			"category": "livelihood",
			"display_name": "Route Commonwealth",
			"id": "route_commonwealth",
			"provenance": {
				"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
				"id": "route_commonwealth",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:local_exchange"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"role:local_exchange": [
						{
							"detail": "local_exchange",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"route_monopoly"
	],
	"value_tags": [
		"duty",
		"fair_exchange",
		"institutional_continuity",
		"record_preservation",
		"route_service"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Fulith Well (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"beautiful_public_works"
	],
	"doctrine_intensities": {
		"beauty_against_ruin": "moderate"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"beautiful_public_works"
			],
			"display_name": "Beauty Against Ruin",
			"fears": [
				"purely_utilitarian_rebuilding"
			],
			"goal_candidates": [
				{
					"desire": "beautiful_public_works",
					"explanation": "Consider beautiful public works as a future social priority; no target, capability or completed action is asserted.",
					"id": "beautiful_public_works"
				}
			],
			"id": "beauty_against_ruin",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.",
				"id": "beauty_against_ruin",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_collapse",
					"adaptive:rebuild",
					"structure:local_settlement",
					"life:facility_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"adaptive:rebuild": [
						{
							"detail": "rebuild",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"history:regional_collapse": [
						{
							"detail": "Recorded regional institutional collapse",
							"scope": "regional",
							"source_event_ids": [
								"h_collapse"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:facility_community": [
						{
							"detail": "facility_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "present.settlements:home_f_07"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"artistry",
				"craftsmanship",
				"public_beauty"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"continuity",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"maintenance_covenant"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:facility_community": [
			{
				"detail": "facility_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [
		"purely_utilitarian_rebuilding"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_02"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:facility_community",
			"role:border_watch",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:facility_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:facility_community": [
					{
						"detail": "facility_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.",
			"id": "beauty_against_ruin",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_collapse",
				"adaptive:rebuild",
				"structure:local_settlement",
				"life:facility_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"adaptive:rebuild": [
					{
						"detail": "rebuild",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"history:regional_collapse": [
					{
						"detail": "Recorded regional institutional collapse",
						"scope": "regional",
						"source_event_ids": [
							"h_collapse"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:facility_community": [
					{
						"detail": "facility_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "present.settlements:home_f_07"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 2
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"tension_tags": [
				"anti_authority"
			],
			"value_tags": [
				"duty",
				"institutional_continuity"
			]
		},
		{
			"category": "livelihood",
			"display_name": "Maintenance Covenant",
			"id": "maintenance_covenant",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:facility_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:facility_community": [
						{
							"detail": "facility_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"tension_tags": [
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"neglect"
	],
	"value_tags": [
		"artistry",
		"craftsmanship",
		"duty",
		"institutional_continuity",
		"public_beauty",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"beautiful_public_works","explanation":"Consider beautiful public works as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"beautiful_public_works","intensity":"moderate","provenance":{"explanation":"A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.","id":"beauty_against_ruin","kind":"doctrine","matched_preferences":[],"matched_required":["history:regional_collapse","adaptive:rebuild","structure:local_settlement","life:facility_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_02"],"source_path":"identity.adaptive_stance"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:facility_community":[{"detail":"facility_community","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.way_of_life"}],"structure:local_settlement":[{"detail":"Current local settlement under this polity","scope":"faction","source_event_ids":["t_step_02"],"source_path":"present.settlements:home_f_07"}]}},"source_doctrine_id":"beauty_against_ruin","status":"candidate"}]`

## Nalith Ruin (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"resist_domination"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"resist_domination"
			],
			"display_name": "No More Masters",
			"fears": [
				"subjugation"
			],
			"goal_candidates": [
				{
					"desire": "resist_domination",
					"explanation": "Consider resist domination as a future social priority; no target, capability or completed action is asserted.",
					"id": "resist_domination"
				}
			],
			"id": "no_more_masters",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
				"id": "no_more_masters",
				"kind": "doctrine",
				"matched_preferences": [
					"identity:breakaway"
				],
				"matched_required": [
					"formation:fragmentation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"formation:fragmentation": [
						{
							"detail": "fragmentation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "identity.continuity_stance"
						}
					]
				}
			},
			"taboos": [
				"absolute_authority",
				"external_domination"
			],
			"values": [
				"household_autonomy",
				"shared_responsibility"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"maintenance_covenant",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-24",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-27",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:migrant_confederation": [
			{
				"detail": "migrant_confederation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:maintenance": [
			{
				"detail": "maintenance",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_08"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_03"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:migrant_confederation",
			"role:maintenance",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"event:border_dispute"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"event:border_dispute": [
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"role:maintenance": [
					{
						"detail": "maintenance",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
			"id": "mutual_obligation",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:migrant_confederation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:migrant_confederation": [
					{
						"detail": "migrant_confederation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:breakaway"
			],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"formation:fragmentation": [
					{
						"detail": "fragmentation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "identity.continuity_stance"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 4
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.political_continuity"
						}
					]
				}
			},
			"tension_tags": [
				"anti_authority"
			],
			"value_tags": [
				"duty",
				"institutional_continuity"
			]
		},
		{
			"category": "boundaries",
			"display_name": "Boundary Watch",
			"id": "boundary_watch",
			"provenance": {
				"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
				"id": "boundary_watch",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"event:border_dispute"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"event:border_dispute": [
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
			]
		},
		{
			"category": "livelihood",
			"display_name": "Maintenance Covenant",
			"id": "maintenance_covenant",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"role:maintenance": [
						{
							"detail": "maintenance",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
			]
		},
		{
			"category": "institutions",
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:migrant_confederation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:migrant_confederation": [
						{
							"detail": "migrant_confederation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"tension_tags": [
				"free_riding"
			],
			"value_tags": [
				"duty",
				"reciprocity",
				"compassion"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"free_riding",
		"neglect",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"reciprocity",
		"shared_responsibility",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_03"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Nasil Marsh (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"renew_institutions"
	],
	"doctrine_intensities": {
		"radical_impermanence": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"renew_institutions"
			],
			"display_name": "Radical Impermanence",
			"fears": [
				"institutional_stagnation"
			],
			"goal_candidates": [
				{
					"desire": "renew_institutions",
					"explanation": "Consider renew institutions as a future social priority; no target, capability or completed action is asserted.",
					"id": "renew_institutions"
				}
			],
			"id": "radical_impermanence",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
				"id": "radical_impermanence",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"formation:fragmentation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"formation:fragmentation": [
						{
							"detail": "fragmentation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.formation_origin"
						}
					]
				}
			},
			"taboos": [
				"unquestioned_hereditary_authority"
			],
			"values": [
				"institutional_reform",
				"adaptability"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"closed_roads",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-27",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:religious_community": [
			{
				"detail": "religious_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_09"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_03"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:religious_community",
			"role:isolation",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"event:border_dispute"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"event:border_dispute": [
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
			"id": "closed_roads",
			"kind": "society_trait",
			"matched_preferences": [
				"adaptive:withdraw"
			],
			"matched_required": [
				"role:isolation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"adaptive:withdraw": [
					{
						"detail": "withdraw",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"role:isolation": [
					{
						"detail": "isolation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:religious_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:religious_community": [
					{
						"detail": "religious_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
			"id": "radical_impermanence",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"formation:fragmentation": [
					{
						"detail": "fragmentation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.formation_origin"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 3
	},
	"society_traits": [
		{
			"category": "boundaries",
			"display_name": "Boundary Watch",
			"id": "boundary_watch",
			"provenance": {
				"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
				"id": "boundary_watch",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"event:border_dispute"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"event:border_dispute": [
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
			]
		},
		{
			"category": "boundaries",
			"display_name": "Closed Roads",
			"id": "closed_roads",
			"provenance": {
				"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
				"id": "closed_roads",
				"kind": "society_trait",
				"matched_preferences": [
					"adaptive:withdraw"
				],
				"matched_required": [
					"role:isolation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"adaptive:withdraw": [
						{
							"detail": "withdraw",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"role:isolation": [
						{
							"detail": "isolation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"unrestricted_travel"
			],
			"value_tags": [
				"boundary_caution"
			]
		},
		{
			"category": "memory",
			"display_name": "Ritual Stewardship",
			"id": "ritual_stewardship",
			"provenance": {
				"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
				"id": "ritual_stewardship",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:religious_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:religious_community": [
						{
							"detail": "religious_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"tension_tags": [
				"ritual_desecration"
			],
			"value_tags": [
				"ritualism",
				"memory_preservation"
			]
		}
	],
	"taboo_tags": [
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"boundary_caution",
		"duty",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Bosil Well (f_10)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"beautiful_public_works",
		"facility_restoration",
		"infrastructure_repair",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"beauty_against_ruin": "hardline",
		"world_must_be_mended": "moderate"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"beautiful_public_works"
			],
			"display_name": "Beauty Against Ruin",
			"fears": [
				"purely_utilitarian_rebuilding"
			],
			"goal_candidates": [
				{
					"desire": "beautiful_public_works",
					"explanation": "Consider beautiful public works as a future social priority; no target, capability or completed action is asserted.",
					"id": "beautiful_public_works"
				}
			],
			"id": "beauty_against_ruin",
			"intensity": {
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"adaptive:rebuild",
					"role:maintenance"
				]
			},
			"provenance": {
				"explanation": "A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.",
				"id": "beauty_against_ruin",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_collapse",
					"adaptive:rebuild",
					"structure:local_settlement",
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"adaptive:rebuild": [
						{
							"detail": "rebuild",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_collapse"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"history:regional_collapse": [
						{
							"detail": "Recorded regional institutional collapse",
							"scope": "regional",
							"source_event_ids": [
								"h_collapse"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:maintenance": [
						{
							"detail": "maintenance",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.regional_roles"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01",
								"t_step_04"
							],
							"source_path": "present.settlements:home_f_04"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "present.settlements:home_f_10"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"artistry",
				"craftsmanship",
				"public_beauty"
			]
		},
		{
			"category": "philosophy",
			"desires": [
				"infrastructure_repair",
				"route_reconnection",
				"facility_restoration"
			],
			"display_name": "The World Must Be Mended",
			"fears": [
				"infrastructure_loss"
			],
			"goal_candidates": [
				{
					"desire": "infrastructure_repair",
					"explanation": "Consider repair; no new structure or capability is created.",
					"id": "repair_infrastructure"
				},
				{
					"desire": "route_reconnection",
					"explanation": "Consider reconnection, without changing route state.",
					"id": "reconnect_routes"
				},
				{
					"desire": "facility_restoration",
					"explanation": "Seek restoration opportunities; no new facility is assumed.",
					"id": "restore_facility"
				}
			],
			"id": "world_must_be_mended",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
				"id": "world_must_be_mended",
				"kind": "doctrine",
				"matched_preferences": [
					"adaptive:rebuild"
				],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
					"adaptive:rebuild": [
						{
							"detail": "rebuild",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_collapse"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"role:maintenance": [
						{
							"detail": "maintenance",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"taboos": [
				"neglect"
			],
			"values": [
				"craftsmanship",
				"technical_competence",
				"duty"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"practical_heresy",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"local_mandate",
		"maintenance_covenant",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:regional_collapse": [
			{
				"detail": "Recorded regional institutional collapse",
				"scope": "regional",
				"source_event_ids": [
					"h_collapse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:regional_pressure": [
			{
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:maintenance": [
			{
				"detail": "maintenance",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"infrastructure_loss",
		"purely_utilitarian_rebuilding"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:village_union",
			"role:maintenance",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
			"id": "local_mandate",
			"kind": "society_trait",
			"matched_preferences": [
				"life:village_union"
			],
			"matched_required": [
				"structure:local_settlement",
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 5
			},
			"support": {
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01",
							"t_step_04"
						],
						"source_path": "present.settlements:home_f_04"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "present.settlements:home_f_10"
					}
				]
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"role:maintenance": [
					{
						"detail": "maintenance",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
			"id": "mutual_obligation",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.",
			"id": "beauty_against_ruin",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_collapse",
				"adaptive:rebuild",
				"structure:local_settlement",
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"adaptive:rebuild": [
					{
						"detail": "rebuild",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_collapse"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"history:regional_collapse": [
					{
						"detail": "Recorded regional institutional collapse",
						"scope": "regional",
						"source_event_ids": [
							"h_collapse"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:maintenance": [
					{
						"detail": "maintenance",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.regional_roles"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01",
							"t_step_04"
						],
						"source_path": "present.settlements:home_f_04"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "present.settlements:home_f_10"
					}
				]
			}
		},
		{
			"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
			"id": "world_must_be_mended",
			"kind": "doctrine",
			"matched_preferences": [
				"adaptive:rebuild"
			],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
				"adaptive:rebuild": [
					{
						"detail": "rebuild",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_collapse"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"role:maintenance": [
					{
						"detail": "maintenance",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 2,
		"society_traits": 4
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Local Mandate",
			"id": "local_mandate",
			"provenance": {
				"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
				"id": "local_mandate",
				"kind": "society_trait",
				"matched_preferences": [
					"life:village_union"
				],
				"matched_required": [
					"structure:local_settlement",
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 5
				},
				"support": {
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01",
								"t_step_04"
							],
							"source_path": "present.settlements:home_f_04"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "present.settlements:home_f_10"
						}
					]
				}
			},
			"tension_tags": [
				"external_domination"
			],
			"value_tags": [
				"local_service"
			]
		},
		{
			"category": "livelihood",
			"display_name": "Maintenance Covenant",
			"id": "maintenance_covenant",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"role:maintenance": [
						{
							"detail": "maintenance",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
			]
		},
		{
			"category": "institutions",
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"tension_tags": [
				"free_riding"
			],
			"value_tags": [
				"duty",
				"reciprocity",
				"compassion"
			]
		}
	],
	"taboo_tags": [
		"neglect"
	],
	"tension_tags": [
		"external_domination",
		"free_riding",
		"neglect"
	],
	"value_tags": [
		"artistry",
		"compassion",
		"craftsmanship",
		"duty",
		"local_service",
		"public_beauty",
		"reciprocity",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"beautiful_public_works","explanation":"Consider beautiful public works as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"beautiful_public_works","intensity":"hardline","provenance":{"explanation":"A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.","id":"beauty_against_ruin","kind":"doctrine","matched_preferences":[],"matched_required":["history:regional_collapse","adaptive:rebuild","structure:local_settlement","life:village_union"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.adaptive_stance"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:village_union":[{"detail":"village_union","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.way_of_life"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}],"structure:local_settlement":[{"detail":"Current local settlement under this polity","scope":"faction","source_event_ids":["t_step_01","t_step_04"],"source_path":"present.settlements:home_f_04"},{"detail":"Current local settlement under this polity","scope":"faction","source_event_ids":["t_step_04"],"source_path":"present.settlements:home_f_10"}]}},"source_doctrine_id":"beauty_against_ruin","status":"candidate"},{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.adaptive_stance"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.adaptive_stance"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.adaptive_stance"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`
