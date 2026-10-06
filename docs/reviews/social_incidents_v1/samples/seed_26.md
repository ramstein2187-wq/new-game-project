# Seed 26 — doctrine_reclamation

```text
History architecture v2 | generation algorithm v3 | seed 26 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"regional_autonomy","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"no_direct_heir"}
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
-551 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-526 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-340 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Nador (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-334 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Nador (regional_body), Navak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-330 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Hahalith (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-324 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dador Marsh (precursor), Nador (regional_body), Navak (pressure_group), Hahalith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-312 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-311 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-310 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-306 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bonar Well (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-305 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Lumar Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-304 t_failed_2 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Zosil Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-294 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-293 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-292 t_root_f_05 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-282 t_step_00 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Tonar Ruin (f_05), Mirin Ruin (f_03) | causes: t_root_f_05, t_root_f_03
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05","f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_06"],"untracked_template_ids":[]},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_06"],"untracked_template_ids":[]}]
-265 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sewen Ruin (f_04) | causes: t_root_f_04
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_07","f_08"],"untracked_template_ids":[]}]
-248 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Milen Well (f_06), Kerin Well (f_08) | causes: t_step_00, t_step_01
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"},{"disposition":"absorbed","entity_id":"f_08","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]}]
-231 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Luwen Reach (f_09) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"a":"f_09","b":"f_10","delta":-9,"kind":"relationship"}]
-214 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Nalith Ruin (f_12) | causes: t_step_03
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_12"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_12"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"a":"f_12","b":"f_13","delta":-8,"kind":"relationship"}]
-196 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zomar Gate (f_14) | causes: t_step_04
  effects: [{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_14"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"home_f_14","kind":"site_owner","owner_id":"f_15"},{"entity_id":"f_14","kind":"retire"},{"disposition":"absorbed","entity_id":"f_14","kind":"population_fate","successor_ids":["f_15"],"untracked_template_ids":[]}]
-47 s_00_00_ancestral_site_loss [SOCIAL_INCIDENT] Residents lost their recorded home site in a conflict and moved to a surviving local settlement. The association is recorded before the loss, rather than inferred from migration.
  scope=local | objective cause_domain=human
  actors: Luwen Reach (f_09) | causes: t_step_02, t_root_f_03
  effects: [{"entity_id":"home_f_03","kind":"retire"},{"hazard":"none","id":"s_lost_home_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"entity_id":"s_relocated_0","kind":"activate"},{"entity_id":"s_relocated_0","kind":"settlement","location_id":"region","owner_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_03"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_03"}]
-46 s_00_01_homeland_memory_charter [SOCIAL_INCIDENT] Residents established a register preserving the association with their previously recorded lost homeland site; it executes no reclamation or territorial claim.
  scope=local | objective cause_domain=human
  actors: Luwen Reach (f_09) | causes: t_step_02, s_00_00_ancestral_site_loss
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_03"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (f_10), Tovak Ruin (f_13) | causes: t_step_03, t_step_04
  effects: [{"a":"f_10","b":"f_13","delta":11,"kind":"relationship"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (f_10), Veysil Reach (f_15) | causes: t_step_03, t_step_05
  effects: [{"a":"f_10","b":"f_15","delta":-31,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Luwen Reach (f_09), Nalith Ruin (f_12) | causes: t_step_02, t_step_03
  effects: [{"a":"f_09","b":"f_12","delta":24,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Kewen Marsh (f_11), Tovak Ruin (f_13) | causes: t_step_03, t_step_04
  effects: [{"a":"f_11","b":"f_13","delta":27,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Hanar Gate (f_10), Tovak Ruin (f_13) | causes: h_relation_0
  effects: [{"a":"f_10","b":"f_13","delta":-20,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Bonar Well | -312..-306 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Lumar Reach | -311..-305 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Zosil Marsh | -310..-304 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Mirin Ruin | -294..-282 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Sewen Ruin | -293..-265 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Tonar Ruin | -292..-282 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Milen Well | -282..-248 | extinct | parents=f_05, f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Fulith Marsh | -265..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Kerin Well | -265..-248 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Luwen Reach | -248..present | active | parents=f_06, f_08 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Hanar Gate | -231..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Kewen Marsh | -231..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Nalith Ruin | -231..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Tovak Ruin | -214..present | active | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_14: Zomar Gate | -214..-196 | extinct | parents=f_12 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_15: Veysil Reach | -196..present | active | parents=f_14 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dador Marsh | -551..-324 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-551 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-312 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-311 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-310 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-294 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-293 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-292 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_05
-282 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_05, f_03 | events=t_step_00
-265 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_01
-265 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_01
-248 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_06, f_08 | events=t_step_02
-231 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-231 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-231 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_03
-214 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_12 | events=t_step_04
-214 f_14: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_12 | events=t_step_04
-196 f_15: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_14 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-324 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-306 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_0
-305 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_1
-304 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_2
-282 f_05: absorbed | absorbed_into=f_06 | untracked_strata= | events=t_step_00
-282 f_03: absorbed | absorbed_into=f_06 | untracked_strata= | events=t_step_00
-265 f_04: absorbed | absorbed_into=f_07, f_08 | untracked_strata= | events=t_step_01
-248 f_06: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_02
-248 f_08: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_02
-196 f_14: absorbed | absorbed_into=f_15 | untracked_strata= | events=t_step_05
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_03","source_event_ids":["s_00_00_ancestral_site_loss"],"year":-47}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_03","source_event_ids":["s_00_00_ancestral_site_loss"],"year":-47}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_03","source_event_ids":["s_00_01_homeland_memory_charter"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_03","source_event_ids":["s_00_01_homeland_memory_charter"],"year":-46}
Region region: Towen Ruin
Faction f_07: Fulith Marsh | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=breakaway/institution/adapt | interpretation=skeptical/rupture | sources=t_step_01, h_collapse
  society patterns: Archive Legitimacy, Household Sovereignty
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Measured Doubt — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=role:archives, interpretation:skeptical
Faction f_09: Luwen Reach | breakaway_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/kin/withdraw | interpretation=pragmatic/debt | sources=t_step_02, h_relation_2
  society patterns: Adaptive Customs, Household Sovereignty, Maintenance Covenant, Rebuilt From Fragments
  The Reclamation — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=scar:lost_homeland, history:homeland_displacement, institution:homeland_memory
Faction f_10: Hanar Gate | refugee_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/institution/rebuild | interpretation=pragmatic/rupture | sources=t_step_03, h_collapse
  society patterns: Boundary Watch, Hazard Memory, Mutual Obligation
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Kewen Marsh | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=reformer/craft/adapt | interpretation=pragmatic/debt | sources=t_step_03, h_relation_3
  society patterns: Maintenance Covenant, Mutual Obligation, Route Commonwealth
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Nalith Ruin | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/ritual/preserve | interpretation=ritual/rupture | sources=t_step_03, h_collapse
  society patterns: Boundary Watch, Ritual Stewardship
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_13: Tovak Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=breakaway/exchange/withdraw | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Mutual Obligation, Route Commonwealth
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_15: Veysil Reach | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/exchange/exploit | interpretation=technical/grievance | sources=t_step_05, h_relation_1
  society patterns: Boundary Watch, Maintenance Covenant, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_07: parents=f_04; ancestors=f_04; sources=t_step_01, t_root_f_04
Ancestry f_09: parents=f_06, f_08; ancestors=f_03, f_04, f_05, f_06, f_08; sources=t_step_02, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05
Ancestry f_10: parents=f_09; ancestors=f_03, f_04, f_05, f_06, f_08, f_09; sources=t_step_03, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05, t_step_02
Ancestry f_11: parents=f_09; ancestors=f_03, f_04, f_05, f_06, f_08, f_09; sources=t_step_03, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05, t_step_02
Ancestry f_12: parents=f_09; ancestors=f_03, f_04, f_05, f_06, f_08, f_09; sources=t_step_03, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05, t_step_02
Ancestry f_13: parents=f_12; ancestors=f_03, f_04, f_05, f_06, f_08, f_09, f_12; sources=t_step_04, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05, t_step_02, t_step_03
Ancestry f_15: parents=f_14; ancestors=f_03, f_04, f_05, f_06, f_08, f_09, f_12, f_14; sources=t_step_05, t_root_f_03, t_step_00, t_root_f_04, t_step_01, t_root_f_05, t_step_02, t_step_03, t_step_04
Relationship f_09 <-> f_10: -9; sources=t_step_03
Relationship f_09 <-> f_12: 24; sources=h_relation_2
Relationship f_10 <-> f_13: -9; sources=h_relation_0, h_last
Relationship f_10 <-> f_15: -31; sources=h_relation_1
Relationship f_11 <-> f_13: 27; sources=h_relation_3
Relationship f_12 <-> f_13: -8; sources=t_step_04
Settlement home_f_04: Mibowen | owner=f_07 | region=region | sources=t_root_f_04, t_step_01
Settlement home_f_05: Tohasil | owner=f_09 | region=region | sources=t_root_f_05, t_step_00, t_step_02
Settlement home_f_06: Hanasil | owner=f_09 | region=region | sources=t_step_00, t_step_02
Settlement home_f_07: Veywen | owner=f_07 | region=region | sources=t_step_01
Settlement home_f_08: Kera | owner=f_09 | region=region | sources=t_step_01, t_step_02
Settlement home_f_09: Lukenar | owner=f_09 | region=region | sources=t_step_02
Settlement home_f_10: Bozosil | owner=f_10 | region=region | sources=t_step_03
Settlement home_f_11: Bobonar | owner=f_11 | region=region | sources=t_step_03
Settlement home_f_12: Midavak | owner=f_12 | region=region | sources=t_step_03
Settlement home_f_13: Nahanar | owner=f_13 | region=region | sources=t_step_04
Settlement home_f_14: Hanador | owner=f_15 | region=region | sources=t_step_04, t_step_05
Settlement home_f_15: Borin | owner=f_15 | region=region | sources=t_step_05
Settlement s_relocated_0: Todor | owner=f_09 | region=region | sources=s_00_00_ancestral_site_loss
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_failed_0
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_failed_2
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin s_lost_home_0: abandoned_hamlet | occupant= | region=region | sources=s_00_00_ancestral_site_loss
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Fulith Marsh (f_07; knowledge=):
  [t_step_01; confidence 0.47; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.71; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
Luwen Reach (f_09; knowledge=):
  [t_step_02; confidence 0.70; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Household ties are what bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.82; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.84; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-9}
  [h_relation_2; confidence 0.40; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_09","b":"f_12","delta":24}
  [; confidence 0.58; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-9}
  [; confidence 0.67; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_12","score":24}
Hanar Gate (f_10; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.40; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.86; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_10","delta":-9}
  [h_relation_0; confidence 0.67; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":11}
  [h_relation_1; confidence 0.82; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":-31}
  [h_last; confidence 0.35; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":-20}
  [; confidence 0.35; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_09","b":"f_10","score":-9}
  [; confidence 0.51; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":-9}
  [; confidence 0.50; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":-31}
Kewen Marsh (f_11; knowledge=):
  [t_step_03; confidence 0.74; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.43; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.68; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_11","b":"f_13","delta":27}
  [; confidence 0.54; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_11","b":"f_13","score":27}
Nalith Ruin (f_12; knowledge=):
  [t_step_03; confidence 0.89; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records inherited conflicting records of succession. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.60; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_12","b":"f_13","delta":-8}
  [h_relation_2; confidence 0.87; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_09","b":"f_12","delta":24}
  [; confidence 0.35; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_09","b":"f_12","score":24}
  [; confidence 0.56; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_12","b":"f_13","score":-8}
Tovak Ruin (f_13; knowledge=):
  [t_step_04; confidence 0.48; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.69; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.86; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_12","b":"f_13","delta":-8}
  [h_relation_0; confidence 0.48; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":11}
  [h_relation_3; confidence 0.90; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_11","b":"f_13","delta":27}
  [h_last; confidence 0.53; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":-20}
  [; confidence 0.74; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":-9}
  [; confidence 0.70; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_11","b":"f_13","score":27}
  [; confidence 0.68; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_12","b":"f_13","score":-8}
Veysil Reach (f_15; knowledge=):
  [t_step_05; confidence 0.40; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Routes, exchange and reciprocal obligations bind us. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.35; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":-31}
  [; confidence 0.87; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":-31}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":28,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","s_00_00_ancestral_site_loss","s_00_01_homeland_memory_charter","t_failed_0","t_failed_1","t_failed_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":26,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","s_00_00_ancestral_site_loss","s_00_01_homeland_memory_charter","t_failed_0","t_failed_1","t_failed_2","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":28}
```

## Fulith Marsh (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"memory_source_recovery",
		"performance_preservation",
		"verify_claims"
	],
	"doctrine_intensities": {
		"living_archive": "moderate",
		"measured_doubt": "hardline"
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
					"target": 2,
					"weight": 5
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"role:archives",
					"interpretation:skeptical"
				]
			},
			"provenance": {
				"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
				"id": "measured_doubt",
				"kind": "doctrine",
				"matched_preferences": [
					"role:archives"
				],
				"matched_required": [
					"role:archives",
					"interpretation:skeptical"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
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
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"household_sovereignty"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
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
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_04",
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_04"
			},
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
	"fear_tags": [
		"false_certainty",
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_01",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:kinship_clan",
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
			"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
			"id": "household_sovereignty",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:kinship_clan"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:kinship_clan": [
					{
						"detail": "kinship_clan",
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
			"explanation": "Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.",
			"id": "living_archive",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
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
			"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
			"id": "measured_doubt",
			"kind": "doctrine",
			"matched_preferences": [
				"role:archives"
			],
			"matched_required": [
				"role:archives",
				"interpretation:skeptical"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
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
		}
	],
	"selection_targets": {
		"doctrines": 2,
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
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:kinship_clan": [
						{
							"detail": "kinship_clan",
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
				"external_domination"
			],
			"value_tags": [
				"household_autonomy"
			]
		}
	],
	"taboo_tags": [
		"memory_erasure",
		"unsupported_certainty"
	],
	"tension_tags": [
		"external_domination",
		"record_destruction"
	],
	"value_tags": [
		"household_autonomy",
		"oral_history",
		"performance",
		"record_preservation",
		"ritualism",
		"scholarship",
		"skepticism"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"hardline","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":["role:archives"],"matched_required":["role:archives","interpretation:skeptical"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"interpretation:skeptical":[{"detail":"skeptical","scope":"derived_identity","source_event_ids":["t_step_01","h_collapse"],"source_path":"identity.interpretation_mode"}],"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Luwen Reach (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"ancestral_site_recovery",
		"homeland_recovery"
	],
	"doctrine_intensities": {
		"reclamation": "fanatic"
	},
	"doctrines": [
		{
			"category": "environment",
			"desires": [
				"homeland_recovery",
				"ancestral_site_recovery"
			],
			"display_name": "The Reclamation",
			"fears": [
				"homeland_erasure"
			],
			"goal_candidates": [
				{
					"desire": "homeland_recovery",
					"explanation": "Seek a future opportunity; no territory or claim is created.",
					"id": "reclaim_homeland"
				},
				{
					"desire": "ancestral_site_recovery",
					"explanation": "Seek a recorded ancestral site; no site is invented.",
					"id": "recover_ancestral_site"
				}
			],
			"id": "reclamation",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"scar:lost_homeland",
					"history:homeland_displacement",
					"institution:homeland_memory"
				]
			},
			"provenance": {
				"explanation": "Ancestral homeland should be recovered only where actual loss and homeland association are authored. Migration and political extinction alone do not establish this.",
				"id": "reclamation",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:lost_homeland",
					"history:homeland_displacement"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 10
				},
				"support": {
					"history:homeland_displacement": [
						{
							"content_ids": [],
							"detail": "Objective scar:lost_homeland",
							"reference_ids": [
								"home_f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_ancestral_site_loss"
							],
							"source_path": "present.social_history:scar:lost_homeland"
						}
					],
					"institution:homeland_memory": [
						{
							"content_ids": [],
							"detail": "Objective institution:homeland_memory",
							"reference_ids": [
								"home_f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_homeland_memory_charter"
							],
							"source_path": "present.social_facts:institution:homeland_memory"
						}
					],
					"scar:lost_homeland": [
						{
							"content_ids": [],
							"detail": "Objective scar:lost_homeland",
							"reference_ids": [
								"home_f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_ancestral_site_loss"
							],
							"source_path": "present.social_history:scar:lost_homeland"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"homeland_memory"
			]
		}
	],
	"eligible_doctrines": [
		"no_more_masters",
		"practical_heresy",
		"radical_impermanence",
		"reclamation",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"adaptive_customs",
		"hazard_memory",
		"household_sovereignty",
		"maintenance_covenant",
		"mutual_obligation",
		"rebuilt_from_fragments"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_relation_2"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_relation_2"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:ancestral_site_loss": [
			{
				"detail": "ancestral_site_loss",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_ancestral_site_loss"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:homeland_memory_charter": [
			{
				"detail": "homeland_memory_charter",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_homeland_memory_charter"
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
				"detail": "24",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:homeland_displacement": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_ancestral_site_loss"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"history:hostility": [
			{
				"detail": "-9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:local_hazard_response": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_ancestral_site_loss"
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_relation_2"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:homeland_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:homeland_memory",
				"reference_ids": [
					"home_f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_homeland_memory_charter"
				],
				"source_path": "present.social_facts:institution:homeland_memory"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_relation_2"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:breakaway_clan": [
			{
				"detail": "breakaway_clan",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_relation_2"
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
		"scar:lost_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_ancestral_site_loss"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"site:ancestral_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_ancestral_site_loss"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"structure:local_settlement": [
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
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_08"
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
					"s_00_00_ancestral_site_loss"
				],
				"source_path": "present.settlements:s_relocated_0"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_06, f_08",
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
		"homeland_erasure"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_02",
			"h_relation_2"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:breakaway_clan",
			"role:maintenance",
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
				"target": 4,
				"weight": 6
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
							"t_step_02",
							"h_relation_2"
						],
						"source_path": "identity.interpretation_mode"
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
				"life:breakaway_clan"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:breakaway_clan": [
					{
						"detail": "breakaway_clan",
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
							"t_step_02"
						],
						"source_path": "entity.regional_roles"
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
							"h_relation_2"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_06, f_08",
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
			"explanation": "Ancestral homeland should be recovered only where actual loss and homeland association are authored. Migration and political extinction alone do not establish this.",
			"id": "reclamation",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:lost_homeland",
				"history:homeland_displacement"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 10
			},
			"support": {
				"history:homeland_displacement": [
					{
						"content_ids": [],
						"detail": "Objective scar:lost_homeland",
						"reference_ids": [
							"home_f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_ancestral_site_loss"
						],
						"source_path": "present.social_history:scar:lost_homeland"
					}
				],
				"institution:homeland_memory": [
					{
						"content_ids": [],
						"detail": "Objective institution:homeland_memory",
						"reference_ids": [
							"home_f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_homeland_memory_charter"
						],
						"source_path": "present.social_facts:institution:homeland_memory"
					}
				],
				"scar:lost_homeland": [
					{
						"content_ids": [],
						"detail": "Objective scar:lost_homeland",
						"reference_ids": [
							"home_f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_ancestral_site_loss"
						],
						"source_path": "present.social_history:scar:lost_homeland"
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
					"target": 4,
					"weight": 6
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
								"t_step_02",
								"h_relation_2"
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
			"category": "institutions",
			"display_name": "Household Sovereignty",
			"id": "household_sovereignty",
			"provenance": {
				"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
				"id": "household_sovereignty",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:breakaway_clan"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:breakaway_clan": [
						{
							"detail": "breakaway_clan",
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
				"external_domination"
			],
			"value_tags": [
				"household_autonomy"
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
								"h_relation_2"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_06, f_08",
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"external_domination",
		"factional_exclusion",
		"neglect",
		"rigidity"
	],
	"value_tags": [
		"adaptability",
		"coalition_building",
		"craftsmanship",
		"duty",
		"homeland_memory",
		"household_autonomy",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"homeland_recovery","explanation":"Seek a future opportunity; no territory or claim is created.","historical_reference_ids":["home_f_03"],"id":"reclaim_homeland","intensity":"fanatic","provenance":{"explanation":"Ancestral homeland should be recovered only where actual loss and homeland association are authored. Migration and political extinction alone do not establish this.","id":"reclamation","kind":"doctrine","matched_preferences":[],"matched_required":["scar:lost_homeland","history:homeland_displacement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"history:homeland_displacement":[{"content_ids":[],"detail":"Objective scar:lost_homeland","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_00_ancestral_site_loss"],"source_path":"present.social_history:scar:lost_homeland"}],"institution:homeland_memory":[{"content_ids":[],"detail":"Objective institution:homeland_memory","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_01_homeland_memory_charter"],"source_path":"present.social_facts:institution:homeland_memory"}],"scar:lost_homeland":[{"content_ids":[],"detail":"Objective scar:lost_homeland","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_00_ancestral_site_loss"],"source_path":"present.social_history:scar:lost_homeland"}]}},"source_doctrine_id":"reclamation","status":"candidate"},{"desire":"ancestral_site_recovery","explanation":"Seek a recorded ancestral site; no site is invented.","historical_reference_ids":["home_f_03"],"id":"recover_ancestral_site","intensity":"fanatic","provenance":{"explanation":"Ancestral homeland should be recovered only where actual loss and homeland association are authored. Migration and political extinction alone do not establish this.","id":"reclamation","kind":"doctrine","matched_preferences":[],"matched_required":["scar:lost_homeland","history:homeland_displacement"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"history:homeland_displacement":[{"content_ids":[],"detail":"Objective scar:lost_homeland","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_00_ancestral_site_loss"],"source_path":"present.social_history:scar:lost_homeland"}],"institution:homeland_memory":[{"content_ids":[],"detail":"Objective institution:homeland_memory","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_01_homeland_memory_charter"],"source_path":"present.social_facts:institution:homeland_memory"}],"scar:lost_homeland":[{"content_ids":[],"detail":"Objective scar:lost_homeland","reference_ids":["home_f_03"],"scope":"faction","source_event_ids":["s_00_00_ancestral_site_loss"],"source_path":"present.social_history:scar:lost_homeland"}]}},"source_doctrine_id":"reclamation","status":"candidate"}]`

## Hanar Gate (f_10)

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
								"h_collapse"
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
		"debt_of_shelter",
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
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
				"detail": "11",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-31",
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
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"t_step_03",
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
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_03",
			"h_collapse"
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
						"detail": "succession_dispute",
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
						"detail": "11",
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
							"detail": "succession_dispute",
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
							"detail": "11",
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
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"duty",
		"hazard_awareness",
		"institutional_reform",
		"reciprocity",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_03","h_collapse"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Kewen Marsh (f_11)

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
								"t_step_03",
								"h_relation_3"
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
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
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
					"t_step_03",
					"h_relation_3"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_3"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
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
		"history:cooperation": [
			{
				"detail": "27",
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
					"t_step_03",
					"h_relation_3"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_3"
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
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_relation_3"
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
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_03",
			"h_relation_3"
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
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
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
						"detail": "27",
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
				"life:resource_or_trade_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
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
							"t_step_03",
							"h_relation_3"
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
					"target": 3,
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
							"detail": "27",
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
					"life:resource_or_trade_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
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
		"reciprocity",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_03","h_relation_3"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Nalith Ruin (f_12)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"memory_source_recovery",
		"performance_preservation",
		"renew_institutions"
	],
	"doctrine_intensities": {
		"living_archive": "moderate",
		"radical_impermanence": "moderate"
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
					"life:religious_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
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
					"target": 2,
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
								"h_collapse"
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
					"t_step_03"
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
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-8",
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
		"identity:breakaway": [
			{
				"detail": "breakaway",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"t_step_03",
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
		"institutional_stagnation",
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_03",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
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
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
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
			"matched_preferences": [],
			"matched_required": [
				"life:religious_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
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
				"identity:breakaway"
			],
			"matched_required": [
				"formation:fragmentation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
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
							"h_collapse"
						],
						"source_path": "identity.continuity_stance"
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
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
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
		"memory_erasure",
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
		"oral_history",
		"performance",
		"ritualism",
		"scholarship",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["life:religious_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"life:religious_community":[{"detail":"religious_community","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["life:religious_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"life:religious_community":[{"detail":"religious_community","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_03","h_collapse"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Tovak Ruin (f_13)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"infrastructure_repair",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"world_must_be_mended": "moderate"
	},
	"doctrines": [
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
					"target": 1,
					"weight": 5
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
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
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
					"t_step_04",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
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
				"detail": "11",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "27",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-8",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-20",
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
		"identity:breakaway": [
			{
				"detail": "breakaway",
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
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
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
		"role:local_exchange": [
			{
				"detail": "local_exchange",
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
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:resource_or_trade_commune",
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
						"detail": "11",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "27",
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
				"role:local_exchange",
				"life:resource_or_trade_commune"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:resource_or_trade_commune": [
					{
						"detail": "resource_or_trade_commune",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:local_exchange": [
					{
						"detail": "local_exchange",
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
			"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
			"id": "world_must_be_mended",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"event:maintenance_accord"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
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
							"detail": "11",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "27",
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
					"role:local_exchange",
					"life:resource_or_trade_commune"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:resource_or_trade_commune": [
						{
							"detail": "resource_or_trade_commune",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:local_exchange": [
						{
							"detail": "local_exchange",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"neglect"
	],
	"tension_tags": [
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"reciprocity",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_0"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_0"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_0"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Veysil Reach (f_15)

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
								"h_relation_1"
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
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"maintenance_covenant",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
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
					"t_step_05",
					"h_relation_1"
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
		"history:hostility": [
			{
				"detail": "-31",
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
					"t_step_05",
					"h_relation_1"
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
					"h_relation_1"
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
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_1"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:maintenance": [
			{
				"detail": "maintenance",
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
					"t_step_04",
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_14"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_15"
			}
		]
	},
	"faction_id": "f_15",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "grievance",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_05",
			"h_relation_1"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:religious_community",
			"role:maintenance",
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
							"t_step_05"
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
							"t_step_05"
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
							"h_relation_1"
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
								"t_step_05"
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
								"t_step_05"
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
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"craftsmanship",
		"duty",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_05","h_relation_1"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`
