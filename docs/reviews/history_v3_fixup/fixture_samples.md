# Synthetic population fixture histories — software tests only, not shipping Canon

## multi_origin_lineage — test catalog seed 2

```text
History architecture v2 | generation algorithm v3 | seed 2 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"test_synthetic_only","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"ritual_schism","topology_family":"remnant_mosaic"}
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
-508 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-483 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-473 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["unknown"],"prevalence":"majority","template_id":"fixture_unknown"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-340 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body), Zotovak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-328 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Lurin (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-318 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Serin Gate (precursor), Miwen (regional_body), Zotovak (pressure_group), Lurin (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-305 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-304 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-294 t_step_00 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":[]},{"entity_id":"f_01","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"minor","template_id":"fixture_hybrid"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01","cohort_00"]}]
-276 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"minor","template_id":"fixture_hybrid"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]}]
-258 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sesil Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_04","f_05"],"untracked_template_ids":[]}]
-239 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Zovak Reach (f_04), Bosen Well (f_03), Fumar Well (f_05) | causes: t_step_02, t_step_01, t_step_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_06"],"untracked_template_ids":[]},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["fixture_hybrid","human_baseline"]},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["fixture_hybrid"]}]
-221 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kesen Gate (f_06) | causes: t_step_03
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_06"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_06"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_06"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_07","f_08","f_09"],"untracked_template_ids":[]}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Tosil Well (f_00), Sesen Marsh (f_07) | causes: t_root_f_00, t_step_04
  effects: [{"a":"f_00","b":"f_07","delta":-31,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Tosil Well (f_00), Hamon Reach (f_08) | causes: t_root_f_00, t_step_04
  effects: [{"a":"f_00","b":"f_08","delta":-19,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Kelith Reach (f_09) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Tosil Well (f_00), Sesen Marsh (f_07) | causes: h_relation_0
  effects: [{"a":"f_00","b":"f_07","delta":22,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Tosil Well | -473..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=fixture_unknown:Unknown [majority; single-Origin lineage] | last_origins=fixture_unknown:Unknown [majority; single-Origin lineage]
f_01: Dalith Gate | -305..-276 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [minor; multi-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Sesil Well | -304..-258 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_03: Bosen Well | -276..-239 | extinct | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [minor; multi-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [minor; multi-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Zovak Reach | -258..-239 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_05: Fumar Well | -258..-239 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_06: Kesen Gate | -239..-221 | extinct | parents=f_04, f_03, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_07: Sesen Marsh | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_08: Hamon Reach | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_09: Kelith Reach | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
precursor: Serin Gate | -508..-318 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-508 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-473 f_00: fixture_unknown:Unknown [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-305 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-304 f_02: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-294 cohort_00: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=arrival | donors= | events=t_step_00
-294 f_01: fixture_hybrid:Human-derived+Innerworld [minor; multi-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_01, cohort_00 | events=t_step_00
-276 f_03: fixture_hybrid:Human-derived+Innerworld [minor; multi-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-258 f_04: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_02
-258 f_05: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_02
-239 f_06: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_03
-221 f_07: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
-221 f_08: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
-221 f_09: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-318 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-276 f_01: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_01
-258 f_02: absorbed | absorbed_into=f_04, f_05 | untracked_strata= | events=t_step_02
-239 f_04: absorbed | absorbed_into=f_06 | untracked_strata= | events=t_step_03
-239 f_03: untracked | absorbed_into= | untracked_strata=fixture_hybrid, human_baseline | events=t_step_03
-239 f_05: untracked | absorbed_into= | untracked_strata=fixture_hybrid | events=t_step_03
-221 f_06: absorbed | absorbed_into=f_07, f_08, f_09 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
Region region: Zosen Well
Faction f_00: Tosil Well | military_remnant | knowledge=
  origins=fixture_unknown:Unknown [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=border_watch
Faction f_07: Sesen Marsh | refugee_community | knowledge=
  origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_08: Hamon Reach | migrant_confederation | knowledge=
  origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_09: Kelith Reach | infrastructure_guild | knowledge=observer_scholarly_term
  origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | formation=fragmentation | regional_roles=isolation
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_07: parents=f_06; ancestors=f_01, f_02, f_03, f_04, f_05, f_06, precursor; sources=t_step_04, t_root_f_01, t_step_01, t_root_f_02, t_step_02, t_step_03, h_found, h_collapse
Ancestry f_08: parents=f_06; ancestors=f_01, f_02, f_03, f_04, f_05, f_06, precursor; sources=t_step_04, t_root_f_01, t_step_01, t_root_f_02, t_step_02, t_step_03, h_found, h_collapse
Ancestry f_09: parents=f_06; ancestors=f_01, f_02, f_03, f_04, f_05, f_06, precursor; sources=t_step_04, t_root_f_01, t_step_01, t_root_f_02, t_step_02, t_step_03, h_found, h_collapse
Relationship f_00 <-> f_07: -9; sources=h_relation_0, h_last
Relationship f_00 <-> f_08: -19; sources=h_relation_1
Settlement home_f_00: Nabomar | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Sehawen | owner=f_07 | region=region | sources=t_root_f_01, t_step_01, t_step_03, t_step_04
Settlement home_f_02: Hara | owner=f_07 | region=region | sources=t_root_f_02, t_step_02, t_step_03, t_step_04
Settlement home_f_03: Kekera | owner=f_07 | region=region | sources=t_step_01, t_step_03, t_step_04
Settlement home_f_04: Kerin | owner=f_07 | region=region | sources=t_step_02, t_step_03, t_step_04
Settlement home_f_05: Bodor | owner=f_07 | region=region | sources=t_step_02, t_step_03, t_step_04
Settlement home_f_06: Kemar | owner=f_07 | region=region | sources=t_step_03, t_step_04
Settlement home_f_07: Fulith | owner=f_07 | region=region | sources=t_step_04
Settlement home_f_08: Nara | owner=f_08 | region=region | sources=t_step_04
Settlement home_f_09: Fuselen | owner=f_09 | region=region | sources=t_step_04
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Tosil Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.57; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.84; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.61; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":-31}
  [h_relation_1; confidence 0.77; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-19}
  [h_discovery; confidence 0.39; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.46; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":22}
  [; confidence 0.69; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":-9}
  [; confidence 0.71; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-19}
Sesen Marsh (f_07; knowledge=):
  [t_step_04; confidence 0.43; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.48; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.53; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":-31}
  [h_discovery; confidence 0.47; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":22}
  [; confidence 0.47; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":-9}
Hamon Reach (f_08; knowledge=):
  [t_step_04; confidence 0.44; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.38; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-19}
  [h_discovery; confidence 0.60; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.84; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-19}
Kelith Reach (f_09; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.61; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.65; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

## mixed_society — test catalog seed 3

```text
History architecture v2 | generation algorithm v3 | seed 3 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-2","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"test_synthetic_only","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"ritual_schism","topology_family":"layered_migration"}
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
-482 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-457 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-349 h_pressure [MIGRATION] Overextended garrisons withdrew and organized displaced households around abandoned posts.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-341 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body), Kesen (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Dasesen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-332 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Nanar Reach (precursor), Borin (regional_body), Kesen (pressure_group), Dasesen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-320 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["observer"],"prevalence":"majority","template_id":"fixture_observer"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-319 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-308 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-289 t_step_01 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["fixture_observer"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-269 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-249 t_step_03 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Hanar Well (f_03) | causes: t_step_02
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["innerworld"],"prevalence":"majority","template_id":"fixture_innerworld"}]},"source_ids":[]},{"entity_id":"f_03","kind":"population","mode":"join","profile":{"strata":[{"origins":["innerworld"],"prevalence":"minor","template_id":"fixture_innerworld"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03","cohort_02"]}]
-229 t_step_04 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_03","kind":"activate"},{"entity_id":"cohort_03","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-209 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Milith Well (f_02) | causes: t_step_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]}]
-190 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Hanar Well (f_03) | causes: t_step_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"subset","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"subset","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_06","f_07"],"untracked_template_ids":["fixture_innerworld"]}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Sera Marsh (f_07) | causes: h_collapse, t_step_06
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_07"},{"kind":"reoccupy","owner_id":"f_07","purpose":"settlement","ruin_id":"old_administration","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Kewen Well (f_04), Hawen Well (f_06) | causes: t_step_04, t_step_06
  effects: [{"a":"f_04","b":"f_06","delta":20,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Hawen Well (f_06), Sera Marsh (f_07) | causes: t_step_06, t_step_06
  effects: [{"a":"f_06","b":"f_07","delta":17,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Sera Marsh (f_07) | causes: t_step_06
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kewen Well (f_04), Hawen Well (f_06) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_06","delta":-13,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nanar Ruin | -320..-289 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=fixture_observer:Observer [majority; single-Origin lineage] | last_origins=fixture_observer:Observer [majority; single-Origin lineage]
f_01: Havak Well | -319..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Milith Well | -308..-209 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Hanar Well | -269..-190 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=fixture_innerworld:Innerworld [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society)
f_04: Kewen Well | -229..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Veyrin Gate | -209..present | active | parents=f_02 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Hawen Well | -190..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Sera Marsh | -190..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Nanar Reach | -482..-332 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-482 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-320 f_00: fixture_observer:Observer [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-319 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-308 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-308 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-269 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-269 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_02
-249 cohort_02: fixture_innerworld:Innerworld [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_03
-249 f_03: fixture_innerworld:Innerworld [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | mode=join | donors=f_03, cohort_02 | events=t_step_03
-229 cohort_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-229 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_03 | events=t_step_04
-209 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_05
-190 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=subset | donors=f_03 | events=t_step_06
-190 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=subset | donors=f_03 | events=t_step_06
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-332 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-289 f_00: untracked | absorbed_into= | untracked_strata=fixture_observer | events=t_step_01
-209 f_02: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_05
-190 f_03: absorbed | absorbed_into=f_06, f_07 | untracked_strata=fixture_innerworld | events=t_step_06
=== CURRENT WORLD ===
Region region: Bolith Well
Faction f_01: Havak Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
Faction f_04: Kewen Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=local_exchange
Faction f_05: Veyrin Gate | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
Faction f_06: Hawen Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_07: Sera Marsh | breakaway_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Ancestry f_01: parents=; ancestors=; sources=t_root_f_01
Ancestry f_04: parents=; ancestors=; sources=t_step_04
Ancestry f_05: parents=f_02; ancestors=f_02; sources=t_step_05, t_step_00
Ancestry f_06: parents=f_03; ancestors=f_03; sources=t_step_06, t_step_02
Ancestry f_07: parents=f_03; ancestors=f_03; sources=t_step_06, t_step_02
Relationship f_04 <-> f_06: 7; sources=h_relation_0, h_last
Relationship f_06 <-> f_07: 17; sources=h_relation_1
Settlement home_f_01: Hanar | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_02: Kedavak | owner=f_05 | region=region | sources=t_step_00, t_step_05
Settlement home_f_03: Ludamar | owner=f_06 | region=region | sources=t_step_02, t_step_06
Settlement home_f_04: Sera | owner=f_04 | region=region | sources=t_step_04
Settlement home_f_05: Misil | owner=f_05 | region=region | sources=t_step_05
Settlement home_f_06: Sesil | owner=f_06 | region=region | sources=t_step_06
Settlement home_f_07: Semisen | owner=f_07 | region=region | sources=t_step_06
Settlement reused_site: Damar | owner=f_07 | region=region | sources=h_reuse
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_step_01
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant=f_07 | region=region | sources=h_collapse, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
=== BELIEFS ===
Havak Well (f_01; knowledge=):
  [t_root_f_01; confidence 0.84; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.55; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.70; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Kewen Well (f_04; knowledge=):
  [t_step_04; confidence 0.38; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.51; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":20}
  [h_discovery; confidence 0.40; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.67; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-13}
  [; confidence 0.69; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":7}
Veyrin Gate (f_05; knowledge=):
  [t_step_05; confidence 0.61; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.64; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Hawen Well (f_06; knowledge=):
  [t_step_06; confidence 0.82; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.74; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.90; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":20}
  [h_relation_1; confidence 0.68; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":17}
  [h_discovery; confidence 0.73; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.75; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-13}
  [; confidence 0.68; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":7}
  [; confidence 0.39; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":17}
Sera Marsh (f_07; knowledge=):
  [t_step_06; confidence 0.79; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.47; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":17}
  [h_discovery; confidence 0.37; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.41; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":17}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":20}
```

## subset_inheritance — test catalog seed 10

```text
History architecture v2 | generation algorithm v3 | seed 10 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"test_synthetic_only","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"regional_autonomy","topology_family":"remnant_mosaic"}
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
-480 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-455 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Mimon Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-367 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Mimon Well (precursor), Misil (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland","site_type":"agricultural"}]
-356 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Mimon Well (precursor), Misil (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-349 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Mimon Well (precursor), Veymon (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-345 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Mimon Well (precursor), Misil (regional_body), Veymon (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-333 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-332 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-331 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-321 t_step_00 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Mimar Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["planetary"],"prevalence":"majority","template_id":"fixture_local_only"}]},"source_ids":[]},{"entity_id":"f_00","kind":"population","mode":"join","profile":{"strata":[{"origins":["planetary"],"prevalence":"minor","template_id":"fixture_local_only"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00","cohort_00"]}]
-300 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Mimar Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["planetary"],"prevalence":"minor","template_id":"fixture_local_only"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]}]
-279 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Lumon Well (f_03) | causes: t_step_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["planetary"],"prevalence":"minor","template_id":"fixture_local_only"},{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_04"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_04"],"untracked_template_ids":[]}]
-258 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bomon Ruin (f_04) | causes: t_step_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"subset","profile":{"strata":[{"origins":["planetary"],"prevalence":"majority","template_id":"fixture_local_only"}]},"source_ids":["f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"subset","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_05","f_06"],"untracked_template_ids":[]}]
-237 t_step_04 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["unknown"],"prevalence":"majority","template_id":"fixture_unknown"}]},"source_ids":[]},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["unknown"],"prevalence":"majority","template_id":"fixture_unknown"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"}]
-216 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Bosil Well (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived","innerworld"],"prevalence":"majority","template_id":"fixture_hybrid"}]},"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Kedor Marsh (f_08) | causes: h_failure, t_step_05
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_08"},{"kind":"reoccupy","owner_id":"f_08","purpose":"settlement","ruin_id":"terminal_site","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fulith Reach (f_06), Kedor Marsh (f_08) | causes: t_step_03, t_step_05
  effects: [{"a":"f_06","b":"f_08","delta":32,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fulen Marsh (f_05), Fulith Reach (f_06) | causes: t_step_03, t_step_03
  effects: [{"a":"f_05","b":"f_06","delta":20,"kind":"relationship"}]
-24 h_relation_2 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Fulen Marsh (f_05), Darin Ruin (f_07) | causes: t_step_03, t_step_04
  effects: [{"a":"f_05","b":"f_07","delta":-34,"kind":"relationship"},{"hazard":"structural","id":"watchpost_2","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Fulith Reach (f_06), Kedor Marsh (f_08) | causes: h_relation_0
  effects: [{"a":"f_06","b":"f_08","delta":-16,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Mimar Marsh | -333..-300 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society)
f_01: Bosil Well | -332..-216 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
f_02: Bovak Reach | -331..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Lumon Well | -300..-279 | extinct | parents=f_00 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | last_origins=fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society)
f_04: Bomon Ruin | -279..-258 | extinct | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | last_origins=fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society)
f_05: Fulen Marsh | -258..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=fixture_local_only:Planetary [majority; single-Origin lineage] | last_origins=fixture_local_only:Planetary [majority; single-Origin lineage]
f_06: Fulith Reach | -258..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Darin Ruin | -237..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=fixture_unknown:Unknown [majority; single-Origin lineage] | last_origins=fixture_unknown:Unknown [majority; single-Origin lineage]
f_08: Kedor Marsh | -216..present | active | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | last_origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage]
precursor: Mimon Well | -480..-345 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-480 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-333 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-332 f_01: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-331 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-321 cohort_00: fixture_local_only:Planetary [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-321 f_00: fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | mode=join | donors=f_00, cohort_00 | events=t_step_00
-300 f_03: fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | mode=inherit | donors=f_00 | events=t_step_01
-279 f_04: fixture_local_only:Planetary [minor; single-Origin lineage] | human_baseline:Human-derived [majority; single-Origin lineage] (mixed society) | mode=inherit | donors=f_03 | events=t_step_02
-258 f_05: fixture_local_only:Planetary [majority; single-Origin lineage] | mode=subset | donors=f_04 | events=t_step_03
-258 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=subset | donors=f_04 | events=t_step_03
-237 cohort_01: fixture_unknown:Unknown [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-237 f_07: fixture_unknown:Unknown [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_04
-216 f_08: fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-345 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-300 f_00: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_01
-279 f_03: absorbed | absorbed_into=f_04 | untracked_strata= | events=t_step_02
-258 f_04: absorbed | absorbed_into=f_05, f_06 | untracked_strata= | events=t_step_03
-216 f_01: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_05
=== CURRENT WORLD ===
Region region: Fura Reach
Faction f_02: Bovak Reach | frontier_settlement_league | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=local_exchange
Faction f_05: Fulen Marsh | provincial_council | knowledge=
  origins=fixture_local_only:Planetary [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_06: Fulith Reach | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_07: Darin Ruin | military_remnant | knowledge=
  origins=fixture_unknown:Unknown [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=archives
Faction f_08: Kedor Marsh | migrant_confederation | knowledge=
  origins=fixture_hybrid:Human-derived+Innerworld [majority; multi-Origin lineage] | formation=reorganization | regional_roles=isolation
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_05: parents=f_04; ancestors=f_00, f_03, f_04; sources=t_step_03, t_root_f_00, t_step_01, t_step_02
Ancestry f_06: parents=f_04; ancestors=f_00, f_03, f_04; sources=t_step_03, t_root_f_00, t_step_01, t_step_02
Ancestry f_07: parents=; ancestors=; sources=t_step_04
Ancestry f_08: parents=f_01; ancestors=f_01; sources=t_step_05, t_root_f_01
Relationship f_05 <-> f_06: 20; sources=h_relation_1
Relationship f_05 <-> f_07: -34; sources=h_relation_2
Relationship f_06 <-> f_08: 16; sources=h_relation_0, h_last
Settlement home_f_00: Nasen | owner=f_05 | region=region | sources=t_root_f_00, t_step_01, t_step_02, t_step_03
Settlement home_f_01: Tomimar | owner=f_08 | region=region | sources=t_root_f_01, t_step_05
Settlement home_f_02: Hasil | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Veysil | owner=f_05 | region=region | sources=t_step_01, t_step_02, t_step_03
Settlement home_f_04: Hanar | owner=f_05 | region=region | sources=t_step_02, t_step_03
Settlement home_f_05: Fuzolith | owner=f_05 | region=region | sources=t_step_03
Settlement home_f_06: Haveyra | owner=f_06 | region=region | sources=t_step_03
Settlement home_f_07: Lululith | owner=f_07 | region=region | sources=t_step_04
Settlement home_f_08: Navak | owner=f_08 | region=region | sources=t_step_05
Settlement reused_site: Nahamon | owner=f_08 | region=region | sources=h_reuse
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_farmland | occupant= | region=region | sources=h_pressure
  site_type=agricultural | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant=f_08 | region=region | sources=h_failure, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin watchpost_2: watchtower | occupant= | region=region | sources=h_relation_2
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Bovak Reach (f_02; knowledge=):
  [t_root_f_02; confidence 0.51; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Fulen Marsh (f_05; knowledge=):
  [t_step_03; confidence 0.51; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.79; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":20}
  [h_relation_2; confidence 0.43; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":-34}
  [; confidence 0.46; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":20}
  [; confidence 0.41; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":-34}
Fulith Reach (f_06; knowledge=):
  [t_step_03; confidence 0.50; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.80; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":32}
  [h_relation_1; confidence 0.35; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_06","delta":20}
  [h_last; confidence 0.35; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-16}
  [; confidence 0.76; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_06","score":20}
  [; confidence 0.38; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":16}
Darin Ruin (f_07; knowledge=):
  [t_step_04; confidence 0.90; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.72; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":-34}
  [; confidence 0.74; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":-34}
Kedor Marsh (f_08; knowledge=):
  [t_step_05; confidence 0.74; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.36; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.90; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":32}
  [h_last; confidence 0.68; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-16}
  [; confidence 0.54; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":16}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":20}
```
