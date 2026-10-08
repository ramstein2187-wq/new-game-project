# Seed 21 — additional_distinct_history

```text
History architecture v2 | generation algorithm v3 | seed 21 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"city_confederation","pressure_domain":"core_intervention","pressure_motif":"core_boundary_adjustment","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"consolidation_resplit"}
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
-549 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-524 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Nador Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-345 h_pressure [DISASTER] Core-associated equipment gradually changed local environmental boundary conditions. Its purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors: Nador Reach (precursor), Kesen (regional_body) | causes:
  effects: [{"hazard":"restricted","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"environmental_boundary_adjustment","physical_basis":"long_term_environmental_equipment","system_id":"environmental_infrastructure","target_selection_reason":"unknown"}]
-334 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Nador Reach (precursor), Kesen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-329 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Nador Reach (precursor), Lulith (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-321 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Nador Reach (precursor), Kesen (regional_body), Lulith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-309 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-308 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-307 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-306 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-305 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-297 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Serin Marsh (f_01), Midor Ruin (f_03) | causes: t_root_f_01, t_root_f_03
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-279 t_step_01 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Nalen Well (f_04) | causes: t_root_f_04
  effects: [{"entity_id":"f_04","kind":"retire"},{"disposition":"untracked","entity_id":"f_04","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_04","kind":"retire"},{"hazard":"none","id":"abandoned_f_04","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-260 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zorin Reach (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_06","f_07"],"untracked_template_ids":[]}]
-241 t_step_03 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Bowen Well (f_06) | causes: t_step_02
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_06","b":"f_08","delta":6,"kind":"relationship"}]
-223 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zora Reach (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_09","f_10"],"untracked_template_ids":[]}]
-204 t_step_05 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Bowen Well (f_06), Lulith Gate (f_10) | causes: t_step_02, t_step_04
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_11"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_11"],"untracked_template_ids":[]},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"disposition":"untracked","entity_id":"f_10","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-185 t_step_06 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Tosen Well (f_02), Bodor Well (f_09), Nasil Marsh (f_07) | causes: t_root_f_02, t_step_04, t_step_02
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02","f_09","f_07"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_12"],"untracked_template_ids":[]},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_09","kind":"retire"},{"disposition":"absorbed","entity_id":"f_09","kind":"population_fate","successor_ids":["f_12"],"untracked_template_ids":[]},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_12"],"untracked_template_ids":[]}]
-167 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veylith Well (f_11) | causes: t_step_05
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_11"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_11"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_13"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_11","kind":"retire"},{"disposition":"absorbed","entity_id":"f_11","kind":"population_fate","successor_ids":["f_13","f_14"],"untracked_template_ids":[]}]
-47 s_00_00_cloning_archive_recovery [SOCIAL_INCIDENT] Residents recovered stored human-derived genomes and functioning cloning equipment; the equipment recovery is recorded before any clone-born cohort is produced.
  scope=local | objective cause_domain=human
  actors: Lulith Ruin (f_12) | causes: t_step_06
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_12"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_12"}]
-46 s_00_01_local_population_decline [SOCIAL_INCIDENT] A local disaster reduced the community population and left an abandoned workplace; surviving family stocks remained human-derived.
  scope=local | objective cause_domain=human
  actors: Lulith Ruin (f_12) | causes: t_step_06
  effects: [{"hazard":"none","id":"s_decline_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_12"}]
-45 s_00_02_emergency_reconstitution [SOCIAL_INCIDENT] After documented population decline, residents used the recovered cloning equipment and stored genomes to reconstitute a human-derived cohort. Initial dependent legal status is recorded, not presumed from cloning.
  scope=local | objective cause_domain=human
  actors: Lulith Ruin (f_12) | causes: t_step_06, s_00_00_cloning_archive_recovery, s_00_01_local_population_decline
  effects: [{"entity_id":"s_cohort_0","kind":"activate"},{"content_id":"human_baseline","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_0"}]
-44 s_00_03_clone_divergence [SOCIAL_INCIDENT] Later members of the recorded cohort diverged from its stored template through accumulated environmental changes and variation. This record does not assert genetic engineering or a new lineage.
  scope=local | objective cause_domain=human
  actors: Lulith Ruin (f_12) | causes: t_step_06, s_00_02_emergency_reconstitution
  effects: [{"content_id":"human_baseline","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0"}]
-43 s_00_04_clone_integration [SOCIAL_INCIDENT] The existing clone-born and natural-born residents received an institutional charter integrating citizenship, work and family relations.
  scope=local | objective cause_domain=human
  actors: Lulith Ruin (f_12) | causes: t_step_06, s_00_02_emergency_reconstitution
  effects: [{"content_id":"human_baseline","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_0"}]
-42 s_01_05_autonomous_machine_conflict [SOCIAL_INCIDENT] Local autonomous machines fought residents and damaged a service site. Their manufacture and relationship to ancient systems are unclassified; no Core or Observer motive is asserted.
  scope=local | objective cause_domain=human
  actors: Zomon Marsh (f_14) | causes: t_step_07
  effects: [{"hazard":"restricted","id":"s_damage_1","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_14","kind":"social_record","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_14"},{"content_id":"","entity_id":"f_14","kind":"social_record","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_14"}]
-41 s_01_06_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Zomon Marsh (f_14) | causes: t_step_07, s_01_05_autonomous_machine_conflict
  effects: [{"content_id":"","entity_id":"f_14","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_14"},{"content_id":"","entity_id":"f_14","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_14"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Zowen Marsh (f_08) | causes: h_collapse, t_step_03
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_08"},{"kind":"reoccupy","owner_id":"f_08","purpose":"research","ruin_id":"old_administration","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Zowen Marsh (f_08), Lulith Ruin (f_12) | causes: t_step_03, t_step_06
  effects: [{"a":"f_08","b":"f_12","delta":16,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zowen Marsh (f_08), Zomon Marsh (f_14) | causes: t_step_03, t_step_07
  effects: [{"a":"f_08","b":"f_14","delta":16,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.
  scope=local | objective cause_domain=unknown
  actors: Zowen Marsh (f_08) | causes: t_step_03
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unidentified_surface_wreckage","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Zowen Marsh (f_08), Lulith Ruin (f_12) | causes: h_relation_0
  effects: [{"a":"f_08","b":"f_12","delta":-15,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zora Reach | -309..-223 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Serin Marsh | -308..-297 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Tosen Well | -307..-185 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Midor Ruin | -306..-297 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Nalen Well | -305..-279 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Zorin Reach | -297..-260 | extinct | parents=f_01, f_03 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Bowen Well | -260..-204 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Nasil Marsh | -260..-185 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Zowen Marsh | -241..present | active | parents=f_06 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Bodor Well | -223..-185 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Lulith Gate | -223..-204 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Veylith Well | -204..-167 | extinct | parents=f_06, f_10 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Lulith Ruin | -185..present | active | parents=f_02, f_09, f_07 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Tomar Reach | -167..present | active | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_14: Zomon Marsh | -167..present | active | parents=f_11 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Nador Reach | -549..-321 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-549 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-309 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-308 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-307 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-306 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-305 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-297 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_00
-260 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-260 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-241 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_03
-223 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_04
-223 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_04
-204 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_05
-185 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_02, f_09, f_07 | events=t_step_06
-167 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_11 | events=t_step_07
-167 f_14: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_11 | events=t_step_07
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-321 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-297 f_01: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_00
-297 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-279 f_04: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_01
-260 f_05: absorbed | absorbed_into=f_06, f_07 | untracked_strata= | events=t_step_02
-223 f_00: absorbed | absorbed_into=f_09, f_10 | untracked_strata= | events=t_step_04
-204 f_06: absorbed | absorbed_into=f_11 | untracked_strata= | events=t_step_05
-204 f_10: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_05
-185 f_02: absorbed | absorbed_into=f_12 | untracked_strata= | events=t_step_06
-185 f_09: absorbed | absorbed_into=f_12 | untracked_strata= | events=t_step_06
-185 f_07: absorbed | absorbed_into=f_12 | untracked_strata= | events=t_step_06
-167 f_11: absorbed | absorbed_into=f_13, f_14 | untracked_strata= | events=t_step_07
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_12","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_12","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_12","source_event_ids":["s_00_01_local_population_decline"],"year":-46}
Social record: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_12","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_12","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_03_clone_divergence"],"year":-44}
Social record: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_04_clone_integration"],"year":-43}
Social record: {"content_id":"","entity_id":"f_14","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_14","source_event_ids":["s_01_05_autonomous_machine_conflict"],"year":-42}
Social record: {"content_id":"","entity_id":"f_14","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_14","source_event_ids":["s_01_05_autonomous_machine_conflict"],"year":-42}
Social record: {"content_id":"","entity_id":"f_14","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_14","source_event_ids":["s_01_06_machine_safety_reform"],"year":-41}
Social record: {"content_id":"","entity_id":"f_14","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_14","source_event_ids":["s_01_06_machine_safety_reform"],"year":-41}
Current social fact: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_12","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Current social fact: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Current social fact: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Current social fact: {"content_id":"human_baseline","entity_id":"f_12","operation":"establish","record_id":"clone_integration","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_04_clone_integration"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_14","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_14","source_event_ids":["s_01_06_machine_safety_reform"],"year":-41}
Region region: Lumar Gate
Faction f_08: Zowen Marsh | facility_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=isolation
  identity=new_foundation/ritual/rebuild | interpretation=skeptical/warning | sources=t_step_03, h_pressure
  society patterns: Borrowed Offices, Hazard Memory, Route Commonwealth
  New Ecology — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Lulith Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=local_exchange
  identity=reformer/exchange/exploit | interpretation=pragmatic/continuity | sources=t_step_06
  society patterns: Borrowed Offices, Rebuilt From Fragments, Route Commonwealth
  Debt of Shelter — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_13: Tomar Reach | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=reformer/craft/preserve | interpretation=technical/continuity | sources=t_step_07
  society patterns: Borrowed Offices, Local Mandate, Mutual Obligation, Route Commonwealth
  Machine Revelation — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  New Ecology — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_14: Zomon Marsh | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=heir/exchange/exploit | interpretation=pragmatic/opportunity | sources=t_step_07, h_relation_1
  society patterns: Borrowed Offices, Mutual Obligation, Route Commonwealth
  Machine Revelation — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_08: parents=f_06; ancestors=f_01, f_03, f_05, f_06, precursor; sources=t_step_03, t_root_f_01, t_step_00, t_root_f_03, t_step_02, t_step_05, h_found, h_collapse
Ancestry f_12: parents=f_02, f_09, f_07; ancestors=f_00, f_01, f_02, f_03, f_05, f_07, f_09, precursor; sources=t_step_06, t_root_f_00, t_step_04, t_root_f_01, t_step_00, t_root_f_02, t_root_f_03, t_step_02, h_found, h_collapse
Ancestry f_13: parents=f_11; ancestors=f_00, f_01, f_03, f_05, f_06, f_10, f_11, precursor; sources=t_step_07, t_root_f_00, t_step_04, t_root_f_01, t_step_00, t_root_f_03, t_step_02, t_step_05, h_found, h_collapse
Ancestry f_14: parents=f_11; ancestors=f_00, f_01, f_03, f_05, f_06, f_10, f_11, precursor; sources=t_step_07, t_root_f_00, t_step_04, t_root_f_01, t_step_00, t_root_f_03, t_step_02, t_step_05, h_found, h_collapse
Relationship f_08 <-> f_12: 1; sources=h_relation_0, h_last
Relationship f_08 <-> f_14: 16; sources=h_relation_1
Settlement home_f_00: Boselen | owner=f_12 | region=region | sources=t_root_f_00, t_step_04, t_step_06
Settlement home_f_01: Lurin | owner=f_13 | region=region | sources=t_root_f_01, t_step_00, t_step_02, t_step_05, t_step_07
Settlement home_f_02: Mivak | owner=f_12 | region=region | sources=t_root_f_02, t_step_06
Settlement home_f_03: Mitonar | owner=f_13 | region=region | sources=t_root_f_03, t_step_00, t_step_02, t_step_05, t_step_07
Settlement home_f_05: Damon | owner=f_13 | region=region | sources=t_step_00, t_step_02, t_step_05, t_step_07
Settlement home_f_06: Fura | owner=f_13 | region=region | sources=t_step_02, t_step_05, t_step_07
Settlement home_f_07: Sevak | owner=f_12 | region=region | sources=t_step_02, t_step_06
Settlement home_f_08: Daveynar | owner=f_08 | region=region | sources=t_step_03
Settlement home_f_09: Furin | owner=f_12 | region=region | sources=t_step_04, t_step_06
Settlement home_f_10: Tomilith | owner=f_13 | region=region | sources=t_step_04, t_step_05, t_step_07
Settlement home_f_11: Misil | owner=f_13 | region=region | sources=t_step_05, t_step_07
Settlement home_f_12: Luzodor | owner=f_12 | region=region | sources=t_step_06
Settlement home_f_13: Ketosil | owner=f_13 | region=region | sources=t_step_07
Settlement home_f_14: Fukevak | owner=f_14 | region=region | sources=t_step_07
Settlement reused_site: Veydamar | owner=f_08 | region=region | sources=h_reuse
Ruin abandoned_f_04: administrative_site | occupant= | region=region | sources=t_step_01
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant=f_08 | region=region | sources=h_collapse, h_reuse
  site_type=records | hazard=none | recorded_use=research
Ruin pressure_site: legacy_damage_site | occupant= | region=region | sources=h_pressure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin s_damage_1: legacy_damage_site | occupant= | region=region | sources=s_01_05_autonomous_machine_conflict
  site_type=legacy | hazard=restricted | recorded_use=
Ruin s_decline_0: abandoned_hamlet | occupant= | region=region | sources=s_00_01_local_population_decline
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unidentified_surface_wreckage | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"primary_system","intent":"unknown","operation":"environmental_boundary_adjustment","physical_basis":"long_term_environmental_equipment","scope":"local","source_event_ids":["h_pressure"],"system_id":"environmental_infrastructure","target_selection_reason":"unknown"}
=== BELIEFS ===
Zowen Marsh (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.63; legitimacy] Our recorded formation was migration_settlement. We define ourselves as a community formed after the old order failed. Shared rites give the community continuity. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records remembered altered access and services, whose reason they could not establish. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.86; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":6}
  [h_relation_0; confidence 0.54; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":16}
  [h_relation_1; confidence 0.55; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":16}
  [h_discovery; confidence 0.41; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-15}
  [; confidence 0.68; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":1}
  [; confidence 0.88; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":16}
Lulith Ruin (f_12; knowledge=):
  [t_step_06; confidence 0.77; legitimacy] Our recorded formation was merger. We inherited older obligations, but not the right to reproduce the old order unchanged. Routes, exchange and reciprocal obligations bind us. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.80; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.64; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":16}
  [h_discovery; confidence 0.52; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.71; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_08","b":"f_12","delta":-15}
  [; confidence 0.43; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_12","score":1}
Tomar Reach (f_13; knowledge=):
  [t_step_07; confidence 0.55; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.75; interpretation] Regional records remembered altered access and services, whose reason they could not establish. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.52; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Zomon Marsh (f_14; knowledge=):
  [t_step_07; confidence 0.90; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Routes, exchange and reciprocal obligations bind us. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.55; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":16}
  [h_discovery; confidence 0.64; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.67; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":16}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":30,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_emergency_reconstitution","s_00_03_clone_divergence","s_00_04_clone_integration","s_01_05_autonomous_machine_conflict","s_01_06_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","h_response"],"causal_ratio":0.967741935483871,"direct_count":29,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_emergency_reconstitution","s_00_03_clone_divergence","s_00_04_clone_integration","s_01_05_autonomous_machine_conflict","s_01_06_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07"],"important_events":31}
```

## Zowen Marsh (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"accommodate_changed_environment"
	],
	"doctrine_intensities": {
		"new_ecology": "moderate"
	},
	"doctrines": [
		{
			"category": "environment",
			"desires": [
				"accommodate_changed_environment"
			],
			"display_name": "New Ecology",
			"fears": [
				"ecological_rigidity"
			],
			"goal_candidates": [
				{
					"desire": "accommodate_changed_environment",
					"explanation": "Consider accommodate changed environment as a future social priority; no target, capability or completed action is asserted.",
					"id": "accommodate_changed_environment"
				}
			],
			"id": "new_ecology",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.",
				"id": "new_ecology",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:environmental_change"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"scar:environmental_change": [
						{
							"detail": "core_boundary_adjustment",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"ecological_adaptation"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"continuity",
		"machine_revelation",
		"measured_doubt",
		"new_ecology",
		"practical_heresy",
		"sacred_craft",
		"truth_through_trial",
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
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"t_step_03",
					"h_pressure"
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
		"event:population_migration": [
			{
				"detail": "population_migration",
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
		"event:surface_wreckage": [
			{
				"detail": "surface_wreckage",
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
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:migration_settlement": [
			{
				"detail": "migration_settlement",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "6",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-15",
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
				"detail": "core_boundary_adjustment",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "unidentified_surface_wreckage",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
				],
				"source_path": "effect.discovery.observation"
			}
		],
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_pressure"
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
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:facility_community": [
			{
				"detail": "facility_community",
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
		"reuse:research": [
			{
				"detail": "research",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "effect.reoccupy.purpose"
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
		"scar:environmental_change": [
			{
				"detail": "core_boundary_adjustment",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
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
		"ecological_rigidity"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "skeptical",
		"memory_frame": "warning",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_03",
			"h_pressure"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:facility_community",
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
				"target": 3,
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
						"detail": "core_boundary_adjustment",
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
							"t_step_03",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
			"explanation": "Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.",
			"id": "new_ecology",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:environmental_change"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"scar:environmental_change": [
					{
						"detail": "core_boundary_adjustment",
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
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
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
							"detail": "core_boundary_adjustment",
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
								"t_step_03",
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
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"duty",
		"ecological_adaptation",
		"fair_exchange",
		"hazard_awareness",
		"institutional_continuity",
		"route_service"
	]
}
```

Candidates: `[{"desire":"accommodate_changed_environment","explanation":"Consider accommodate changed environment as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"accommodate_changed_environment","intensity":"moderate","provenance":{"explanation":"Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.","id":"new_ecology","kind":"doctrine","matched_preferences":[],"matched_required":["scar:environmental_change"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"scar:environmental_change":[{"detail":"core_boundary_adjustment","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"new_ecology","status":"candidate"}]`

## Lulith Ruin (f_12)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"displaced_aid",
		"refugee_shelter"
	],
	"doctrine_intensities": {
		"debt_of_shelter": "moderate"
	},
	"doctrines": [
		{
			"category": "ethics",
			"desires": [
				"refugee_shelter",
				"displaced_aid"
			],
			"display_name": "Debt of Shelter",
			"fears": [
				"abandonment"
			],
			"goal_candidates": [
				{
					"desire": "refugee_shelter",
					"explanation": "A standing future obligation, not a claim that refugees are currently waiting.",
					"id": "shelter_refugees"
				},
				{
					"desire": "displaced_aid",
					"explanation": "Consider aid when an actual displaced population is encountered.",
					"id": "aid_displaced_population"
				}
			],
			"id": "debt_of_shelter",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
				"id": "debt_of_shelter",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:clone_repopulation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"history:clone_repopulation": [
						{
							"content_ids": [
								"human_baseline"
							],
							"detail": "Objective practice:clone_repopulation",
							"reference_ids": [
								"s_cohort_0"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_02_emergency_reconstitution"
							],
							"source_path": "present.social_history:practice:clone_repopulation"
						}
					]
				}
			},
			"taboos": [
				"refugee_rejection"
			],
			"values": [
				"compassion",
				"hospitality",
				"outsider"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"debt_of_shelter",
		"machine_revelation",
		"new_ecology"
	],
	"eligible_traits": [
		"borrowed_offices",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:cloning": [
			{
				"content_ids": [],
				"detail": "Objective capability:cloning",
				"reference_ids": [
					"f_12"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_cloning_archive_recovery"
				],
				"source_path": "present.social_facts:capability:cloning"
			}
		],
		"event:clone_divergence": [
			{
				"detail": "clone_divergence",
				"scope": "faction",
				"source_event_ids": [
					"s_00_03_clone_divergence"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:clone_integration": [
			{
				"detail": "clone_integration",
				"scope": "faction",
				"source_event_ids": [
					"s_00_04_clone_integration"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:cloning_archive_recovery": [
			{
				"detail": "cloning_archive_recovery",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_cloning_archive_recovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:emergency_reconstitution": [
			{
				"detail": "emergency_reconstitution",
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_emergency_reconstitution"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_population_decline": [
			{
				"detail": "local_population_decline",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_local_population_decline"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_merge": [
			{
				"detail": "political_merge",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
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
		"formation:merger": [
			{
				"detail": "merger",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:clone_divergence": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective practice:clone_divergence",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_03_clone_divergence"
				],
				"source_path": "present.social_history:practice:clone_divergence"
			}
		],
		"history:clone_integration": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective institution:clone_integration",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_04_clone_integration"
				],
				"source_path": "present.social_history:institution:clone_integration"
			}
		],
		"history:clone_repopulation": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective practice:clone_repopulation",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_emergency_reconstitution"
				],
				"source_path": "present.social_history:practice:clone_repopulation"
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
				"detail": "-15",
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
				"detail": "core_boundary_adjustment",
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
					"t_step_06"
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
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_emergency_reconstitution"
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
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_04_clone_integration"
				],
				"source_path": "present.social_facts:institution:clone_integration"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06"
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
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_emergency_reconstitution"
				],
				"source_path": "present.social_facts:cohort:clone_born"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:environmental_change": [
			{
				"detail": "core_boundary_adjustment",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
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
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_00"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_02"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_07"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_09"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_12"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_02, f_09, f_07",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_12",
	"fear_tags": [
		"abandonment"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_06"
		],
		"source_facts": [
			"formation:merger",
			"way_of_life:resource_or_trade_commune",
			"role:local_exchange",
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
						],
						"source_path": "entity.political_continuity"
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
				"formation:merger",
				"structure:multiple_parents"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"formation:merger": [
					{
						"detail": "merger",
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
							"t_step_06"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_02, f_09, f_07",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
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
				"life:resource_or_trade_commune",
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
				],
				"life:resource_or_trade_commune": [
					{
						"detail": "resource_or_trade_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:local_exchange": [
					{
						"detail": "local_exchange",
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
			"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
			"id": "debt_of_shelter",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:clone_repopulation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"history:clone_repopulation": [
					{
						"content_ids": [
							"human_baseline"
						],
						"detail": "Objective practice:clone_repopulation",
						"reference_ids": [
							"s_cohort_0"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_02_emergency_reconstitution"
						],
						"source_path": "present.social_history:practice:clone_repopulation"
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
				"matched_preferences": [],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
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
					"formation:merger",
					"structure:multiple_parents"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"formation:merger": [
						{
							"detail": "merger",
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
								"t_step_06"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_02, f_09, f_07",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
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
					"life:resource_or_trade_commune",
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
					],
					"life:resource_or_trade_commune": [
						{
							"detail": "resource_or_trade_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:local_exchange": [
						{
							"detail": "local_exchange",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"refugee_rejection"
	],
	"tension_tags": [
		"anti_authority",
		"factional_exclusion",
		"route_monopoly"
	],
	"value_tags": [
		"coalition_building",
		"compassion",
		"duty",
		"fair_exchange",
		"hospitality",
		"institutional_continuity",
		"outsider",
		"route_service"
	]
}
```

Candidates: `[{"desire":"displaced_aid","explanation":"Consider aid when an actual displaced population is encountered.","historical_reference_ids":["s_cohort_0"],"id":"aid_displaced_population","intensity":"moderate","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":[],"matched_required":["history:clone_repopulation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:clone_repopulation":[{"content_ids":["human_baseline"],"detail":"Objective practice:clone_repopulation","reference_ids":["s_cohort_0"],"scope":"faction","source_event_ids":["s_00_02_emergency_reconstitution"],"source_path":"present.social_history:practice:clone_repopulation"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"},{"desire":"refugee_shelter","explanation":"A standing future obligation, not a claim that refugees are currently waiting.","historical_reference_ids":["s_cohort_0"],"id":"shelter_refugees","intensity":"moderate","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":[],"matched_required":["history:clone_repopulation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:clone_repopulation":[{"content_ids":["human_baseline"],"detail":"Objective practice:clone_repopulation","reference_ids":["s_cohort_0"],"scope":"faction","source_event_ids":["s_00_02_emergency_reconstitution"],"source_path":"present.social_history:practice:clone_repopulation"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"}]`

## Tomar Reach (f_13)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"accommodate_changed_environment",
		"interpret_legacy_behavior"
	],
	"doctrine_intensities": {
		"machine_revelation": "moderate",
		"new_ecology": "moderate"
	},
	"doctrines": [
		{
			"category": "machine",
			"desires": [
				"interpret_legacy_behavior"
			],
			"display_name": "Machine Revelation",
			"fears": [
				"lost_guidance"
			],
			"goal_candidates": [
				{
					"desire": "interpret_legacy_behavior",
					"explanation": "Consider interpret legacy behavior as a future social priority; no target, capability or completed action is asserted.",
					"id": "interpret_legacy_behavior"
				}
			],
			"id": "machine_revelation",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.",
				"id": "machine_revelation",
				"kind": "doctrine",
				"matched_preferences": [
					"interpretation:technical"
				],
				"matched_required": [
					"scar:environmental_change"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
					"interpretation:technical": [
						{
							"detail": "technical",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "identity.interpretation_mode"
						}
					],
					"scar:environmental_change": [
						{
							"detail": "core_boundary_adjustment",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"ritualism",
				"machine_study"
			]
		},
		{
			"category": "environment",
			"desires": [
				"accommodate_changed_environment"
			],
			"display_name": "New Ecology",
			"fears": [
				"ecological_rigidity"
			],
			"goal_candidates": [
				{
					"desire": "accommodate_changed_environment",
					"explanation": "Consider accommodate changed environment as a future social priority; no target, capability or completed action is asserted.",
					"id": "accommodate_changed_environment"
				}
			],
			"id": "new_ecology",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.",
				"id": "new_ecology",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:environmental_change"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"scar:environmental_change": [
						{
							"detail": "core_boundary_adjustment",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"ecological_adaptation"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"machine_revelation",
		"new_ecology",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
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
					"t_step_07"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.social_anchor"
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
				"detail": "core_boundary_adjustment",
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
					"t_step_07"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
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
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:environmental_change": [
			{
				"detail": "core_boundary_adjustment",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
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
					"t_step_00",
					"t_step_02",
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03",
					"t_step_00",
					"t_step_02",
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_02",
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02",
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04",
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_10"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05",
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_11"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"ecological_rigidity",
		"lost_guidance"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_07"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:regional_commune",
			"role:local_exchange",
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
							"t_step_07"
						],
						"source_path": "entity.political_continuity"
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
				"target": 4,
				"weight": 5
			},
			"support": {
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
							"t_root_f_01",
							"t_step_00",
							"t_step_02",
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_01"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_03",
							"t_step_00",
							"t_step_02",
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_03"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00",
							"t_step_02",
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_05"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02",
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_06"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04",
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_10"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05",
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_11"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "present.settlements:home_f_13"
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
				"target": 4,
				"weight": 6
			},
			"support": {
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
							"t_step_07"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.",
			"id": "machine_revelation",
			"kind": "doctrine",
			"matched_preferences": [
				"interpretation:technical"
			],
			"matched_required": [
				"scar:environmental_change"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
				"interpretation:technical": [
					{
						"detail": "technical",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "identity.interpretation_mode"
					}
				],
				"scar:environmental_change": [
					{
						"detail": "core_boundary_adjustment",
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
			"explanation": "Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.",
			"id": "new_ecology",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:environmental_change"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"scar:environmental_change": [
					{
						"detail": "core_boundary_adjustment",
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
		"doctrines": 2,
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
								"t_step_07"
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
					"target": 4,
					"weight": 5
				},
				"support": {
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
								"t_root_f_01",
								"t_step_00",
								"t_step_02",
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_01"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_03",
								"t_step_00",
								"t_step_02",
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_03"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00",
								"t_step_02",
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_05"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02",
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_06"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04",
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_10"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05",
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_11"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "present.settlements:home_f_13"
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
					"life:regional_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
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
								"t_step_07"
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
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"external_domination",
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"ecological_adaptation",
		"fair_exchange",
		"institutional_continuity",
		"local_service",
		"machine_study",
		"reciprocity",
		"ritualism",
		"route_service"
	]
}
```

Candidates: `[{"desire":"interpret_legacy_behavior","explanation":"Consider interpret legacy behavior as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"interpret_legacy_behavior","intensity":"moderate","provenance":{"explanation":"Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.","id":"machine_revelation","kind":"doctrine","matched_preferences":["interpretation:technical"],"matched_required":["scar:environmental_change"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"interpretation:technical":[{"detail":"technical","scope":"derived_identity","source_event_ids":["t_step_07"],"source_path":"identity.interpretation_mode"}],"scar:environmental_change":[{"detail":"core_boundary_adjustment","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"machine_revelation","status":"candidate"},{"desire":"accommodate_changed_environment","explanation":"Consider accommodate changed environment as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"accommodate_changed_environment","intensity":"moderate","provenance":{"explanation":"Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.","id":"new_ecology","kind":"doctrine","matched_preferences":[],"matched_required":["scar:environmental_change"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"scar:environmental_change":[{"detail":"core_boundary_adjustment","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"new_ecology","status":"candidate"}]`

## Zomon Marsh (f_14)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"interpret_legacy_behavior"
	],
	"doctrine_intensities": {
		"machine_revelation": "moderate"
	},
	"doctrines": [
		{
			"category": "machine",
			"desires": [
				"interpret_legacy_behavior"
			],
			"display_name": "Machine Revelation",
			"fears": [
				"lost_guidance"
			],
			"goal_candidates": [
				{
					"desire": "interpret_legacy_behavior",
					"explanation": "Consider interpret legacy behavior as a future social priority; no target, capability or completed action is asserted.",
					"id": "interpret_legacy_behavior"
				}
			],
			"id": "machine_revelation",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.",
				"id": "machine_revelation",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:environmental_change"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"scar:environmental_change": [
						{
							"detail": "core_boundary_adjustment",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"ritualism",
				"machine_study"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"machine_revelation",
		"new_ecology",
		"no_more_masters",
		"pure_flesh",
		"radical_impermanence",
		"silent_circuit",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_relation_1"
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
					"h_relation_1"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:autonomous_machine_conflict": [
			{
				"detail": "autonomous_machine_conflict",
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_autonomous_machine_conflict"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:machine_safety_reform": [
			{
				"detail": "machine_safety_reform",
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_machine_safety_reform"
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
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_14"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"history:cooperation": [
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_harm_memory": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_harm_memory",
				"reference_ids": [
					"f_14"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_machine_safety_reform"
				],
				"source_path": "present.social_history:practice:machine_harm_memory"
			}
		],
		"history:recent_machine_hostility": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_14"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_autonomous_machine_conflict"
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
				"detail": "core_boundary_adjustment",
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
					"t_step_07",
					"h_relation_1"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_14"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_06_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07",
					"h_relation_1"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
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
					"h_relation_1"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:environmental_change": [
			{
				"detail": "core_boundary_adjustment",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"scar:machine_war": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_14"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
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
		"lost_guidance"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_07",
			"h_relation_1"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:resource_or_trade_commune",
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
							"t_step_07",
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
							"t_step_07"
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
						"detail": "16",
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
							"t_step_07"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:local_exchange": [
					{
						"detail": "local_exchange",
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
			"explanation": "Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.",
			"id": "machine_revelation",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:environmental_change"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"scar:environmental_change": [
					{
						"detail": "core_boundary_adjustment",
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
								"t_step_07",
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
								"t_step_07"
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
							"detail": "16",
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
								"t_step_07"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:local_exchange": [
						{
							"detail": "local_exchange",
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
		"anti_authority",
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"institutional_continuity",
		"machine_study",
		"reciprocity",
		"ritualism",
		"route_service"
	]
}
```

Candidates: `[{"desire":"interpret_legacy_behavior","explanation":"Consider interpret legacy behavior as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"interpret_legacy_behavior","intensity":"moderate","provenance":{"explanation":"Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.","id":"machine_revelation","kind":"doctrine","matched_preferences":[],"matched_required":["scar:environmental_change"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"scar:environmental_change":[{"detail":"core_boundary_adjustment","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"machine_revelation","status":"candidate"}]`
