# Seed 17 — incident_lineage_preservation_program

```text
History architecture v2 | generation algorithm v3 | seed 17 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"chemical_exposure","response_motif":"regional_autonomy","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"polycentric_succession"}
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
-552 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-527 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-360 h_pressure [DISASTER] Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified.
  scope=regional | objective cause_domain=natural
  actors: Sewen Reach (precursor), Milurin (regional_body) | causes: h_body
  effects: [{"hazard":"chemical","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"chemical_exposure_site","site_type":"chemical"}]
-350 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Milurin (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-341 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Kemar (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Sewen Reach (precursor), Milurin (regional_body), Kemar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-320 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-319 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-318 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-317 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-308 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veywen Ruin (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_04","f_05","f_06"],"untracked_template_ids":[]}]
-289 t_step_01 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Luvak Reach (f_05), Bovak Well (f_06) | causes: t_step_00, t_step_00
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05","f_06"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]}]
-269 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Luwen Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_08","f_09","f_10"],"untracked_template_ids":[]}]
-249 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Kevak Gate (f_09) | causes: t_step_02
  effects: [{"entity_id":"f_09","kind":"retire"},{"disposition":"untracked","entity_id":"f_09","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_09","kind":"retire"},{"hazard":"none","id":"abandoned_f_09","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-229 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kelen Marsh (f_10) | causes: t_step_02
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"disposition":"absorbed","entity_id":"f_10","kind":"population_fate","successor_ids":["f_11","f_12","f_13"],"untracked_template_ids":[]}]
-47 s_00_00_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Todor Ruin (f_02) | causes: t_root_f_02
  effects: [{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_02"}]
-46 s_00_01_lineage_preservation_program [SOCIAL_INCIDENT] A documented loss and bottleneck of local human-derived family stocks led to a genome preservation program. The loss concerns this local stock, not extinction of all humans.
  scope=local | objective cause_domain=human
  actors: Todor Ruin (f_02) | causes: t_root_f_02, s_00_00_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_02"}]
-45 s_01_02_deep_residence_record [SOCIAL_INCIDENT] Human-derived residents of two current communities occupied a shared Deep settlement, recording actual residence and a local home site. Residence does not change their Origin.
  scope=local | objective cause_domain=human
  actors: Namon Reach (f_12), Kelith Ruin (f_04) | causes: t_step_04, t_step_00
  effects: [{"entity_id":"s_deep_home_1","kind":"activate"},{"entity_id":"s_deep_home_1","kind":"settlement","location_id":"region","owner_id":"f_12"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1"}]
-44 s_01_03_deep_settlement_evacuation [SOCIAL_INCIDENT] A local settlement failure forced the recorded Deep residents to evacuate to their surface homes. The lost Deep settlement remains identifiable; no Deep Core motive is asserted.
  scope=local | objective cause_domain=human
  actors: Namon Reach (f_12), Kelith Ruin (f_04) | causes: t_step_04, s_01_02_deep_residence_record, t_step_00
  effects: [{"entity_id":"s_deep_home_1","kind":"retire"},{"hazard":"none","id":"s_lost_deep_1","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1"}]
-43 s_01_04_deep_memory_register [SOCIAL_INCIDENT] The displaced Deep residents retained their residence and evacuation records in a communal register. The record prescribes neither return nor avoidance.
  scope=local | objective cause_domain=human
  actors: Namon Reach (f_12), Kelith Ruin (f_04) | causes: t_step_04, s_01_03_deep_settlement_evacuation, t_step_00
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1"},{"content_id":"","entity_id":"f_04","kind":"social_record","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1"}]
-42 s_02_05_rotating_office_compact [SOCIAL_INCIDENT] Residents adopted a rotating office compact with documented terms and succession duties; council lifestyle alone did not imply this institution.
  scope=local | objective cause_domain=human
  actors: Zomar Marsh (f_00) | causes: t_root_f_00
  effects: [{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_00"}]
-41 s_02_06_office_rotation_review [SOCIAL_INCIDENT] A later assembly carried out and reviewed the previously recorded rotation of officeholders.
  scope=local | objective cause_domain=human
  actors: Zomar Marsh (f_00) | causes: t_root_f_00, s_02_05_rotating_office_compact
  effects: [{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_00"}]
-28 h_relation_0 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (f_04), Nawen Marsh (f_11) | causes: t_step_00, t_step_04
  effects: [{"a":"f_04","b":"f_11","delta":26,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zomar Marsh (f_00), Kelith Ruin (f_04) | causes: t_root_f_00, t_step_00
  effects: [{"a":"f_00","b":"f_04","delta":10,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (f_04), Zowen Well (f_07) | causes: t_step_00, t_step_01
  effects: [{"a":"f_04","b":"f_07","delta":13,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zomar Marsh (f_00), Zowen Well (f_07) | causes: t_root_f_00, t_step_01
  effects: [{"a":"f_00","b":"f_07","delta":34,"kind":"relationship"}]
-20 h_relation_4 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zomar Marsh (f_00), Nawen Marsh (f_11) | causes: t_root_f_00, t_step_04
  effects: [{"a":"f_00","b":"f_11","delta":14,"kind":"relationship"}]
-18 h_relation_5 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (f_07), Namon Reach (f_12) | causes: t_step_01, t_step_04
  effects: [{"a":"f_07","b":"f_12","delta":34,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Zomar Marsh (f_00) | causes: t_root_f_00
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kelith Ruin (f_04), Nawen Marsh (f_11) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_11","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zomar Marsh | -320..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Luwen Gate | -319..-269 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Todor Ruin | -318..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Veywen Ruin | -317..-308 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Kelith Ruin | -308..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Luvak Reach | -308..-289 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Bovak Well | -308..-289 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Zowen Well | -289..present | active | parents=f_05, f_06 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Zovak Gate | -269..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Kevak Gate | -269..-249 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Kelen Marsh | -269..-229 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Nawen Marsh | -229..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Namon Reach | -229..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Serin Well | -229..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Sewen Reach | -552..-332 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-552 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-320 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-319 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-318 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-317 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-308 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_00
-308 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_00
-308 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_00
-289 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_05, f_06 | events=t_step_01
-269 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-269 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-269 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-229 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_10 | events=t_step_04
-229 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_10 | events=t_step_04
-229 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_10 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-332 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-308 f_03: absorbed | absorbed_into=f_04, f_05, f_06 | untracked_strata= | events=t_step_00
-289 f_05: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_01
-289 f_06: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_01
-269 f_01: absorbed | absorbed_into=f_08, f_09, f_10 | untracked_strata= | events=t_step_02
-249 f_09: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-229 f_10: absorbed | absorbed_into=f_11, f_12, f_13 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_02","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_02","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_02","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_02_deep_residence_record"],"year":-45}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_residence","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_02_deep_residence_record"],"year":-45}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_exile","record_type":"scar","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_04","operation":"observe","record_id":"deep_settlement_loss","record_type":"site_history","reference_id":"s_deep_home_1","source_event_ids":["s_01_03_deep_settlement_evacuation"],"year":-44}
Social record: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Social record: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Social record: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_00","source_event_ids":["s_02_05_rotating_office_compact"],"year":-42}
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_00","source_event_ids":["s_02_06_office_rotation_review"],"year":-41}
Current social fact: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_00","source_event_ids":["s_02_05_rotating_office_compact"],"year":-42}
Current social fact: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_02","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_04","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"deep_memory","record_type":"institution","reference_id":"s_deep_home_1","source_event_ids":["s_01_04_deep_memory_register"],"year":-43}
Region region: Nawen Well
Faction f_00: Zomar Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=local_exchange
  identity=breakaway/ritual/adapt | interpretation=pragmatic/opportunity | sources=t_root_f_00, h_discovery
  society patterns: Local Mandate, Ritual Stewardship, Rotating Stewardship
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Unspoiled Ground — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Todor Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=border_watch
  identity=new_foundation/exchange/preserve | interpretation=technical/warning | sources=t_root_f_02, h_pressure
  society patterns: Hazard Memory, Route Commonwealth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_04: Kelith Ruin | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=heir/craft/rebuild | interpretation=skeptical/continuity | sources=t_step_00
  society patterns: Hazard Memory, Local Mandate, Maintenance Covenant, Route Commonwealth
Faction f_07: Zowen Well | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
  identity=reformer/institution/exploit | interpretation=technical/debt | sources=t_step_01, h_relation_3
  society patterns: Rebuilt From Fragments, Route Commonwealth
  Doctrine of Continuity — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=structure:inherited_offices, role:archives, history:cooperation
Faction f_08: Zovak Gate | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=reformer/craft/adapt | interpretation=pragmatic/continuity | sources=t_step_02
  society patterns: Household Sovereignty, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Nawen Marsh | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/kin/rebuild | interpretation=technical/warning | sources=t_step_04, h_pressure
  society patterns: Borrowed Offices, Hazard Memory, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Namon Reach | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/craft/withdraw | interpretation=ritual/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Closed Roads, Ritual Stewardship
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_13: Serin Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=heir/institution/adapt | interpretation=pragmatic/rupture | sources=t_step_04, h_collapse
  society patterns: Borrowed Offices, Hazard Memory, Shelter Compact
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_00: parents=precursor; ancestors=precursor; sources=t_root_f_00, h_found, h_collapse
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_04: parents=f_03; ancestors=f_03, precursor; sources=t_step_00, t_root_f_03, h_found, h_collapse
Ancestry f_07: parents=f_05, f_06; ancestors=f_03, f_05, f_06, precursor; sources=t_step_01, t_root_f_03, t_step_00, h_found, h_collapse
Ancestry f_08: parents=f_01; ancestors=f_01, precursor; sources=t_step_02, t_root_f_01, h_found, h_collapse
Ancestry f_11: parents=f_10; ancestors=f_01, f_10, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_12: parents=f_10; ancestors=f_01, f_10, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_13: parents=f_10; ancestors=f_01, f_10, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Relationship f_00 <-> f_04: 10; sources=h_relation_1
Relationship f_00 <-> f_07: 34; sources=h_relation_3
Relationship f_00 <-> f_11: 14; sources=h_relation_4
Relationship f_04 <-> f_07: 13; sources=h_relation_2
Relationship f_04 <-> f_11: 0; sources=h_relation_0, h_last
Relationship f_07 <-> f_12: 34; sources=h_relation_5
Settlement home_f_00: Kelulen | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Danar | owner=f_08 | region=region | sources=t_root_f_01, t_step_02
Settlement home_f_02: Dasera | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Zosil | owner=f_04 | region=region | sources=t_root_f_03, t_step_00
Settlement home_f_04: Lufumar | owner=f_04 | region=region | sources=t_step_00
Settlement home_f_05: Kelusil | owner=f_07 | region=region | sources=t_step_00, t_step_01
Settlement home_f_06: Danarin | owner=f_07 | region=region | sources=t_step_00, t_step_01
Settlement home_f_07: Zoveymon | owner=f_07 | region=region | sources=t_step_01
Settlement home_f_08: Nadamar | owner=f_08 | region=region | sources=t_step_02
Settlement home_f_10: Dalen | owner=f_11 | region=region | sources=t_step_02, t_step_04
Settlement home_f_11: Bofumon | owner=f_11 | region=region | sources=t_step_04
Settlement home_f_12: Hafurin | owner=f_12 | region=region | sources=t_step_04
Settlement home_f_13: Fulen | owner=f_13 | region=region | sources=t_step_04
Ruin abandoned_f_09: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: chemical_exposure_site | occupant= | region=region | sources=h_pressure
  site_type=chemical | hazard=chemical | recorded_use=
Ruin s_lost_deep_1: abandoned_hamlet | occupant= | region=region | sources=s_01_03_deep_settlement_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Zomar Marsh (f_00; knowledge=):
  [t_root_f_00; confidence 0.41; legitimacy] Our recorded formation was direct_successor. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered harmful vapours from opened ground. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.54; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_00","b":"f_04","delta":10}
  [h_relation_3; confidence 0.60; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":34}
  [h_relation_4; confidence 0.40; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":14}
  [h_discovery; confidence 0.39; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.49; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_04","score":10}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":34}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":14}
Todor Ruin (f_02; knowledge=):
  [t_root_f_02; confidence 0.53; legitimacy] Our recorded formation was direct_successor. We define ourselves as a community formed after the old order failed. Routes, exchange and reciprocal obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records remembered harmful vapours from opened ground. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.89; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Kelith Ruin (f_04; knowledge=):
  [t_step_00; confidence 0.71; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records remembered harmful vapours from opened ground. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.66; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":26}
  [h_relation_1; confidence 0.64; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_04","delta":10}
  [h_relation_2; confidence 0.59; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_07","delta":13}
  [h_discovery; confidence 0.52; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.66; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-26}
  [; confidence 0.59; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_04","score":10}
  [; confidence 0.42; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_07","score":13}
  [; confidence 0.51; interpretation] For now, the available evidence says our dealings are unsettled; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":0}
Zowen Well (f_07; knowledge=):
  [t_step_01; confidence 0.90; legitimacy] Our recorded formation was merger. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.82; interpretation] Regional records remembered harmful vapours from opened ground. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.76; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_07","delta":13}
  [h_relation_3; confidence 0.81; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":34}
  [h_relation_5; confidence 0.49; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_07","b":"f_12","delta":34}
  [h_discovery; confidence 0.40; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.50; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":34}
  [; confidence 0.67; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_07","score":13}
  [; confidence 0.89; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_12","score":34}
Zovak Gate (f_08; knowledge=):
  [t_step_02; confidence 0.35; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.71; interpretation] Regional records remembered harmful vapours from opened ground. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.75; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Nawen Marsh (f_11; knowledge=):
  [t_step_04; confidence 0.45; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.75; interpretation] Regional records remembered harmful vapours from opened ground. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.76; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":26}
  [h_relation_4; confidence 0.36; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":14}
  [h_discovery; confidence 0.72; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.39; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-26}
  [; confidence 0.68; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":14}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are unsettled.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":0}
Namon Reach (f_12; knowledge=):
  [t_step_04; confidence 0.67; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.72; interpretation] Regional records remembered harmful vapours from opened ground. Our rites preserve the event as a test of obligations that endured, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_5; confidence 0.75; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_07","b":"f_12","delta":34}
  [h_discovery; confidence 0.37; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [; confidence 0.73; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_07","b":"f_12","score":34}
Serin Well (f_13; knowledge=):
  [t_step_04; confidence 0.56; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records remembered harmful vapours from opened ground. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.60; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":30,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","s_00_00_biotech_workshop_recovery","s_00_01_lineage_preservation_program","s_01_02_deep_residence_record","s_01_03_deep_settlement_evacuation","s_01_04_deep_memory_register","s_02_05_rotating_office_compact","s_02_06_office_rotation_review","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":28,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","s_00_00_biotech_workshop_recovery","s_00_01_lineage_preservation_program","s_01_02_deep_residence_record","s_01_03_deep_settlement_evacuation","s_01_04_deep_memory_register","s_02_05_rotating_office_compact","s_02_06_office_rotation_review","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":30}
```

## Zomar Marsh (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"clean_territory",
		"land_purification",
		"preserve_institutions",
		"safe_relocation"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"unspoiled_ground": "moderate"
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
								"t_root_f_00"
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
			"category": "environment",
			"desires": [
				"clean_territory",
				"land_purification",
				"safe_relocation"
			],
			"display_name": "Unspoiled Ground",
			"fears": [
				"contamination"
			],
			"goal_candidates": [
				{
					"desire": "clean_territory",
					"explanation": "Seek suitable clean land; no destination is asserted.",
					"id": "find_clean_territory"
				},
				{
					"desire": "land_purification",
					"explanation": "Explore restoration; no purification capability is asserted.",
					"id": "purify_contaminated_land"
				},
				{
					"desire": "safe_relocation",
					"explanation": "Consider voluntary relocation; no movement is executed.",
					"id": "relocate_population"
				}
			],
			"id": "unspoiled_ground",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.",
				"id": "unspoiled_ground",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:chemical_exposure"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"scar:chemical_exposure": [
						{
							"detail": "chemical_exposure",
							"scope": "regional",
							"source_event_ids": [
								"h_pressure"
							],
							"source_path": "event.narrative_key"
						}
					]
				}
			},
			"taboos": [
				"land_contamination"
			],
			"values": [
				"land_stewardship",
				"hazard_awareness"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"measured_doubt",
		"unspoiled_ground",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"local_mandate",
		"mutual_obligation",
		"ritual_stewardship",
		"rotating_stewardship",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_discovery"
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
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "maintenance_accord",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
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
		"event:rotating_office_compact": [
			{
				"detail": "rotating_office_compact",
				"scope": "faction",
				"source_event_ids": [
					"s_02_05_rotating_office_compact"
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
				"detail": "10",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "34",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "14",
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
				"detail": "chemical_exposure",
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
					"t_root_f_00",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:rotating_office": [
			{
				"content_ids": [],
				"detail": "Objective institution:rotating_office",
				"reference_ids": [
					"f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_02_05_rotating_office_compact"
				],
				"source_path": "present.social_facts:institution:rotating_office"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
		"contamination",
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_root_f_00",
			"h_discovery"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:religious_community",
			"role:local_exchange",
			"political_continuity:true"
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
				"institution:rotating_office"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 3
			},
			"support": {
				"institution:rotating_office": [
					{
						"content_ids": [],
						"detail": "Objective institution:rotating_office",
						"reference_ids": [
							"f_00"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_02_05_rotating_office_compact"
						],
						"source_path": "present.social_facts:institution:rotating_office"
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
							"t_root_f_00"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Office rotation requires an explicitly authored rotation institution; political reorganization alone does not prove rotating tenure.",
			"id": "rotating_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"institution:rotating_office"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"institution:rotating_office": [
					{
						"content_ids": [],
						"detail": "Objective institution:rotating_office",
						"reference_ids": [
							"f_00"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_02_05_rotating_office_compact"
						],
						"source_path": "present.social_facts:institution:rotating_office"
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
							"t_root_f_00"
						],
						"source_path": "entity.political_continuity"
					}
				]
			}
		},
		{
			"explanation": "Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.",
			"id": "unspoiled_ground",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:chemical_exposure"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"scar:chemical_exposure": [
					{
						"detail": "chemical_exposure",
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
		"society_traits": 3
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
					"institution:rotating_office"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 3
				},
				"support": {
					"institution:rotating_office": [
						{
							"content_ids": [],
							"detail": "Objective institution:rotating_office",
							"reference_ids": [
								"f_00"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_02_05_rotating_office_compact"
							],
							"source_path": "present.social_facts:institution:rotating_office"
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
		},
		{
			"category": "institutions",
			"display_name": "Rotating Stewardship",
			"id": "rotating_stewardship",
			"provenance": {
				"explanation": "Office rotation requires an explicitly authored rotation institution; political reorganization alone does not prove rotating tenure.",
				"id": "rotating_stewardship",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"institution:rotating_office"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"institution:rotating_office": [
						{
							"content_ids": [],
							"detail": "Objective institution:rotating_office",
							"reference_ids": [
								"f_00"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_02_05_rotating_office_compact"
							],
							"source_path": "present.social_facts:institution:rotating_office"
						}
					]
				}
			},
			"tension_tags": [
				"hereditary_authority"
			],
			"value_tags": [
				"shared_responsibility"
			]
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction",
		"land_contamination"
	],
	"tension_tags": [
		"external_domination",
		"hereditary_authority",
		"ritual_desecration"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"institutional_continuity",
		"land_stewardship",
		"local_service",
		"memory_preservation",
		"record_preservation",
		"ritualism",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"},{"desire":"clean_territory","explanation":"Seek suitable clean land; no destination is asserted.","historical_reference_ids":[],"id":"find_clean_territory","intensity":"moderate","provenance":{"explanation":"Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.","id":"unspoiled_ground","kind":"doctrine","matched_preferences":[],"matched_required":["scar:chemical_exposure"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"scar:chemical_exposure":[{"detail":"chemical_exposure","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"unspoiled_ground","status":"candidate"},{"desire":"land_purification","explanation":"Explore restoration; no purification capability is asserted.","historical_reference_ids":[],"id":"purify_contaminated_land","intensity":"moderate","provenance":{"explanation":"Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.","id":"unspoiled_ground","kind":"doctrine","matched_preferences":[],"matched_required":["scar:chemical_exposure"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"scar:chemical_exposure":[{"detail":"chemical_exposure","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"unspoiled_ground","status":"candidate"},{"desire":"safe_relocation","explanation":"Consider voluntary relocation; no movement is executed.","historical_reference_ids":[],"id":"relocate_population","intensity":"moderate","provenance":{"explanation":"Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.","id":"unspoiled_ground","kind":"doctrine","matched_preferences":[],"matched_required":["scar:chemical_exposure"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"scar:chemical_exposure":[{"detail":"chemical_exposure","scope":"regional","source_event_ids":["h_pressure"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"unspoiled_ground","status":"candidate"}]`

## Todor Ruin (f_02)

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
								"t_root_f_02"
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
		"ancestral_genome",
		"continuity",
		"truth_through_trial",
		"unspoiled_ground"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
					"t_root_f_02",
					"h_pressure"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:biotechnology": [
			{
				"content_ids": [],
				"detail": "Objective capability:biotechnology",
				"reference_ids": [
					"f_02"
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
		"event:lineage_preservation_program": [
			{
				"detail": "lineage_preservation_program",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_lineage_preservation_program"
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
		"formation:direct_successor": [
			{
				"detail": "direct_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:lineage_loss": [
			{
				"content_ids": [],
				"detail": "Objective scar:lineage_loss",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_lineage_preservation_program"
				],
				"source_path": "present.social_history:scar:lineage_loss"
			}
		],
		"history:recorded_testing": [
			{
				"content_ids": [],
				"detail": "Objective practice:recorded_testing",
				"reference_ids": [
					"f_02"
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
				"detail": "chemical_exposure",
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
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:genetic_preservation": [
			{
				"content_ids": [],
				"detail": "Objective institution:genetic_preservation",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_lineage_preservation_program"
				],
				"source_path": "present.social_facts:institution:genetic_preservation"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
					"t_root_f_02"
				],
				"source_path": "entity.political_continuity"
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
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_root_f_02",
			"h_pressure"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:resource_or_trade_commune",
			"role:border_watch",
			"political_continuity:true"
		]
	},
	"provenance": [
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
				"target": 2,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "chemical_exposure",
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
				"role:border_watch": [
					{
						"detail": "border_watch",
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
							"t_root_f_02"
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
							"t_root_f_02"
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
					"target": 2,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "chemical_exposure",
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
					"role:border_watch": [
						{
							"detail": "border_watch",
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
								"t_root_f_02"
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
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"duty",
		"fair_exchange",
		"hazard_awareness",
		"institutional_continuity",
		"record_preservation",
		"route_service"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_root_f_02"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Kelith Ruin (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"continuity",
		"depth_taboo",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"return_to_deep",
		"sacred_craft",
		"unspoiled_ground",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"local_mandate",
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
					"t_step_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
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
					"h_relation_0"
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
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "10",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "13",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
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
				"detail": "-26",
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
				"detail": "chemical_exposure",
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
					"t_step_00"
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
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
					"t_root_f_03",
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_03"
			},
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
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "heir",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_00"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:village_union",
			"role:maintenance",
			"political_continuity:true"
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
				"history:local_hazard_response"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
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
						"detail": "chemical_exposure",
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
							"t_root_f_03",
							"t_step_00"
						],
						"source_path": "present.settlements:home_f_03"
					},
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
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
							"h_relation_0"
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
					"target": 4,
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
							"detail": "chemical_exposure",
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
								"t_root_f_03",
								"t_step_00"
							],
							"source_path": "present.settlements:home_f_03"
						},
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
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
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
								"h_relation_0"
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
		"external_domination",
		"neglect",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
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

Candidates: `[]`

## Zowen Well (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions"
	],
	"doctrine_intensities": {
		"continuity": "fanatic"
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
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"structure:inherited_offices",
					"role:archives",
					"history:cooperation"
				]
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
					"history:cooperation": [
						{
							"detail": "13",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "34",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_3"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "34",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_5"
							],
							"source_path": "effect.relationship.delta"
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
		"measured_doubt",
		"unspoiled_ground",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"archive_legitimacy",
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
					"t_step_01",
					"h_relation_3"
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
					"h_relation_5"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_merge": [
			{
				"detail": "political_merge",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
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
		"formation:merger": [
			{
				"detail": "merger",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "13",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "34",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_3"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "34",
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
				"detail": "chemical_exposure",
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
					"t_step_01",
					"h_relation_3"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:modified_human_community": [
			{
				"detail": "modified_human_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_3"
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
					"t_step_00",
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
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
				"source_path": "present.settlements:home_f_07"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_05, f_06",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_01",
			"h_relation_3"
		],
		"source_facts": [
			"formation:merger",
			"way_of_life:modified_human_community",
			"role:archives",
			"political_continuity:true"
		]
	},
	"provenance": [
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
				"target": 2,
				"weight": 8
			},
			"support": {
				"formation:merger": [
					{
						"detail": "merger",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_01",
							"h_relation_3"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_05, f_06",
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
				"history:cooperation": [
					{
						"detail": "13",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "34",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_3"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "34",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_5"
						],
						"source_path": "effect.relationship.delta"
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
		}
	],
	"selection_targets": {
		"doctrines": 1,
		"society_traits": 2
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
				"matched_preferences": [
					"identity:reformer"
				],
				"matched_required": [
					"formation:merger",
					"structure:multiple_parents"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 8
				},
				"support": {
					"formation:merger": [
						{
							"detail": "merger",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_01",
								"h_relation_3"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_05, f_06",
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
		"factional_exclusion",
		"route_monopoly"
	],
	"value_tags": [
		"coalition_building",
		"duty",
		"fair_exchange",
		"institutional_continuity",
		"record_preservation",
		"route_service"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"fanatic","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:cooperation":[{"detail":"13","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"effect.relationship.delta"},{"detail":"34","scope":"faction","source_event_ids":["h_relation_3"],"source_path":"effect.relationship.delta"},{"detail":"34","scope":"faction","source_event_ids":["h_relation_5"],"source_path":"effect.relationship.delta"}],"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Zovak Gate (f_08)

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
		"continuity",
		"no_more_masters",
		"radical_impermanence",
		"unspoiled_ground"
	],
	"eligible_traits": [
		"borrowed_offices",
		"household_sovereignty",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
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
				"detail": "chemical_exposure",
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
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_02"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:kinship_clan",
			"role:local_exchange",
			"political_continuity:true"
		]
	},
	"provenance": [
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:kinship_clan": [
					{
						"detail": "kinship_clan",
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
			"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
			"id": "route_commonwealth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:local_exchange"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:kinship_clan": [
						{
							"detail": "kinship_clan",
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
					"target": 2,
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"external_domination",
		"route_monopoly"
	],
	"value_tags": [
		"fair_exchange",
		"household_autonomy",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Nawen Marsh (f_11)

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
		"radical_impermanence",
		"unspoiled_ground",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
		"hazard_memory",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
					"h_relation_4"
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
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "26",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "14",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_4"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-26",
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
				"detail": "chemical_exposure",
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
					"t_step_04",
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
					"t_step_02",
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_10"
			},
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
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_04",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:trading_house",
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
							"h_pressure"
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
						"detail": "chemical_exposure",
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
							"h_relation_0"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:trading_house": [
					{
						"detail": "trading_house",
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
								"h_pressure"
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
							"detail": "chemical_exposure",
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
								"h_relation_0"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:trading_house": [
						{
							"detail": "trading_house",
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
		"anti_authority",
		"recklessness",
		"route_monopoly"
	],
	"value_tags": [
		"duty",
		"fair_exchange",
		"hazard_awareness",
		"household_autonomy",
		"institutional_continuity",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Namon Reach (f_12)

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
				"matched_preferences": [
					"memory:continuity"
				],
				"matched_required": [
					"life:ritual_authority"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
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
					],
					"memory:continuity": [
						{
							"detail": "continuity",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04"
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
								"t_step_04"
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
		"depth_taboo",
		"living_archive",
		"no_more_masters",
		"radical_impermanence",
		"return_to_deep",
		"unspoiled_ground"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
		"hazard_memory",
		"mutual_obligation",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
					"h_relation_5"
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
				"detail": "34",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_5"
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
				"detail": "chemical_exposure",
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
					"t_step_04"
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
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
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
		"adaptive_stance": "withdraw",
		"continuity_stance": "heir",
		"interpretation_mode": "ritual",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_04"
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
				"target": 3,
				"weight": 8
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04"
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
							"t_step_04"
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
			"explanation": "An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.",
			"id": "ritual_stewardship",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:ritual_authority"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
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
				"target": 2,
				"weight": 7
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
				],
				"memory:continuity": [
					{
						"detail": "continuity",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "identity.memory_frame"
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
				"target": 2,
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
		"doctrines": 2,
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
								"t_step_04"
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
								"t_step_04"
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
					"target": 3,
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
		"memory_erasure",
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"anti_authority",
		"ritual_desecration",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"boundary_caution",
		"duty",
		"institutional_continuity",
		"institutional_reform",
		"memory_preservation",
		"oral_history",
		"performance",
		"ritualism",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.way_of_life"}],"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_04"],"source_path":"identity.memory_frame"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["life:ritual_authority"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"life:ritual_authority":[{"detail":"ritual_authority","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.way_of_life"}],"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_04"],"source_path":"identity.memory_frame"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Serin Well (f_13)

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
				"matched_preferences": [
					"identity:heir"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_collapse"
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
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence",
		"unspoiled_ground"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
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
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
				"detail": "chemical_exposure",
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
		"life:military_remnant": [
			{
				"detail": "military_remnant",
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
		"scar:chemical_exposure": [
			{
				"detail": "chemical_exposure",
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
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
			"role:shelter",
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
							"t_step_04",
							"h_collapse"
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
						"detail": "chemical_exposure",
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
							"t_step_04"
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
				"target": 4,
				"weight": 6
			},
			"support": {
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
			"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
			"id": "continuity",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:heir"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_collapse"
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
								"t_step_04",
								"h_collapse"
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
							"detail": "chemical_exposure",
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
								"t_step_04"
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
					"target": 4,
					"weight": 6
				},
				"support": {
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
				"cruelty"
			],
			"value_tags": [
				"compassion",
				"hospitality"
			]
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"cruelty",
		"recklessness"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"hospitality",
		"institutional_continuity",
		"record_preservation"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":["identity:heir"],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"identity:heir":[{"detail":"heir","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.continuity_stance"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`
