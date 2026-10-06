# Seed 18 — doctrine_machine_kinship

```text
History architecture v2 | generation algorithm v3 | seed 18 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"enclave_continuity"}
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
-541 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-516 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-506 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-359 h_pressure [MIGRATION] Overextended garrisons withdrew and organized displaced households around abandoned posts.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Veykesen (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-351 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Veykesen (regional_body), Hanalith (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-346 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Veyra (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-336 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Veykesen (regional_body), Hanalith (pressure_group), Veyra (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-323 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-322 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-321 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-312 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-292 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fuvak Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_05","f_06","f_07"],"untracked_template_ids":[]}]
-272 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dasil Ruin (f_03), Veydor Gate (f_07) | causes: t_root_f_03, t_step_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_07","kind":"retire"},{"disposition":"untracked","entity_id":"f_07","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-252 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fuvak Marsh (f_06) | causes: t_step_01
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_09","f_10"],"untracked_template_ids":[]}]
-232 t_step_04 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Kewen Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"a":"f_02","b":"f_11","delta":8,"kind":"relationship"}]
-211 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Lura Reach (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_12"],"untracked_template_ids":[]}]
-47 s_00_00_cloning_archive_recovery [SOCIAL_INCIDENT] Residents recovered stored human-derived genomes and functioning cloning equipment; the equipment recovery is recorded before any clone-born cohort is produced.
  scope=local | objective cause_domain=human
  actors: Bolen Reach (f_10) | causes: t_step_03
  effects: [{"content_id":"","entity_id":"f_10","kind":"social_record","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_10"},{"content_id":"","entity_id":"f_10","kind":"social_record","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_10"}]
-46 s_00_01_local_population_decline [SOCIAL_INCIDENT] A local disaster reduced the community population and left an abandoned workplace; surviving family stocks remained human-derived.
  scope=local | objective cause_domain=human
  actors: Bolen Reach (f_10) | causes: t_step_03
  effects: [{"hazard":"none","id":"s_decline_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_10","kind":"social_record","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_10"}]
-45 s_00_02_emergency_reconstitution [SOCIAL_INCIDENT] After documented population decline, residents used the recovered cloning equipment and stored genomes to reconstitute a human-derived cohort. Initial dependent legal status is recorded, not presumed from cloning.
  scope=local | objective cause_domain=human
  actors: Bolen Reach (f_10) | causes: t_step_03, s_00_00_cloning_archive_recovery, s_00_01_local_population_decline
  effects: [{"entity_id":"s_cohort_0","kind":"activate"},{"content_id":"human_baseline","entity_id":"f_10","kind":"social_record","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_10","kind":"social_record","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_10","kind":"social_record","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_0"}]
-44 s_00_03_clone_divergence [SOCIAL_INCIDENT] Later members of the recorded cohort diverged from its stored template through accumulated environmental changes and variation. This record does not assert genetic engineering or a new lineage.
  scope=local | objective cause_domain=human
  actors: Bolen Reach (f_10) | causes: t_step_03, s_00_02_emergency_reconstitution
  effects: [{"content_id":"human_baseline","entity_id":"f_10","kind":"social_record","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0"}]
-43 s_01_04_machine_maintenance_cooperation [SOCIAL_INCIDENT] A human community and autonomous machines jointly maintained local infrastructure over years; their working compact recorded mutual duties rather than a discovery alone.
  scope=local | objective cause_domain=human
  actors: Kemon Reach (f_09) | causes: t_step_03
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"cooperation","record_type":"machine_contact","reference_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"machine_accommodation","record_type":"institution","reference_id":"f_09"}]
-42 s_01_05_machine_compact_renewal [SOCIAL_INCIDENT] A later assembly renewed the recorded machine aid compact and reviewed the shared maintenance duties.
  scope=local | objective cause_domain=human
  actors: Kemon Reach (f_09) | causes: t_step_03, s_01_04_machine_maintenance_cooperation
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"machine_aid_renewal","record_type":"practice","reference_id":"f_09"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Veylith Reach (f_04), Kemon Reach (f_09) | causes: t_step_00, t_step_03
  effects: [{"a":"f_04","b":"f_09","delta":33,"kind":"relationship"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Kemon Reach (f_09), Minar Gate (f_12) | causes: t_step_03, t_step_05
  effects: [{"a":"f_09","b":"f_12","delta":-23,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veylith Reach (f_04), Lunar Marsh (f_11) | causes: t_step_00, t_step_04
  effects: [{"a":"f_04","b":"f_11","delta":11,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veylith Reach (f_04), Minar Gate (f_12) | causes: t_step_00, t_step_05
  effects: [{"a":"f_04","b":"f_12","delta":31,"kind":"relationship"}]
-20 h_relation_4 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Kemon Reach (f_09), Bolen Reach (f_10) | causes: t_step_03, t_step_03
  effects: [{"a":"f_09","b":"f_10","delta":-20,"kind":"relationship"},{"hazard":"structural","id":"watchpost_4","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-18 h_relation_5 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Kewen Marsh (f_02), Lunar Marsh (f_11) | causes: t_root_f_02, t_step_04
  effects: [{"a":"f_02","b":"f_11","delta":16,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Lunar Marsh (f_11) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Veylith Reach (f_04), Kemon Reach (f_09) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_09","delta":-29,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Dador Reach | -506..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Fuvak Gate | -323..-292 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Kewen Marsh | -322..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Dasil Ruin | -321..-272 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Veylith Reach | -312..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Lura Reach | -292..-211 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Fuvak Marsh | -292..-252 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Veydor Gate | -292..-272 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Veylen Gate | -272..present | active | parents=f_03, f_07 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Kemon Reach | -252..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Bolen Reach | -252..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Lunar Marsh | -232..present | active | parents=f_02 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Minar Gate | -211..present | active | parents=f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dador Marsh | -541..-336 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-541 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-506 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-323 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-322 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-321 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-312 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-312 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-292 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-292 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-292 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-272 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_02
-252 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_03
-252 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_03
-232 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_04
-211 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-336 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-292 f_01: absorbed | absorbed_into=f_05, f_06, f_07 | untracked_strata= | events=t_step_01
-272 f_03: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-272 f_07: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_02
-252 f_06: absorbed | absorbed_into=f_09, f_10 | untracked_strata= | events=t_step_03
-211 f_05: absorbed | absorbed_into=f_12 | untracked_strata= | events=t_step_05
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_10","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_10","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_10","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_10","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_10","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_10","source_event_ids":["s_00_01_local_population_decline"],"year":-46}
Social record: {"content_id":"human_baseline","entity_id":"f_10","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_10","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_10","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_10","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_03_clone_divergence"],"year":-44}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"cooperation","record_type":"machine_contact","reference_id":"f_09","source_event_ids":["s_01_04_machine_maintenance_cooperation"],"year":-43}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"machine_accommodation","record_type":"institution","reference_id":"f_09","source_event_ids":["s_01_04_machine_maintenance_cooperation"],"year":-43}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"machine_aid_renewal","record_type":"practice","reference_id":"f_09","source_event_ids":["s_01_05_machine_compact_renewal"],"year":-42}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"machine_accommodation","record_type":"institution","reference_id":"f_09","source_event_ids":["s_01_04_machine_maintenance_cooperation"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_10","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_10","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Current social fact: {"content_id":"human_baseline","entity_id":"f_10","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Current social fact: {"content_id":"human_baseline","entity_id":"f_10","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_emergency_reconstitution"],"year":-45}
Region region: Mimar Well
Faction f_00: Dador Reach | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=maintenance
  identity=new_foundation/exchange/withdraw | interpretation=pragmatic/rupture | sources=t_root_f_00, h_collapse
  society patterns: Maintenance Covenant, Route Commonwealth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Kewen Marsh | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
  identity=new_foundation/kin/adapt | interpretation=skeptical/rupture | sources=t_root_f_02, h_collapse
  society patterns: Mutual Obligation, Route Commonwealth
Faction f_04: Veylith Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
  identity=outsider/exchange/adapt | interpretation=skeptical/rupture | sources=t_step_00, h_collapse
  society patterns: Closed Roads, Local Mandate, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Veylen Gate | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=border_watch
  identity=reformer/refuge/rebuild | interpretation=pragmatic/opportunity | sources=t_step_02
  society patterns: Boundary Watch, Hazard Memory, Shelter Compact
  Practical Heresy — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=formation:reorganization, interpretation:pragmatic
Faction f_09: Kemon Reach | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=heir/institution/adapt | interpretation=pragmatic/rupture | sources=t_step_03, h_collapse
  society patterns: Boundary Watch, Mutual Obligation
  Machine Kinship — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=content:machine_contact, institution:machine_accommodation, history:machine_aid_renewal
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Bolen Reach | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/locality/withdraw | interpretation=pragmatic/continuity | sources=t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Closed Roads, Ritual Stewardship
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Lunar Marsh | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=border_watch
  identity=reformer/craft/adapt | interpretation=pragmatic/debt | sources=t_step_04, h_relation_5
  society patterns: Mutual Obligation, Route Commonwealth
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Minar Gate | facility_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=border_watch
  identity=new_foundation/locality/adapt | interpretation=technical/debt | sources=t_step_05, h_relation_3
  society patterns: Hazard Memory, Local Mandate, Maintenance Covenant, Route Commonwealth
  Practical Heresy — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_02: parents=; ancestors=; sources=t_root_f_02
Ancestry f_04: parents=; ancestors=; sources=t_step_00
Ancestry f_08: parents=f_03, f_07; ancestors=f_01, f_03, f_07, precursor; sources=t_step_02, t_root_f_01, t_step_01, t_root_f_03, h_found, h_collapse
Ancestry f_09: parents=f_06; ancestors=f_01, f_06, precursor; sources=t_step_03, t_root_f_01, t_step_01, h_found, h_collapse
Ancestry f_10: parents=f_06; ancestors=f_01, f_06, precursor; sources=t_step_03, t_root_f_01, t_step_01, h_found, h_collapse
Ancestry f_11: parents=f_02; ancestors=f_02; sources=t_step_04, t_root_f_02
Ancestry f_12: parents=f_05; ancestors=f_01, f_05, precursor; sources=t_step_05, t_root_f_01, t_step_01, h_found, h_collapse
Relationship f_02 <-> f_11: 24; sources=t_step_04, h_relation_5
Relationship f_04 <-> f_09: 4; sources=h_relation_0, h_last
Relationship f_04 <-> f_11: 11; sources=h_relation_2
Relationship f_04 <-> f_12: 31; sources=h_relation_3
Relationship f_09 <-> f_10: -20; sources=h_relation_4
Relationship f_09 <-> f_12: -23; sources=h_relation_1
Settlement home_f_00: Lunar | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Sesen | owner=f_12 | region=region | sources=t_root_f_01, t_step_01, t_step_05
Settlement home_f_02: Daveyrin | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Minar | owner=f_08 | region=region | sources=t_root_f_03, t_step_02
Settlement home_f_04: Nanar | owner=f_04 | region=region | sources=t_step_00
Settlement home_f_05: Kekenar | owner=f_12 | region=region | sources=t_step_01, t_step_05
Settlement home_f_06: Nalen | owner=f_09 | region=region | sources=t_step_01, t_step_03
Settlement home_f_07: Veylusen | owner=f_08 | region=region | sources=t_step_01, t_step_02
Settlement home_f_08: Midalen | owner=f_08 | region=region | sources=t_step_02
Settlement home_f_09: Kelen | owner=f_09 | region=region | sources=t_step_03
Settlement home_f_10: Mikelen | owner=f_10 | region=region | sources=t_step_03
Settlement home_f_11: Kevak | owner=f_11 | region=region | sources=t_step_04
Settlement home_f_12: Hakevak | owner=f_12 | region=region | sources=t_step_05
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin s_decline_0: abandoned_hamlet | occupant= | region=region | sources=s_00_01_local_population_decline
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_4: watchtower | occupant= | region=region | sources=h_relation_4
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Dador Reach (f_00; knowledge=):
  [t_root_f_00; confidence 0.72; legitimacy] Our recorded formation was enclave_continuity. We define ourselves as a community formed after the old order failed. Routes, exchange and reciprocal obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.80; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.56; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Kewen Marsh (f_02; knowledge=):
  [t_root_f_02; confidence 0.61; legitimacy] Our recorded formation was reorganization. We define ourselves as a community formed after the old order failed. Household ties are what bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.59; interpretation] Regional records remembered withdrawn garrisons and displaced households. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.63; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":8}
  [h_relation_5; confidence 0.46; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":16}
  [h_discovery; confidence 0.67; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.64; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_02","b":"f_11","score":24}
Veylith Reach (f_04; knowledge=):
  [t_step_00; confidence 0.68; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Routes, exchange and reciprocal obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.55; interpretation] Regional records remembered withdrawn garrisons and displaced households. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.58; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":33}
  [h_relation_2; confidence 0.68; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":11}
  [h_relation_3; confidence 0.85; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_12","delta":31}
  [h_discovery; confidence 0.42; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.83; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":-29}
  [; confidence 0.80; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_09","score":4}
  [; confidence 0.78; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":11}
  [; confidence 0.52; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_12","score":31}
Veylen Gate (f_08; knowledge=):
  [t_step_02; confidence 0.56; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.50; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Kemon Reach (f_09; knowledge=):
  [t_step_03; confidence 0.40; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.82; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":33}
  [h_relation_1; confidence 0.75; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_12","delta":-23}
  [h_relation_4; confidence 0.90; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-20}
  [h_discovery; confidence 0.78; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_04","b":"f_09","delta":-29}
  [; confidence 0.73; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_09","score":4}
  [; confidence 0.75; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-20}
  [; confidence 0.42; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_12","score":-23}
Bolen Reach (f_10; knowledge=):
  [t_step_03; confidence 0.72; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.75; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_4; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-20}
  [h_discovery; confidence 0.74; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.52; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-20}
Lunar Marsh (f_11; knowledge=):
  [t_step_04; confidence 0.41; legitimacy] Our recorded formation was migration_settlement. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.81; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.45; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":8}
  [h_relation_2; confidence 0.80; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":11}
  [h_relation_5; confidence 0.71; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_02","b":"f_11","delta":16}
  [h_discovery; confidence 0.58; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.88; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_11","score":24}
  [; confidence 0.85; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":11}
Minar Gate (f_12; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.83; legitimacy] Our recorded formation was reorganization. We define ourselves as a community formed after the old order failed. Shared places and local obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_12","delta":-23}
  [h_relation_3; confidence 0.46; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_12","delta":31}
  [h_discovery; confidence 0.69; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.82; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_12","score":31}
  [; confidence 0.44; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_12","score":-23}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":30,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_emergency_reconstitution","s_00_03_clone_divergence","s_01_04_machine_maintenance_cooperation","s_01_05_machine_compact_renewal","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":28,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_emergency_reconstitution","s_00_03_clone_divergence","s_01_04_machine_maintenance_cooperation","s_01_05_machine_compact_renewal","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":30}
```

## Dador Reach (f_00)

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
					"formation:enclave_continuity"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"formation:enclave_continuity": [
						{
							"detail": "enclave_continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_00"
							],
							"source_path": "entity.formation_origin"
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
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"maintenance_covenant",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
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
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00",
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
					"t_root_f_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00"
				],
				"source_path": "entity.regional_roles"
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
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_root_f_00",
			"h_collapse"
		],
		"source_facts": [
			"formation:enclave_continuity",
			"way_of_life:resource_or_trade_commune",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:maintenance": [
					{
						"detail": "maintenance",
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
			"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
			"id": "route_commonwealth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:resource_or_trade_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:resource_or_trade_commune": [
					{
						"detail": "resource_or_trade_commune",
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
			"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
			"id": "continuity",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"formation:enclave_continuity"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"formation:enclave_continuity": [
					{
						"detail": "enclave_continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_00"
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
								"t_root_f_00"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:resource_or_trade_commune": [
						{
							"detail": "resource_or_trade_commune",
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
		"neglect",
		"route_monopoly"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"fair_exchange",
		"institutional_continuity",
		"record_preservation",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["formation:enclave_continuity"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:enclave_continuity":[{"detail":"enclave_continuity","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Kewen Marsh (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"mutual_obligation",
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
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
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
		"event:population_migration": [
			{
				"detail": "population_migration",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:trade_reopening": [
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_5"
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
		"history:cooperation": [
			{
				"detail": "8",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_5"
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
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
					"h_collapse"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:migrant_confederation": [
			{
				"detail": "migrant_confederation",
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
			}
		]
	},
	"faction_id": "f_02",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_root_f_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:migrant_confederation",
			"role:local_exchange",
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
				"history:cooperation",
				"life:migrant_confederation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "8",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "16",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_5"
						],
						"source_path": "effect.relationship.delta"
					}
				],
				"life:migrant_confederation": [
					{
						"detail": "migrant_confederation",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_02"
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
				"role:local_exchange",
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
							"h_relation_5"
						],
						"source_path": "event.narrative_key"
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
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"history:cooperation",
					"life:migrant_confederation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "8",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "16",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_5"
							],
							"source_path": "effect.relationship.delta"
						}
					],
					"life:migrant_confederation": [
						{
							"detail": "migrant_confederation",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_02"
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
					"role:local_exchange",
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
								"h_relation_5"
							],
							"source_path": "event.narrative_key"
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
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"reciprocity",
		"route_service"
	]
}
```

Candidates: `[]`

## Veylith Reach (f_04)

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
								"t_step_00"
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
		"measured_doubt",
		"no_more_masters",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"closed_roads",
		"local_mandate",
		"mutual_obligation",
		"newcomer_charter",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
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
					"t_step_00",
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
		"event:newcomer_entry": [
			{
				"detail": "newcomer_entry",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
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
			},
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "33",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "11",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "31",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-29",
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
				"detail": "military_overextension",
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
					"t_step_00",
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
					"t_step_00",
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_04"
			}
		]
	},
	"faction_id": "f_04",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "outsider",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_00",
			"h_collapse"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:village_union",
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
				"target": 3,
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
						"source_path": "present.settlements:home_f_04"
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
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
					},
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
							"t_step_00"
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
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
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
							"source_path": "present.settlements:home_f_04"
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
								"h_relation_2"
							],
							"source_path": "event.narrative_key"
						},
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"external_domination",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"fair_exchange",
		"household_autonomy",
		"local_service",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:newcomer_formation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:newcomer_formation":[{"detail":"newcomer_formation","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Veylen Gate (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"adapt_social_practice"
	],
	"doctrine_intensities": {
		"practical_heresy": "hardline"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"formation:reorganization",
					"interpretation:pragmatic"
				]
			},
			"provenance": {
				"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
				"id": "practical_heresy",
				"kind": "doctrine",
				"matched_preferences": [
					"interpretation:pragmatic"
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
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "identity.interpretation_mode"
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
		"debt_of_shelter",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"adaptive_customs",
		"boundary_watch",
		"hazard_memory",
		"rebuilt_from_fragments",
		"shelter_compact"
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
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
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
		"memory:opportunity": [
			{
				"detail": "opportunity",
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
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
				"source_path": "present.settlements:home_f_08"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_03, f_07",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
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
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_02"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:refugee_community",
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
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"role:border_watch": [
					{
						"detail": "border_watch",
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
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 3
			},
			"support": {
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
				"role:border_watch": [
					{
						"detail": "border_watch",
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
			"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
			"id": "shelter_compact",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
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
				]
			}
		},
		{
			"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
			"id": "practical_heresy",
			"kind": "doctrine",
			"matched_preferences": [
				"interpretation:pragmatic"
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
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_02"
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
				"matched_preferences": [],
				"matched_required": [
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"role:border_watch": [
						{
							"detail": "border_watch",
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
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 3
				},
				"support": {
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
					"role:border_watch": [
						{
							"detail": "border_watch",
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
			"category": "membership",
			"display_name": "Shelter Compact",
			"id": "shelter_compact",
			"provenance": {
				"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
				"id": "shelter_compact",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
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
		"harmful_rigidity"
	],
	"tension_tags": [
		"cruelty",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"duty",
		"hazard_awareness",
		"hospitality",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"hardline","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":["interpretation:pragmatic"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}],"interpretation:pragmatic":[{"detail":"pragmatic","scope":"derived_identity","source_event_ids":["t_step_02"],"source_path":"identity.interpretation_mode"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Kemon Reach (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"machine_cooperation",
		"resist_domination"
	],
	"doctrine_intensities": {
		"machine_kinship": "fanatic",
		"no_more_masters": "moderate"
	},
	"doctrines": [
		{
			"category": "machine",
			"desires": [
				"machine_cooperation"
			],
			"display_name": "Machine Kinship",
			"fears": [
				"machine_exclusion"
			],
			"goal_candidates": [
				{
					"desire": "machine_cooperation",
					"explanation": "Consider machine cooperation as a future social priority; no target, capability or completed action is asserted.",
					"id": "machine_cooperation"
				}
			],
			"id": "machine_kinship",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"content:machine_contact",
					"institution:machine_accommodation",
					"history:machine_aid_renewal"
				]
			},
			"provenance": {
				"explanation": "Machines may be companions or community members only after actual authored local machine-society contact.",
				"id": "machine_kinship",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"content:machine_contact"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 10
				},
				"support": {
					"content:machine_contact": [
						{
							"content_ids": [],
							"detail": "Objective machine_contact:cooperation",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_04_machine_maintenance_cooperation"
							],
							"source_path": "present.social_history:machine_contact:cooperation"
						}
					],
					"history:machine_aid_renewal": [
						{
							"content_ids": [],
							"detail": "Objective practice:machine_aid_renewal",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_05_machine_compact_renewal"
							],
							"source_path": "present.social_history:practice:machine_aid_renewal"
						}
					],
					"institution:machine_accommodation": [
						{
							"content_ids": [],
							"detail": "Objective institution:machine_accommodation",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_04_machine_maintenance_cooperation"
							],
							"source_path": "present.social_facts:institution:machine_accommodation"
						}
					]
				}
			},
			"taboos": [
				"machine_abuse"
			],
			"values": [
				"machine_integration",
				"autonomous_machine",
				"companionship"
			]
		},
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
								"t_step_03"
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
		"machine_kinship",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"t_step_03",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"content:machine_contact": [
			{
				"content_ids": [],
				"detail": "Objective machine_contact:cooperation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_machine_maintenance_cooperation"
				],
				"source_path": "present.social_history:machine_contact:cooperation"
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
					"h_relation_4"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:machine_compact_renewal": [
			{
				"detail": "machine_compact_renewal",
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_machine_compact_renewal"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:machine_maintenance_cooperation": [
			{
				"detail": "machine_maintenance_cooperation",
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_machine_maintenance_cooperation"
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
				"detail": "33",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-29",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_aid": [
			{
				"content_ids": [],
				"detail": "Objective machine_contact:cooperation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_machine_maintenance_cooperation"
				],
				"source_path": "present.social_history:machine_contact:cooperation"
			}
		],
		"history:machine_aid_renewal": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_aid_renewal",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_05_machine_compact_renewal"
				],
				"source_path": "present.social_history:practice:machine_aid_renewal"
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
					"t_step_03",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:machine_accommodation": [
			{
				"content_ids": [],
				"detail": "Objective institution:machine_accommodation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_machine_maintenance_cooperation"
				],
				"source_path": "present.social_facts:institution:machine_accommodation"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
		"role:border_watch": [
			{
				"detail": "border_watch",
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
					"t_step_01",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_06"
			},
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
		"machine_exclusion",
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_03",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:provincial_council",
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					},
					{
						"detail": "border_dispute",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_4"
						],
						"source_path": "event.narrative_key"
					}
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "33",
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
			"explanation": "Machines may be companions or community members only after actual authored local machine-society contact.",
			"id": "machine_kinship",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"content:machine_contact"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 10
			},
			"support": {
				"content:machine_contact": [
					{
						"content_ids": [],
						"detail": "Objective machine_contact:cooperation",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_04_machine_maintenance_cooperation"
						],
						"source_path": "present.social_history:machine_contact:cooperation"
					}
				],
				"history:machine_aid_renewal": [
					{
						"content_ids": [],
						"detail": "Objective practice:machine_aid_renewal",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_05_machine_compact_renewal"
						],
						"source_path": "present.social_history:practice:machine_aid_renewal"
					}
				],
				"institution:machine_accommodation": [
					{
						"content_ids": [],
						"detail": "Objective institution:machine_accommodation",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_04_machine_maintenance_cooperation"
						],
						"source_path": "present.social_facts:institution:machine_accommodation"
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
							"t_step_03"
						],
						"source_path": "entity.formation_origin"
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
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						},
						{
							"detail": "border_dispute",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_4"
							],
							"source_path": "event.narrative_key"
						}
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "33",
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
		"absolute_authority",
		"external_domination",
		"machine_abuse"
	],
	"tension_tags": [
		"free_riding",
		"unrestricted_travel"
	],
	"value_tags": [
		"autonomous_machine",
		"companionship",
		"compassion",
		"duty",
		"household_autonomy",
		"machine_integration",
		"reciprocity",
		"shared_responsibility",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"machine_cooperation","explanation":"Consider machine cooperation as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_09"],"id":"machine_cooperation","intensity":"fanatic","provenance":{"explanation":"Machines may be companions or community members only after actual authored local machine-society contact.","id":"machine_kinship","kind":"doctrine","matched_preferences":[],"matched_required":["content:machine_contact"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"content:machine_contact":[{"content_ids":[],"detail":"Objective machine_contact:cooperation","reference_ids":["f_09"],"scope":"faction","source_event_ids":["s_01_04_machine_maintenance_cooperation"],"source_path":"present.social_history:machine_contact:cooperation"}],"history:machine_aid_renewal":[{"content_ids":[],"detail":"Objective practice:machine_aid_renewal","reference_ids":["f_09"],"scope":"faction","source_event_ids":["s_01_05_machine_compact_renewal"],"source_path":"present.social_history:practice:machine_aid_renewal"}],"institution:machine_accommodation":[{"content_ids":[],"detail":"Objective institution:machine_accommodation","reference_ids":["f_09"],"scope":"faction","source_event_ids":["s_01_04_machine_maintenance_cooperation"],"source_path":"present.social_facts:institution:machine_accommodation"}]}},"source_doctrine_id":"machine_kinship","status":"candidate"},{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Bolen Reach (f_10)

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
				"matched_preferences": [
					"memory:continuity"
				],
				"matched_required": [
					"life:ritual_authority"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"life:ritual_authority": [
						{
							"detail": "ritual_authority",
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
		"debt_of_shelter",
		"living_archive",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"closed_roads",
		"local_mandate",
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
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:cloning": [
			{
				"content_ids": [],
				"detail": "Objective capability:cloning",
				"reference_ids": [
					"f_10"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_cloning_archive_recovery"
				],
				"source_path": "present.social_facts:capability:cloning"
			}
		],
		"event:border_dispute": [
			{
				"detail": "border_dispute",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "event.narrative_key"
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
		"history:hostility": [
			{
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
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
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:ritual_authority": [
			{
				"detail": "ritual_authority",
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
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_03"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:ritual_authority",
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
				"target": 4,
				"weight": 8
			},
			"support": {
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
							"h_relation_4"
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
							"t_step_03"
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
			"matched_preferences": [
				"memory:continuity"
			],
			"matched_required": [
				"life:ritual_authority"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"life:ritual_authority": [
					{
						"detail": "ritual_authority",
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
								"t_step_03"
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
								"h_relation_4"
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
		"memory_erasure"
	],
	"tension_tags": [
		"anti_authority",
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"duty",
		"institutional_continuity",
		"memory_preservation",
		"oral_history",
		"performance",
		"ritualism",
		"scholarship",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}],"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_03"],"source_path":"identity.memory_frame"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}],"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_03"],"source_path":"identity.memory_frame"}]}},"source_doctrine_id":"living_archive","status":"candidate"}]`

## Lunar Marsh (f_11)

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
					"target": 2,
					"weight": 5
				},
				"support": {
					"history:unknown_discovery": [
						{
							"detail": "unfamiliar_manufacturing",
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
		"measured_doubt"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_5"
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
					"h_relation_5"
				],
				"source_path": "identity.social_anchor"
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
		"event:population_migration": [
			{
				"detail": "population_migration",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
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
			},
			{
				"detail": "trade_reopening",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_5"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:migration_settlement": [
			{
				"detail": "migration_settlement",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "8",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "11",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "16",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_5"
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_5"
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
					"h_relation_5"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:modified_human_community": [
			{
				"detail": "modified_human_community",
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
					"h_relation_5"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
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
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_04",
			"h_relation_5"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:modified_human_community",
			"role:border_watch",
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
						"detail": "8",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "11",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "16",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_5"
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
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
					},
					{
						"detail": "trade_reopening",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_5"
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
				"target": 2,
				"weight": 5
			},
			"support": {
				"history:unknown_discovery": [
					{
						"detail": "unfamiliar_manufacturing",
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
		"doctrines": 2,
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
							"detail": "8",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "11",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "16",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_5"
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
								"h_relation_2"
							],
							"source_path": "event.narrative_key"
						},
						{
							"detail": "trade_reopening",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_5"
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

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":[],"matched_required":["history:unknown_discovery"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"history:unknown_discovery":[{"detail":"unfamiliar_manufacturing","scope":"faction","source_event_ids":["h_discovery"],"source_path":"effect.discovery.observation"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Minar Gate (f_12)

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
								"t_step_05"
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
		"sacred_craft",
		"unfinished_form",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"maintenance_covenant",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_3"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_3"
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
					"t_step_05"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "31",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-23",
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
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_3"
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
					"h_relation_3"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:facility_community": [
			{
				"detail": "facility_community",
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
					"h_relation_3"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
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
					"t_root_f_01",
					"t_step_01",
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_05"
			},
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
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_05",
			"h_relation_3"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:facility_community",
			"role:border_watch",
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
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 3
			},
			"support": {
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
				"role:border_watch": [
					{
						"detail": "border_watch",
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
							"t_step_05",
							"h_relation_3"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_01",
							"t_step_01",
							"t_step_05"
						],
						"source_path": "present.settlements:home_f_01"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01",
							"t_step_05"
						],
						"source_path": "present.settlements:home_f_05"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
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
			"matched_preferences": [],
			"matched_required": [
				"life:facility_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:facility_community": [
					{
						"detail": "facility_community",
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
							"h_relation_3"
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
							"t_step_05"
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
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 3
				},
				"support": {
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
					"role:border_watch": [
						{
							"detail": "border_watch",
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
								"t_step_05",
								"h_relation_3"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01",
								"t_step_01",
								"t_step_05"
							],
							"source_path": "present.settlements:home_f_01"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01",
								"t_step_05"
							],
							"source_path": "present.settlements:home_f_05"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
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
				"matched_preferences": [],
				"matched_required": [
					"life:facility_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:facility_community": [
						{
							"detail": "facility_community",
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
		"harmful_rigidity"
	],
	"tension_tags": [
		"external_domination",
		"neglect",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"adaptability",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"hazard_awareness",
		"local_service",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"moderate","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":[],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`
