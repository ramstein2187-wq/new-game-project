# Seed 16 — incident_autonomous_authority_dispute

```text
History architecture v2 | generation algorithm v3 | seed 16 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"geophysical_stress","response_motif":"ritual_schism","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"no_direct_heir"}
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
-531 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-506 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Zosil Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-353 h_pressure [DISASTER] Recurrent stress on an already critical fault released locally, damaging structures and travel routes; tidal stress was a small contributor, not a moon-alignment switch.
  scope=regional | objective cause_domain=natural
  actors: Zosil Gate (precursor), Seveylen (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-343 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Zosil Gate (precursor), Seveylen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-337 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Zosil Gate (precursor), Kesen (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-329 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Zosil Gate (precursor), Seveylen (regional_body), Kesen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-317 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-316 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-315 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-311 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Navak Gate (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-310 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Namar Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-309 t_failed_2 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-299 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-298 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-297 t_root_f_05 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-296 t_root_f_06 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"}]
-287 t_step_00 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Hador Well (f_05) | causes: t_root_f_05
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]}]
-270 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Darin Marsh (f_03), Lumar Well (f_06) | causes: t_root_f_03, t_root_f_06
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03","f_06"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
-252 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zomon Marsh (f_07), Fulith Gate (f_04) | causes: t_step_00, t_root_f_04
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07","f_04"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]}]
-234 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Milith Marsh (f_09) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"a":"f_09","b":"f_10","delta":-12,"kind":"relationship"}]
-217 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Hasen Well (f_11) | causes: t_step_03
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_11"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_11","kind":"retire"},{"disposition":"absorbed","entity_id":"f_11","kind":"population_fate","successor_ids":["f_13"],"untracked_template_ids":[]}]
-47 s_00_00_autonomous_authority_dispute [SOCIAL_INCIDENT] Residents disputed a local automated decision service and established human final authority while retaining limited automation.
  scope=local | objective cause_domain=human
  actors: Lulith Gate (f_12) | causes: t_step_03
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_12"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_12"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"authority_dispute","record_type":"practice","reference_id":"f_12"}]
-46 s_00_01_human_final_authority [SOCIAL_INCIDENT] A later review upheld the previously recorded human oversight compact and tested its automation limits.
  scope=local | objective cause_domain=human
  actors: Lulith Gate (f_12) | causes: t_step_03, s_00_00_autonomous_authority_dispute
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"oversight_review","record_type":"practice","reference_id":"f_12"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Milith Marsh (f_09) | causes: t_failed_0, t_step_02
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_09"},{"kind":"reoccupy","owner_id":"f_09","purpose":"settlement","ruin_id":"abandoned_f_00","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Tolith Marsh (f_08), Lulith Gate (f_12) | causes: t_step_01, t_step_03
  effects: [{"a":"f_08","b":"f_12","delta":16,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Milith Marsh (f_09), Lurin Gate (f_10) | causes: t_step_02, t_step_03
  effects: [{"a":"f_09","b":"f_10","delta":28,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Tolith Marsh (f_08), Lurin Gate (f_10) | causes: t_step_01, t_step_03
  effects: [{"a":"f_08","b":"f_10","delta":23,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Tolith Marsh (f_08), Lulith Gate (f_12) | causes: h_relation_0
  effects: [{"a":"f_08","b":"f_12","delta":-19,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Navak Gate | -317..-311 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Namar Ruin | -316..-310 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Sedor Gate | -315..-309 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Darin Marsh | -299..-270 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Fulith Gate | -298..-252 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Hador Well | -297..-287 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Lumar Well | -296..-270 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Zomon Marsh | -287..-252 | extinct | parents=f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Tolith Marsh | -270..present | active | parents=f_03, f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Milith Marsh | -252..present | active | parents=f_07, f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Lurin Gate | -234..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Hasen Well | -234..-217 | extinct | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Lulith Gate | -234..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Fusil Reach | -217..present | active | parents=f_11 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Zosil Gate | -531..-329 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-531 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-317 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-316 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-315 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-299 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-298 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-297 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_05
-296 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_06
-287 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_00
-270 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_03, f_06 | events=t_step_01
-252 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_07, f_04 | events=t_step_02
-234 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-234 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-234 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-217 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_11 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-329 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-311 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_0
-310 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_1
-309 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_2
-287 f_05: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_00
-270 f_03: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_01
-270 f_06: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_01
-252 f_07: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_02
-252 f_04: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_02
-217 f_11: absorbed | absorbed_into=f_13 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_12","source_event_ids":["s_00_00_autonomous_authority_dispute"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_12","source_event_ids":["s_00_00_autonomous_authority_dispute"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"authority_dispute","record_type":"practice","reference_id":"f_12","source_event_ids":["s_00_00_autonomous_authority_dispute"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"oversight_review","record_type":"practice","reference_id":"f_12","source_event_ids":["s_00_01_human_final_authority"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_12","source_event_ids":["s_00_00_autonomous_authority_dispute"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_12","source_event_ids":["s_00_00_autonomous_authority_dispute"],"year":-47}
Region region: Lurin Reach
Faction f_08: Tolith Marsh | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=isolation
  identity=new_foundation/institution/rebuild | interpretation=skeptical/rupture | sources=t_step_01, h_collapse
  society patterns: Closed Roads, Maintenance Covenant, Rebuilt From Fragments, Route Commonwealth
  Practical Heresy — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Milith Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
  identity=reformer/refuge/exploit | interpretation=technical/rupture | sources=t_step_02, h_collapse
  society patterns: Hazard Memory, Mutual Obligation, Rebuilt From Fragments, Route Commonwealth
  Order Above Survival — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Lurin Gate | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/refuge/exploit | interpretation=ritual/opportunity | sources=t_step_03, h_relation_1
  society patterns: Hazard Memory, Mutual Obligation, Route Commonwealth
Faction f_12: Lulith Gate | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/locality/exploit | interpretation=technical/warning | sources=t_step_03, h_pressure
  society patterns: Local Mandate, Maintenance Covenant, Mutual Obligation, Route Commonwealth
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_13: Fusil Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
  identity=reformer/locality/adapt | interpretation=pragmatic/warning | sources=t_step_04, h_pressure
  society patterns: Archive Legitimacy, Hazard Memory, Mutual Obligation
  The Unfinished Form — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_08: parents=f_03, f_06; ancestors=f_03, f_06; sources=t_step_01, t_root_f_03, t_root_f_06
Ancestry f_09: parents=f_07, f_04; ancestors=f_04, f_05, f_07; sources=t_step_02, t_root_f_04, t_root_f_05, t_step_00
Ancestry f_10: parents=f_09; ancestors=f_04, f_05, f_07, f_09; sources=t_step_03, t_root_f_04, t_step_02, t_root_f_05, t_step_00
Ancestry f_12: parents=f_09; ancestors=f_04, f_05, f_07, f_09; sources=t_step_03, t_root_f_04, t_step_02, t_root_f_05, t_step_00
Ancestry f_13: parents=f_11; ancestors=f_04, f_05, f_07, f_09, f_11; sources=t_step_04, t_root_f_04, t_step_02, t_root_f_05, t_step_00, t_step_03
Relationship f_08 <-> f_10: 23; sources=h_relation_2
Relationship f_08 <-> f_12: -3; sources=h_relation_0, h_last
Relationship f_09 <-> f_10: 16; sources=t_step_03, h_relation_1
Settlement home_f_03: Veysil | owner=f_08 | region=region | sources=t_root_f_03, t_step_01
Settlement home_f_04: Nadador | owner=f_09 | region=region | sources=t_root_f_04, t_step_02
Settlement home_f_05: Boluvak | owner=f_09 | region=region | sources=t_root_f_05, t_step_00, t_step_02
Settlement home_f_06: Veylith | owner=f_08 | region=region | sources=t_root_f_06, t_step_01
Settlement home_f_07: Dafudor | owner=f_09 | region=region | sources=t_step_00, t_step_02
Settlement home_f_08: Bora | owner=f_08 | region=region | sources=t_step_01
Settlement home_f_09: Mira | owner=f_09 | region=region | sources=t_step_02
Settlement home_f_10: Semon | owner=f_10 | region=region | sources=t_step_03
Settlement home_f_11: Luwen | owner=f_13 | region=region | sources=t_step_03, t_step_04
Settlement home_f_12: Nakedor | owner=f_12 | region=region | sources=t_step_03
Settlement home_f_13: Halen | owner=f_13 | region=region | sources=t_step_04
Settlement reused_site: Danara | owner=f_09 | region=region | sources=h_reuse
Ruin abandoned_f_00: administrative_site | occupant=f_09 | region=region | sources=t_failed_0, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_failed_2
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
=== BELIEFS ===
Tolith Marsh (f_08; knowledge=observer_scholarly_term):
  [t_step_01; confidence 0.41; legitimacy] Our recorded formation was reorganization. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records remembered broken ground; some blamed the moons. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.45; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":16}
  [h_relation_2; confidence 0.72; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":23}
  [h_last; confidence 0.43; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-19}
  [; confidence 0.40; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":23}
  [; confidence 0.67; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":-3}
Milith Marsh (f_09; knowledge=):
  [t_step_02; confidence 0.75; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.55; interpretation] Regional records remembered broken ground; some blamed the moons. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.67; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-12}
  [h_relation_1; confidence 0.82; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":28}
  [; confidence 0.71; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":16}
Lurin Gate (f_10; knowledge=):
  [t_step_03; confidence 0.42; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered broken ground; some blamed the moons. Our rites preserve the event as a point from which later generations learned to rebuild, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-12}
  [h_relation_1; confidence 0.63; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":28}
  [h_relation_2; confidence 0.81; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":23}
  [; confidence 0.35; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":23}
  [; confidence 0.57; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":16}
Lulith Gate (f_12; knowledge=):
  [t_step_03; confidence 0.87; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.86; interpretation] Regional records remembered broken ground; some blamed the moons. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.76; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":16}
  [h_last; confidence 0.89; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-19}
  [; confidence 0.58; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":-3}
Fusil Reach (f_13; knowledge=):
  [t_step_04; confidence 0.84; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared places and local obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records remembered broken ground; some blamed the moons. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":28,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","s_00_00_autonomous_authority_dispute","s_00_01_human_final_authority","t_failed_0","t_failed_1","t_failed_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":26,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","s_00_00_autonomous_authority_dispute","s_00_01_human_final_authority","t_failed_0","t_failed_1","t_failed_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":28}
```

## Tolith Marsh (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"adapt_social_practice"
	],
	"doctrine_intensities": {
		"practical_heresy": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"adapt_social_practice"
			],
			"display_name": "Practical Heresy",
			"fears": [
				"tradition_driven_failure"
			],
			"goal_candidates": [
				{
					"desire": "adapt_social_practice",
					"explanation": "Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.",
					"id": "adapt_social_practice"
				}
			],
			"id": "practical_heresy",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
				"id": "practical_heresy",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"formation:reorganization"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "entity.formation_origin"
						}
					]
				}
			},
			"taboos": [
				"harmful_rigidity"
			],
			"values": [
				"adaptability",
				"technical_competence"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"closed_roads",
		"maintenance_covenant",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
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
					"t_step_01",
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
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:recent_rivalry": [
			{
				"detail": "recent_rivalry",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-19",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
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
				"detail": "geophysical_stress",
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
					"t_step_01",
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
					"t_step_01",
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
					"t_step_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
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
					"t_step_01"
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
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_06",
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_08"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_03, f_06",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_01",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:infrastructure_guild",
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"role:isolation": [
					{
						"detail": "isolation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [
				"event:maintenance_accord"
			],
			"matched_required": [
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"event:maintenance_accord": [
					{
						"detail": "maintenance_accord",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
			"id": "rebuilt_from_fragments",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:multiple_parents"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"structure:multiple_parents": [
					{
						"detail": "f_03, f_06",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.parent_ids"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"event:trade_reopening": [
					{
						"detail": "trade_reopening",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
			"id": "practical_heresy",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"formation:reorganization"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"role:isolation": [
						{
							"detail": "isolation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
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
			"category": "livelihood",
			"display_name": "Maintenance Covenant",
			"id": "maintenance_covenant",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [
					"event:maintenance_accord"
				],
				"matched_required": [
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"event:maintenance_accord": [
						{
							"detail": "maintenance_accord",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
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
			"category": "formation",
			"display_name": "Rebuilt From Fragments",
			"id": "rebuilt_from_fragments",
			"provenance": {
				"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
				"id": "rebuilt_from_fragments",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"structure:multiple_parents"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"structure:multiple_parents": [
						{
							"detail": "f_03, f_06",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "entity.parent_ids"
						}
					]
				}
			},
			"tension_tags": [
				"factional_exclusion"
			],
			"value_tags": [
				"coalition_building"
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"event:trade_reopening": [
						{
							"detail": "trade_reopening",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
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
		"harmful_rigidity"
	],
	"tension_tags": [
		"factional_exclusion",
		"neglect",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"boundary_caution",
		"coalition_building",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"moderate","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":[],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Milith Marsh (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"reinforce_order"
	],
	"doctrine_intensities": {
		"order_above_survival": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"reinforce_order"
			],
			"display_name": "Order Above Survival",
			"fears": [
				"social_disintegration"
			],
			"goal_candidates": [
				{
					"desire": "reinforce_order",
					"explanation": "Consider reinforce order as a future social priority; no target, capability or completed action is asserted.",
					"id": "reinforce_order"
				}
			],
			"id": "order_above_survival",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
				"id": "order_above_survival",
				"kind": "doctrine",
				"matched_preferences": [
					"history:hostility"
				],
				"matched_required": [
					"history:regional_collapse",
					"life:provincial_council"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"history:hostility": [
						{
							"detail": "-12",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
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
					"life:provincial_council": [
						{
							"detail": "provincial_council",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					]
				}
			},
			"taboos": [
				"insubordination"
			],
			"values": [
				"duty",
				"discipline"
			]
		}
	],
	"eligible_doctrines": [
		"order_above_survival",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"hazard_memory",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
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
					"t_step_03"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:site_reuse": [
			{
				"detail": "site_reuse",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
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
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-12",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
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
				"detail": "geophysical_stress",
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
					"t_step_02",
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
					"t_step_02",
					"h_collapse"
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
		"reuse:settlement": [
			{
				"detail": "settlement",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "effect.reoccupy.purpose"
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
					"t_root_f_05",
					"t_step_00",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_07"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_09"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "present.settlements:reused_site"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_07, f_04",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"social_disintegration"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:provincial_council",
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
				"target": 4,
				"weight": 3
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "geophysical_stress",
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "28",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					}
				]
			}
		},
		{
			"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
			"id": "rebuilt_from_fragments",
			"kind": "society_trait",
			"matched_preferences": [
				"identity:reformer"
			],
			"matched_required": [
				"structure:multiple_parents"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_02",
							"h_collapse"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_07, f_04",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.parent_ids"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"event:trade_reopening": [
					{
						"detail": "trade_reopening",
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
			"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
			"id": "order_above_survival",
			"kind": "doctrine",
			"matched_preferences": [
				"history:hostility"
			],
			"matched_required": [
				"history:regional_collapse",
				"life:provincial_council"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"history:hostility": [
					{
						"detail": "-12",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
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
				"life:provincial_council": [
					{
						"detail": "provincial_council",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
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
					"target": 4,
					"weight": 3
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "geophysical_stress",
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "28",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
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
			"category": "formation",
			"display_name": "Rebuilt From Fragments",
			"id": "rebuilt_from_fragments",
			"provenance": {
				"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
				"id": "rebuilt_from_fragments",
				"kind": "society_trait",
				"matched_preferences": [
					"identity:reformer"
				],
				"matched_required": [
					"structure:multiple_parents"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_02",
								"h_collapse"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_07, f_04",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.parent_ids"
						}
					]
				}
			},
			"tension_tags": [
				"factional_exclusion"
			],
			"value_tags": [
				"coalition_building"
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"event:trade_reopening": [
						{
							"detail": "trade_reopening",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"insubordination"
	],
	"tension_tags": [
		"factional_exclusion",
		"free_riding",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"coalition_building",
		"compassion",
		"discipline",
		"duty",
		"fair_exchange",
		"hazard_awareness",
		"reciprocity",
		"route_service"
	]
}
```

Candidates: `[{"desire":"reinforce_order","explanation":"Consider reinforce order as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"reinforce_order","intensity":"moderate","provenance":{"explanation":"A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.","id":"order_above_survival","kind":"doctrine","matched_preferences":["history:hostility"],"matched_required":["history:regional_collapse","life:provincial_council"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"history:hostility":[{"detail":"-12","scope":"faction","source_event_ids":["t_step_03"],"source_path":"effect.relationship.delta"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:provincial_council":[{"detail":"provincial_council","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"order_above_survival","status":"candidate"}]`

## Lurin Gate (f_10)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
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
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_1"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_1"
				],
				"source_path": "identity.social_anchor"
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
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
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
		"history:cooperation": [
			{
				"detail": "28",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-12",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
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
				"detail": "geophysical_stress",
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
					"t_step_03",
					"h_relation_1"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_1"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:trading_house": [
			{
				"detail": "trading_house",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_1"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "opportunity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_03",
			"h_relation_1"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:trading_house",
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
						"detail": "geophysical_stress",
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
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "23",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
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
				"life:trading_house",
				"event:trade_reopening"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"event:trade_reopening": [
					{
						"detail": "trade_reopening",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					},
					{
						"detail": "trade_reopening",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:trading_house": [
					{
						"detail": "trading_house",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.way_of_life"
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
							"detail": "geophysical_stress",
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
								"t_step_03"
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
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "23",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
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
					"life:trading_house",
					"event:trade_reopening"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"event:trade_reopening": [
						{
							"detail": "trade_reopening",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						},
						{
							"detail": "trade_reopening",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:trading_house": [
						{
							"detail": "trading_house",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"free_riding",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"hazard_awareness",
		"reciprocity",
		"route_service"
	]
}
```

Candidates: `[]`

## Lulith Gate (f_12)

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
								"t_step_03",
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
		"bounded_automation",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"hazard_memory",
		"local_mandate",
		"maintenance_covenant",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_pressure"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:automation": [
			{
				"content_ids": [],
				"detail": "Objective capability:automation",
				"reference_ids": [
					"f_12"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_authority_dispute"
				],
				"source_path": "present.social_facts:capability:automation"
			}
		],
		"event:autonomous_authority_dispute": [
			{
				"detail": "autonomous_authority_dispute",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_authority_dispute"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:human_final_authority": [
			{
				"detail": "human_final_authority",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_human_final_authority"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
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
		"event:recent_rivalry": [
			{
				"detail": "recent_rivalry",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
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
		"history:cooperation": [
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-19",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:oversight_review": [
			{
				"content_ids": [],
				"detail": "Objective practice:oversight_review",
				"reference_ids": [
					"f_12"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_human_final_authority"
				],
				"source_path": "present.social_history:practice:oversight_review"
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
				"detail": "geophysical_stress",
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
					"t_step_03",
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_12"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_authority_dispute"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_pressure"
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_12"
			}
		]
	},
	"faction_id": "f_12",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_03",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:resource_or_trade_commune",
			"role:maintenance",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.",
			"id": "local_mandate",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"structure:local_settlement",
				"anchor:locality"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 3
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03",
							"h_pressure"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "present.settlements:home_f_12"
					}
				]
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [
				"event:maintenance_accord"
			],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"event:maintenance_accord": [
					{
						"detail": "maintenance_accord",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "event.narrative_key"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "16",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
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
				"life:resource_or_trade_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:resource_or_trade_commune": [
					{
						"detail": "resource_or_trade_commune",
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
							"t_step_03",
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
				"matched_preferences": [],
				"matched_required": [
					"structure:local_settlement",
					"anchor:locality"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 3
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03",
								"h_pressure"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "present.settlements:home_f_12"
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
				"matched_preferences": [
					"event:maintenance_accord"
				],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"event:maintenance_accord": [
						{
							"detail": "maintenance_accord",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "event.narrative_key"
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
					"history:cooperation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "16",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
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
					"life:resource_or_trade_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:resource_or_trade_commune": [
						{
							"detail": "resource_or_trade_commune",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"external_domination",
		"free_riding",
		"neglect",
		"route_monopoly"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"institutional_reform",
		"local_service",
		"reciprocity",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_03","h_pressure"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Fusil Reach (f_13)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"adaptive_aesthetics"
	],
	"doctrine_intensities": {
		"unfinished_form": "moderate"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"adaptive_aesthetics"
			],
			"display_name": "The Unfinished Form",
			"fears": [
				"forced_completion"
			],
			"goal_candidates": [
				{
					"desire": "adaptive_aesthetics",
					"explanation": "Consider adaptive aesthetics as a future social priority; no target, capability or completed action is asserted.",
					"id": "adaptive_aesthetics"
				}
			],
			"id": "unfinished_form",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual institutional reorganization plus adaptive identity supports the aesthetic value of change and incompleteness; no local modified bodies are inferred.",
				"id": "unfinished_form",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"formation:reorganization",
					"adaptive:adapt"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"adaptive:adapt": [
						{
							"detail": "adapt",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_pressure"
							],
							"source_path": "identity.adaptive_stance"
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
					]
				}
			},
			"taboos": [
				"enforced_aesthetic_stasis"
			],
			"values": [
				"artistry",
				"experimentation",
				"bodily_adaptation"
			]
		}
	],
	"eligible_doctrines": [
		"living_archive",
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"adaptive_customs",
		"archive_legitimacy",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_pressure"
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
				"detail": "geophysical_stress",
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
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_pressure"
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
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
					"t_step_03",
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_11"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"forced_completion"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_04",
			"h_pressure"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:village_union",
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
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
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [
				"memory:warning"
			],
			"matched_required": [
				"history:regional_pressure",
				"memory:warning"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "geophysical_stress",
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
							"t_step_04",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
				"target": 3,
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
			"explanation": "Actual institutional reorganization plus adaptive identity supports the aesthetic value of change and incompleteness; no local modified bodies are inferred.",
			"id": "unfinished_form",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"formation:reorganization",
				"adaptive:adapt"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"adaptive:adapt": [
					{
						"detail": "adapt",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_pressure"
						],
						"source_path": "identity.adaptive_stance"
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
					"target": 3,
					"weight": 6
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
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
				"record_destruction"
			],
			"value_tags": [
				"scholarship",
				"record_preservation"
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
					"memory:warning"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "geophysical_stress",
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
								"t_step_04",
								"h_pressure"
							],
							"source_path": "identity.memory_frame"
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
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
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
		"enforced_aesthetic_stasis"
	],
	"tension_tags": [
		"free_riding",
		"recklessness",
		"record_destruction"
	],
	"value_tags": [
		"artistry",
		"bodily_adaptation",
		"compassion",
		"duty",
		"experimentation",
		"hazard_awareness",
		"reciprocity",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"adaptive_aesthetics","explanation":"Consider adaptive aesthetics as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adaptive_aesthetics","intensity":"moderate","provenance":{"explanation":"Actual institutional reorganization plus adaptive identity supports the aesthetic value of change and incompleteness; no local modified bodies are inferred.","id":"unfinished_form","kind":"doctrine","matched_preferences":[],"matched_required":["formation:reorganization","adaptive:adapt"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"adaptive:adapt":[{"detail":"adapt","scope":"derived_identity","source_event_ids":["t_step_04","h_pressure"],"source_path":"identity.adaptive_stance"}],"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"unfinished_form","status":"candidate"}]`
