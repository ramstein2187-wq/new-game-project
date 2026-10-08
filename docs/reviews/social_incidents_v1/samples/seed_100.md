# Seed 100 — same_deep_history_opposite_doctrines

```text
History architecture v2 | generation algorithm v3 | seed 100 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"core_intervention","pressure_motif":"core_fault_release","response_motif":"ritual_schism","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"remnant_mosaic"}
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
-555 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-530 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-356 h_pressure [DISASTER] Core-associated infrastructure changed fluid pressure along an already stressed fault, inducing local stress release without creating new geological energy. Its purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors: Kelith Ruin (precursor), Halen (regional_body) | causes:
  effects: [{"hazard":"restricted","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"existing_fault_stress_release","physical_basis":"existing_fault_stress_and_fluid_pressure","system_id":"deep_core","target_selection_reason":"unknown"}]
-345 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (precursor), Halen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-340 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (precursor), Zosedor (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-336 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (precursor), Halen (regional_body), Zosedor (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-324 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-323 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-322 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-312 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Veysil Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-292 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bovak Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_03","f_04","f_05"],"untracked_template_ids":[]}]
-272 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dalen Reach (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_05","b":"f_06","delta":-9,"kind":"relationship"}]
-252 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Halen Ruin (f_03) | causes: t_step_01
  effects: [{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_03","kind":"retire"},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_03","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-232 t_step_04 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_07) | causes: t_step_02
  effects: [{"entity_id":"f_07","kind":"retire"},{"disposition":"untracked","entity_id":"f_07","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_07","kind":"retire"},{"hazard":"none","id":"abandoned_f_07","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-47 s_00_00_deep_residence_record [SOCIAL_INCIDENT] Human-derived residents of two current communities occupied a shared Deep settlement, recording actual residence and a local home site. Residence does not change their Origin.
  scope=local | objective cause_domain=human
  actors: Todor Marsh (f_04), Dalen Reach (f_05) | causes: t_step_01, t_step_01
  effects: [{"entity_id":"s_deep_home_0","kind":"activate"},{"entity_id":"s_deep_home_0","kind":"settlement","location_id":"region","owner_id":"f_04"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0"}]
-46 s_00_01_deep_settlement_evacuation [SOCIAL_INCIDENT] A local settlement failure forced the recorded Deep residents to evacuate to their surface homes. The lost Deep settlement remains identifiable; no Deep Core motive is asserted.
  scope=local | objective cause_domain=human
  actors: Todor Marsh (f_04), Dalen Reach (f_05) | causes: t_step_01, s_00_00_deep_residence_record, t_step_01
  effects: [{"entity_id":"s_deep_home_0","kind":"retire"},{"hazard":"none","id":"s_lost_deep_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0"}]
-45 s_00_02_deep_memory_register [SOCIAL_INCIDENT] The displaced Deep residents retained their residence and evacuation records in a communal register. The record prescribes neither return nor avoidance.
  scope=local | objective cause_domain=human
  actors: Todor Marsh (f_04), Dalen Reach (f_05) | causes: t_step_01, s_00_01_deep_settlement_evacuation, t_step_01
  effects: [{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0"}]
-44 s_01_03_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Bomon Marsh (f_06) | causes: t_step_02
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_06"}]
-43 s_01_04_lineage_preservation_program [SOCIAL_INCIDENT] A documented loss and bottleneck of local human-derived family stocks led to a genome preservation program. The loss concerns this local stock, not extinction of all humans.
  scope=local | objective cause_domain=human
  actors: Bomon Marsh (f_06) | causes: t_step_02, s_01_03_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Dalen Reach (f_05) | causes: t_step_04, t_step_01
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_05"},{"kind":"reoccupy","owner_id":"f_05","purpose":"settlement","ruin_id":"abandoned_f_07","settlement_id":"reused_site"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Todor Marsh (f_04), Bomon Marsh (f_06) | causes: t_step_01, t_step_02
  effects: [{"a":"f_04","b":"f_06","delta":-32,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Todor Marsh (f_04), Dalen Reach (f_05) | causes: t_step_01, t_step_01
  effects: [{"a":"f_04","b":"f_05","delta":15,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Bomon Marsh (f_06) | causes: t_step_02
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Todor Marsh (f_04), Bomon Marsh (f_06) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_06","delta":35,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Bovak Ruin | -324..-292 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Veysil Reach | -323..-312 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Veywen Ruin | -322..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Halen Ruin | -292..-252 | extinct | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Todor Marsh | -292..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Dalen Reach | -292..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Bomon Marsh | -272..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Borin Gate | -272..-232 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Kelith Ruin | -555..-336 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-555 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-324 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-323 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-322 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-292 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_01
-292 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_01
-292 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_01
-272 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-272 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-336 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-312 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-292 f_00: absorbed | absorbed_into=f_03, f_04, f_05 | untracked_strata= | events=t_step_01
-252 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-232 f_07: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_00_deep_residence_record"],"year":-47}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_00_deep_residence_record"],"year":-47}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_0","source_event_ids":["s_00_01_deep_settlement_evacuation"],"year":-46}
Social record: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Social record: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06","source_event_ids":["s_01_03_biotech_workshop_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_06","source_event_ids":["s_01_03_biotech_workshop_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_06","source_event_ids":["s_01_04_lineage_preservation_program"],"year":-43}
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06","source_event_ids":["s_01_04_lineage_preservation_program"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_0","source_event_ids":["s_00_02_deep_memory_register"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06","source_event_ids":["s_01_03_biotech_workshop_recovery"],"year":-44}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06","source_event_ids":["s_01_04_lineage_preservation_program"],"year":-43}
Region region: Kenar Marsh
Faction f_02: Veywen Ruin | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
  identity=reformer/refuge/adapt | interpretation=pragmatic/warning | sources=t_root_f_02, h_pressure
  society patterns: Adaptive Customs, Hazard Memory, Shelter Compact
  Practical Heresy — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=formation:reorganization, interpretation:pragmatic
Faction f_04: Todor Marsh | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=breakaway/exchange/exploit | interpretation=pragmatic/warning | sources=t_step_01, h_pressure
  society patterns: Archive Legitimacy, Boundary Watch, Hazard Memory
  Return to the Deep — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=history:deep_residence, history:deep_exile, institution:deep_memory
Faction f_05: Dalen Reach | facility_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/craft/adapt | interpretation=pragmatic/warning | sources=t_step_01, h_pressure
  society patterns: Closed Roads, Hazard Memory, Maintenance Covenant, Mutual Obligation
  Depth Taboo — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=history:deep_residence, history:deep_exile, institution:deep_memory
Faction f_06: Bomon Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=new_foundation/institution/rebuild | interpretation=pragmatic/opportunity | sources=t_step_02, h_discovery
  society patterns: Maintenance Covenant, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_02: parents=; ancestors=; sources=t_root_f_02
Ancestry f_04: parents=f_00; ancestors=f_00; sources=t_step_01, t_root_f_00
Ancestry f_05: parents=f_00; ancestors=f_00; sources=t_step_01, t_root_f_00
Ancestry f_06: parents=f_05; ancestors=f_00, f_05; sources=t_step_02, t_root_f_00, t_step_01
Relationship f_04 <-> f_05: 15; sources=h_relation_1
Relationship f_04 <-> f_06: 3; sources=h_relation_0, h_last
Relationship f_05 <-> f_06: -9; sources=t_step_02
Settlement home_f_02: Zozora | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_04: Kebonar | owner=f_04 | region=region | sources=t_step_01
Settlement home_f_05: Dador | owner=f_05 | region=region | sources=t_step_01
Settlement home_f_06: Danalith | owner=f_06 | region=region | sources=t_step_02
Settlement reused_site: Hanar | owner=f_05 | region=region | sources=h_reuse
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_step_00
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_03: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_07: administrative_site | occupant=f_05 | region=region | sources=t_step_04, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: legacy_damage_site | occupant= | region=region | sources=h_pressure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin s_lost_deep_0: abandoned_hamlet | occupant= | region=region | sources=s_00_01_deep_settlement_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"primary_system","intent":"unknown","operation":"existing_fault_stress_release","physical_basis":"existing_fault_stress_and_fluid_pressure","scope":"local","source_event_ids":["h_pressure"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Veywen Ruin (f_02; knowledge=):
  [t_root_f_02; confidence 0.39; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.88; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.75; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Todor Marsh (f_04; knowledge=):
  [t_step_01; confidence 0.37; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.46; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-32}
  [h_relation_1; confidence 0.50; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":15}
  [h_discovery; confidence 0.87; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.84; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":35}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":15}
  [; confidence 0.46; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":3}
Dalen Reach (f_05; knowledge=observer_scholarly_term):
  [t_step_01; confidence 0.50; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.90; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-9}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":15}
  [h_discovery; confidence 0.37; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.49; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":15}
  [; confidence 0.62; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":-9}
Bomon Marsh (f_06; knowledge=):
  [t_step_02; confidence 0.81; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records remembered altered access and services, whose reason they could not establish. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.52; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":-9}
  [h_relation_0; confidence 0.45; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-32}
  [h_discovery; confidence 0.67; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.69; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":35}
  [; confidence 0.46; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":3}
  [; confidence 0.68; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":-9}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":23,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_deep_residence_record","s_00_01_deep_settlement_evacuation","s_00_02_deep_memory_register","s_01_03_biotech_workshop_recovery","s_01_04_lineage_preservation_program","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response"],"causal_ratio":0.958333333333333,"direct_count":22,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_deep_residence_record","s_00_01_deep_settlement_evacuation","s_00_02_deep_memory_register","s_01_03_biotech_workshop_recovery","s_01_04_lineage_preservation_program","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":24}
```

## Veywen Ruin (f_02)

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
								"h_pressure"
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
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"adaptive_customs",
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
					"t_root_f_02",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
					"h_pressure"
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
				"detail": "core_fault_release",
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
					"t_root_f_02",
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
					"t_root_f_02",
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
					"t_root_f_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
	"fear_tags": [
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_root_f_02",
			"h_pressure"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:regional_commune",
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
							"h_pressure"
						],
						"source_path": "identity.interpretation_mode"
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
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "core_fault_release",
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
							"t_root_f_02",
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
							"t_root_f_02"
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
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_02"
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
							"h_pressure"
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
								"h_pressure"
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
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "core_fault_release",
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
								"t_root_f_02",
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
								"t_root_f_02"
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
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"role:shelter": [
						{
							"detail": "shelter",
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
		"rigidity"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"hazard_awareness",
		"hospitality",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"hardline","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":["interpretation:pragmatic"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_root_f_02"],"source_path":"entity.formation_origin"}],"interpretation:pragmatic":[{"detail":"pragmatic","scope":"derived_identity","source_event_ids":["t_root_f_02","h_pressure"],"source_path":"identity.interpretation_mode"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Todor Marsh (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"deep_route_recovery",
		"innerworld_site_search"
	],
	"doctrine_intensities": {
		"return_to_deep": "fanatic"
	},
	"doctrines": [
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
					"target": 1,
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
		"depth_taboo",
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"return_to_deep",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
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
					"t_step_01",
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
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "15",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
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
				"detail": "core_fault_release",
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
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:trading_house": [
			{
				"detail": "trading_house",
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
	"fear_tags": [
		"deep_heritage_loss"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_01",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:trading_house",
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
							"t_step_01"
						],
						"source_path": "entity.regional_roles"
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
				"history:local_hazard_response"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
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
						"detail": "core_fault_release",
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
							"t_step_01",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
				"target": 1,
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
								"t_step_01"
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
					"history:local_hazard_response"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
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
							"detail": "core_fault_release",
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
								"t_step_01",
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"recklessness",
		"record_destruction",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"innerworld_memory",
		"record_preservation",
		"scholarship",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"innerworld_site_search","explanation":"Seek a site; no location is asserted.","historical_reference_ids":["s_deep_home_0"],"id":"locate_lost_innerworld_site","intensity":"fanatic","provenance":{"explanation":"Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.","id":"return_to_deep","kind":"doctrine","matched_preferences":[],"matched_required":["history:deep_residence","site:lost_deep_settlement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"site:lost_deep_settlement":[{"content_ids":[],"detail":"Objective site_history:deep_settlement_loss","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:site_history:deep_settlement_loss"}]}},"source_doctrine_id":"return_to_deep","status":"candidate"},{"desire":"deep_route_recovery","explanation":"Investigate reopening; no route is created.","historical_reference_ids":["s_deep_home_0"],"id":"reopen_deep_route","intensity":"fanatic","provenance":{"explanation":"Recover lost Innerworld heritage only with actual local ancestry and recorded loss; Core-associated tunnels do not establish ancestry.","id":"return_to_deep","kind":"doctrine","matched_preferences":[],"matched_required":["history:deep_residence","site:lost_deep_settlement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"site:lost_deep_settlement":[{"content_ids":[],"detail":"Objective site_history:deep_settlement_loss","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:site_history:deep_settlement_loss"}]}},"source_doctrine_id":"return_to_deep","status":"candidate"}]`

## Dalen Reach (f_05)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"discourage_delving",
		"restricted_deep_maps",
		"sealed_depths"
	],
	"doctrine_intensities": {
		"depth_taboo": "fanatic"
	},
	"doctrines": [
		{
			"category": "deep",
			"desires": [
				"sealed_depths",
				"discourage_delving",
				"restricted_deep_maps"
			],
			"display_name": "Depth Taboo",
			"fears": [
				"deep_hazards"
			],
			"goal_candidates": [
				{
					"desire": "sealed_depths",
					"explanation": "Consider closure; no actual sealing is performed.",
					"id": "seal_deep_access"
				},
				{
					"desire": "discourage_delving",
					"explanation": "Discourage risky exploration through future social behavior.",
					"id": "discourage_delving"
				},
				{
					"desire": "restricted_deep_maps",
					"explanation": "Consider map access restrictions; no existing map is assumed.",
					"id": "restrict_deep_maps"
				}
			],
			"id": "depth_taboo",
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
				"explanation": "Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.",
				"id": "depth_taboo",
				"kind": "doctrine",
				"matched_preferences": [
					"role:isolation",
					"memory:warning"
				],
				"matched_required": [
					"history:deep_exile"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 9
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
					"memory:warning": [
						{
							"detail": "warning",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_01",
								"h_pressure"
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
					]
				}
			},
			"taboos": [
				"delving"
			],
			"values": [
				"deep_caution"
			]
		}
	],
	"eligible_doctrines": [
		"depth_taboo",
		"no_more_masters",
		"radical_impermanence",
		"return_to_deep",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"closed_roads",
		"hazard_memory",
		"maintenance_covenant",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
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
					"t_step_01",
					"h_pressure"
				],
				"source_path": "identity.social_anchor"
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
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
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
		"history:cooperation": [
			{
				"detail": "15",
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
				"detail": "-9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
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
				"detail": "core_fault_release",
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
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
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
					"h_pressure"
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
				"source_path": "present.settlements:home_f_05"
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
	"faction_id": "f_05",
	"fear_tags": [
		"deep_hazards"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_01",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:facility_community",
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
			"explanation": "The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.",
			"id": "hazard_memory",
			"kind": "society_trait",
			"matched_preferences": [
				"memory:warning"
			],
			"matched_required": [
				"history:regional_pressure",
				"memory:warning",
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
						"detail": "core_fault_release",
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
							"t_step_01",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
				"life:facility_community"
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:facility_community": [
					{
						"detail": "facility_community",
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
						"detail": "15",
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
			"explanation": "Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.",
			"id": "depth_taboo",
			"kind": "doctrine",
			"matched_preferences": [
				"role:isolation",
				"memory:warning"
			],
			"matched_required": [
				"history:deep_exile"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 9
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
				"memory:warning": [
					{
						"detail": "warning",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_01",
							"h_pressure"
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
							"detail": "core_fault_release",
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
								"t_step_01",
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
					"life:facility_community"
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
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:facility_community": [
						{
							"detail": "facility_community",
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
							"detail": "15",
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
		"delving"
	],
	"tension_tags": [
		"free_riding",
		"neglect",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"compassion",
		"craftsmanship",
		"deep_caution",
		"duty",
		"hazard_awareness",
		"reciprocity",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"discourage_delving","explanation":"Discourage risky exploration through future social behavior.","historical_reference_ids":["s_deep_home_0"],"id":"discourage_delving","intensity":"fanatic","provenance":{"explanation":"Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.","id":"depth_taboo","kind":"doctrine","matched_preferences":["role:isolation","memory:warning"],"matched_required":["history:deep_exile"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":9},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"memory:warning":[{"detail":"warning","scope":"derived_identity","source_event_ids":["t_step_01","h_pressure"],"source_path":"identity.memory_frame"}],"role:isolation":[{"detail":"isolation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"depth_taboo","status":"candidate"},{"desire":"restricted_deep_maps","explanation":"Consider map access restrictions; no existing map is assumed.","historical_reference_ids":["s_deep_home_0"],"id":"restrict_deep_maps","intensity":"fanatic","provenance":{"explanation":"Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.","id":"depth_taboo","kind":"doctrine","matched_preferences":["role:isolation","memory:warning"],"matched_required":["history:deep_exile"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":9},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"memory:warning":[{"detail":"warning","scope":"derived_identity","source_event_ids":["t_step_01","h_pressure"],"source_path":"identity.memory_frame"}],"role:isolation":[{"detail":"isolation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"depth_taboo","status":"candidate"},{"desire":"sealed_depths","explanation":"Consider closure; no actual sealing is performed.","historical_reference_ids":["s_deep_home_0"],"id":"seal_deep_access","intensity":"fanatic","provenance":{"explanation":"Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.","id":"depth_taboo","kind":"doctrine","matched_preferences":["role:isolation","memory:warning"],"matched_required":["history:deep_exile"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":9},"support":{"history:deep_exile":[{"content_ids":[],"detail":"Objective scar:deep_exile","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_01_deep_settlement_evacuation"],"source_path":"present.social_history:scar:deep_exile"}],"history:deep_residence":[{"content_ids":[],"detail":"Objective site_history:deep_residence","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_00_deep_residence_record"],"source_path":"present.social_history:site_history:deep_residence"}],"institution:deep_memory":[{"content_ids":[],"detail":"Objective institution:deep_memory","reference_ids":["s_deep_home_0"],"scope":"faction","source_event_ids":["s_00_02_deep_memory_register"],"source_path":"present.social_facts:institution:deep_memory"}],"memory:warning":[{"detail":"warning","scope":"derived_identity","source_event_ids":["t_step_01","h_pressure"],"source_path":"identity.memory_frame"}],"role:isolation":[{"detail":"isolation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"depth_taboo","status":"candidate"}]`

## Bomon Marsh (f_06)

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
								"t_step_02"
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
		"ancestral_genome",
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"truth_through_trial",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"maintenance_covenant",
		"mutual_obligation",
		"ritual_stewardship"
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
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:biotechnology": [
			{
				"content_ids": [],
				"detail": "Objective capability:biotechnology",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_biotech_workshop_recovery"
				],
				"source_path": "present.social_facts:capability:biotechnology"
			}
		],
		"event:biotech_workshop_recovery": [
			{
				"detail": "biotech_workshop_recovery",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_biotech_workshop_recovery"
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
		"event:lineage_preservation_program": [
			{
				"detail": "lineage_preservation_program",
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_lineage_preservation_program"
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
				"detail": "-9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-32",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:lineage_loss": [
			{
				"content_ids": [],
				"detail": "Objective scar:lineage_loss",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_lineage_preservation_program"
				],
				"source_path": "present.social_history:scar:lineage_loss"
			}
		],
		"history:recorded_testing": [
			{
				"content_ids": [],
				"detail": "Objective practice:recorded_testing",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_biotech_workshop_recovery"
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
				"detail": "core_fault_release",
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
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:genetic_preservation": [
			{
				"content_ids": [],
				"detail": "Objective institution:genetic_preservation",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_04_lineage_preservation_program"
				],
				"source_path": "present.social_facts:institution:genetic_preservation"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
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
		"role:maintenance": [
			{
				"detail": "maintenance",
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
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_02",
			"h_discovery"
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
			"matched_preferences": [
				"event:maintenance_accord"
			],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 8
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
				],
				"role:maintenance": [
					{
						"detail": "maintenance",
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
				"target": 2,
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
				"matched_preferences": [
					"event:maintenance_accord"
				],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 8
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
					],
					"role:maintenance": [
						{
							"detail": "maintenance",
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
					"target": 2,
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
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"free_riding",
		"neglect"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"household_autonomy",
		"reciprocity",
		"shared_responsibility",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`
