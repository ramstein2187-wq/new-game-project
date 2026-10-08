# Seed 24 — incident_military_batch, doctrine_return_to_deep

```text
History architecture v2 | generation algorithm v3 | seed 24 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"radiative_haze","response_motif":"maintenance_secession","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"remnant_mosaic"}
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
-489 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-464 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-454 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-350 h_pressure [DISASTER] Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved.
  scope=regional | objective cause_domain=natural
  actors: Hanar Gate (precursor), Kezosil (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"}]
-341 h_response [SPLIT] Maintainers withdrew central services and formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (precursor), Kezosil (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-335 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (precursor), Milen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-330 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (precursor), Kezosil (regional_body), Milen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-317 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-316 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-315 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-306 t_step_00 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Mivak Gate (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_02","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02","cohort_00"]}]
-287 t_step_01 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-267 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zonar Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]}]
-248 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kelen Ruin (f_05) | causes: t_step_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_05","b":"f_06","delta":-13,"kind":"relationship"}]
-228 t_step_04 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_02"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"}]
-47 s_00_00_deep_residence_record [SOCIAL_INCIDENT] Human-derived residents of two current communities occupied a shared Deep settlement, recording actual residence and a local home site. Residence does not change their Origin.
  scope=local | objective cause_domain=human
  actors: Nalith Reach (f_00), Hasil Well (f_04) | causes: t_root_f_00, t_step_01
  effects: [{"entity_id":"s_deep_home_0","kind":"activate"},{"entity_id":"s_deep_home_0","kind":"settlement","location_id":"region","owner_id":"f_00"},{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0"}]
-46 s_00_01_deep_settlement_evacuation [SOCIAL_INCIDENT] A local settlement failure forced the recorded Deep residents to evacuate to their surface homes. The lost Deep settlement remains identifiable; no Deep Core motive is asserted.
  scope=local | objective cause_domain=human
  actors: Nalith Reach (f_00), Hasil Well (f_04) | causes: t_root_f_00, s_00_00_deep_residence_record, t_step_01
  effects: [{"entity_id":"s_deep_home_0","kind":"retire"},{"hazard":"none","id":"s_lost_deep_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0"}]
-45 s_00_02_deep_memory_register [SOCIAL_INCIDENT] The displaced Deep residents retained their residence and evacuation records in a communal register. The record prescribes neither return nor avoidance.
  scope=local | objective cause_domain=human
  actors: Nalith Reach (f_00), Hasil Well (f_04) | causes: t_root_f_00, s_00_01_deep_settlement_evacuation, t_step_01
  effects: [{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0"}]
-44 s_01_03_cloning_archive_recovery [SOCIAL_INCIDENT] Residents recovered stored human-derived genomes and functioning cloning equipment; the equipment recovery is recorded before any clone-born cohort is produced.
  scope=local | objective cause_domain=human
  actors: Kelen Ruin (f_05) | causes: t_step_02
  effects: [{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_05"}]
-43 s_01_04_local_population_decline [SOCIAL_INCIDENT] A local disaster reduced the community population and left an abandoned workplace; surviving family stocks remained human-derived.
  scope=local | objective cause_domain=human
  actors: Kelen Ruin (f_05) | causes: t_step_02
  effects: [{"hazard":"none","id":"s_decline_1","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_05"}]
-42 s_01_05_military_batch [SOCIAL_INCIDENT] Residents used recovered cloning equipment to produce a human-derived military cohort with a documented dependent service status. Military role is not an Origin or species.
  scope=local | objective cause_domain=human
  actors: Kelen Ruin (f_05) | causes: t_step_02, s_01_03_cloning_archive_recovery
  effects: [{"entity_id":"s_cohort_1","kind":"activate"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_1"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_1"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"military_batch","record_type":"practice","reference_id":"s_cohort_1"}]
-41 s_01_06_clone_integration [SOCIAL_INCIDENT] The existing clone-born and natural-born residents received an institutional charter integrating citizenship, work and family relations.
  scope=local | objective cause_domain=human
  actors: Kelen Ruin (f_05) | causes: t_step_02, s_01_05_military_batch
  effects: [{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_1"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Mivak Gate (f_02) | causes: h_pressure, t_root_f_02
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_02"},{"kind":"reoccupy","owner_id":"f_02","purpose":"settlement","ruin_id":"pressure_site","settlement_id":"reused_site"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Nalith Reach (f_00), Todor Ruin (f_03) | causes: t_root_f_00, t_root_f_03
  effects: [{"a":"f_00","b":"f_03","delta":-32,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Mivak Gate (f_02), Kelen Ruin (f_05) | causes: t_root_f_02, t_step_02
  effects: [{"a":"f_02","b":"f_05","delta":-32,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Hasil Well (f_04), Sera Marsh (f_06) | causes: t_step_01, t_step_03
  effects: [{"a":"f_04","b":"f_06","delta":-27,"kind":"relationship"},{"hazard":"structural","id":"watchpost_2","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-22 h_relation_3 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Kelen Ruin (f_05), Sera Marsh (f_06) | causes: t_step_02, t_step_03
  effects: [{"a":"f_05","b":"f_06","delta":-32,"kind":"relationship"},{"hazard":"structural","id":"watchpost_3","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment was embedded in an old geological stratum; its origin and exact age remain unresolved.
  scope=local | objective cause_domain=unknown
  actors: Kelen Ruin (f_05) | causes: t_step_02
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"fragment_in_old_stratum","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Nalith Reach (f_00), Todor Ruin (f_03) | causes: h_relation_0
  effects: [{"a":"f_00","b":"f_03","delta":35,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nalith Reach | -454..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Zonar Gate | -317..-267 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Mivak Gate | -316..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Todor Ruin | -315..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Hasil Well | -287..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Kelen Ruin | -267..present | active | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Sera Marsh | -248..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Kedor Reach | -248..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Dalith Ruin | -228..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Hanar Gate | -489..-330 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-489 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-454 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-317 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-316 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-315 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-306 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-306 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_02, cohort_00 | events=t_step_00
-287 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_01
-287 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_01
-267 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-248 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_03
-248 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_03
-228 cohort_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-228 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_02 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-330 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-267 f_01: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_02
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_00_deep_residence_record"],"year":-47}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_00_deep_residence_record"],"year":-47}
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Social record: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Social record: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05","source_event_ids":["s_01_03_cloning_archive_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_05","source_event_ids":["s_01_03_cloning_archive_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_05","source_event_ids":["s_01_04_local_population_decline"],"year":-43}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_1","source_event_ids":["s_01_05_military_batch"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_1","source_event_ids":["s_01_05_military_batch"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"observe","record_id":"military_batch","record_type":"practice","reference_id":"s_cohort_1","source_event_ids":["s_01_05_military_batch"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_1","source_event_ids":["s_01_06_clone_integration"],"year":-41}
Current social fact: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05","source_event_ids":["s_01_03_cloning_archive_recovery"],"year":-44}
Current social fact: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_1","source_event_ids":["s_01_05_military_batch"],"year":-42}
Current social fact: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_1","source_event_ids":["s_01_05_military_batch"],"year":-42}
Current social fact: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_1","source_event_ids":["s_01_06_clone_integration"],"year":-41}
Region region: Bolith Ruin
Faction f_00: Nalith Reach | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=shelter
  identity=new_foundation/craft/preserve | interpretation=technical/warning | sources=t_root_f_00, h_pressure
  society patterns: Boundary Watch, Hazard Memory, Mutual Obligation, Ritual Stewardship
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Return to the Deep — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=history:deep_residence, history:deep_exile, institution:deep_memory
Faction f_02: Mivak Gate | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
  identity=new_foundation/exchange/adapt | interpretation=pragmatic/rupture | sources=t_root_f_02, h_collapse
  society patterns: Adaptive Customs, Boundary Watch, Newcomer Charter
  The Unfinished Form — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Todor Ruin | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=local_exchange
  identity=reformer/craft/withdraw | interpretation=pragmatic/warning | sources=t_root_f_03, h_pressure
  society patterns: Boundary Watch, Local Mandate
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_04: Hasil Well | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=shelter
  identity=new_foundation/refuge/rebuild | interpretation=pragmatic/grievance | sources=t_step_01, h_relation_2
  society patterns: Boundary Watch, Hazard Memory, Newcomer Charter
Faction f_05: Kelen Ruin | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=isolation
  identity=reformer/craft/preserve | interpretation=skeptical/opportunity | sources=t_step_02, h_discovery
  society patterns: Boundary Watch, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Sera Marsh | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=reformer/ritual/withdraw | interpretation=skeptical/rupture | sources=t_step_03, h_collapse
  society patterns: Boundary Watch, Closed Roads
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Kedor Reach | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=reformer/institution/preserve | interpretation=skeptical/continuity | sources=t_step_03
  society patterns: Maintenance Covenant, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Dalith Ruin | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=shelter
  identity=outsider/refuge/adapt | interpretation=pragmatic/rupture | sources=t_step_04, h_collapse
  society patterns: Newcomer Charter, Ritual Stewardship
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_02: parents=; ancestors=; sources=t_root_f_02
Ancestry f_03: parents=precursor; ancestors=precursor; sources=t_root_f_03, h_found, h_collapse
Ancestry f_04: parents=; ancestors=; sources=t_step_01
Ancestry f_05: parents=f_01; ancestors=f_01, precursor; sources=t_step_02, t_root_f_01, h_found, h_collapse
Ancestry f_06: parents=f_05; ancestors=f_01, f_05, precursor; sources=t_step_03, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_07: parents=f_05; ancestors=f_01, f_05, precursor; sources=t_step_03, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_08: parents=; ancestors=; sources=t_step_04
Relationship f_00 <-> f_03: 3; sources=h_relation_0, h_last
Relationship f_02 <-> f_05: -32; sources=h_relation_1
Relationship f_04 <-> f_06: -27; sources=h_relation_2
Relationship f_05 <-> f_06: -45; sources=t_step_03, h_relation_3
Settlement home_f_00: Veyvak | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Damar | owner=f_05 | region=region | sources=t_root_f_01, t_step_02
Settlement home_f_02: Bovak | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Luveyrin | owner=f_03 | region=region | sources=t_root_f_03
Settlement home_f_04: Kera | owner=f_04 | region=region | sources=t_step_01
Settlement home_f_05: Dabosen | owner=f_05 | region=region | sources=t_step_02
Settlement home_f_06: Bomiwen | owner=f_06 | region=region | sources=t_step_03
Settlement home_f_07: Veyrin | owner=f_07 | region=region | sources=t_step_03
Settlement home_f_08: Misenar | owner=f_08 | region=region | sources=t_step_04
Settlement reused_site: Fukerin | owner=f_02 | region=region | sources=h_reuse
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_hamlet | occupant=f_02 | region=region | sources=h_pressure, h_reuse
  site_type=residential | hazard=none | recorded_use=settlement
Ruin s_decline_1: abandoned_hamlet | occupant= | region=region | sources=s_01_04_local_population_decline
  site_type=residential | hazard=none | recorded_use=
Ruin s_lost_deep_0: abandoned_hamlet | occupant= | region=region | sources=s_00_01_deep_settlement_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_2: watchtower | occupant= | region=region | sources=h_relation_2
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_3: watchtower | occupant= | region=region | sources=h_relation_3
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
=== BELIEFS ===
Nalith Reach (f_00; knowledge=):
  [t_root_f_00; confidence 0.38; legitimacy] Our recorded formation was enclave_continuity. We define ourselves as a community formed after the old order failed. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.36; interpretation] Regional records remembered a veiled sky and unusual exposure. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.78; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_03","delta":-32}
  [h_discovery; confidence 0.52; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.84; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_03","delta":35}
  [; confidence 0.71; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_03","score":3}
Mivak Gate (f_02; knowledge=):
  [t_root_f_02; confidence 0.68; legitimacy] Our recorded formation was reorganization. We define ourselves as a community formed after the old order failed. Routes, exchange and reciprocal obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.36; interpretation] Regional records remembered a veiled sky and unusual exposure. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.54; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":-32}
  [h_discovery; confidence 0.65; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.46; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_05","score":-32}
Todor Ruin (f_03; knowledge=):
  [t_root_f_03; confidence 0.51; legitimacy] Our recorded formation was direct_successor. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records remembered a veiled sky and unusual exposure. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.81; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_00","b":"f_03","delta":-32}
  [h_discovery; confidence 0.67; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.80; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_00","b":"f_03","delta":35}
  [; confidence 0.41; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_03","score":3}
Hasil Well (f_04; knowledge=):
  [t_step_01; confidence 0.44; legitimacy] Our recorded formation was newcomer_formation. We define ourselves as a community formed after the old order failed. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.53; interpretation] Regional records remembered a veiled sky and unusual exposure. Whatever larger story people tell, our tradition remembers it as a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.73; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-27}
  [h_discovery; confidence 0.36; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.81; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":-27}
Kelen Ruin (f_05; knowledge=):
  [t_step_02; confidence 0.78; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records remembered a veiled sky and unusual exposure. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-13}
  [h_relation_1; confidence 0.58; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":-32}
  [h_relation_3; confidence 0.45; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-32}
  [h_discovery; confidence 0.42; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.72; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_02","b":"f_05","score":-32}
  [; confidence 0.42; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":-45}
Sera Marsh (f_06; knowledge=):
  [t_step_03; confidence 0.68; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered a veiled sky and unusual exposure. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.87; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-13}
  [h_relation_2; confidence 0.87; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-27}
  [h_relation_3; confidence 0.40; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-32}
  [h_discovery; confidence 0.85; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.57; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":-27}
  [; confidence 0.47; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":-45}
Kedor Reach (f_07; knowledge=):
  [t_step_03; confidence 0.36; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records remembered a veiled sky and unusual exposure. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.80; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
Dalith Ruin (f_08; knowledge=):
  [t_step_04; confidence 0.48; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.68; interpretation] Regional records remembered a veiled sky and unusual exposure. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.65; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":29,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","s_00_00_deep_residence_record","s_00_01_deep_settlement_evacuation","s_00_02_deep_memory_register","s_01_03_cloning_archive_recovery","s_01_04_local_population_decline","s_01_05_military_batch","s_01_06_clone_integration","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":27,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","s_00_00_deep_residence_record","s_00_01_deep_settlement_evacuation","s_00_02_deep_memory_register","s_01_03_cloning_archive_recovery","s_01_04_local_population_decline","s_01_05_military_batch","s_01_06_clone_integration","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":29}
```

## Nalith Reach (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"deep_route_recovery",
		"innerworld_site_search",
		"memory_source_recovery",
		"performance_preservation"
	],
	"doctrine_intensities": {
		"living_archive": "moderate",
		"return_to_deep": "fanatic"
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
					"life:ritual_authority"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"life:ritual_authority": [
						{
							"detail": "ritual_authority",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
							],
							"source_path": "entity.way_of_life"
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
		},
		{
			"category": "deep",
			"desires": [
				"deep_route_recovery",
				"innerworld_site_search"
			],
			"display_name": "Return to the Deep",
			"fears": [
				"deep_heritage_loss"
			],
			"goal_candidates": [
				{
					"desire": "deep_route_recovery",
					"explanation": "Investigate reopening; no route is created.",
					"id": "reopen_deep_route"
				},
				{
					"desire": "innerworld_site_search",
					"explanation": "Seek a site; no location is asserted.",
					"id": "locate_lost_innerworld_site"
				}
			],
			"id": "return_to_deep",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"history:deep_residence",
					"history:deep_exile",
					"institution:deep_memory"
				]
			},
			"provenance": {
				"explanation": "Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.",
				"id": "return_to_deep",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:deep_residence",
					"site:lost_deep_settlement"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 10
				},
				"support": {
					"history:deep_exile": [
						{
							"content_ids": [],
							"detail": "Objective scar:deep_exile",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_deep_settlement_evacuation"
							],
							"source_path": "present.social_history:scar:deep_exile"
						}
					],
					"history:deep_residence": [
						{
							"content_ids": [],
							"detail": "Objective site_history:deep_residence",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_deep_residence_record"
							],
							"source_path": "present.social_history:site_history:deep_residence"
						}
					],
					"institution:deep_memory": [
						{
							"content_ids": [],
							"detail": "Objective institution:deep_memory",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_02_deep_memory_register"
							],
							"source_path": "present.social_facts:institution:deep_memory"
						}
					],
					"site:lost_deep_settlement": [
						{
							"content_ids": [],
							"detail": "Objective site_history:deep_settlement_loss",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_deep_settlement_evacuation"
							],
							"source_path": "present.social_history:site_history:deep_settlement_loss"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"innerworld_memory"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"depth_taboo",
		"living_archive",
		"return_to_deep",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"ritual_stewardship",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
		"event:deep_memory_register": [
			{
				"detail": "deep_memory_register",
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_deep_memory_register"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_residence_record": [
			{
				"detail": "deep_residence_record",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_deep_residence_record"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_settlement_evacuation": [
			{
				"detail": "deep_settlement_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:enclave_survives": [
			{
				"detail": "enclave_survives",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
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
		"formation:enclave_continuity": [
			{
				"detail": "enclave_continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "35",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:deep_exile": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
			}
		],
		"history:deep_residence": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_residence",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_deep_residence_record"
				],
				"source_path": "present.social_history:site_history:deep_residence"
			}
		],
		"history:hostility": [
			{
				"detail": "-32",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:local_hazard_response": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
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
				"detail": "radiative_haze",
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
					"t_root_f_00",
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:deep_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:deep_memory",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_deep_memory_register"
				],
				"source_path": "present.social_facts:institution:deep_memory"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:ritual_authority": [
			{
				"detail": "ritual_authority",
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
					"h_pressure"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"site:lost_deep_settlement": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_settlement_loss",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:site_history:deep_settlement_loss"
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
		"deep_heritage_loss",
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_root_f_00",
			"h_pressure"
		],
		"source_facts": [
			"formation:enclave_continuity",
			"way_of_life:ritual_authority",
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
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [
				"memory:warning"
			],
			"matched_required": [
				"history:regional_pressure",
				"memory:warning",
				"role:shelter",
				"history:local_hazard_response"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 5
			},
			"support": {
				"history:local_hazard_response": [
					{
						"content_ids": [],
						"detail": "Objective scar:deep_exile",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_deep_settlement_evacuation"
						],
						"source_path": "present.social_history:scar:deep_exile"
					}
				],
				"history:regional_pressure": [
					{
						"detail": "radiative_haze",
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
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
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
						"detail": "35",
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
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:ritual_authority"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:ritual_authority": [
					{
						"detail": "ritual_authority",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
						],
						"source_path": "entity.way_of_life"
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
				"life:ritual_authority"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"life:ritual_authority": [
					{
						"detail": "ritual_authority",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.",
			"id": "return_to_deep",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:deep_residence",
				"site:lost_deep_settlement"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 10
			},
			"support": {
				"history:deep_exile": [
					{
						"content_ids": [],
						"detail": "Objective scar:deep_exile",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_deep_settlement_evacuation"
						],
						"source_path": "present.social_history:scar:deep_exile"
					}
				],
				"history:deep_residence": [
					{
						"content_ids": [],
						"detail": "Objective site_history:deep_residence",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_deep_residence_record"
						],
						"source_path": "present.social_history:site_history:deep_residence"
					}
				],
				"institution:deep_memory": [
					{
						"content_ids": [],
						"detail": "Objective institution:deep_memory",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_02_deep_memory_register"
						],
						"source_path": "present.social_facts:institution:deep_memory"
					}
				],
				"site:lost_deep_settlement": [
					{
						"content_ids": [],
						"detail": "Objective site_history:deep_settlement_loss",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_deep_settlement_evacuation"
						],
						"source_path": "present.social_history:site_history:deep_settlement_loss"
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
					"role:shelter",
					"history:local_hazard_response"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 5
				},
				"support": {
					"history:local_hazard_response": [
						{
							"content_ids": [],
							"detail": "Objective scar:deep_exile",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_deep_settlement_evacuation"
							],
							"source_path": "present.social_history:scar:deep_exile"
						}
					],
					"history:regional_pressure": [
						{
							"detail": "radiative_haze",
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
								"h_pressure"
							],
							"source_path": "identity.memory_frame"
						}
					],
					"role:shelter": [
						{
							"detail": "shelter",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
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
							"detail": "35",
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
					"life:ritual_authority"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:ritual_authority": [
						{
							"detail": "ritual_authority",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
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
		"memory_erasure"
	],
	"tension_tags": [
		"free_riding",
		"recklessness",
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"innerworld_memory",
		"memory_preservation",
		"oral_history",
		"performance",
		"reciprocity",
		"ritualism",
		"scholarship",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"innerworld_site_search","explanation":"Seek a site; no location is asserted.","historical_reference_ids":["s_deep_home_0"],"id":"locate_lost_innerworld_site","intensity":"fanatic","provenance":{"explanation":"Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.","id":"return_to_deep","kind":"doctrine","matched_preferences":[],"matched_required":["history:deep_residence","site:lost_deep_settlement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"site:lost_deep_settlement":[{"content_ids":[],"detail":"Objective site_history:deep_settlement_loss","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:site_history:deep_settlement_loss"}]}},"source_doctrine_id":"return_to_deep","status":"candidate"},{"desire":"deep_route_recovery","explanation":"Investigate reopening; no route is created.","historical_reference_ids":["s_deep_home_0"],"id":"reopen_deep_route","intensity":"fanatic","provenance":{"explanation":"Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.","id":"return_to_deep","kind":"doctrine","matched_preferences":[],"matched_required":["history:deep_residence","site:lost_deep_settlement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"site:lost_deep_settlement":[{"content_ids":[],"detail":"Objective site_history:deep_settlement_loss","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:site_history:deep_settlement_loss"}]}},"source_doctrine_id":"return_to_deep","status":"candidate"}]`

## Mivak Gate (f_02)

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
								"t_root_f_02",
								"h_collapse"
							],
							"source_path": "identity.adaptive_stance"
						}
					],
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_02"
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
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"adaptive_customs",
		"boundary_watch",
		"newcomer_charter",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
					"t_root_f_02",
					"h_collapse"
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
		"event:local_successor": [
			{
				"detail": "local_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:population_join": [
			{
				"detail": "population_join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
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
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-32",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:population_join": [
			{
				"detail": "Recorded population arrival/join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "effect.population.mode"
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
				"detail": "radiative_haze",
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
					"t_root_f_02",
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
					"t_root_f_02",
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
					"t_root_f_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "present.settlements:home_f_02"
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
	"faction_id": "f_02",
	"fear_tags": [
		"forced_completion"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_root_f_02",
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
							"t_root_f_02"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_root_f_02",
							"h_collapse"
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
			"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
			"id": "newcomer_charter",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:population_join"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"history:population_join": [
					{
						"detail": "Recorded population arrival/join",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00"
						],
						"source_path": "effect.population.mode"
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
							"t_root_f_02",
							"h_collapse"
						],
						"source_path": "identity.adaptive_stance"
					}
				],
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_02"
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
								"t_root_f_02"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_root_f_02",
								"h_collapse"
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
			"category": "membership",
			"display_name": "Newcomer Charter",
			"id": "newcomer_charter",
			"provenance": {
				"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
				"id": "newcomer_charter",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:population_join"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"history:population_join": [
						{
							"detail": "Recorded population arrival/join",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
							],
							"source_path": "effect.population.mode"
						}
					]
				}
			},
			"tension_tags": [
				"exclusion"
			],
			"value_tags": [
				"outsider",
				"hospitality"
			]
		}
	],
	"taboo_tags": [
		"enforced_aesthetic_stasis"
	],
	"tension_tags": [
		"exclusion",
		"rigidity",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"artistry",
		"bodily_adaptation",
		"duty",
		"experimentation",
		"hospitality",
		"outsider",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"adaptive_aesthetics","explanation":"Consider adaptive aesthetics as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adaptive_aesthetics","intensity":"moderate","provenance":{"explanation":"Actual institutional reorganization plus adaptive identity supports the aesthetic value of change and incompleteness; no local modified bodies are inferred.","id":"unfinished_form","kind":"doctrine","matched_preferences":[],"matched_required":["formation:reorganization","adaptive:adapt"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"adaptive:adapt":[{"detail":"adapt","scope":"derived_identity","source_event_ids":["t_root_f_02","h_collapse"],"source_path":"identity.adaptive_stance"}],"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_root_f_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"unfinished_form","status":"candidate"}]`

## Todor Ruin (f_03)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"infrastructure_repair",
		"preserve_institutions",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"world_must_be_mended": "moderate"
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
					"target": 2,
					"weight": 5
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_03"
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
				"matched_preferences": [],
				"matched_required": [
					"event:maintenance_accord"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"event:maintenance_accord": [
						{
							"detail": "maintenance_accord",
							"scope": "faction",
							"source_event_ids": [
								"h_last"
							],
							"source_path": "event.narrative_key"
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
		"continuity",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
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
		"event:local_successor": [
			{
				"detail": "local_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
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
		"formation:direct_successor": [
			{
				"detail": "direct_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "35",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-32",
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
				"detail": "radiative_haze",
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
					"t_root_f_03",
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
					"t_root_f_03",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:regional_commune": [
			{
				"detail": "regional_commune",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_pressure"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "present.settlements:home_f_03"
			}
		]
	},
	"faction_id": "f_03",
	"fear_tags": [
		"infrastructure_loss",
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_root_f_03",
			"h_pressure"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:regional_commune",
			"role:local_exchange",
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
				"life:regional_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"life:regional_commune": [
					{
						"detail": "regional_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_03"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_03"
						],
						"source_path": "present.settlements:home_f_03"
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
				"target": 2,
				"weight": 5
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_03"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
			"id": "world_must_be_mended",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"event:maintenance_accord"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"event:maintenance_accord": [
					{
						"detail": "maintenance_accord",
						"scope": "faction",
						"source_event_ids": [
							"h_last"
						],
						"source_path": "event.narrative_key"
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
					"life:regional_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"life:regional_commune": [
						{
							"detail": "regional_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_03"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_03"
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
		"gratuitous_institutional_destruction",
		"neglect"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"institutional_continuity",
		"local_service",
		"record_preservation",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_root_f_03"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"},{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Hasil Well (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"depth_taboo",
		"living_archive",
		"no_more_masters",
		"return_to_deep"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"newcomer_charter",
		"ritual_stewardship",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_2"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_2"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_memory_register": [
			{
				"detail": "deep_memory_register",
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_deep_memory_register"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_residence_record": [
			{
				"detail": "deep_residence_record",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_deep_residence_record"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:deep_settlement_evacuation": [
			{
				"detail": "deep_settlement_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:newcomer_entry": [
			{
				"detail": "newcomer_entry",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:deep_exile": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:scar:deep_exile"
			}
		],
		"history:deep_residence": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_residence",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_deep_residence_record"
				],
				"source_path": "present.social_history:site_history:deep_residence"
			}
		],
		"history:hostility": [
			{
				"detail": "-27",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:local_hazard_response": [
			{
				"content_ids": [],
				"detail": "Objective scar:deep_exile",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
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
				"detail": "radiative_haze",
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
					"h_relation_2"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:deep_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:deep_memory",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_deep_memory_register"
				],
				"source_path": "present.social_facts:institution:deep_memory"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_2"
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
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_2"
				],
				"source_path": "identity.memory_frame"
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
		"site:lost_deep_settlement": [
			{
				"content_ids": [],
				"detail": "Objective site_history:deep_settlement_loss",
				"reference_ids": [
					"s_deep_home_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_deep_settlement_evacuation"
				],
				"source_path": "present.social_history:site_history:deep_settlement_loss"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_04"
			}
		]
	},
	"faction_id": "f_04",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "grievance",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_01",
			"h_relation_2"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:ritual_authority",
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"event:border_dispute": [
					{
						"detail": "border_dispute",
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
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"role:shelter",
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
						"detail": "Objective scar:deep_exile",
						"reference_ids": [
							"s_deep_home_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_deep_settlement_evacuation"
						],
						"source_path": "present.social_history:scar:deep_exile"
					}
				],
				"history:regional_pressure": [
					{
						"detail": "radiative_haze",
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
							"t_step_01"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
			"id": "newcomer_charter",
			"kind": "society_trait",
			"matched_preferences": [
				"role:shelter"
			],
			"matched_required": [
				"formation:newcomer_formation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"formation:newcomer_formation": [
					{
						"detail": "newcomer_formation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
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
								"h_relation_2"
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
					"role:shelter",
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
							"detail": "Objective scar:deep_exile",
							"reference_ids": [
								"s_deep_home_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_deep_settlement_evacuation"
							],
							"source_path": "present.social_history:scar:deep_exile"
						}
					],
					"history:regional_pressure": [
						{
							"detail": "radiative_haze",
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
								"t_step_01"
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
			"category": "membership",
			"display_name": "Newcomer Charter",
			"id": "newcomer_charter",
			"provenance": {
				"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
				"id": "newcomer_charter",
				"kind": "society_trait",
				"matched_preferences": [
					"role:shelter"
				],
				"matched_required": [
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"formation:newcomer_formation": [
						{
							"detail": "newcomer_formation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "entity.formation_origin"
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
					]
				}
			},
			"tension_tags": [
				"exclusion"
			],
			"value_tags": [
				"outsider",
				"hospitality"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"exclusion",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"hospitality",
		"outsider",
		"vigilance"
	]
}
```

Candidates: `[]`

## Kelen Ruin (f_05)

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
								"t_step_02"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_02",
								"h_discovery"
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
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"boundary_watch",
		"closed_roads",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:cloning": [
			{
				"content_ids": [],
				"detail": "Objective capability:cloning",
				"reference_ids": [
					"f_05"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_cloning_archive_recovery"
				],
				"source_path": "present.social_facts:capability:cloning"
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
			},
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:clone_integration": [
			{
				"detail": "clone_integration",
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_clone_integration"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:cloning_archive_recovery": [
			{
				"detail": "cloning_archive_recovery",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_cloning_archive_recovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_population_decline": [
			{
				"detail": "local_population_decline",
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_local_population_decline"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:military_batch": [
			{
				"detail": "military_batch",
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_military_batch"
				],
				"source_path": "event.narrative_key"
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
		"history:clone_integration": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective institution:clone_integration",
				"reference_ids": [
					"s_cohort_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_clone_integration"
				],
				"source_path": "present.social_history:institution:clone_integration"
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-32",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-32",
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
				"detail": "radiative_haze",
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:clone_dependency": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective institution:clone_dependency",
				"reference_ids": [
					"s_cohort_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_military_batch"
				],
				"source_path": "present.social_facts:institution:clone_dependency"
			}
		],
		"institution:clone_integration": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective institution:clone_integration",
				"reference_ids": [
					"s_cohort_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_clone_integration"
				],
				"source_path": "present.social_facts:institution:clone_integration"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:religious_community": [
			{
				"detail": "religious_community",
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
		"population:clone_born": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective cohort:clone_born",
				"reference_ids": [
					"s_cohort_1"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_military_batch"
				],
				"source_path": "present.social_facts:cohort:clone_born"
			}
		],
		"role:isolation": [
			{
				"detail": "isolation",
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
					"t_root_f_01",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_05"
			}
		]
	},
	"faction_id": "f_05",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "opportunity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_02",
			"h_discovery"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:religious_community",
			"role:isolation",
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
					},
					{
						"detail": "border_dispute",
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
							"t_step_02"
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
							"t_step_02"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_02",
							"h_discovery"
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
						},
						{
							"detail": "border_dispute",
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
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
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
								"t_step_02"
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
		"duty",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_02","h_discovery"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Sera Marsh (f_06)

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
					"interpretation:skeptical"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"interpretation:skeptical": [
						{
							"detail": "skeptical",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03",
								"h_collapse"
							],
							"source_path": "identity.interpretation_mode"
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
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"boundary_watch",
		"closed_roads"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_collapse"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
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
				"detail": "-13",
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
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-32",
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
				"detail": "radiative_haze",
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
					"t_step_03",
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
					"t_step_03",
					"h_collapse"
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
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_03",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
			"role:isolation",
			"political_continuity:false"
		]
	},
	"provenance": [
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
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
					},
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_3"
						],
						"source_path": "event.narrative_key"
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
							"t_step_03",
							"h_collapse"
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
			"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
			"id": "measured_doubt",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"interpretation:skeptical"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"interpretation:skeptical": [
					{
						"detail": "skeptical",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03",
							"h_collapse"
						],
						"source_path": "identity.interpretation_mode"
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
								"h_relation_2"
							],
							"source_path": "event.narrative_key"
						},
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_3"
							],
							"source_path": "event.narrative_key"
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
								"t_step_03",
								"h_collapse"
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
		}
	],
	"taboo_tags": [
		"unsupported_certainty"
	],
	"tension_tags": [
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"duty",
		"scholarship",
		"skepticism",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":[],"matched_required":["interpretation:skeptical"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"interpretation:skeptical":[{"detail":"skeptical","scope":"derived_identity","source_event_ids":["t_step_03","h_collapse"],"source_path":"identity.interpretation_mode"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Kedor Reach (f_07)

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
								"t_step_03"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:reformer": [
						{
							"detail": "reformer",
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"maintenance_covenant",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
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
				"detail": "radiative_haze",
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
					"t_step_03"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
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
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_03"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:religious_community",
			"role:maintenance",
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
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:religious_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
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
							"t_step_03"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:reformer": [
					{
						"detail": "reformer",
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
					"target": 4,
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
		"neglect",
		"ritual_desecration"
	],
	"value_tags": [
		"adaptability",
		"craftsmanship",
		"duty",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_03"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Dalith Ruin (f_08)

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
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"formation:newcomer_formation": [
						{
							"detail": "newcomer_formation",
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
		"living_archive",
		"no_more_masters"
	],
	"eligible_traits": [
		"hazard_memory",
		"newcomer_charter",
		"ritual_stewardship",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
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
		"event:newcomer_entry": [
			{
				"detail": "newcomer_entry",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
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
				"detail": "radiative_haze",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"identity:outsider": [
			{
				"detail": "outsider",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:ritual_authority": [
			{
				"detail": "ritual_authority",
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
		"role:shelter": [
			{
				"detail": "shelter",
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
					"t_step_04"
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
		"continuity_stance": "outsider",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:ritual_authority",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
			"id": "newcomer_charter",
			"kind": "society_trait",
			"matched_preferences": [
				"role:shelter"
			],
			"matched_required": [
				"formation:newcomer_formation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 8
			},
			"support": {
				"formation:newcomer_formation": [
					{
						"detail": "newcomer_formation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
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
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:ritual_authority"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:ritual_authority": [
					{
						"detail": "ritual_authority",
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
				"formation:newcomer_formation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"formation:newcomer_formation": [
					{
						"detail": "newcomer_formation",
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
		"society_traits": 2
	},
	"society_traits": [
		{
			"category": "membership",
			"display_name": "Newcomer Charter",
			"id": "newcomer_charter",
			"provenance": {
				"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
				"id": "newcomer_charter",
				"kind": "society_trait",
				"matched_preferences": [
					"role:shelter"
				],
				"matched_required": [
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 8
				},
				"support": {
					"formation:newcomer_formation": [
						{
							"detail": "newcomer_formation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"role:shelter": [
						{
							"detail": "shelter",
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
				"exclusion"
			],
			"value_tags": [
				"outsider",
				"hospitality"
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
					"life:ritual_authority"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:ritual_authority": [
						{
							"detail": "ritual_authority",
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
				"ritual_desecration"
			],
			"value_tags": [
				"ritualism",
				"memory_preservation"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"exclusion",
		"ritual_desecration"
	],
	"value_tags": [
		"hospitality",
		"household_autonomy",
		"memory_preservation",
		"outsider",
		"ritualism",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:newcomer_formation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:newcomer_formation":[{"detail":"newcomer_formation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`
