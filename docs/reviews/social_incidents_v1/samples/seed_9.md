# Seed 9 — incident_count_0

```text
History architecture v2 | generation algorithm v3 | seed 9 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"trade_failure","response_motif":"regional_autonomy","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"no_direct_heir"}
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
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
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
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-311 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-310 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-305 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Fusen Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-304 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Halith Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-293 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-292 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-291 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-290 t_root_f_05 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-289 t_root_f_06 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"}]
-281 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Lumar Gate (f_05) | causes: t_root_f_05
  effects: [{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"retire"},{"hazard":"none","id":"abandoned_f_05","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-264 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Veyvak Gate (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]}]
-247 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Misil Gate (f_06), Milith Ruin (f_04) | causes: t_root_f_06, t_root_f_04
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","f_04"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
-230 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bovak Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-213 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Veyra Gate (f_07) | causes: t_step_01
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]}]
-196 t_step_05 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fulen Ruin (f_08) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"a":"f_08","b":"f_10","delta":-22,"kind":"relationship"}]
-179 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_11) | causes: t_step_05
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_11"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_11","kind":"retire"},{"disposition":"absorbed","entity_id":"f_11","kind":"population_fate","successor_ids":["f_13"],"untracked_template_ids":[]}]
-162 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Selith Well (f_09) | causes: t_step_04
  effects: [{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_14"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_14"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_14"},{"entity_id":"f_09","kind":"retire"},{"disposition":"absorbed","entity_id":"f_09","kind":"population_fate","successor_ids":["f_14","f_15","f_16"],"untracked_template_ids":[]}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Bora Gate (f_15) | causes: t_step_06, t_step_07
  effects: [{"a":"f_13","b":"f_15","delta":-33,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bora Gate (f_15), Tosen Ruin (f_16) | causes: t_step_07, t_step_07
  effects: [{"a":"f_15","b":"f_16","delta":10,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Furin Well (f_14) | causes: t_step_06, t_step_07
  effects: [{"a":"f_13","b":"f_14","delta":29,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Fulen Ruin (f_08), Furin Well (f_14) | causes: t_step_02, t_step_07
  effects: [{"a":"f_08","b":"f_14","delta":28,"kind":"relationship"}]
-20 h_relation_4 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Dalith Well (f_10), Bora Gate (f_15) | causes: t_step_05, t_step_07
  effects: [{"a":"f_10","b":"f_15","delta":26,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Furin Well (f_14) | causes: t_step_07
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Bora Gate (f_15) | causes: h_relation_0
  effects: [{"a":"f_13","b":"f_15","delta":42,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Fusen Marsh | -311..-305 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Halith Ruin | -310..-304 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Bovak Well | -293..-230 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Veyvak Gate | -292..-264 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Milith Ruin | -291..-247 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Lumar Gate | -290..-281 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Misil Gate | -289..-247 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Veyra Gate | -264..-213 | extinct | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Fulen Ruin | -247..present | active | parents=f_06, f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Selith Well | -213..-162 | extinct | parents=f_07 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Dalith Well | -196..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Halith Reach | -196..-179 | extinct | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Kelith Marsh | -196..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Borin Gate | -179..present | active | parents=f_11 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_14: Furin Well | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_15: Bora Gate | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_16: Tosen Ruin | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Harin Marsh | -557..-323 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-557 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-311 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-310 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-293 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-292 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-291 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-290 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_05
-289 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_06
-264 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-247 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_06, f_04 | events=t_step_02
-213 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-196 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-196 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-196 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-179 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_11 | events=t_step_06
-162 f_14: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
-162 f_15: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
-162 f_16: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-323 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-305 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_0
-304 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_1
-281 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-264 f_03: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_01
-247 f_06: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-247 f_04: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-230 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-213 f_07: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_04
-179 f_11: absorbed | absorbed_into=f_13 | untracked_strata= | events=t_step_06
-162 f_09: absorbed | absorbed_into=f_14, f_15, f_16 | untracked_strata= | events=t_step_07
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Region region: Tolen Ruin
Faction f_08: Fulen Ruin | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
  identity=breakaway/refuge/rebuild | interpretation=pragmatic/rupture | sources=t_step_02, h_collapse
  society patterns: Hazard Memory, Mutual Obligation, Shelter Compact
Faction f_10: Dalith Well | religious_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=reformer/ritual/preserve | interpretation=technical/debt | sources=t_step_05, h_relation_4
  society patterns: Hazard Memory, Mutual Obligation
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Kelith Marsh | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/refuge/adapt | interpretation=technical/rupture | sources=t_step_05, h_collapse
  society patterns: Maintenance Covenant, Shelter Compact
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_13: Borin Gate | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=border_watch
  identity=reformer/ritual/preserve | interpretation=ritual/warning | sources=t_step_06, h_pressure
  society patterns: Boundary Watch, Hazard Memory, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_14: Furin Well | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/refuge/adapt | interpretation=pragmatic/opportunity | sources=t_step_07, h_discovery
  society patterns: Mutual Obligation, Route Commonwealth
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_15: Bora Gate | infrastructure_guild | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=new_foundation/exchange/withdraw | interpretation=technical/warning | sources=t_step_07, h_pressure
  society patterns: Archive Legitimacy, Mutual Obligation
  Sacred Craft — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_16: Tosen Ruin | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=reformer/locality/rebuild | interpretation=skeptical/rupture | sources=t_step_07, h_collapse
  society patterns: Closed Roads, Local Mandate, Mutual Obligation
  Beauty Against Ruin — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_08: parents=f_06, f_04; ancestors=f_04, f_06; sources=t_step_02, t_root_f_04, t_root_f_06
Ancestry f_10: parents=f_08; ancestors=f_04, f_06, f_08; sources=t_step_05, t_root_f_04, t_step_02, t_root_f_06
Ancestry f_12: parents=f_08; ancestors=f_04, f_06, f_08; sources=t_step_05, t_root_f_04, t_step_02, t_root_f_06
Ancestry f_13: parents=f_11; ancestors=f_04, f_06, f_08, f_11; sources=t_step_06, t_root_f_04, t_step_02, t_root_f_06, t_step_05
Ancestry f_14: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Ancestry f_15: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Ancestry f_16: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Relationship f_08 <-> f_10: -22; sources=t_step_05
Relationship f_08 <-> f_14: 28; sources=h_relation_3
Relationship f_10 <-> f_15: 26; sources=h_relation_4
Relationship f_13 <-> f_14: 29; sources=h_relation_2
Relationship f_13 <-> f_15: 9; sources=h_relation_0, h_last
Relationship f_15 <-> f_16: 10; sources=h_relation_1
Settlement home_f_03: Midor | owner=f_14 | region=region | sources=t_root_f_03, t_step_01, t_step_04, t_step_07
Settlement home_f_04: Veysil | owner=f_08 | region=region | sources=t_root_f_04, t_step_02
Settlement home_f_06: Minamar | owner=f_08 | region=region | sources=t_root_f_06, t_step_02
Settlement home_f_07: Daluwen | owner=f_14 | region=region | sources=t_step_01, t_step_04, t_step_07
Settlement home_f_08: Bowen | owner=f_08 | region=region | sources=t_step_02
Settlement home_f_09: Mizonar | owner=f_14 | region=region | sources=t_step_04, t_step_07
Settlement home_f_10: Veysen | owner=f_10 | region=region | sources=t_step_05
Settlement home_f_11: Semar | owner=f_13 | region=region | sources=t_step_05, t_step_06
Settlement home_f_12: Veylurin | owner=f_12 | region=region | sources=t_step_05
Settlement home_f_13: Dasen | owner=f_13 | region=region | sources=t_step_06
Settlement home_f_14: Tonamon | owner=f_14 | region=region | sources=t_step_07
Settlement home_f_15: Fumon | owner=f_15 | region=region | sources=t_step_07
Settlement home_f_16: Fululen | owner=f_16 | region=region | sources=t_step_07
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_failed_0
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_00
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
Fulen Ruin (f_08; knowledge=):
  [t_step_02; confidence 0.36; legitimacy] Our recorded formation was reorganization. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.62; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-22}
  [h_relation_3; confidence 0.74; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":28}
  [h_discovery; confidence 0.71; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.46; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-22}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":28}
Dalith Well (f_10; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.80; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.58; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-22}
  [h_relation_4; confidence 0.52; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":26}
  [h_discovery; confidence 0.77; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.51; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-22}
  [; confidence 0.66; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":26}
Kelith Marsh (f_12; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.77; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.51; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Borin Gate (f_13; knowledge=):
  [t_step_06; confidence 0.50; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. Our rites preserve the event as a warning against repeating old mistakes, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.73; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":-33}
  [h_relation_2; confidence 0.60; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":29}
  [h_discovery; confidence 0.43; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":42}
  [; confidence 0.46; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":29}
  [; confidence 0.38; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_13","b":"f_15","score":9}
Furin Well (f_14; knowledge=):
  [t_step_07; confidence 0.57; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.42; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":29}
  [h_relation_3; confidence 0.60; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":28}
  [h_discovery; confidence 0.72; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.80; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":28}
  [; confidence 0.81; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":29}
Bora Gate (f_15; knowledge=):
  [t_step_07; confidence 0.51; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Routes, exchange and reciprocal obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":-33}
  [h_relation_1; confidence 0.77; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":10}
  [h_relation_4; confidence 0.73; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":26}
  [h_discovery; confidence 0.90; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.85; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":42}
  [; confidence 0.56; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":26}
  [; confidence 0.57; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_15","score":9}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":10}
Tosen Ruin (f_16; knowledge=):
  [t_step_07; confidence 0.69; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared places and local obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.40; interpretation] Regional records remembered empty stations and obligations that trade could no longer support. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.83; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":10}
  [h_discovery; confidence 0.69; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.86; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":10}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":30,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","h_response","h_body"],"causal_ratio":1.0,"direct_count":28,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07"],"important_events":30}
```

## Fulen Ruin (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"debt_of_shelter",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"adaptive_customs",
		"hazard_memory",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
					"t_step_02",
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
					"t_step_02"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "28",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-22",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
				"detail": "trade_failure",
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
					"t_step_02",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:refugee_community": [
			{
				"detail": "refugee_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_04",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_06",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_08"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_06, f_04",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:refugee_community",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 3
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "trade_failure",
						"scope": "regional",
						"source_event_ids": [
							"h_pressure"
						],
						"source_path": "event.narrative_key"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
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
			"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
			"id": "mutual_obligation",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:cooperation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "28",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_3"
						],
						"source_path": "effect.relationship.delta"
					}
				]
			}
		},
		{
			"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
			"id": "shelter_compact",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:shelter",
				"life:refugee_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:refugee_community": [
					{
						"detail": "refugee_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 0,
		"society_traits": 3
	},
	"society_traits": [
		{
			"category": "memory",
			"display_name": "Hazard Memory",
			"id": "hazard_memory",
			"provenance": {
				"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
				"id": "hazard_memory",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_pressure",
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 3
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "trade_failure",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					],
					"role:shelter": [
						{
							"detail": "shelter",
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
				"recklessness"
			],
			"value_tags": [
				"hazard_awareness"
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
					"history:cooperation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "28",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_3"
							],
							"source_path": "effect.relationship.delta"
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
		},
		{
			"category": "membership",
			"display_name": "Shelter Compact",
			"id": "shelter_compact",
			"provenance": {
				"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
				"id": "shelter_compact",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:shelter",
					"life:refugee_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:refugee_community": [
						{
							"detail": "refugee_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:shelter": [
						{
							"detail": "shelter",
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
				"cruelty"
			],
			"value_tags": [
				"compassion",
				"hospitality"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"cruelty",
		"free_riding",
		"recklessness"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"hospitality",
		"reciprocity"
	]
}
```

Candidates: `[]`

## Dalith Well (f_10)

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
					"identity:reformer"
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
								"t_step_05"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_05",
								"h_relation_4"
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
		"living_archive",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"hazard_memory",
		"mutual_obligation",
		"ritual_stewardship",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_4"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_4"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-22",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
				"detail": "trade_failure",
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
					"t_step_05",
					"h_relation_4"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_4"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:religious_community": [
			{
				"detail": "religious_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_4"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_05",
			"h_relation_4"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:religious_community",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 3
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "trade_failure",
						"scope": "regional",
						"source_event_ids": [
							"h_pressure"
						],
						"source_path": "event.narrative_key"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
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
				"history:cooperation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "26",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_4"
						],
						"source_path": "effect.relationship.delta"
					}
				]
			}
		},
		{
			"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
			"id": "radical_impermanence",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:reformer"
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
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_05",
							"h_relation_4"
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
			"category": "memory",
			"display_name": "Hazard Memory",
			"id": "hazard_memory",
			"provenance": {
				"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
				"id": "hazard_memory",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_pressure",
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 3
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "trade_failure",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					],
					"role:shelter": [
						{
							"detail": "shelter",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"recklessness"
			],
			"value_tags": [
				"hazard_awareness"
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
					"history:cooperation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "26",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_4"
							],
							"source_path": "effect.relationship.delta"
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
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"free_riding",
		"recklessness"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"duty",
		"hazard_awareness",
		"institutional_reform",
		"reciprocity"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_05","h_relation_4"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Kelith Marsh (f_12)

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
								"t_step_05"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_05",
								"h_collapse"
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
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"hazard_memory",
		"maintenance_covenant",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
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
					"t_step_05",
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
					"t_step_05"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
				"detail": "trade_failure",
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
					"t_step_05",
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
					"t_step_05",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_12"
			}
		]
	},
	"faction_id": "f_12",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_05",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:infrastructure_guild",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
			"id": "shelter_compact",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
						],
						"source_path": "entity.regional_roles"
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
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_05",
							"h_collapse"
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
			"category": "livelihood",
			"display_name": "Maintenance Covenant",
			"id": "maintenance_covenant",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
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
		},
		{
			"category": "membership",
			"display_name": "Shelter Compact",
			"id": "shelter_compact",
			"provenance": {
				"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
				"id": "shelter_compact",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"role:shelter": [
						{
							"detail": "shelter",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"cruelty"
			],
			"value_tags": [
				"compassion",
				"hospitality"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"cruelty",
		"neglect"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"hospitality",
		"household_autonomy",
		"shared_responsibility",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_05","h_collapse"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Borin Gate (f_13)

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
					"identity:reformer"
				],
				"matched_required": [
					"formation:reorganization"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_06",
								"h_pressure"
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
		"living_archive",
		"practical_heresy",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_pressure"
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
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
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
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "29",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "42",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-33",
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
				"detail": "trade_failure",
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
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:religious_community": [
			{
				"detail": "religious_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_11"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "warning",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_06",
			"h_pressure"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:religious_community",
			"role:border_watch",
			"political_continuity:false"
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
				"target": 3,
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
							"t_step_06"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [
				"memory:warning"
			],
			"matched_required": [
				"history:regional_pressure",
				"memory:warning",
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "trade_failure",
						"scope": "regional",
						"source_event_ids": [
							"h_pressure"
						],
						"source_path": "event.narrative_key"
					}
				],
				"memory:warning": [
					{
						"detail": "warning",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_06",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
					}
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
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
							"t_step_06"
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
			"matched_preferences": [
				"identity:reformer"
			],
			"matched_required": [
				"formation:reorganization"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_06",
							"h_pressure"
						],
						"source_path": "identity.continuity_stance"
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
					"role:border_watch",
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
								"t_step_06"
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
			"category": "memory",
			"display_name": "Hazard Memory",
			"id": "hazard_memory",
			"provenance": {
				"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
				"id": "hazard_memory",
				"kind": "society_trait",
				"matched_preferences": [
					"memory:warning"
				],
				"matched_required": [
					"history:regional_pressure",
					"memory:warning",
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "trade_failure",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					],
					"memory:warning": [
						{
							"detail": "warning",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_06",
								"h_pressure"
							],
							"source_path": "identity.memory_frame"
						}
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"recklessness"
			],
			"value_tags": [
				"hazard_awareness"
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
								"t_step_06"
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
		"recklessness",
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"duty",
		"hazard_awareness",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_06"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_06","h_pressure"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Furin Well (f_14)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"verify_claims"
	],
	"doctrine_intensities": {
		"measured_doubt": "moderate"
	},
	"doctrines": [
		{
			"category": "knowledge",
			"desires": [
				"verify_claims"
			],
			"display_name": "Measured Doubt",
			"fears": [
				"false_certainty"
			],
			"goal_candidates": [
				{
					"desire": "verify_claims",
					"explanation": "Consider verify claims as a future social priority; no target, capability or completed action is asserted.",
					"id": "verify_claims"
				}
			],
			"id": "measured_doubt",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
				"id": "measured_doubt",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:unknown_discovery"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"history:unknown_discovery": [
						{
							"detail": "machine_in_coastal_crater",
							"scope": "faction",
							"source_event_ids": [
								"h_discovery"
							],
							"source_path": "effect.discovery.observation"
						}
					]
				}
			},
			"taboos": [
				"unsupported_certainty"
			],
			"values": [
				"skepticism",
				"scholarship"
			]
		}
	],
	"eligible_doctrines": [
		"debt_of_shelter",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_discovery"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:impact_machine": [
			{
				"detail": "impact_machine",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "29",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "28",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
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
				"detail": "trade_failure",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "machine_in_coastal_crater",
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
					"t_step_07",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_discovery"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:refugee_community": [
			{
				"detail": "refugee_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_discovery"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03",
					"t_step_01",
					"t_step_04",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_04",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_07"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_09"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_14"
			}
		]
	},
	"faction_id": "f_14",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_07",
			"h_discovery"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:refugee_community",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
			"id": "mutual_obligation",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:cooperation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "29",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "28",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_3"
						],
						"source_path": "effect.relationship.delta"
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
				"event:trade_reopening"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"event:trade_reopening": [
					{
						"detail": "trade_reopening",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_3"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
			"id": "measured_doubt",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:unknown_discovery"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"history:unknown_discovery": [
					{
						"detail": "machine_in_coastal_crater",
						"scope": "faction",
						"source_event_ids": [
							"h_discovery"
						],
						"source_path": "effect.discovery.observation"
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
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:cooperation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "29",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "28",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_3"
							],
							"source_path": "effect.relationship.delta"
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
					"event:trade_reopening"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"event:trade_reopening": [
						{
							"detail": "trade_reopening",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_3"
							],
							"source_path": "event.narrative_key"
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
		"unsupported_certainty"
	],
	"tension_tags": [
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"reciprocity",
		"route_service",
		"scholarship",
		"skepticism"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":[],"matched_required":["history:unknown_discovery"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:unknown_discovery":[{"detail":"machine_in_coastal_crater","scope":"faction","source_event_ids":["h_discovery"],"source_path":"effect.discovery.observation"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Bora Gate (f_15)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"honor_skilled_making"
	],
	"doctrine_intensities": {
		"sacred_craft": "moderate"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"honor_skilled_making"
			],
			"display_name": "Sacred Craft",
			"fears": [
				"craft_loss"
			],
			"goal_candidates": [
				{
					"desire": "honor_skilled_making",
					"explanation": "Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.",
					"id": "honor_skilled_making"
				}
			],
			"id": "sacred_craft",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
				"id": "sacred_craft",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"taboos": [
				"craft_desecration"
			],
			"values": [
				"craftsmanship",
				"item_provenance",
				"technical_competence"
			]
		}
	],
	"eligible_doctrines": [
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"boundary_watch",
		"hazard_memory",
		"maintenance_covenant",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_pressure"
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
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			},
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
					"t_step_07"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "10",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "42",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-33",
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
				"detail": "trade_failure",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_pressure"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_15"
			}
		]
	},
	"faction_id": "f_15",
	"fear_tags": [
		"craft_loss"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_07",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:infrastructure_guild",
			"role:archives",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "An archive role or recorded archive accord makes records a practical source of institutional standing.",
			"id": "archive_legitimacy",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
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
				"history:cooperation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "10",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "26",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_4"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "42",
						"scope": "faction",
						"source_event_ids": [
							"h_last"
						],
						"source_path": "effect.relationship.delta"
					}
				]
			}
		},
		{
			"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
			"id": "sacred_craft",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.way_of_life"
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
			"display_name": "Archive Legitimacy",
			"id": "archive_legitimacy",
			"provenance": {
				"explanation": "An archive role or recorded archive accord makes records a practical source of institutional standing.",
				"id": "archive_legitimacy",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"tension_tags": [
				"record_destruction"
			],
			"value_tags": [
				"scholarship",
				"record_preservation"
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
					"history:cooperation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "10",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "26",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_4"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "42",
							"scope": "faction",
							"source_event_ids": [
								"h_last"
							],
							"source_path": "effect.relationship.delta"
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
		"craft_desecration"
	],
	"tension_tags": [
		"free_riding",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"item_provenance",
		"reciprocity",
		"record_preservation",
		"scholarship",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"honor_skilled_making","explanation":"Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"honor_skilled_making","intensity":"moderate","provenance":{"explanation":"Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.","id":"sacred_craft","kind":"doctrine","matched_preferences":[],"matched_required":["life:infrastructure_guild"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_step_07"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"sacred_craft","status":"candidate"}]`

## Tosen Ruin (f_16)

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
					"life:regional_commune"
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
								"t_step_07",
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
					"life:regional_commune": [
						{
							"detail": "regional_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_16"
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"closed_roads",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_collapse"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
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
					"t_step_07"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "10",
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
				"detail": "trade_failure",
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
					"t_step_07",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:regional_commune": [
			{
				"detail": "regional_commune",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_16"
			}
		]
	},
	"faction_id": "f_16",
	"fear_tags": [
		"purely_utilitarian_rebuilding"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_07",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:regional_commune",
			"role:isolation",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
			"id": "closed_roads",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:isolation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"role:isolation": [
					{
						"detail": "isolation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
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
				"life:regional_commune"
			],
			"matched_required": [
				"structure:local_settlement",
				"anchor:locality",
				"life:regional_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 5
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_07",
							"h_collapse"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"life:regional_commune": [
					{
						"detail": "regional_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_16"
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
				"history:cooperation",
				"life:regional_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "10",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					}
				],
				"life:regional_commune": [
					{
						"detail": "regional_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
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
				"life:regional_commune"
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
							"t_step_07",
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
				"life:regional_commune": [
					{
						"detail": "regional_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_16"
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
			"display_name": "Closed Roads",
			"id": "closed_roads",
			"provenance": {
				"explanation": "An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.",
				"id": "closed_roads",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:isolation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"role:isolation": [
						{
							"detail": "isolation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
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
					"life:regional_commune"
				],
				"matched_required": [
					"structure:local_settlement",
					"anchor:locality",
					"life:regional_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 5
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_07",
								"h_collapse"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"life:regional_commune": [
						{
							"detail": "regional_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_16"
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
			"category": "institutions",
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:cooperation",
					"life:regional_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "10",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						}
					],
					"life:regional_commune": [
						{
							"detail": "regional_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
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
	"taboo_tags": [],
	"tension_tags": [
		"external_domination",
		"free_riding",
		"unrestricted_travel"
	],
	"value_tags": [
		"artistry",
		"boundary_caution",
		"compassion",
		"craftsmanship",
		"duty",
		"local_service",
		"public_beauty",
		"reciprocity"
	]
}
```

Candidates: `[{"desire":"beautiful_public_works","explanation":"Consider beautiful public works as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"beautiful_public_works","intensity":"moderate","provenance":{"explanation":"A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.","id":"beauty_against_ruin","kind":"doctrine","matched_preferences":[],"matched_required":["history:regional_collapse","adaptive:rebuild","structure:local_settlement","life:regional_commune"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_07","h_collapse"],"source_path":"identity.adaptive_stance"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:regional_commune":[{"detail":"regional_commune","scope":"faction","source_event_ids":["t_step_07"],"source_path":"entity.way_of_life"}],"structure:local_settlement":[{"detail":"Current local settlement under this polity","scope":"faction","source_event_ids":["t_step_07"],"source_path":"present.settlements:home_f_16"}]}},"source_doctrine_id":"beauty_against_ruin","status":"candidate"}]`
