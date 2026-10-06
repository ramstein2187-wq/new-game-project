# Seed 19 — additional_distinct_history

```text
History architecture v2 | generation algorithm v3 | seed 19 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"stratum_fragment","extra_core":"core_slope_failure","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"maintenance_secession","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"late_fragmentation"}
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
-530 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-505 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Fura Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-361 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Fura Well (precursor), Dalen (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-355 h_response [SPLIT] Maintainers withdrew central services and formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Fura Well (precursor), Dalen (regional_body), Nafusen (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-352 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Fura Well (precursor), Harin (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-347 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Fura Well (precursor), Dalen (regional_body), Nafusen (pressure_group), Harin (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-335 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-334 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-135 h_legacy_core [DISASTER] Core-associated infrastructure altered fluid pressure in an already stressed slope, inducing local failure. The purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors:  | causes:
  effects: [{"activation_reason":"unknown","id":"legacy_core","intent":"unknown","kind":"system_trace","operation":"induced_slope_failure","physical_basis":"existing_slope_stress_and_fluid_pressure","system_id":"deep_core","target_selection_reason":"unknown"}]
-95 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kemon Well (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"a":"f_00","b":"f_02","delta":-16,"kind":"relationship"}]
-89 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Milith Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_05","f_06","f_07"],"untracked_template_ids":[]}]
-82 t_step_02 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Sevak Marsh (f_06), Hasil Well (f_01), Misen Ruin (f_05) | causes: t_step_01, t_root_f_01, t_step_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","f_01","f_05"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_08"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
-75 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kemar Reach (f_08), Davak Reach (f_04) | causes: t_step_02, t_step_00
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"},{"disposition":"absorbed","entity_id":"f_08","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_04","kind":"retire"},{"disposition":"untracked","entity_id":"f_04","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-69 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sera Ruin (f_07) | causes: t_step_01
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"a":"f_07","b":"f_10","delta":-25,"kind":"relationship"}]
-47 s_00_00_machine_control_failure [SOCIAL_INCIDENT] An autonomous local control unit lost safe control and destroyed a workplace. This recorded harm is a control failure, not a machine war or an identified ancient-system intervention.
  scope=local | objective cause_domain=human
  actors: Sera Ruin (f_07) | causes: t_step_01
  effects: [{"hazard":"restricted","id":"s_damage_0","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_07","kind":"social_record","operation":"observe","record_id":"autonomous_machine_catastrophe","record_type":"scar","reference_id":"f_07"},{"content_id":"","entity_id":"f_07","kind":"social_record","operation":"observe","record_id":"autonomous_machine_harm","record_type":"practice","reference_id":"f_07"}]
-46 s_00_01_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Sera Ruin (f_07) | causes: t_step_01, s_00_00_machine_control_failure
  effects: [{"content_id":"","entity_id":"f_07","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_07"},{"content_id":"","entity_id":"f_07","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_07"}]
-45 s_01_02_deep_residence_record [SOCIAL_INCIDENT] Human-derived residents of two current communities occupied a shared Deep settlement, recording actual residence and a local home site. Residence does not change their Origin.
  scope=local | objective cause_domain=human
  actors: Bosil Ruin (f_11), Kesil Ruin (f_09) | causes: t_step_04, t_step_03
  effects: [{"entity_id":"s_deep_home_1","kind":"activate"},{"entity_id":"s_deep_home_1","kind":"settlement","location_id":"region","owner_id":"f_11"},{"content_id":"","entity_id":"f_11","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1"}]
-44 s_01_03_deep_settlement_evacuation [SOCIAL_INCIDENT] A local settlement failure forced the recorded Deep residents to evacuate to their surface homes. The lost Deep settlement remains identifiable; no Deep Core motive is asserted.
  scope=local | objective cause_domain=human
  actors: Bosil Ruin (f_11), Kesil Ruin (f_09) | causes: t_step_04, s_01_02_deep_residence_record, t_step_03
  effects: [{"entity_id":"s_deep_home_1","kind":"retire"},{"hazard":"none","id":"s_lost_deep_1","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_11","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_11","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1"}]
-43 s_01_04_deep_memory_register [SOCIAL_INCIDENT] The displaced Deep residents retained their residence and evacuation records in a communal register. The record prescribes neither return nor avoidance.
  scope=local | objective cause_domain=human
  actors: Bosil Ruin (f_11), Kesil Ruin (f_09) | causes: t_step_04, s_01_03_deep_settlement_evacuation, t_step_03
  effects: [{"content_id":"","entity_id":"f_11","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1"}]
-42 s_02_05_anti_entrenchment_reform [SOCIAL_INCIDENT] Residents reformed entrenched local offices into a recorded rotating stewardship institution without founding or retiring a polity.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_09"}]
-41 s_02_06_office_rotation_review [SOCIAL_INCIDENT] A later assembly carried out and reviewed the previously recorded rotation of officeholders.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03, s_02_05_anti_entrenchment_reform
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_09"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Kesil Ruin (f_09), Bosil Ruin (f_11) | causes: t_step_03, t_step_04
  effects: [{"a":"f_09","b":"f_11","delta":24,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Kemon Well (f_00), Bosil Ruin (f_11) | causes: t_root_f_00, t_step_04
  effects: [{"a":"f_00","b":"f_11","delta":26,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment was embedded in an old geological stratum; its origin and exact age remain unresolved.
  scope=local | objective cause_domain=unknown
  actors: Kemon Well (f_00) | causes: t_root_f_00
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"fragment_in_old_stratum","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kesil Ruin (f_09), Bosil Ruin (f_11) | causes: h_relation_0
  effects: [{"a":"f_09","b":"f_11","delta":-20,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kemon Well | -335..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Hasil Well | -334..-82 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Kelith Well | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Milith Gate | -95..-89 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Davak Reach | -95..-75 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Misen Ruin | -89..-82 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Sevak Marsh | -89..-82 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Sera Ruin | -89..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Kemar Reach | -82..-75 | extinct | parents=f_06, f_01, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Kesil Ruin | -75..present | active | parents=f_08, f_04 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Hamon Reach | -69..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Bosil Ruin | -69..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Fura Well | -530..-347 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-530 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-335 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-334 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-95 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-89 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-89 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-89 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-82 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_06, f_01, f_05 | events=t_step_02
-75 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_03
-69 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-69 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-347 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-89 f_03: absorbed | absorbed_into=f_05, f_06, f_07 | untracked_strata= | events=t_step_01
-82 f_06: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-82 f_01: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-82 f_05: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-75 f_08: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_03
-75 f_04: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_07","operation":"observe","record_id":"autonomous_machine_catastrophe","record_type":"scar","reference_id":"f_07","source_event_ids":["s_00_00_machine_control_failure"],"year":-47}
Social record: {"content_id":"","entity_id":"f_07","operation":"observe","record_id":"autonomous_machine_harm","record_type":"practice","reference_id":"f_07","source_event_ids":["s_00_00_machine_control_failure"],"year":-47}
Social record: {"content_id":"","entity_id":"f_07","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Social record: {"content_id":"","entity_id":"f_07","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_07","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Social record: {"content_id":"","entity_id":"f_11","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_02_deep_residence_record"],"year":-45}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_02_deep_residence_record"],"year":-45}
Social record: {"content_id":"","entity_id":"f_11","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_11","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_11","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_09","source_event_ids":["s_02_05_anti_entrenchment_reform"],"year":-42}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_09","source_event_ids":["s_02_06_office_rotation_review"],"year":-41}
Current social fact: {"content_id":"","entity_id":"f_07","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_09","source_event_ids":["s_02_05_anti_entrenchment_reform"],"year":-42}
Current social fact: {"content_id":"","entity_id":"f_11","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Region region: Nalith Marsh
Faction f_00: Kemon Well | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
  identity=heir/locality/preserve | interpretation=skeptical/warning | sources=t_root_f_00, h_legacy_core
  society patterns: Borrowed Offices, Hazard Memory, Mutual Obligation
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Kelith Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/locality/preserve | interpretation=technical/grievance | sources=t_step_00
  society patterns: Borrowed Offices, Boundary Watch, Household Sovereignty, Local Mandate
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Sera Ruin | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/ritual/withdraw | interpretation=technical/warning | sources=t_step_01, h_legacy_core
  society patterns: Borrowed Offices, Maintenance Covenant
Faction f_09: Kesil Ruin | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
  identity=heir/institution/rebuild | interpretation=pragmatic/opportunity | sources=t_step_03, h_relation_0
  society patterns: Archive Legitimacy, Borrowed Offices, Mutual Obligation, Rebuilt From Fragments
Faction f_10: Hamon Reach | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/locality/withdraw | interpretation=pragmatic/warning | sources=t_step_04, h_legacy_core
  society patterns: Borrowed Offices, Closed Roads, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Bosil Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/craft/withdraw | interpretation=technical/debt | sources=t_step_04, h_relation_1
  society patterns: Borrowed Offices, Hazard Memory
Ancestry f_00: parents=precursor; ancestors=precursor; sources=t_root_f_00, h_found, h_collapse
Ancestry f_02: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_07: parents=f_03; ancestors=f_00, f_03, precursor; sources=t_step_01, t_root_f_00, t_step_00, h_found, h_collapse
Ancestry f_09: parents=f_08, f_04; ancestors=f_00, f_01, f_03, f_04, f_05, f_06, f_08, precursor; sources=t_step_03, t_root_f_00, t_root_f_01, t_step_02, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_10: parents=f_07; ancestors=f_00, f_03, f_07, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_11: parents=f_07; ancestors=f_00, f_03, f_07, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Relationship f_00 <-> f_02: -16; sources=t_step_00
Relationship f_00 <-> f_11: 26; sources=h_relation_1
Relationship f_07 <-> f_10: -25; sources=t_step_04
Relationship f_09 <-> f_11: 4; sources=h_relation_0, h_last
Settlement home_f_00: Lurin | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Bovak | owner=f_09 | region=region | sources=t_root_f_01, t_step_02, t_step_03
Settlement home_f_02: Lukedor | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Tonar | owner=f_09 | region=region | sources=t_step_00, t_step_01, t_step_02, t_step_03
Settlement home_f_04: Furin | owner=f_09 | region=region | sources=t_step_00, t_step_03
Settlement home_f_05: Zomidor | owner=f_09 | region=region | sources=t_step_01, t_step_02, t_step_03
Settlement home_f_06: Veysen | owner=f_09 | region=region | sources=t_step_01, t_step_02, t_step_03
Settlement home_f_07: Selen | owner=f_07 | region=region | sources=t_step_01
Settlement home_f_08: Hasil | owner=f_09 | region=region | sources=t_step_02, t_step_03
Settlement home_f_09: Mizosen | owner=f_09 | region=region | sources=t_step_03
Settlement home_f_10: Minar | owner=f_10 | region=region | sources=t_step_04
Settlement home_f_11: Mihanar | owner=f_11 | region=region | sources=t_step_04
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin s_damage_0: legacy_damage_site | occupant= | region=region | sources=s_00_00_machine_control_failure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin s_lost_deep_1: abandoned_hamlet | occupant= | region=region | sources=s_01_03_deep_settlement_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"legacy_core","intent":"unknown","operation":"induced_slope_failure","physical_basis":"existing_slope_stress_and_fluid_pressure","scope":"local","source_event_ids":["h_legacy_core"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Kemon Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.64; legitimacy] Our recorded formation was direct_successor. We treat our offices as a continuation of an older political lineage. Shared places and local obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.77; interpretation] The infrastructure change is recorded; attributing a purpose to the Deep goes beyond the evidence.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.82; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.86; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
  [; confidence 0.57; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
Kelith Well (f_02; knowledge=):
  [t_step_00; confidence 0.62; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.49; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_discovery; confidence 0.57; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.35; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
Sera Ruin (f_07; knowledge=):
  [t_step_01; confidence 0.61; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.50; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.59; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.71; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.56; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Kesil Ruin (f_09; knowledge=):
  [t_step_03; confidence 0.68; legitimacy] Our recorded formation was merger. We treat our offices as a continuation of an older political lineage. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.70; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.44; interpretation] Whatever commanded the old controls, we remember the routes, services or boundaries they changed; their purpose remains unknown.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.49; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_discovery; confidence 0.43; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.36; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.47; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
Hamon Reach (f_10; knowledge=):
  [t_step_04; confidence 0.36; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.74; interpretation] Whatever commanded the old controls, we remember the routes, services or boundaries they changed; their purpose remains unknown.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.58; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.85; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.76; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Bosil Ruin (f_11; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.73; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.87; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_relation_1; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.44; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.61; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","s_00_00_machine_control_failure","s_00_01_machine_safety_reform","s_01_02_deep_residence_record","s_01_03_deep_settlement_evacuation","s_01_04_deep_memory_register","s_02_05_anti_entrenchment_reform","s_02_06_office_rotation_review","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","s_00_00_machine_control_failure","s_00_01_machine_safety_reform","s_01_02_deep_residence_record","s_01_03_deep_settlement_evacuation","s_01_04_deep_memory_register","s_02_05_anti_entrenchment_reform","s_02_06_office_rotation_review","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":25}
```

## Kemon Well (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"memory_source_recovery",
		"performance_preservation"
	],
	"doctrine_intensities": {
		"living_archive": "moderate"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"performance_preservation",
				"memory_source_recovery"
			],
			"display_name": "Living Archive",
			"fears": [
				"memory_loss"
			],
			"goal_candidates": [
				{
					"desire": "performance_preservation",
					"explanation": "A future preservation priority; no particular tradition is invented.",
					"id": "preserve_performance_tradition"
				},
				{
					"desire": "memory_source_recovery",
					"explanation": "Seek memory sources, without asserting a lost object exists.",
					"id": "recover_lost_memory_source"
				}
			],
			"id": "living_archive",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.",
				"id": "living_archive",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"taboos": [
				"memory_erasure"
			],
			"values": [
				"ritualism",
				"oral_history",
				"performance",
				"scholarship"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"measured_doubt"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_legacy_core"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_legacy_core"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:local_successor": [
			{
				"detail": "local_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
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
			}
		],
		"event:stratum_fragment": [
			{
				"detail": "stratum_fragment",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
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
		"formation:direct_successor": [
			{
				"detail": "direct_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-16",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
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
				"detail": "fragment_in_old_stratum",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "effect.discovery.observation"
			}
		],
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_legacy_core"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_legacy_core"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:modified_human_community": [
			{
				"detail": "modified_human_community",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_legacy_core"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "present.settlements:home_f_00"
			}
		]
	},
	"faction_id": "f_00",
	"fear_tags": [
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "heir",
		"interpretation_mode": "skeptical",
		"memory_frame": "warning",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_root_f_00",
			"h_legacy_core"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:modified_human_community",
			"role:archives",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [
				"identity:heir"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_root_f_00",
							"h_legacy_core"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
						],
						"source_path": "entity.political_continuity"
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
						"detail": "succession_dispute",
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
							"t_root_f_00",
							"h_legacy_core"
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
						"detail": "26",
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
			"explanation": "Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.",
			"id": "living_archive",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
						],
						"source_path": "entity.regional_roles"
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
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [
					"identity:heir"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_root_f_00",
								"h_legacy_core"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
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
							"detail": "succession_dispute",
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
								"t_root_f_00",
								"h_legacy_core"
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
							"detail": "26",
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
		}
	],
	"taboo_tags": [
		"memory_erasure"
	],
	"tension_tags": [
		"anti_authority",
		"free_riding",
		"recklessness"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"institutional_continuity",
		"oral_history",
		"performance",
		"reciprocity",
		"ritualism",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"}]`

## Kelith Well (f_02)

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
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"household_sovereignty",
		"local_mandate"
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
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
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
		"history:hostility": [
			{
				"detail": "-16",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
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
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
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
		"interpretation_mode": "technical",
		"memory_frame": "grievance",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_00"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:kinship_clan",
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
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
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
			"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
			"id": "household_sovereignty",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:kinship_clan"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:kinship_clan": [
					{
						"detail": "kinship_clan",
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
							"t_step_00"
						],
						"source_path": "identity.social_anchor"
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
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
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
			"display_name": "Household Sovereignty",
			"id": "household_sovereignty",
			"provenance": {
				"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
				"id": "household_sovereignty",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:kinship_clan"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:kinship_clan": [
						{
							"detail": "kinship_clan",
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
				"external_domination"
			],
			"value_tags": [
				"household_autonomy"
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
								"t_step_00"
							],
							"source_path": "identity.social_anchor"
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
		"anti_authority",
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"institutional_reform",
		"local_service",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_00"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Sera Ruin (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"no_more_masters",
		"pure_flesh",
		"radical_impermanence",
		"sacred_craft",
		"silent_circuit",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"maintenance_covenant",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:machine_control_failure": [
			{
				"detail": "machine_control_failure",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_machine_control_failure"
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
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
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
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:autonomous_machine_catastrophe",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_machine_control_failure"
				],
				"source_path": "present.social_history:scar:autonomous_machine_catastrophe"
			}
		],
		"history:hostility": [
			{
				"detail": "-25",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_harm_memory": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_harm_memory",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_history:practice:machine_harm_memory"
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
					"h_legacy_core"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:ritual_authority": [
			{
				"detail": "ritual_authority",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:maintenance": [
			{
				"detail": "maintenance",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:autonomous_machine_catastrophe": [
			{
				"content_ids": [],
				"detail": "Objective scar:autonomous_machine_catastrophe",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_machine_control_failure"
				],
				"source_path": "present.social_history:scar:autonomous_machine_catastrophe"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_01",
			"h_legacy_core"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:ritual_authority",
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
							"t_step_01"
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
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:maintenance": [
					{
						"detail": "maintenance",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 0,
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
								"t_step_01"
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
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"role:maintenance": [
						{
							"detail": "maintenance",
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
		"craftsmanship",
		"duty",
		"institutional_continuity",
		"technical_competence"
	]
}
```

Candidates: `[]`

## Kesil Ruin (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"continuity",
		"depth_taboo",
		"living_archive",
		"measured_doubt",
		"order_above_survival",
		"return_to_deep"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"rotating_stewardship"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_0"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_0"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:anti_entrenchment_reform": [
			{
				"detail": "anti_entrenchment_reform",
				"scope": "faction",
				"source_event_ids": [
					"s_02_05_anti_entrenchment_reform"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_memory_register": [
			{
				"detail": "deep_memory_register",
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_deep_memory_register"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_residence_record": [
			{
				"detail": "deep_residence_record",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_deep_residence_record"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_settlement_evacuation": [
			{
				"detail": "deep_settlement_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:office_rotation_review": [
			{
				"detail": "office_rotation_review",
				"scope": "faction",
				"source_event_ids": [
					"s_02_06_office_rotation_review"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_merge": [
			{
				"detail": "political_merge",
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
		"formation:merger": [
			{
				"detail": "merger",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "24",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:deep_exile": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
			}
		],
		"history:deep_residence": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_residence",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_deep_residence_record"
				],
				"source_path": "present.social_history:site_history:deep_residence"
			}
		],
		"history:hostility": [
			{
				"detail": "-20",
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
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
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
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_0"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:deep_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:deep_memory",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_deep_memory_register"
				],
				"source_path": "present.social_facts:institution:deep_memory"
			}
		],
		"institution:rotating_office": [
			{
				"content_ids": [],
				"detail": "Objective institution:rotating_office",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_02_05_anti_entrenchment_reform"
				],
				"source_path": "present.social_facts:institution:rotating_office"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"h_relation_0"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"site:lost_deep_settlement": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_settlement_loss",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:site_history:deep_settlement_loss"
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
					"t_root_f_01",
					"t_step_02",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_01",
					"t_step_02",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_02",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_02",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_08"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_09"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_08, f_04",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_03",
			"h_relation_0"
		],
		"source_facts": [
			"formation:merger",
			"way_of_life:military_remnant",
			"role:archives",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "An archive role or recorded archive accord makes records a practical source of institutional standing.",
			"id": "archive_legitimacy",
			"kind": "society_trait",
			"matched_preferences": [
				"structure:inherited_offices"
			],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
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
				]
			}
		},
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [
				"identity:heir"
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
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03",
							"h_relation_0"
						],
						"source_path": "identity.continuity_stance"
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
						"detail": "24",
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
			"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
			"id": "rebuilt_from_fragments",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"formation:merger",
				"structure:multiple_parents"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"formation:merger": [
					{
						"detail": "merger",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_08, f_04",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.parent_ids"
					}
				]
			}
		}
	],
	"selection_targets": {
		"doctrines": 0,
		"society_traits": 4
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
				"matched_preferences": [
					"structure:inherited_offices"
				],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
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
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [
					"identity:heir"
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
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03",
								"h_relation_0"
							],
							"source_path": "identity.continuity_stance"
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
							"detail": "24",
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
			"category": "formation",
			"display_name": "Rebuilt From Fragments",
			"id": "rebuilt_from_fragments",
			"provenance": {
				"explanation": "Actual merger or multiple political parents supports consolidated institutions, not biological fusion.",
				"id": "rebuilt_from_fragments",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:merger",
					"structure:multiple_parents"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"formation:merger": [
						{
							"detail": "merger",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_08, f_04",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"factional_exclusion",
		"free_riding",
		"record_destruction"
	],
	"value_tags": [
		"coalition_building",
		"compassion",
		"duty",
		"institutional_continuity",
		"reciprocity",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[]`

## Hamon Reach (f_10)

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
								"t_step_04"
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
		}
	],
	"eligible_doctrines": [
		"continuity",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_legacy_core"
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
					"h_legacy_core"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-25",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
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
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_legacy_core"
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
					"h_legacy_core"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:regional_commune": [
			{
				"detail": "regional_commune",
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
					"h_legacy_core"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
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
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_04",
			"h_legacy_core"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:regional_commune",
			"role:isolation",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [
				"identity:heir"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_legacy_core"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.political_continuity"
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
							"t_step_04",
							"h_legacy_core"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"role:isolation": [
					{
						"detail": "isolation",
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
				"life:regional_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:regional_commune": [
					{
						"detail": "regional_commune",
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
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
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
			"display_name": "Borrowed Offices",
			"id": "borrowed_offices",
			"provenance": {
				"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
				"id": "borrowed_offices",
				"kind": "society_trait",
				"matched_preferences": [
					"identity:heir"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_legacy_core"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
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
								"t_step_04",
								"h_legacy_core"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"role:isolation": [
						{
							"detail": "isolation",
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
				"unrestricted_travel"
			],
			"value_tags": [
				"boundary_caution"
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
					"life:regional_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:regional_commune": [
						{
							"detail": "regional_commune",
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"free_riding",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"compassion",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"reciprocity",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Bosil Ruin (f_11)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"continuity",
		"depth_taboo",
		"no_more_masters",
		"radical_impermanence",
		"return_to_deep",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
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
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:deep_memory_register": [
			{
				"detail": "deep_memory_register",
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_deep_memory_register"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_residence_record": [
			{
				"detail": "deep_residence_record",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_deep_residence_record"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_settlement_evacuation": [
			{
				"detail": "deep_settlement_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
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
					"t_step_04"
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
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "24",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:deep_exile": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
			}
		],
		"history:deep_residence": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_residence",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_deep_residence_record"
				],
				"source_path": "present.social_history:site_history:deep_residence"
			}
		],
		"history:hostility": [
			{
				"detail": "-20",
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
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
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
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:deep_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:deep_memory",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_deep_memory_register"
				],
				"source_path": "present.social_facts:institution:deep_memory"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"site:lost_deep_settlement": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_settlement_loss",
				"reference_ids": [
					"s_deep_home_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:site_history:deep_settlement_loss"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_04",
			"h_relation_1"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:infrastructure_guild",
			"role:isolation",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.",
			"id": "borrowed_offices",
			"kind": "society_trait",
			"matched_preferences": [
				"identity:heir"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 8
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_relation_1"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.political_continuity"
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
				"target": 2,
				"weight": 3
			},
			"support": {
				"history:local_hazard_response": [
					{
						"content_ids": [],
						"detail": "Objective scar:deep_exile",
						"reference_ids": [
							"s_deep_home_1"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_03_deep_settlement_evacuation"
						],
						"source_path": "present.social_history:scar:deep_exile"
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
		}
	],
	"selection_targets": {
		"doctrines": 0,
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
				"matched_preferences": [
					"identity:heir"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 8
				},
				"support": {
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_relation_1"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
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
					"target": 2,
					"weight": 3
				},
				"support": {
					"history:local_hazard_response": [
						{
							"content_ids": [],
							"detail": "Objective scar:deep_exile",
							"reference_ids": [
								"s_deep_home_1"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_03_deep_settlement_evacuation"
							],
							"source_path": "present.social_history:scar:deep_exile"
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"recklessness"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"institutional_continuity"
	]
}
```

Candidates: `[]`
