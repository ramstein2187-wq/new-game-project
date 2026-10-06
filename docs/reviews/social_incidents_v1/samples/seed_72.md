# Seed 72 — unusual_ritual_trial

```text
History architecture v2 | generation algorithm v3 | seed 72 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"ritual_schism","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"no_direct_heir"}
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
-515 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-490 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dawen Ruin (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-363 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Dawen Ruin (precursor), Bohamon (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-356 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dawen Ruin (precursor), Bohamon (regional_body), Mizovak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-349 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Dawen Ruin (precursor), Danamar (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-341 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dawen Ruin (precursor), Bohamon (regional_body), Mizovak (pressure_group), Danamar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-329 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-328 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-323 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Veylen Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-322 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Veylen Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-311 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-310 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-309 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-299 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fuwen Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_05","f_06","f_07"],"untracked_template_ids":[]}]
-281 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fusen Marsh (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_05","b":"f_08","delta":-6,"kind":"relationship"}]
-262 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zolith Reach (f_06), Fudor Well (f_07) | causes: t_step_00, t_step_00
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_10"],"untracked_template_ids":[]},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_07","kind":"retire"},{"disposition":"untracked","entity_id":"f_07","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-243 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Fusen Marsh (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"retire"},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_05","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-224 t_step_04 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Nara Reach (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_03","kind":"retire"},{"hazard":"none","id":"abandoned_f_03","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-205 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Hador Marsh (f_04) | causes: t_root_f_04
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_11"],"untracked_template_ids":[]}]
-47 s_00_00_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Veyra Marsh (f_08) | causes: t_step_01
  effects: [{"content_id":"","entity_id":"f_08","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_08"},{"content_id":"","entity_id":"f_08","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_08"}]
-46 s_00_01_bodily_adaptation_program [SOCIAL_INCIDENT] Using the restored workshop, residents carried out a documented bodily modification program in response to local environmental exposure. No detailed physiology or new lineage identity is invented.
  scope=local | objective cause_domain=human
  actors: Veyra Marsh (f_08) | causes: t_step_01, s_00_00_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_08","kind":"social_record","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_08"},{"content_id":"","entity_id":"f_08","kind":"social_record","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_08"},{"content_id":"","entity_id":"f_08","kind":"social_record","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_08"}]
-45 s_01_02_forced_evacuation [SOCIAL_INCIDENT] A hazardous local emergency forced evacuation of the community's recorded home. Survivors resettled and retained the identifiable abandoned site record.
  scope=local | objective cause_domain=human
  actors: Veysil Reach (f_09) | causes: t_step_01
  effects: [{"entity_id":"home_f_09","kind":"retire"},{"hazard":"none","id":"s_lost_home_1","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"entity_id":"s_relocated_1","kind":"activate"},{"entity_id":"s_relocated_1","kind":"settlement","location_id":"region","owner_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_09"}]
-44 s_01_03_homeland_memory_charter [SOCIAL_INCIDENT] Residents established a register preserving the association with their previously recorded lost homeland site; it executes no reclamation or territorial claim.
  scope=local | objective cause_domain=human
  actors: Veysil Reach (f_09) | causes: t_step_01, s_01_02_forced_evacuation
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_09"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Veyra Marsh (f_08) | causes: h_failure, t_step_01
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_08"},{"kind":"reoccupy","owner_id":"f_08","purpose":"settlement","ruin_id":"terminal_site","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veysil Reach (f_09), Veylith Reach (f_11) | causes: t_step_01, t_step_05
  effects: [{"a":"f_09","b":"f_11","delta":18,"kind":"relationship"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Veyra Marsh (f_08), Veylith Reach (f_11) | causes: t_step_01, t_step_05
  effects: [{"a":"f_08","b":"f_11","delta":-30,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Veylith Reach (f_11) | causes: t_step_05
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Veysil Reach (f_09), Veylith Reach (f_11) | causes: h_relation_0
  effects: [{"a":"f_09","b":"f_11","delta":-14,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Veylen Marsh | -329..-323 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Veylen Reach | -328..-322 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Fuwen Marsh | -311..-299 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Nara Reach | -310..-224 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Hador Marsh | -309..-205 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Fusen Marsh | -299..-243 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Zolith Reach | -299..-262 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Fudor Well | -299..-262 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Veyra Marsh | -281..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Veysil Reach | -281..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Fumon Gate | -262..present | active | parents=f_06, f_07 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Veylith Reach | -205..present | active | parents=f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dawen Ruin | -515..-341 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-515 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-329 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-328 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-311 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-310 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-309 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-299 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_00
-299 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_00
-299 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_00
-281 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_01
-281 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_01
-262 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_02
-205 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-341 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-323 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_0
-322 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_1
-299 f_02: absorbed | absorbed_into=f_05, f_06, f_07 | untracked_strata= | events=t_step_00
-262 f_06: absorbed | absorbed_into=f_10 | untracked_strata= | events=t_step_02
-262 f_07: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_02
-243 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-224 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
-205 f_04: absorbed | absorbed_into=f_11 | untracked_strata= | events=t_step_05
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_08","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_08","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_08","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_09","source_event_ids":["s_01_02_forced_evacuation"],"year":-45}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_09","source_event_ids":["s_01_02_forced_evacuation"],"year":-45}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_09","source_event_ids":["s_01_03_homeland_memory_charter"],"year":-44}
Current social fact: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_08","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_08","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_08","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_09","source_event_ids":["s_01_03_homeland_memory_charter"],"year":-44}
Region region: Funar Reach
Faction f_08: Veyra Marsh | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=reformer/locality/adapt | interpretation=ritual/opportunity | sources=t_step_01, h_reuse
  society patterns: Boundary Watch, Local Mandate
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Truth Through Trial — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Veysil Reach | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/exchange/withdraw | interpretation=skeptical/grievance | sources=t_step_01, h_last
  society patterns: Closed Roads, Hazard Memory, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Fumon Gate | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
  identity=breakaway/exchange/adapt | interpretation=ritual/rupture | sources=t_step_02, h_collapse
  society patterns: Rebuilt From Fragments, Route Commonwealth
  Practical Heresy — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Veylith Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
  identity=breakaway/refuge/rebuild | interpretation=pragmatic/debt | sources=t_step_05, h_relation_0
  society patterns: Adaptive Customs, Boundary Watch, Mutual Obligation
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_08: parents=f_05; ancestors=f_02, f_05; sources=t_step_01, t_root_f_02, t_step_00, t_step_03
Ancestry f_09: parents=f_05; ancestors=f_02, f_05; sources=t_step_01, t_root_f_02, t_step_00, t_step_03
Ancestry f_10: parents=f_06, f_07; ancestors=f_02, f_06, f_07; sources=t_step_02, t_root_f_02, t_step_00
Ancestry f_11: parents=f_04; ancestors=f_04; sources=t_step_05, t_root_f_04
Relationship f_08 <-> f_11: -30; sources=h_relation_1
Relationship f_09 <-> f_11: 4; sources=h_relation_0, h_last
Settlement home_f_04: Halith | owner=f_11 | region=region | sources=t_root_f_04, t_step_05
Settlement home_f_06: Mimirin | owner=f_10 | region=region | sources=t_step_00, t_step_02
Settlement home_f_07: Bonasil | owner=f_10 | region=region | sources=t_step_00, t_step_02
Settlement home_f_08: Minavak | owner=f_08 | region=region | sources=t_step_01
Settlement home_f_10: Bodor | owner=f_10 | region=region | sources=t_step_02
Settlement home_f_11: Ketomon | owner=f_11 | region=region | sources=t_step_05
Settlement reused_site: Danar | owner=f_08 | region=region | sources=h_reuse
Settlement s_relocated_1: Zosil | owner=f_09 | region=region | sources=s_01_02_forced_evacuation
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_failed_0
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_03: administrative_site | occupant= | region=region | sources=t_step_04
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin s_lost_home_1: abandoned_hamlet | occupant= | region=region | sources=s_01_02_forced_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant=f_08 | region=region | sources=h_failure, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Veyra Marsh (f_08; knowledge=):
  [t_step_01; confidence 0.56; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared places and local obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records inherited conflicting records of succession. Our rites preserve the event as a point from which later generations learned to rebuild, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.68; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_05","b":"f_08","delta":-6}
  [h_relation_1; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":-30}
  [h_discovery; confidence 0.80; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [; confidence 0.56; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_08","b":"f_11","score":-30}
Veysil Reach (f_09; knowledge=):
  [t_step_01; confidence 0.55; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.55; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":18}
  [h_discovery; confidence 0.65; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.78; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-14}
  [; confidence 0.71; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
Fumon Gate (f_10; knowledge=):
  [t_step_02; confidence 0.73; legitimacy] Our recorded formation was reorganization. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.41; interpretation] Regional records inherited conflicting records of succession. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.71; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
Veylith Reach (f_11; knowledge=):
  [t_step_05; confidence 0.84; legitimacy] Our recorded formation was reorganization. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.78; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.67; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":18}
  [h_relation_1; confidence 0.71; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":-30}
  [h_discovery; confidence 0.43; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.54; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-14}
  [; confidence 0.61; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_11","score":-30}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":28,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_biotech_workshop_recovery","s_00_01_bodily_adaptation_program","s_01_02_forced_evacuation","s_01_03_homeland_memory_charter","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":26,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_biotech_workshop_recovery","s_00_01_bodily_adaptation_program","s_01_02_forced_evacuation","s_01_03_homeland_memory_charter","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":28}
```

## Veyra Marsh (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"resist_domination",
		"test_unknown_phenomena"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate",
		"truth_through_trial": "moderate"
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
				"matched_preferences": [],
				"matched_required": [
					"formation:fragmentation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"formation:fragmentation": [
						{
							"detail": "fragmentation",
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
				"absolute_authority",
				"external_domination"
			],
			"values": [
				"household_autonomy",
				"shared_responsibility"
			]
		},
		{
			"category": "knowledge",
			"desires": [
				"test_unknown_phenomena"
			],
			"display_name": "Truth Through Trial",
			"fears": [
				"untested_hazards"
			],
			"goal_candidates": [
				{
					"desire": "test_unknown_phenomena",
					"explanation": "Consider test unknown phenomena as a future social priority; no target, capability or completed action is asserted.",
					"id": "test_unknown_phenomena"
				}
			],
			"id": "truth_through_trial",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.",
				"id": "truth_through_trial",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:recorded_testing"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"history:recorded_testing": [
						{
							"content_ids": [],
							"detail": "Objective practice:recorded_testing",
							"reference_ids": [
								"f_08"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_biotech_workshop_recovery"
							],
							"source_path": "present.social_history:practice:recorded_testing"
						}
					]
				}
			},
			"taboos": [
				"untested_certainty"
			],
			"values": [
				"experimentation",
				"technical_competence",
				"scholarship"
			]
		}
	],
	"eligible_doctrines": [
		"mutable_human",
		"no_more_masters",
		"radical_impermanence",
		"truth_through_trial"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_reuse"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_reuse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:biotechnology": [
			{
				"content_ids": [],
				"detail": "Objective capability:biotechnology",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_biotech_workshop_recovery"
				],
				"source_path": "present.social_facts:capability:biotechnology"
			}
		],
		"event:biotech_workshop_recovery": [
			{
				"detail": "biotech_workshop_recovery",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_biotech_workshop_recovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:bodily_adaptation_program": [
			{
				"detail": "bodily_adaptation_program",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "event.narrative_key"
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
					"t_step_01"
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
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:biological_adaptation": [
			{
				"content_ids": [],
				"detail": "Objective bodily_change:environmental_adaptation",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_history:bodily_change:environmental_adaptation"
			}
		],
		"history:bodily_modification": [
			{
				"content_ids": [],
				"detail": "Objective bodily_change:environmental_adaptation",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_history:bodily_change:environmental_adaptation"
			}
		],
		"history:hostility": [
			{
				"detail": "-6",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-30",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:recorded_testing": [
			{
				"content_ids": [],
				"detail": "Objective practice:recorded_testing",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_biotech_workshop_recovery"
				],
				"source_path": "present.social_history:practice:recorded_testing"
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
				"detail": "succession_dispute",
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
					"t_step_01",
					"h_reuse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:bodily_modification": [
			{
				"content_ids": [],
				"detail": "Objective institution:bodily_modification",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_facts:institution:bodily_modification"
			}
		],
		"institution:ecological_adaptation": [
			{
				"content_ids": [],
				"detail": "Objective institution:ecological_adaptation",
				"reference_ids": [
					"f_08"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_facts:institution:ecological_adaptation"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_reuse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_reuse"
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
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_08"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "present.settlements:reused_site"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [
		"subjugation",
		"untested_hazards"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "opportunity",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_01",
			"h_reuse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:village_union",
			"role:shelter",
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
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
				"target": 2,
				"weight": 5
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_01",
							"h_reuse"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "present.settlements:home_f_08"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"h_reuse"
						],
						"source_path": "present.settlements:reused_site"
					}
				]
			}
		},
		{
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"formation:fragmentation": [
					{
						"detail": "fragmentation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
					}
				]
			}
		},
		{
			"explanation": "Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.",
			"id": "truth_through_trial",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:recorded_testing"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"history:recorded_testing": [
					{
						"content_ids": [],
						"detail": "Objective practice:recorded_testing",
						"reference_ids": [
							"f_08"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_biotech_workshop_recovery"
						],
						"source_path": "present.social_history:practice:recorded_testing"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 2,
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
					"target": 2,
					"weight": 5
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_01",
								"h_reuse"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "present.settlements:home_f_08"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"h_reuse"
							],
							"source_path": "present.settlements:reused_site"
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
		"external_domination",
		"untested_certainty"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"experimentation",
		"household_autonomy",
		"local_service",
		"scholarship",
		"shared_responsibility",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"},{"desire":"test_unknown_phenomena","explanation":"Consider test unknown phenomena as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_08"],"id":"test_unknown_phenomena","intensity":"moderate","provenance":{"explanation":"Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.","id":"truth_through_trial","kind":"doctrine","matched_preferences":[],"matched_required":["history:recorded_testing"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"history:recorded_testing":[{"content_ids":[],"detail":"Objective practice:recorded_testing","reference_ids":["f_08"],"scope":"faction","source_event_ids":["s_00_00_biotech_workshop_recovery"],"source_path":"present.social_history:practice:recorded_testing"}]}},"source_doctrine_id":"truth_through_trial","status":"candidate"}]`

## Veysil Reach (f_09)

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
								"t_step_01"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_01",
								"h_last"
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"reclamation"
	],
	"eligible_traits": [
		"closed_roads",
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:forced_evacuation": [
			{
				"detail": "forced_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:homeland_memory_charter": [
			{
				"detail": "homeland_memory_charter",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_homeland_memory_charter"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
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
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "18",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:homeland_displacement": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"history:hostility": [
			{
				"detail": "-14",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:local_hazard_response": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
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
				"detail": "succession_dispute",
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
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:homeland_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:homeland_memory",
				"reference_ids": [
					"home_f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_homeland_memory_charter"
				],
				"source_path": "present.social_facts:institution:homeland_memory"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:migrant_confederation": [
			{
				"detail": "migrant_confederation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
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
		"scar:lost_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"site:ancestral_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_forced_evacuation"
				],
				"source_path": "present.settlements:s_relocated_1"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "skeptical",
		"memory_frame": "grievance",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_01",
			"h_last"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:migrant_confederation",
			"role:isolation",
			"political_continuity:false"
		]
	},
	"provenance": [
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
							"t_step_01",
							"h_last"
						],
						"source_path": "identity.adaptive_stance"
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
				]
			}
		},
		{
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"history:local_hazard_response"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 3
			},
			"support": {
				"history:local_hazard_response": [
					{
						"content_ids": [],
						"detail": "Objective scar:lost_homeland",
						"reference_ids": [
							"home_f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_forced_evacuation"
						],
						"source_path": "present.social_history:scar:lost_homeland"
					}
				],
				"history:regional_pressure": [
					{
						"detail": "succession_dispute",
						"scope": "regional",
						"source_event_ids": [
							"h_pressure"
						],
						"source_path": "event.narrative_key"
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"event:trade_reopening": [
					{
						"detail": "trade_reopening",
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
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_01",
							"h_last"
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
								"t_step_01",
								"h_last"
							],
							"source_path": "identity.adaptive_stance"
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
			"display_name": "Hazard Memory",
			"id": "hazard_memory",
			"provenance": {
				"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
				"id": "hazard_memory",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_pressure",
					"history:local_hazard_response"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 3
				},
				"support": {
					"history:local_hazard_response": [
						{
							"content_ids": [],
							"detail": "Objective scar:lost_homeland",
							"reference_ids": [
								"home_f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_forced_evacuation"
							],
							"source_path": "present.social_history:scar:lost_homeland"
						}
					],
					"history:regional_pressure": [
						{
							"detail": "succession_dispute",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
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
					"target": 3,
					"weight": 6
				},
				"support": {
					"event:trade_reopening": [
						{
							"detail": "trade_reopening",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"recklessness",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"fair_exchange",
		"hazard_awareness",
		"household_autonomy",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_01","h_last"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Fumon Gate (f_10)

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
								"t_step_02"
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
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"rebuilt_from_fragments",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_collapse"
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
				"detail": "succession_dispute",
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
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_06"
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
				"source_path": "present.settlements:home_f_10"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_06, f_07",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:resource_or_trade_commune",
			"role:local_exchange",
			"political_continuity:false"
		]
	},
	"provenance": [
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
						"detail": "f_06, f_07",
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
				"role:local_exchange",
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
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
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
							"t_step_02"
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
							"detail": "f_06, f_07",
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
					"role:local_exchange",
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
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
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
		"route_monopoly"
	],
	"value_tags": [
		"adaptability",
		"coalition_building",
		"fair_exchange",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"moderate","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":[],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Veylith Reach (f_11)

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
								"h_relation_0"
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
		"measured_doubt",
		"order_above_survival",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"adaptive_customs",
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_0"
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
					"h_relation_0"
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
		"event:manufactured_fragment": [
			{
				"detail": "manufactured_fragment",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "18",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-30",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-14",
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
				"detail": "succession_dispute",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "unfamiliar_manufacturing",
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
					"t_step_05",
					"h_relation_0"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_0"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:military_remnant": [
			{
				"detail": "military_remnant",
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
					"h_relation_0"
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
					"t_root_f_04",
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_05",
			"h_relation_0"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:military_remnant",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
			"id": "adaptive_customs",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"formation:reorganization",
				"interpretation:pragmatic"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_05",
							"h_relation_0"
						],
						"source_path": "identity.interpretation_mode"
					}
				]
			}
		},
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [
				"life:military_remnant"
			],
			"matched_required": [
				"event:border_dispute"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
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
				],
				"life:military_remnant": [
					{
						"detail": "military_remnant",
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
						"detail": "18",
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
			"explanation": "Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.",
			"id": "radical_impermanence",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:breakaway"
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
							"h_relation_0"
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
			"category": "institutions",
			"display_name": "Adaptive Customs",
			"id": "adaptive_customs",
			"provenance": {
				"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
				"id": "adaptive_customs",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:reorganization",
					"interpretation:pragmatic"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_05",
								"h_relation_0"
							],
							"source_path": "identity.interpretation_mode"
						}
					]
				}
			},
			"tension_tags": [
				"rigidity"
			],
			"value_tags": [
				"adaptability",
				"technical_competence"
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
				"matched_preferences": [
					"life:military_remnant"
				],
				"matched_required": [
					"event:border_dispute"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
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
					],
					"life:military_remnant": [
						{
							"detail": "military_remnant",
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
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
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
							"detail": "18",
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
		}
	],
	"taboo_tags": [
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"free_riding",
		"rigidity",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"duty",
		"institutional_reform",
		"reciprocity",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_05","h_relation_0"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`
