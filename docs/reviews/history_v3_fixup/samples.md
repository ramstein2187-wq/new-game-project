# History v0.3 representative readable outputs

Generated with algorithm v3 / architecture v2. Objective debug facts and faction beliefs are separate.

## consolidation_resplit — seed 1

```text
History architecture v2 | generation algorithm v3 | seed 1 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","response_motif":"household_council","topology_family":"consolidation_resplit"}
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
-560 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-535 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-347 h_pressure [SPLIT] District offices stopped recognizing central appointments and formed a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_archive","site_type":"records"}]
-340 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body), Mibomar (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Towen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Tomar Well (precursor), Tozonar (regional_body), Mibomar (pressure_group), Towen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-314 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-313 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-312 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-302 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kesen Reach (f_00), Veynar Ruin (f_01) | causes: t_root_f_00, t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00","f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]}]
-283 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bowen Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_02","b":"f_04","delta":-13,"kind":"relationship"}]
-264 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dawen Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_06","f_07","f_08"],"untracked_template_ids":[]}]
-245 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Lusen Well (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"retire"},{"hazard":"none","id":"abandoned_f_05","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-226 t_step_04 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Dador Well (f_08), Zodor Gate (f_04) | causes: t_step_02, t_step_01
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"},{"disposition":"absorbed","entity_id":"f_08","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_04","kind":"retire"},{"disposition":"untracked","entity_id":"f_04","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Bowen Marsh (f_02), Semon Well (f_09) | causes: t_root_f_02, t_step_04
  effects: [{"a":"f_02","b":"f_09","delta":-15,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Bowen Marsh (f_02), Zosen Reach (f_06) | causes: t_root_f_02, t_step_02
  effects: [{"a":"f_02","b":"f_06","delta":21,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Zosen Reach (f_06) | causes: t_step_02
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bowen Marsh (f_02), Semon Well (f_09) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_09","delta":43,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kesen Reach | -314..-302 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Veynar Ruin | -313..-302 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Bowen Marsh | -312..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Dawen Gate | -302..-264 | extinct | parents=f_00, f_01 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Zodor Gate | -283..-226 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Lusen Well | -283..-245 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Zosen Reach | -264..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Veywen Reach | -264..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Dador Well | -264..-226 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Semon Well | -226..present | active | parents=f_08, f_04 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Tomar Well | -560..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-560 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-314 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-313 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-312 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-302 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_00, f_01 | events=t_step_00
-283 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-283 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-264 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_02
-264 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_02
-264 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_02
-226 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-326 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-302 f_00: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_00
-302 f_01: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_00
-264 f_03: absorbed | absorbed_into=f_06, f_07, f_08 | untracked_strata= | events=t_step_02
-245 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-226 f_08: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_04
-226 f_04: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
=== CURRENT WORLD ===
Region region: Zorin Marsh
Faction f_02: Bowen Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=isolation
Faction f_06: Zosen Reach | village_union | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_07: Veywen Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Faction f_09: Semon Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=shelter
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_06: parents=f_03; ancestors=f_00, f_01, f_03, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_01, h_found, h_collapse
Ancestry f_07: parents=f_03; ancestors=f_00, f_01, f_03, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_01, h_found, h_collapse
Ancestry f_09: parents=f_08, f_04; ancestors=f_00, f_01, f_02, f_03, f_04, f_08, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_01, t_root_f_02, t_step_02, t_step_01, h_found, h_collapse
Relationship f_02 <-> f_06: 21; sources=h_relation_1
Relationship f_02 <-> f_09: 28; sources=h_relation_0, h_last
Settlement home_f_00: Bovak | owner=f_06 | region=region | sources=t_root_f_00, t_step_00, t_step_02
Settlement home_f_01: Lura | owner=f_06 | region=region | sources=t_root_f_01, t_step_00, t_step_02
Settlement home_f_02: Sekerin | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Fubosil | owner=f_06 | region=region | sources=t_step_00, t_step_02
Settlement home_f_04: Lumar | owner=f_09 | region=region | sources=t_step_01, t_step_04
Settlement home_f_06: Kesil | owner=f_06 | region=region | sources=t_step_02
Settlement home_f_07: Zolith | owner=f_07 | region=region | sources=t_step_02
Settlement home_f_08: Lubora | owner=f_09 | region=region | sources=t_step_02, t_step_04
Settlement home_f_09: Nabolen | owner=f_09 | region=region | sources=t_step_04
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_archive | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Bowen Marsh (f_02; knowledge=):
  [t_root_f_02; confidence 0.44; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.58; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.43; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":-15}
  [h_relation_1; confidence 0.37; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_06","delta":21}
  [h_discovery; confidence 0.49; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.64; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":43}
  [; confidence 0.51; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_06","score":21}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_09","score":28}
Zosen Reach (f_06; knowledge=observer_scholarly_term):
  [t_step_02; confidence 0.71; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.71; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.52; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_06","delta":21}
  [h_discovery; confidence 0.61; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.55; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_06","score":21}
Veywen Reach (f_07; knowledge=):
  [t_step_02; confidence 0.78; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.54; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Semon Well (f_09; knowledge=):
  [t_step_04; confidence 0.69; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.69; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.64; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":-15}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.68; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":43}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_09","score":28}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

## remnant_mosaic — seed 2

```text
History architecture v2 | generation algorithm v3 | seed 2 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"ritual_schism","topology_family":"remnant_mosaic"}
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
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
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
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-294 t_step_00 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_01","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01","cohort_00"]}]
-276 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dalith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]}]
-258 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sesil Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_04","f_05"],"untracked_template_ids":[]}]
-239 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Zovak Reach (f_04), Bosen Well (f_03), Fumar Well (f_05) | causes: t_step_02, t_step_01, t_step_02
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_06"],"untracked_template_ids":[]},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-221 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kesen Gate (f_06) | causes: t_step_03
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_07","f_08","f_09"],"untracked_template_ids":[]}]
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
f_00: Tosil Well | -473..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Dalith Gate | -305..-276 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Sesil Well | -304..-258 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Bosen Well | -276..-239 | extinct | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Zovak Reach | -258..-239 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Fumar Well | -258..-239 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Kesen Gate | -239..-221 | extinct | parents=f_04, f_03, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Sesen Marsh | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Hamon Reach | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Kelith Reach | -221..present | active | parents=f_06 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Serin Gate | -508..-318 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-508 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-473 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-305 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-304 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-294 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-294 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_01, cohort_00 | events=t_step_00
-276 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-258 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_02
-258 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_02
-239 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_03
-221 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
-221 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
-221 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-318 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-276 f_01: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_01
-258 f_02: absorbed | absorbed_into=f_04, f_05 | untracked_strata= | events=t_step_02
-239 f_04: absorbed | absorbed_into=f_06 | untracked_strata= | events=t_step_03
-239 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-239 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-221 f_06: absorbed | absorbed_into=f_07, f_08, f_09 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
Region region: Zosen Well
Faction f_00: Tosil Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=border_watch
Faction f_07: Sesen Marsh | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_08: Hamon Reach | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_09: Kelith Reach | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
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

## layered_migration — seed 3

```text
History architecture v2 | generation algorithm v3 | seed 3 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-2","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"ritual_schism","topology_family":"layered_migration"}
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
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
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
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-269 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-249 t_step_03 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Hanar Well (f_03) | causes: t_step_02
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03","cohort_02"]}]
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
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_06","f_07"],"untracked_template_ids":[]}]
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
f_00: Nanar Ruin | -320..-289 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Havak Well | -319..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Milith Well | -308..-209 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Hanar Well | -269..-190 | extinct | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Kewen Well | -229..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Veyrin Gate | -209..present | active | parents=f_02 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Hawen Well | -190..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Sera Marsh | -190..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Nanar Reach | -482..-332 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-482 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-320 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-319 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-308 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-308 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-269 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-269 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_02
-249 cohort_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_03
-249 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_03, cohort_02 | events=t_step_03
-229 cohort_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-229 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_03 | events=t_step_04
-209 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_05
-190 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_06
-190 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_06
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-332 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-289 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_01
-209 f_02: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_05
-190 f_03: absorbed | absorbed_into=f_06, f_07 | untracked_strata= | events=t_step_06
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

## late_fragmentation — seed 4

```text
History architecture v2 | generation algorithm v3 | seed 4 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","topology_family":"late_fragmentation"}
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
-510 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-485 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-345 h_pressure [MIGRATION] Overextended garrisons withdrew and organized displaced households around abandoned posts.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-335 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body), Lufura (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Zowen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Torin Marsh (precursor), Veydador (regional_body), Lufura (pressure_group), Zowen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-314 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-95 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zomar Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_01"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_01","f_02","f_03"],"untracked_template_ids":[]}]
-89 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_02","b":"f_04","delta":-13,"kind":"relationship"}]
-82 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Halith Gate (f_05) | causes: t_step_01
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_06","f_07"],"untracked_template_ids":[]}]
-75 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fulith Reach (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_03","b":"f_08","delta":-24,"kind":"relationship"}]
-69 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Dalith Reach (f_04) | causes: t_step_01
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_10"],"untracked_template_ids":[]}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02), Fulith Reach (f_03) | causes: t_step_00, t_step_00
  effects: [{"a":"f_02","b":"f_03","delta":-20,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Nalith Ruin (f_08), Nasil Marsh (f_09) | causes: t_step_03, t_step_03
  effects: [{"a":"f_08","b":"f_09","delta":-27,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] Erosion exposed a sealed object; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Misen Ruin (f_06) | causes: t_step_02
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"sealed_object_in_erosion","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Furin Gate (f_02), Fulith Reach (f_03) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_03","delta":29,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zomar Ruin | -314..-95 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Furin Well | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Furin Gate | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Fulith Reach | -95..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Dalith Reach | -89..-69 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Halith Gate | -89..-82 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Misen Ruin | -82..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Fulith Well | -82..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Nalith Ruin | -75..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Nasil Marsh | -75..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Bosil Well | -69..present | active | parents=f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Torin Marsh | -510..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-510 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-314 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-95 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-95 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-89 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-89 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-82 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-82 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-75 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-75 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-69 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-326 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-95 f_00: absorbed | absorbed_into=f_01, f_02, f_03 | untracked_strata= | events=t_step_00
-82 f_05: absorbed | absorbed_into=f_06, f_07 | untracked_strata= | events=t_step_02
-69 f_04: absorbed | absorbed_into=f_10 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
Region region: Lunar Gate
Faction f_01: Furin Well | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_02: Furin Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_03: Fulith Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_06: Misen Ruin | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_07: Fulith Well | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_08: Nalith Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_09: Nasil Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_10: Bosil Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
Ancestry f_01: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_02: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_03: parents=f_00; ancestors=f_00, precursor; sources=t_step_00, t_root_f_00, h_found, h_collapse
Ancestry f_06: parents=f_05; ancestors=f_00, f_02, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_07: parents=f_05; ancestors=f_00, f_02, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Ancestry f_08: parents=f_03; ancestors=f_00, f_03, precursor; sources=t_step_03, t_root_f_00, t_step_00, h_found, h_collapse
Ancestry f_09: parents=f_03; ancestors=f_00, f_03, precursor; sources=t_step_03, t_root_f_00, t_step_00, h_found, h_collapse
Ancestry f_10: parents=f_04; ancestors=f_00, f_02, f_04, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_step_01, h_found, h_collapse
Relationship f_02 <-> f_03: 9; sources=h_relation_0, h_last
Relationship f_03 <-> f_08: -24; sources=t_step_03
Relationship f_08 <-> f_09: -27; sources=h_relation_1
Settlement home_f_00: Veydamar | owner=f_01 | region=region | sources=t_root_f_00, t_step_00
Settlement home_f_01: Darin | owner=f_01 | region=region | sources=t_step_00
Settlement home_f_02: Ketolith | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Miwen | owner=f_03 | region=region | sources=t_step_00
Settlement home_f_04: Kevak | owner=f_10 | region=region | sources=t_step_01, t_step_04
Settlement home_f_05: Nafusil | owner=f_06 | region=region | sources=t_step_01, t_step_02
Settlement home_f_06: Nalen | owner=f_06 | region=region | sources=t_step_02
Settlement home_f_07: Kebora | owner=f_07 | region=region | sources=t_step_02
Settlement home_f_08: Zofulith | owner=f_08 | region=region | sources=t_step_03
Settlement home_f_09: Fura | owner=f_09 | region=region | sources=t_step_03
Settlement home_f_10: Bosen | owner=f_10 | region=region | sources=t_step_04
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: watchtower | occupant= | region=region | sources=h_pressure
  site_type=military | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: sealed_object_in_erosion | origin=unknown | sources=h_discovery
=== BELIEFS ===
Furin Well (f_01; knowledge=):
  [t_step_00; confidence 0.40; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.88; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.62; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Furin Gate (f_02; knowledge=):
  [t_step_00; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.39; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.62; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.35; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
Fulith Reach (f_03; knowledge=):
  [t_step_00; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.79; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_0; confidence 0.50; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.83; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.41; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.69; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
  [; confidence 0.40; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
Misen Ruin (f_06; knowledge=):
  [t_step_02; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_07; knowledge=):
  [t_step_02; confidence 0.38; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Nalith Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.55; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_1; confidence 0.64; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.75; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.62; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
  [; confidence 0.43; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Nasil Marsh (f_09; knowledge=):
  [t_step_03; confidence 0.47; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.60; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.50; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.40; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Bosil Well (f_10; knowledge=):
  [t_step_04; confidence 0.59; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records: Older local households remembered withdrawn garrisons and displaced households. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.41; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":16,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":14,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":16}
```

## current_4 — seed 5

```text
History architecture v2 | generation algorithm v3 | seed 5 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"surface_wreckage","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"geophysical_stress","response_motif":"household_council","topology_family":"consolidation_resplit"}
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
-515 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-490 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-352 h_pressure [DISASTER] Recurrent stress on an already critical fault released locally, damaging structures and travel routes; tidal stress was a small contributor, not a moon-alignment switch.
  scope=regional | objective cause_domain=natural
  actors: Tomon Well (precursor), Hara (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-340 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Hara (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Lulith (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-325 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Tomon Well (precursor), Hara (regional_body), Lulith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-313 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-312 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-311 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-310 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-301 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Milen Reach (f_00), Hanar Gate (f_03), Serin Gate (f_01) | causes: t_root_f_00, t_root_f_03, t_root_f_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_04"],"untracked_template_ids":[]},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-282 t_step_01 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Tolith Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"a":"f_02","b":"f_05","delta":18,"kind":"relationship"}]
-263 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zolith Marsh (f_04) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_04","b":"f_06","delta":-24,"kind":"relationship"}]
-244 t_step_03 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Lulen Ruin (f_07), Namon Reach (f_08) | causes: t_step_02, t_step_02
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07","f_08"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_08","kind":"retire"},{"disposition":"absorbed","entity_id":"f_08","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]}]
-225 t_step_04 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Danar Gate (f_06), Zonar Marsh (f_09), Hamon Ruin (f_05) | causes: t_step_02, t_step_03, t_step_01
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_10"],"untracked_template_ids":[]},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_10"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_09","kind":"retire"},{"disposition":"untracked","entity_id":"f_09","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-206 t_step_05 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Zolith Marsh (f_04) | causes: t_step_00
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"a":"f_04","b":"f_11","delta":16,"kind":"relationship"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Sewen Well (f_11) | causes: h_collapse, t_step_05
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_11"},{"kind":"reoccupy","owner_id":"f_11","purpose":"ritual_site","ruin_id":"old_administration","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Zolith Marsh (f_04), Sewen Well (f_11) | causes: t_step_00, t_step_05
  effects: [{"a":"f_04","b":"f_11","delta":32,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Tolith Marsh (f_02), Zolith Marsh (f_04) | causes: t_root_f_02, t_step_00
  effects: [{"a":"f_02","b":"f_04","delta":34,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Zolith Marsh (f_04), Sewen Well (f_11) | causes: h_relation_0
  effects: [{"a":"f_04","b":"f_11","delta":-27,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Milen Reach | -313..-301 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Serin Gate | -312..-301 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Tolith Marsh | -311..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Hanar Gate | -310..-301 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Zolith Marsh | -301..present | active | parents=f_00, f_03, f_01 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Hamon Ruin | -282..-225 | extinct | parents=f_02 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Danar Gate | -263..-225 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Lulen Ruin | -263..-244 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Namon Reach | -263..-244 | extinct | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Zonar Marsh | -244..-225 | extinct | parents=f_07, f_08 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Kelith Reach | -225..present | active | parents=f_06, f_09, f_05 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Sewen Well | -206..present | active | parents=f_04 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Tomon Well | -515..-325 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-515 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-313 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-312 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-311 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-310 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-301 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-282 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-263 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_02
-263 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_02
-263 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_02
-244 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_07, f_08 | events=t_step_03
-225 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_04
-206 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-325 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-301 f_00: absorbed | absorbed_into=f_04 | untracked_strata= | events=t_step_00
-301 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-301 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-244 f_07: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_03
-244 f_08: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_03
-225 f_06: absorbed | absorbed_into=f_10 | untracked_strata= | events=t_step_04
-225 f_09: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
-225 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
=== CURRENT WORLD ===
Region region: Semon Marsh
Faction f_02: Tolith Marsh | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
Faction f_04: Zolith Marsh | frontier_settlement_league | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
Faction f_10: Kelith Reach | breakaway_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=shelter
Faction f_11: Sewen Well | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=local_exchange
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_04: parents=f_00, f_03, f_01; ancestors=f_00, f_01, f_03, precursor; sources=t_step_00, t_root_f_00, t_root_f_01, t_root_f_03, h_found, h_collapse
Ancestry f_10: parents=f_06, f_09, f_05; ancestors=f_00, f_01, f_02, f_03, f_04, f_05, f_06, f_07, f_08, f_09, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_01, t_root_f_02, t_root_f_03, t_step_01, t_step_02, t_step_03, h_found, h_collapse
Ancestry f_11: parents=f_04; ancestors=f_00, f_01, f_03, f_04, precursor; sources=t_step_05, t_root_f_00, t_step_00, t_root_f_01, t_root_f_03, h_found, h_collapse
Relationship f_02 <-> f_04: 34; sources=h_relation_1
Relationship f_04 <-> f_11: 21; sources=t_step_05, h_relation_0, h_last
Settlement home_f_00: Haveyrin | owner=f_04 | region=region | sources=t_root_f_00, t_step_00
Settlement home_f_01: Havak | owner=f_04 | region=region | sources=t_root_f_01, t_step_00
Settlement home_f_02: Bomon | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Sesevak | owner=f_04 | region=region | sources=t_root_f_03, t_step_00
Settlement home_f_04: Totonar | owner=f_04 | region=region | sources=t_step_00
Settlement home_f_05: Daveylith | owner=f_10 | region=region | sources=t_step_01, t_step_04
Settlement home_f_06: Dafuvak | owner=f_10 | region=region | sources=t_step_02, t_step_04
Settlement home_f_07: Bobosil | owner=f_10 | region=region | sources=t_step_02, t_step_03, t_step_04
Settlement home_f_08: Damon | owner=f_10 | region=region | sources=t_step_02, t_step_03, t_step_04
Settlement home_f_09: Narin | owner=f_10 | region=region | sources=t_step_03, t_step_04
Settlement home_f_10: Tosil | owner=f_10 | region=region | sources=t_step_04
Settlement home_f_11: Hawen | owner=f_11 | region=region | sources=t_step_05
Settlement reused_site: Sera | owner=f_11 | region=region | sources=h_reuse
Ruin old_administration: administrative_site | occupant=f_11 | region=region | sources=h_collapse, h_reuse
  site_type=records | hazard=none | recorded_use=ritual_site
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
=== BELIEFS ===
Tolith Marsh (f_02; knowledge=):
  [t_root_f_02; confidence 0.39; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.43; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":18}
  [h_relation_1; confidence 0.64; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":34}
  [; confidence 0.51; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":34}
Zolith Marsh (f_04; knowledge=):
  [t_step_00; confidence 0.84; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.45; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.52; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-24}
  [t_step_05; confidence 0.43; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":16}
  [h_relation_0; confidence 0.72; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":32}
  [h_relation_1; confidence 0.73; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":34}
  [h_last; confidence 0.76; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-27}
  [; confidence 0.45; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":34}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":21}
Kelith Reach (f_10; knowledge=):
  [t_step_04; confidence 0.74; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Our households kept their promises when larger councils could not.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Sewen Well (f_11; knowledge=):
  [t_step_05; confidence 0.61; legitimacy] Our recorded formation was migration_settlement. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.50; interpretation] Regional records: Older local households remembered broken ground; some blamed the moons. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.78; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":16}
  [h_relation_0; confidence 0.46; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":32}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-27}
  [; confidence 0.72; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":21}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":20}
```

## current_5 — seed 6

```text
History architecture v2 | generation algorithm v3 | seed 6 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","response_motif":"regional_autonomy","topology_family":"late_fragmentation"}
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
-521 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-496 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Hamon Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-370 h_pressure [SPLIT] District offices stopped recognizing central appointments and formed a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Hamon Well (precursor), Hasedor (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_archive","site_type":"records"}]
-361 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Hamon Well (precursor), Hasedor (regional_body), Tomon (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-352 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Hamon Well (precursor), Mira (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-348 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Hamon Well (precursor), Hasedor (regional_body), Tomon (pressure_group), Mira (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-336 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-335 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-95 t_step_00 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Halith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"a":"f_01","b":"f_02","delta":-14,"kind":"relationship"}]
-89 t_step_01 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Kemar Reach (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_03","kind":"retire"},{"disposition":"untracked","entity_id":"f_03","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_03","kind":"retire"},{"hazard":"none","id":"abandoned_f_03","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-82 t_step_02 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Veyra Gate (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-75 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Halith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_04","f_05"],"untracked_template_ids":[]}]
-69 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Nanar Well (f_04) | causes: t_step_03
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_04","b":"f_06","delta":-20,"kind":"relationship"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Narin Marsh (f_02), Nanar Well (f_04) | causes: t_step_00, t_step_03
  effects: [{"a":"f_02","b":"f_04","delta":-18,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Narin Marsh (f_02), Bolith Marsh (f_05) | causes: t_step_00, t_step_03
  effects: [{"a":"f_02","b":"f_05","delta":13,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Nanar Well (f_04), Bolith Marsh (f_05) | causes: t_step_03, t_step_03
  effects: [{"a":"f_04","b":"f_05","delta":13,"kind":"relationship"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Narin Marsh (f_02), Nanar Well (f_04) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_04","delta":27,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Veyra Gate | -336..-82 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Halith Gate | -335..-75 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Narin Marsh | -95..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Kemar Reach | -95..-89 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Nanar Well | -75..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Bolith Marsh | -75..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Halen Gate | -69..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Miwen Reach | -69..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Hamon Well | -521..-348 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-521 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-336 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-335 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-95 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_00
-95 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_00
-75 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-75 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-69 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_04
-69 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-348 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-89 f_03: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_01
-82 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_02
-75 f_01: absorbed | absorbed_into=f_04, f_05 | untracked_strata= | events=t_step_03
=== CURRENT WORLD ===
Region region: Bodor Gate
Faction f_02: Narin Marsh | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Faction f_04: Nanar Well | frontier_settlement_league | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_05: Bolith Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_06: Halen Gate | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_07: Miwen Reach | frontier_settlement_league | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Ancestry f_02: parents=f_01; ancestors=f_01, precursor; sources=t_step_00, t_root_f_01, t_step_03, h_found, h_collapse
Ancestry f_04: parents=f_01; ancestors=f_01, precursor; sources=t_step_03, t_root_f_01, h_found, h_collapse
Ancestry f_05: parents=f_01; ancestors=f_01, precursor; sources=t_step_03, t_root_f_01, h_found, h_collapse
Ancestry f_06: parents=f_04; ancestors=f_01, f_04, precursor; sources=t_step_04, t_root_f_01, t_step_03, h_found, h_collapse
Ancestry f_07: parents=f_04; ancestors=f_01, f_04, precursor; sources=t_step_04, t_root_f_01, t_step_03, h_found, h_collapse
Relationship f_02 <-> f_04: 9; sources=h_relation_0, h_last
Relationship f_02 <-> f_05: 13; sources=h_relation_1
Relationship f_04 <-> f_05: 13; sources=h_relation_2
Relationship f_04 <-> f_06: -20; sources=t_step_04
Settlement home_f_01: Zohalen | owner=f_04 | region=region | sources=t_root_f_01, t_step_03
Settlement home_f_02: Nara | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_04: Kewen | owner=f_04 | region=region | sources=t_step_03
Settlement home_f_05: Kehalen | owner=f_05 | region=region | sources=t_step_03
Settlement home_f_06: Hasil | owner=f_06 | region=region | sources=t_step_04
Settlement home_f_07: Hatolen | owner=f_07 | region=region | sources=t_step_04
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_step_02
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_03: administrative_site | occupant= | region=region | sources=t_step_01
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_archive | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=structural | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Narin Marsh (f_02; knowledge=):
  [t_step_00; confidence 0.42; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.37; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_02","delta":-14}
  [h_relation_0; confidence 0.55; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-18}
  [h_relation_1; confidence 0.65; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":13}
  [h_last; confidence 0.54; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":27}
  [; confidence 0.63; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":9}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_05","score":13}
Nanar Well (f_04; knowledge=):
  [t_step_03; confidence 0.79; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.75; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.64; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-20}
  [h_relation_0; confidence 0.73; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-18}
  [h_relation_2; confidence 0.37; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":13}
  [h_last; confidence 0.56; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":27}
  [; confidence 0.49; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":9}
  [; confidence 0.45; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":13}
  [; confidence 0.90; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":-20}
Bolith Marsh (f_05; knowledge=):
  [t_step_03; confidence 0.71; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.52; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.63; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_05","delta":13}
  [h_relation_2; confidence 0.38; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":13}
  [; confidence 0.81; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_05","score":13}
  [; confidence 0.35; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":13}
Halen Gate (f_06; knowledge=):
  [t_step_04; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.46; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-20}
  [; confidence 0.70; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":-20}
Miwen Reach (f_07; knowledge=):
  [t_step_04; confidence 0.79; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households disputed who could appoint district officials. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":17,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":15,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":17}
```

## current_6 — seed 7

```text
History architecture v2 | generation algorithm v3 | seed 7 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"city_confederation","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"ritual_schism","topology_family":"remnant_mosaic"}
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
-519 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-494 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-484 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-341 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Minar Gate (precursor), Setolen (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland","site_type":"agricultural"}]
-329 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Setolen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-320 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Navak (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-316 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Minar Gate (precursor), Setolen (regional_body), Navak (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-303 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-302 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-292 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Zowen Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-274 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kemar Marsh (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_03","f_04"],"untracked_template_ids":[]}]
-256 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Tomon Marsh (f_04) | causes: t_step_01
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]}]
-238 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Lusen Gate (f_03) | causes: t_step_01
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"a":"f_03","b":"f_06","delta":-19,"kind":"relationship"}]
-220 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Dalen Marsh (f_05) | causes: t_step_02
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_09","f_10"],"untracked_template_ids":[]}]
-201 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Tolith Gate (f_06), Bovak Gate (f_10) | causes: t_step_03, t_step_04
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","f_10"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_11"],"untracked_template_ids":[]},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"disposition":"absorbed","entity_id":"f_10","kind":"population_fate","successor_ids":["f_11"],"untracked_template_ids":[]}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Bora Marsh (f_07) | causes: h_failure, t_step_03
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_07"},{"kind":"reoccupy","owner_id":"f_07","purpose":"settlement","ruin_id":"terminal_site","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bora Marsh (f_07), Kedor Reach (f_09) | causes: t_step_03, t_step_04
  effects: [{"a":"f_07","b":"f_09","delta":12,"kind":"relationship"}]
-26 h_relation_1 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Kera Ruin (f_00), Fudor Well (f_08) | causes: t_root_f_00, t_step_03
  effects: [{"a":"f_00","b":"f_08","delta":-15,"kind":"relationship"},{"hazard":"structural","id":"watchpost_1","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Bora Marsh (f_07), Kedor Reach (f_09) | causes: h_relation_0
  effects: [{"a":"f_07","b":"f_09","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kera Ruin | -484..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Zowen Reach | -303..-292 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Kemar Marsh | -302..-274 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Lusen Gate | -274..present | active | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Tomon Marsh | -274..-256 | extinct | parents=f_02 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Dalen Marsh | -256..-220 | extinct | parents=f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Tolith Gate | -238..-201 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Bora Marsh | -238..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Fudor Well | -238..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Kedor Reach | -220..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Bovak Gate | -220..-201 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Nalith Reach | -201..present | active | parents=f_06, f_10 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Minar Gate | -519..-316 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-519 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-484 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-303 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-302 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-274 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-274 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_01
-256 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_02
-238 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-238 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-238 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_03
-220 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_04
-220 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_04
-201 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_06, f_10 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-316 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-292 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-274 f_02: absorbed | absorbed_into=f_03, f_04 | untracked_strata= | events=t_step_01
-256 f_04: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_02
-220 f_05: absorbed | absorbed_into=f_09, f_10 | untracked_strata= | events=t_step_04
-201 f_06: absorbed | absorbed_into=f_11 | untracked_strata= | events=t_step_05
-201 f_10: absorbed | absorbed_into=f_11 | untracked_strata= | events=t_step_05
=== CURRENT WORLD ===
Region region: Fulith Gate
Faction f_00: Kera Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=maintenance
Faction f_03: Lusen Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_07: Bora Marsh | regional_commune | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_08: Fudor Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_09: Kedor Reach | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Faction f_11: Nalith Reach | frontier_settlement_league | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_03: parents=f_02; ancestors=f_02; sources=t_step_01, t_root_f_02
Ancestry f_07: parents=f_03; ancestors=f_02, f_03; sources=t_step_03, t_root_f_02, t_step_01
Ancestry f_08: parents=f_03; ancestors=f_02, f_03; sources=t_step_03, t_root_f_02, t_step_01
Ancestry f_09: parents=f_05; ancestors=f_02, f_04, f_05; sources=t_step_04, t_root_f_02, t_step_01, t_step_02
Ancestry f_11: parents=f_06, f_10; ancestors=f_02, f_03, f_04, f_05, f_06, f_10; sources=t_step_05, t_root_f_02, t_step_01, t_step_02, t_step_04, t_step_03
Relationship f_00 <-> f_08: -15; sources=h_relation_1
Relationship f_07 <-> f_09: -14; sources=h_relation_0, h_last
Settlement home_f_00: Mikelen | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_02: Tokemar | owner=f_03 | region=region | sources=t_root_f_02, t_step_01
Settlement home_f_03: Zodasen | owner=f_03 | region=region | sources=t_step_01
Settlement home_f_04: Bowen | owner=f_09 | region=region | sources=t_step_01, t_step_02, t_step_04
Settlement home_f_05: Mimon | owner=f_09 | region=region | sources=t_step_02, t_step_04
Settlement home_f_06: Semar | owner=f_11 | region=region | sources=t_step_03, t_step_05
Settlement home_f_07: Fudor | owner=f_07 | region=region | sources=t_step_03
Settlement home_f_08: Tora | owner=f_08 | region=region | sources=t_step_03
Settlement home_f_09: Nalura | owner=f_09 | region=region | sources=t_step_04
Settlement home_f_10: Havak | owner=f_11 | region=region | sources=t_step_04, t_step_05
Settlement home_f_11: Miludor | owner=f_11 | region=region | sources=t_step_05
Settlement reused_site: Dasemon | owner=f_07 | region=region | sources=h_reuse
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_step_00
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_farmland | occupant= | region=region | sources=h_pressure
  site_type=agricultural | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant=f_07 | region=region | sources=h_failure, h_reuse
  site_type=records | hazard=none | recorded_use=settlement
Ruin watchpost_1: watchtower | occupant= | region=region | sources=h_relation_1
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Kera Ruin (f_00; knowledge=observer_scholarly_term):
  [t_root_f_00; confidence 0.80; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.62; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.47; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-15}
  [; confidence 0.48; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-15}
Lusen Gate (f_03; knowledge=):
  [t_step_01; confidence 0.58; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.39; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":-19}
Bora Marsh (f_07; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.70; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.53; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.39; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_09","delta":12}
  [h_last; confidence 0.81; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_09","delta":-26}
  [; confidence 0.81; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_09","score":-14}
Fudor Well (f_08; knowledge=):
  [t_step_03; confidence 0.46; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.72; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.53; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-15}
  [; confidence 0.77; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-15}
Kedor Reach (f_09; knowledge=):
  [t_step_04; confidence 0.65; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.42; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_09","delta":12}
  [h_last; confidence 0.47; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_09","delta":-26}
  [; confidence 0.68; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_09","score":-14}
Nalith Reach (f_11; knowledge=):
  [t_step_05; confidence 0.49; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. New settlements survived through local agreements rather than distant offices.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.82; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":17,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":19}
```

## compatible_site_reuse — seed 8

```text
History architecture v2 | generation algorithm v3 | seed 8 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"ritual_schism","topology_family":"layered_migration"}
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
-539 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-514 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Namar Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-364 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Namar Gate (precursor), Zoveydor (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland","site_type":"agricultural"}]
-356 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Namar Gate (precursor), Zoveydor (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-349 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Namar Gate (precursor), Kekelith (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-339 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Namar Gate (precursor), Zoveydor (regional_body), Kekelith (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-327 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-326 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-315 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-295 t_step_01 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Zora Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"a":"f_01","b":"f_03","delta":9,"kind":"relationship"}]
-274 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-254 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veyrin Ruin (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"a":"f_00","b":"f_05","delta":-14,"kind":"relationship"}]
-233 t_step_04 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Zora Reach (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Fudor Reach (f_04) | causes: h_pressure, t_step_02
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_04"},{"kind":"reoccupy","owner_id":"f_04","purpose":"settlement","ruin_id":"pressure_site","settlement_id":"reused_site"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Fulen Marsh (f_02), Veylith Ruin (f_03) | causes: t_step_00, t_step_01
  effects: [{"a":"f_02","b":"f_03","delta":-30,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veylith Ruin (f_03), Bolen Marsh (f_06) | causes: t_step_01, t_step_03
  effects: [{"a":"f_03","b":"f_06","delta":11,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] Erosion exposed a sealed object; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Bolen Marsh (f_06) | causes: t_step_03
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"sealed_object_in_erosion","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fulen Marsh (f_02), Veylith Ruin (f_03) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_03","delta":20,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Veyrin Ruin | -327..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Zora Reach | -326..-233 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Fulen Marsh | -315..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Veylith Ruin | -295..present | active | parents=f_01 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Fudor Reach | -274..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Lura Marsh | -254..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Bolen Marsh | -254..present | active | parents=f_00 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Namar Gate | -539..-339 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-539 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-327 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-326 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-315 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-315 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-295 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-274 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-274 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_02
-254 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_03
-254 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_03
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-339 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-233 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
=== CURRENT WORLD ===
Region region: Fuwen Reach
Faction f_00: Veyrin Ruin | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
Faction f_02: Fulen Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=archives
Faction f_03: Veylith Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=maintenance
Faction f_04: Fudor Reach | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=border_watch
Faction f_05: Lura Marsh | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_06: Bolen Marsh | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_02: parents=; ancestors=; sources=t_step_00
Ancestry f_03: parents=f_01; ancestors=f_01; sources=t_step_01, t_root_f_01, t_step_04
Ancestry f_04: parents=; ancestors=; sources=t_step_02
Ancestry f_05: parents=f_00; ancestors=f_00; sources=t_step_03, t_root_f_00
Ancestry f_06: parents=f_00; ancestors=f_00; sources=t_step_03, t_root_f_00
Relationship f_00 <-> f_05: -14; sources=t_step_03
Relationship f_02 <-> f_03: -10; sources=h_relation_0, h_last
Relationship f_03 <-> f_06: 11; sources=h_relation_1
Settlement home_f_00: Keluvak | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_02: Veyvak | owner=f_02 | region=region | sources=t_step_00
Settlement home_f_03: Zowen | owner=f_03 | region=region | sources=t_step_01
Settlement home_f_04: Bodor | owner=f_04 | region=region | sources=t_step_02
Settlement home_f_05: Bora | owner=f_05 | region=region | sources=t_step_03
Settlement home_f_06: Nanar | owner=f_06 | region=region | sources=t_step_03
Settlement reused_site: Mimar | owner=f_04 | region=region | sources=h_reuse
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_step_04
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_farmland | occupant=f_04 | region=region | sources=h_pressure, h_reuse
  site_type=agricultural | hazard=none | recorded_use=settlement
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: sealed_object_in_erosion | origin=unknown | sources=h_discovery
=== BELIEFS ===
Veyrin Ruin (f_00; knowledge=):
  [t_root_f_00; confidence 0.47; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.46; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_05","delta":-14}
  [h_discovery; confidence 0.42; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.83; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_05","score":-14}
Fulen Marsh (f_02; knowledge=):
  [t_step_00; confidence 0.52; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.54; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.54; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-30}
  [h_discovery; confidence 0.84; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.81; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":20}
  [; confidence 0.38; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":-10}
Veylith Ruin (f_03; knowledge=):
  [t_step_01; confidence 0.63; legitimacy] Our recorded formation was migration_settlement. We claim no direct inheritance of the old central offices. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.76; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_03","delta":9}
  [h_relation_0; confidence 0.72; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-30}
  [h_relation_1; confidence 0.39; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":11}
  [h_discovery; confidence 0.42; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.63; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":20}
  [; confidence 0.57; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":-10}
  [; confidence 0.90; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":11}
Fudor Reach (f_04; knowledge=):
  [t_step_02; confidence 0.36; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.58; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.86; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Lura Marsh (f_05; knowledge=):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.71; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_05","delta":-14}
  [h_discovery; confidence 0.90; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.80; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_05","score":-14}
Bolen Marsh (f_06; knowledge=):
  [t_step_03; confidence 0.49; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.86; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.82; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":11}
  [h_discovery; confidence 0.38; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.78; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":11}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

## no_direct_heir — seed 9

```text
History architecture v2 | generation algorithm v3 | seed 9 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"trade_failure","response_motif":"regional_autonomy","topology_family":"no_direct_heir"}
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
-557 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-532 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-342 h_pressure [DISASTER] Failures across the regional trade network left stations abandoned and central levies unsupported.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-332 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-327 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Veyminar (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-323 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Harin Marsh (precursor), Zosil (regional_body), Veyminar (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-311 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-310 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-305 t_failed_0 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Fusen Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"abandoned_f_00","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-304 t_failed_1 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Halith Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-293 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-292 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-291 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-290 t_root_f_05 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-289 t_root_f_06 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"}]
-281 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Lumar Gate (f_05) | causes: t_root_f_05
  effects: [{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"retire"},{"hazard":"none","id":"abandoned_f_05","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-264 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Veyvak Gate (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]}]
-247 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Misil Gate (f_06), Milith Ruin (f_04) | causes: t_root_f_06, t_root_f_04
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"co_residence","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","f_04"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_06","kind":"retire"},{"disposition":"absorbed","entity_id":"f_06","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
-230 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bovak Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-213 t_step_04 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Veyra Gate (f_07) | causes: t_step_01
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_09"],"untracked_template_ids":[]}]
-196 t_step_05 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fulen Ruin (f_08) | causes: t_step_02
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"a":"f_08","b":"f_10","delta":-22,"kind":"relationship"}]
-179 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_11) | causes: t_step_05
  effects: [{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_11"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_11","kind":"site_owner","owner_id":"f_13"},{"entity_id":"f_11","kind":"retire"},{"disposition":"absorbed","entity_id":"f_11","kind":"population_fate","successor_ids":["f_13"],"untracked_template_ids":[]}]
-162 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Selith Well (f_09) | causes: t_step_04
  effects: [{"entity_id":"f_14","kind":"activate"},{"entity_id":"f_14","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_14","kind":"activate"},{"entity_id":"home_f_14","kind":"settlement","location_id":"region","owner_id":"f_14"},{"entity_id":"f_15","kind":"activate"},{"entity_id":"f_15","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_15","kind":"activate"},{"entity_id":"home_f_15","kind":"settlement","location_id":"region","owner_id":"f_15"},{"entity_id":"f_16","kind":"activate"},{"entity_id":"f_16","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_09"]},{"entity_id":"home_f_16","kind":"activate"},{"entity_id":"home_f_16","kind":"settlement","location_id":"region","owner_id":"f_16"},{"entity_id":"home_f_09","kind":"site_owner","owner_id":"f_14"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_14"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_14"},{"entity_id":"f_09","kind":"retire"},{"disposition":"absorbed","entity_id":"f_09","kind":"population_fate","successor_ids":["f_14","f_15","f_16"],"untracked_template_ids":[]}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Bora Gate (f_15) | causes: t_step_06, t_step_07
  effects: [{"a":"f_13","b":"f_15","delta":-33,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Bora Gate (f_15), Tosen Ruin (f_16) | causes: t_step_07, t_step_07
  effects: [{"a":"f_15","b":"f_16","delta":10,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Furin Well (f_14) | causes: t_step_06, t_step_07
  effects: [{"a":"f_13","b":"f_14","delta":29,"kind":"relationship"}]
-22 h_relation_3 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Fulen Ruin (f_08), Furin Well (f_14) | causes: t_step_02, t_step_07
  effects: [{"a":"f_08","b":"f_14","delta":28,"kind":"relationship"}]
-20 h_relation_4 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Dalith Well (f_10), Bora Gate (f_15) | causes: t_step_05, t_step_07
  effects: [{"a":"f_10","b":"f_15","delta":26,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Furin Well (f_14) | causes: t_step_07
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Borin Gate (f_13), Bora Gate (f_15) | causes: h_relation_0
  effects: [{"a":"f_13","b":"f_15","delta":42,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Fusen Marsh | -311..-305 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Halith Ruin | -310..-304 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Bovak Well | -293..-230 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Veyvak Gate | -292..-264 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Milith Ruin | -291..-247 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Lumar Gate | -290..-281 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Misil Gate | -289..-247 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Veyra Gate | -264..-213 | extinct | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Fulen Ruin | -247..present | active | parents=f_06, f_04 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Selith Well | -213..-162 | extinct | parents=f_07 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Dalith Well | -196..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Halith Reach | -196..-179 | extinct | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Kelith Marsh | -196..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Borin Gate | -179..present | active | parents=f_11 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_14: Furin Well | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_15: Bora Gate | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_16: Tosen Ruin | -162..present | active | parents=f_09 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Harin Marsh | -557..-323 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-557 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-311 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-310 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-293 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-292 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-291 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-290 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_05
-289 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_06
-264 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-247 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=co_residence | donors=f_06, f_04 | events=t_step_02
-213 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-196 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-196 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-196 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_05
-179 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_11 | events=t_step_06
-162 f_14: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
-162 f_15: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
-162 f_16: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_09 | events=t_step_07
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-323 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-305 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_0
-304 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_failed_1
-281 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-264 f_03: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_01
-247 f_06: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-247 f_04: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_02
-230 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-213 f_07: absorbed | absorbed_into=f_09 | untracked_strata= | events=t_step_04
-179 f_11: absorbed | absorbed_into=f_13 | untracked_strata= | events=t_step_06
-162 f_09: absorbed | absorbed_into=f_14, f_15, f_16 | untracked_strata= | events=t_step_07
=== CURRENT WORLD ===
Region region: Tolen Ruin
Faction f_08: Fulen Ruin | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
Faction f_10: Dalith Well | religious_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_12: Kelith Marsh | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_13: Borin Gate | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=border_watch
Faction f_14: Furin Well | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_15: Bora Gate | infrastructure_guild | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Faction f_16: Tosen Ruin | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Ancestry f_08: parents=f_06, f_04; ancestors=f_04, f_06; sources=t_step_02, t_root_f_04, t_root_f_06
Ancestry f_10: parents=f_08; ancestors=f_04, f_06, f_08; sources=t_step_05, t_root_f_04, t_step_02, t_root_f_06
Ancestry f_12: parents=f_08; ancestors=f_04, f_06, f_08; sources=t_step_05, t_root_f_04, t_step_02, t_root_f_06
Ancestry f_13: parents=f_11; ancestors=f_04, f_06, f_08, f_11; sources=t_step_06, t_root_f_04, t_step_02, t_root_f_06, t_step_05
Ancestry f_14: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Ancestry f_15: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Ancestry f_16: parents=f_09; ancestors=f_03, f_07, f_09; sources=t_step_07, t_root_f_03, t_step_01, t_step_04
Relationship f_08 <-> f_10: -22; sources=t_step_05
Relationship f_08 <-> f_14: 28; sources=h_relation_3
Relationship f_10 <-> f_15: 26; sources=h_relation_4
Relationship f_13 <-> f_14: 29; sources=h_relation_2
Relationship f_13 <-> f_15: 9; sources=h_relation_0, h_last
Relationship f_15 <-> f_16: 10; sources=h_relation_1
Settlement home_f_03: Midor | owner=f_14 | region=region | sources=t_root_f_03, t_step_01, t_step_04, t_step_07
Settlement home_f_04: Veysil | owner=f_08 | region=region | sources=t_root_f_04, t_step_02
Settlement home_f_06: Minamar | owner=f_08 | region=region | sources=t_root_f_06, t_step_02
Settlement home_f_07: Daluwen | owner=f_14 | region=region | sources=t_step_01, t_step_04, t_step_07
Settlement home_f_08: Bowen | owner=f_08 | region=region | sources=t_step_02
Settlement home_f_09: Mizonar | owner=f_14 | region=region | sources=t_step_04, t_step_07
Settlement home_f_10: Veysen | owner=f_10 | region=region | sources=t_step_05
Settlement home_f_11: Semar | owner=f_13 | region=region | sources=t_step_05, t_step_06
Settlement home_f_12: Veylurin | owner=f_12 | region=region | sources=t_step_05
Settlement home_f_13: Dasen | owner=f_13 | region=region | sources=t_step_06
Settlement home_f_14: Tonamon | owner=f_14 | region=region | sources=t_step_07
Settlement home_f_15: Fumon | owner=f_15 | region=region | sources=t_step_07
Settlement home_f_16: Fululen | owner=f_16 | region=region | sources=t_step_07
Ruin abandoned_f_00: administrative_site | occupant= | region=region | sources=t_failed_0
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_failed_1
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_00
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
=== BELIEFS ===
Fulen Ruin (f_08; knowledge=):
  [t_step_02; confidence 0.36; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.62; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-22}
  [h_relation_3; confidence 0.74; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":28}
  [h_discovery; confidence 0.71; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.46; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-22}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":28}
Dalith Well (f_10; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.80; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.89; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_05; confidence 0.58; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_10","delta":-22}
  [h_relation_4; confidence 0.52; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":26}
  [h_discovery; confidence 0.77; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.51; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_10","score":-22}
  [; confidence 0.66; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":26}
Kelith Marsh (f_12; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.77; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.51; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Borin Gate (f_13; knowledge=):
  [t_step_06; confidence 0.50; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.73; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":-33}
  [h_relation_2; confidence 0.60; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":29}
  [h_discovery; confidence 0.43; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":42}
  [; confidence 0.46; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":29}
  [; confidence 0.38; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_15","score":9}
Furin Well (f_14; knowledge=):
  [t_step_07; confidence 0.57; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The old government abandoned displaced households; shelter made our community.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.42; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_14","delta":29}
  [h_relation_3; confidence 0.60; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_14","delta":28}
  [h_discovery; confidence 0.72; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.80; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_14","score":28}
  [; confidence 0.81; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_14","score":29}
Bora Gate (f_15; knowledge=):
  [t_step_07; confidence 0.51; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":-33}
  [h_relation_1; confidence 0.77; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":10}
  [h_relation_4; confidence 0.73; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_15","delta":26}
  [h_discovery; confidence 0.90; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.85; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_13","b":"f_15","delta":42}
  [; confidence 0.56; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_15","score":26}
  [; confidence 0.57; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_13","b":"f_15","score":9}
  [; confidence 0.40; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":10}
Tosen Ruin (f_16; knowledge=):
  [t_step_07; confidence 0.69; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.40; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.83; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_15","b":"f_16","delta":10}
  [h_discovery; confidence 0.69; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.86; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_15","b":"f_16","score":10}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":30,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","h_response","h_body"],"causal_ratio":1.0,"direct_count":28,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","t_failed_0","t_failed_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_root_f_05","t_root_f_06","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07"],"important_events":30}
```

## population_absorbed — seed 10

```text
History architecture v2 | generation algorithm v3 | seed 10 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"provincial_compact","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"regional_autonomy","topology_family":"remnant_mosaic"}
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
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-331 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-321 t_step_00 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Mimar Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_00","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00","cohort_00"]}]
-300 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Mimar Marsh (f_00) | causes: t_root_f_00
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]}]
-279 t_step_02 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Lumon Well (f_03) | causes: t_step_01
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_04"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_04"],"untracked_template_ids":[]}]
-258 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bomon Ruin (f_04) | causes: t_step_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_05","f_06"],"untracked_template_ids":[]}]
-237 t_step_04 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"}]
-216 t_step_05 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Bosil Well (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]}]
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
f_00: Mimar Marsh | -333..-300 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Bosil Well | -332..-216 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Bovak Reach | -331..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Lumon Well | -300..-279 | extinct | parents=f_00 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Bomon Ruin | -279..-258 | extinct | parents=f_03 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Fulen Marsh | -258..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Fulith Reach | -258..present | active | parents=f_04 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Darin Ruin | -237..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Kedor Marsh | -216..present | active | parents=f_01 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Mimon Well | -480..-345 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-480 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-333 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-332 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-331 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-321 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-321 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_00, cohort_00 | events=t_step_00
-300 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_01
-279 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_02
-258 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_03
-258 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_03
-237 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-237 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_04
-216 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_05
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
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_06: Fulith Reach | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_07: Darin Ruin | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=archives
Faction f_08: Kedor Marsh | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=isolation
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

## current_8 — seed 11

```text
History architecture v2 | generation algorithm v3 | seed 11 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"provincial_compact","pressure_domain":"human","pressure_motif":"trade_failure","response_motif":"maintenance_secession","topology_family":"layered_migration"}
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
-519 h_found [FOUNDING] A provincial compact pooled local obligations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-494 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Tovak Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-341 h_pressure [DISASTER] Failures across the regional trade network left stations abandoned and central levies unsupported.
  scope=regional | objective cause_domain=human
  actors: Tovak Reach (precursor), Totomar (regional_body) | causes: h_body
  effects: [{"hazard":"structural","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"damaged_route","site_type":"route"}]
-331 h_response [SPLIT] Maintainers withdrew central services and formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Tovak Reach (precursor), Totomar (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-325 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Tovak Reach (precursor), Sesewen (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-318 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Tovak Reach (precursor), Totomar (regional_body), Sesewen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-306 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-305 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-304 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-294 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-276 t_step_01 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Fumon Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_02","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02","cohort_01"]}]
-258 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_02"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-239 t_step_03 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_01","b":"f_05","delta":-17,"kind":"relationship"}]
-221 t_step_04 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-202 t_step_05 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_03","kind":"activate"},{"entity_id":"cohort_03","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Sedor Reach (f_05), Kesen Ruin (f_07) | causes: t_step_03, t_step_03
  effects: [{"a":"f_05","b":"f_07","delta":-19,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Fuvak Well (f_06), Kesen Ruin (f_07) | causes: t_step_03, t_step_03
  effects: [{"a":"f_06","b":"f_07","delta":16,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Miwen Gate (f_03), Sedor Reach (f_05) | causes: t_step_00, t_step_03
  effects: [{"a":"f_03","b":"f_05","delta":34,"kind":"relationship"}]
-22 h_relation_3 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Miwen Gate (f_03), Fuvak Well (f_06) | causes: t_step_00, t_step_03
  effects: [{"a":"f_03","b":"f_06","delta":-22,"kind":"relationship"},{"hazard":"structural","id":"watchpost_3","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Sedor Reach (f_05), Kesen Ruin (f_07) | causes: h_relation_0
  effects: [{"a":"f_05","b":"f_07","delta":45,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Halen Ruin | -306..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Sedor Gate | -305..-221 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Fumon Well | -304..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Miwen Gate | -294..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Misil Reach | -258..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Sedor Reach | -239..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Fuvak Well | -239..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Kesen Ruin | -239..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Nara Ruin | -202..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Tovak Reach | -519..-318 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-519 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-306 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-305 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-304 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-294 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-294 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-276 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_01
-276 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_02, cohort_01 | events=t_step_01
-258 cohort_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-258 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_02 | events=t_step_02
-239 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-239 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-239 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-202 cohort_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_05
-202 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_03 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-318 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-221 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_04
=== CURRENT WORLD ===
Region region: Sesil Ruin
Faction f_00: Halen Ruin | infrastructure_guild | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
Faction f_02: Fumon Well | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
Faction f_03: Miwen Gate | facility_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=shelter
Faction f_04: Misil Reach | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=local_exchange
Faction f_05: Sedor Reach | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_06: Fuvak Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Faction f_07: Kesen Ruin | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_08: Nara Ruin | facility_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_02: parents=; ancestors=; sources=t_root_f_02
Ancestry f_03: parents=; ancestors=; sources=t_step_00
Ancestry f_04: parents=; ancestors=; sources=t_step_02
Ancestry f_05: parents=f_01; ancestors=f_01; sources=t_step_03, t_root_f_01, t_step_04
Ancestry f_06: parents=f_01; ancestors=f_01; sources=t_step_03, t_root_f_01, t_step_04
Ancestry f_07: parents=f_01; ancestors=f_01; sources=t_step_03, t_root_f_01, t_step_04
Ancestry f_08: parents=; ancestors=; sources=t_step_05
Relationship f_03 <-> f_05: 34; sources=h_relation_2
Relationship f_03 <-> f_06: -22; sources=h_relation_3
Relationship f_05 <-> f_07: 26; sources=h_relation_0, h_last
Relationship f_06 <-> f_07: 16; sources=h_relation_1
Settlement home_f_00: Zonarin | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_02: Tosedor | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Zora | owner=f_03 | region=region | sources=t_step_00
Settlement home_f_04: Veynamon | owner=f_04 | region=region | sources=t_step_02
Settlement home_f_05: Kenar | owner=f_05 | region=region | sources=t_step_03
Settlement home_f_06: Veysil | owner=f_06 | region=region | sources=t_step_03
Settlement home_f_07: Hanasil | owner=f_07 | region=region | sources=t_step_03
Settlement home_f_08: Zomar | owner=f_08 | region=region | sources=t_step_05
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_step_04
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: damaged_route | occupant= | region=region | sources=h_pressure
  site_type=route | hazard=structural | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Ruin watchpost_3: watchtower | occupant= | region=region | sources=h_relation_3
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Halen Ruin (f_00; knowledge=):
  [t_root_f_00; confidence 0.40; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.51; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Fumon Well (f_02; knowledge=):
  [t_root_f_02; confidence 0.90; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Miwen Gate (f_03; knowledge=observer_scholarly_term):
  [t_step_00; confidence 0.51; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.80; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.64; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_05","delta":34}
  [h_relation_3; confidence 0.84; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":-22}
  [; confidence 0.36; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_05","score":34}
  [; confidence 0.82; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":-22}
Misil Reach (f_04; knowledge=):
  [t_step_02; confidence 0.60; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.48; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
Sedor Reach (f_05; knowledge=):
  [t_step_03; confidence 0.57; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.58; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_01","b":"f_05","delta":-17}
  [h_relation_0; confidence 0.65; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":-19}
  [h_relation_2; confidence 0.41; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_05","delta":34}
  [h_last; confidence 0.87; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":45}
  [; confidence 0.87; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_05","score":34}
  [; confidence 0.36; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":26}
Fuvak Well (f_06; knowledge=):
  [t_step_03; confidence 0.63; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.36; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.51; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":16}
  [h_relation_3; confidence 0.35; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":-22}
  [; confidence 0.52; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":-22}
  [; confidence 0.45; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":16}
Kesen Ruin (f_07; knowledge=):
  [t_step_03; confidence 0.80; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":-19}
  [h_relation_1; confidence 0.57; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":16}
  [h_last; confidence 0.59; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":45}
  [; confidence 0.51; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":26}
  [; confidence 0.39; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":16}
Nara Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_05; confidence 0.60; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.76; interpretation] Regional records: Older local households remembered empty stations and obligations that trade could no longer support. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":20}
```

## enclave_continuity — seed 12

```text
History architecture v2 | generation algorithm v3 | seed 12 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"adaptation_tension","response_motif":"regional_autonomy","topology_family":"enclave_continuity"}
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
-531 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-506 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-496 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-350 h_pressure [SCHISM] Communities with different environmental adaptations separated from the common assembly.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"}]
-339 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body), Havak (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-336 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Bomisil (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-326 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dasen Reach (precursor), Misera (regional_body), Havak (pressure_group), Bomisil (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-313 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-312 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-311 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-310 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-302 t_step_00 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zolen Gate (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_02","kind":"retire"},{"disposition":"absorbed","entity_id":"f_02","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]}]
-283 t_step_01 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Havak Marsh (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_06"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_06"],"untracked_template_ids":[]}]
-264 t_step_02 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Hador Well (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_01","kind":"retire"},{"hazard":"none","id":"abandoned_f_01","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-245 t_step_03 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Halith Reach (f_04), Luvak Well (f_06) | causes: t_root_f_04, t_step_01
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_06","kind":"retire"},{"disposition":"untracked","entity_id":"f_06","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-226 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Sedor Marsh (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"a":"f_03","b":"f_08","delta":-13,"kind":"relationship"}]
-206 t_step_05 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"}]
-187 t_step_06 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veyra Ruin (f_07) | causes: t_step_03
  effects: [{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"f_13","kind":"activate"},{"entity_id":"f_13","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_13","kind":"activate"},{"entity_id":"home_f_13","kind":"settlement","location_id":"region","owner_id":"f_13"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_06","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_12"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_12"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_12","f_13"],"untracked_template_ids":[]}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Fudor Marsh (f_12) | causes: h_pressure, t_step_06
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_12"},{"kind":"reoccupy","owner_id":"f_12","purpose":"settlement","ruin_id":"pressure_site","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Kerin Reach (f_11), Fudor Marsh (f_12) | causes: t_step_05, t_step_06
  effects: [{"a":"f_11","b":"f_12","delta":17,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fulith Well (f_10), Fura Ruin (f_13) | causes: t_step_04, t_step_06
  effects: [{"a":"f_10","b":"f_13","delta":14,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Sedor Marsh (f_03), Fulith Well (f_10) | causes: t_root_f_03, t_step_04
  effects: [{"a":"f_03","b":"f_10","delta":13,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] A fragment showed unfamiliar manufacture; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Fura Ruin (f_13) | causes: t_step_06
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"unfamiliar_manufacturing","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kerin Reach (f_11), Fudor Marsh (f_12) | causes: h_relation_0
  effects: [{"a":"f_11","b":"f_12","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nawen Marsh | -496..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Hador Well | -313..-264 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Zolen Gate | -312..-302 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Sedor Marsh | -311..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Halith Reach | -310..-245 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Havak Marsh | -302..-283 | extinct | parents=f_02 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Luvak Well | -283..-245 | extinct | parents=f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Veyra Ruin | -245..-187 | extinct | parents=f_04, f_06 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Mirin Reach | -226..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Fulen Marsh | -226..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Fulith Well | -226..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Kerin Reach | -206..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Fudor Marsh | -187..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_13: Fura Ruin | -187..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dasen Reach | -531..-326 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-531 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-496 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-313 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-312 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-311 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-310 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-302 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_02 | events=t_step_00
-283 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_01
-245 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_03
-226 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-226 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-226 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-206 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_05
-206 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_05
-187 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_06
-187 f_13: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_06
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-326 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-302 f_02: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_00
-283 f_05: absorbed | absorbed_into=f_06 | untracked_strata= | events=t_step_01
-264 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_02
-245 f_04: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_03
-245 f_06: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-187 f_07: absorbed | absorbed_into=f_12, f_13 | untracked_strata= | events=t_step_06
=== CURRENT WORLD ===
Region region: Namar Marsh
Faction f_00: Nawen Marsh | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=maintenance
Faction f_03: Sedor Marsh | kinship_clan | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=border_watch
Faction f_08: Mirin Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_09: Fulen Marsh | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_10: Fulith Well | modified_human_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Faction f_11: Kerin Reach | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=maintenance
Faction f_12: Fudor Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_13: Fura Ruin | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_03: parents=precursor; ancestors=precursor; sources=t_root_f_03, h_found, h_collapse
Ancestry f_08: parents=f_03; ancestors=f_03, precursor; sources=t_step_04, t_root_f_03, h_found, h_collapse
Ancestry f_09: parents=f_03; ancestors=f_03, precursor; sources=t_step_04, t_root_f_03, h_found, h_collapse
Ancestry f_10: parents=f_03; ancestors=f_03, precursor; sources=t_step_04, t_root_f_03, h_found, h_collapse
Ancestry f_11: parents=; ancestors=; sources=t_step_05
Ancestry f_12: parents=f_07; ancestors=f_02, f_04, f_05, f_06, f_07, precursor; sources=t_step_06, t_root_f_02, t_step_00, t_root_f_04, t_step_03, t_step_01, h_found, h_collapse
Ancestry f_13: parents=f_07; ancestors=f_02, f_04, f_05, f_06, f_07, precursor; sources=t_step_06, t_root_f_02, t_step_00, t_root_f_04, t_step_03, t_step_01, h_found, h_collapse
Relationship f_03 <-> f_08: -13; sources=t_step_04
Relationship f_03 <-> f_10: 13; sources=h_relation_2
Relationship f_10 <-> f_13: 14; sources=h_relation_1
Relationship f_11 <-> f_12: -9; sources=h_relation_0, h_last
Settlement home_f_00: Dara | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_02: Tora | owner=f_12 | region=region | sources=t_root_f_02, t_step_00, t_step_01, t_step_03, t_step_06
Settlement home_f_03: Keveydor | owner=f_03 | region=region | sources=t_root_f_03
Settlement home_f_04: Namon | owner=f_12 | region=region | sources=t_root_f_04, t_step_03, t_step_06
Settlement home_f_05: Veyveynar | owner=f_12 | region=region | sources=t_step_00, t_step_01, t_step_03, t_step_06
Settlement home_f_06: Ludor | owner=f_12 | region=region | sources=t_step_01, t_step_03, t_step_06
Settlement home_f_07: Kesen | owner=f_12 | region=region | sources=t_step_03, t_step_06
Settlement home_f_08: Bohasen | owner=f_08 | region=region | sources=t_step_04
Settlement home_f_09: Funar | owner=f_09 | region=region | sources=t_step_04
Settlement home_f_10: Tomisen | owner=f_10 | region=region | sources=t_step_04
Settlement home_f_11: Lubosil | owner=f_11 | region=region | sources=t_step_05
Settlement home_f_12: Kelith | owner=f_12 | region=region | sources=t_step_06
Settlement home_f_13: Kelen | owner=f_13 | region=region | sources=t_step_06
Settlement reused_site: Bosewen | owner=f_12 | region=region | sources=h_reuse
Ruin abandoned_f_01: administrative_site | occupant= | region=region | sources=t_step_02
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_hamlet | occupant=f_12 | region=region | sources=h_pressure, h_reuse
  site_type=residential | hazard=none | recorded_use=settlement
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Nawen Marsh (f_00; knowledge=):
  [t_root_f_00; confidence 0.59; legitimacy] Our recorded formation was enclave_continuity. We claim no direct inheritance of the old central offices. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.88; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Sedor Marsh (f_03; knowledge=observer_scholarly_term):
  [t_root_f_03; confidence 0.52; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.48; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-13}
  [h_relation_2; confidence 0.43; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_10","delta":13}
  [h_discovery; confidence 0.40; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.53; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-13}
  [; confidence 0.50; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_10","score":13}
Mirin Reach (f_08; knowledge=):
  [t_step_04; confidence 0.82; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.83; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-13}
  [h_discovery; confidence 0.71; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.74; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-13}
Fulen Marsh (f_09; knowledge=):
  [t_step_04; confidence 0.44; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.78; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.72; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_10; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.68; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.84; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":14}
  [h_relation_2; confidence 0.63; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_10","delta":13}
  [h_discovery; confidence 0.80; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.75; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_10","score":13}
  [; confidence 0.86; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":14}
Kerin Reach (f_11; knowledge=):
  [t_step_05; confidence 0.57; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.55; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":17}
  [h_discovery; confidence 0.84; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.60; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":-26}
  [; confidence 0.38; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_11","b":"f_12","score":-9}
Fudor Marsh (f_12; knowledge=):
  [t_step_06; confidence 0.59; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.51; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.78; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":17}
  [h_discovery; confidence 0.71; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.44; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":-26}
  [; confidence 0.83; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_11","b":"f_12","score":-9}
Fura Ruin (f_13; knowledge=):
  [t_step_06; confidence 0.65; legitimacy] Our recorded formation was fragmentation. We claim no direct inheritance of the old central offices. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records: Older local households remembered communities divided over their different adaptations. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.50; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":14}
  [h_discovery; confidence 0.46; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":24,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response","h_body"],"causal_ratio":1.0,"direct_count":22,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":24}
```

## rare_bombardment — seed 13

```text
History architecture v2 | generation algorithm v3 | seed 13 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"orbital_bombardment","population_catalog_id":"shipping_social_v1","precursor_form":"dynastic_crown","pressure_domain":"core_intervention","pressure_motif":"core_quarantine","response_motif":"regional_autonomy","topology_family":"consolidation_resplit"}
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
-538 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-513 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-343 h_pressure [DISASTER] Core-associated barriers isolated a district using existing infrastructure. The underlying purpose is unknown.
  scope=local | objective cause_domain=core_intervention
  actors: Dara Gate (precursor), Bokelith (regional_body) | causes:
  effects: [{"hazard":"restricted","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"quarantine","physical_basis":"existing_barrier_infrastructure","system_id":"deep_core","target_selection_reason":"unknown"}]
-331 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Bokelith (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-325 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Dadamon (province) | causes: h_response
  effects: [{"hazard":"ordnance","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield","site_type":"military"}]
-317 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dara Gate (precursor), Bokelith (regional_body), Dadamon (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-305 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-304 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-303 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-302 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-301 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-293 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Tora Gate (f_04), Sesen Well (f_02), Nasil Ruin (f_00) | causes: t_root_f_04, t_root_f_02, t_root_f_00
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_05"],"untracked_template_ids":[]},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_00","kind":"retire"},{"disposition":"untracked","entity_id":"f_00","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-275 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Lulith Gate (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_06"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_06","f_07","f_08"],"untracked_template_ids":[]}]
-257 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Kesil Ruin (f_05) | causes: t_step_00
  effects: [{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_09"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_09"},{"entity_id":"f_05","kind":"retire"},{"disposition":"absorbed","entity_id":"f_05","kind":"population_fate","successor_ids":["f_09","f_10"],"untracked_template_ids":[]}]
-239 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Bolith Well (f_07) | causes: t_step_01
  effects: [{"entity_id":"f_07","kind":"retire"},{"disposition":"untracked","entity_id":"f_07","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_07","kind":"retire"},{"hazard":"none","id":"abandoned_f_07","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-220 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Nanar Ruin (f_10) | causes: t_step_02
  effects: [{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"f_12","kind":"activate"},{"entity_id":"f_12","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10"]},{"entity_id":"home_f_12","kind":"activate"},{"entity_id":"home_f_12","kind":"settlement","location_id":"region","owner_id":"f_12"},{"entity_id":"home_f_10","kind":"site_owner","owner_id":"f_11"},{"entity_id":"f_10","kind":"retire"},{"disposition":"absorbed","entity_id":"f_10","kind":"population_fate","successor_ids":["f_11","f_12"],"untracked_template_ids":[]}]
-115 h_legacy_orbital [DISASTER] An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown.
  scope=local | objective cause_domain=observer_legacy
  actors:  | causes:
  effects: [{"activation_reason":"unknown","id":"legacy_orbital","intent":"unknown","kind":"system_trace","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","system_id":"fleet_assets","target_selection_reason":"unknown"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Mirin Reach (f_08), Dador Gate (f_11) | causes: t_step_01, t_step_04
  effects: [{"a":"f_08","b":"f_11","delta":30,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Bowen Reach (f_06), Dalith Well (f_12) | causes: t_step_01, t_step_04
  effects: [{"a":"f_06","b":"f_12","delta":11,"kind":"relationship"}]
-12 h_discovery [ANOMALOUS_DISCOVERY] An unknown machine was recovered at an impact site; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Dalith Well (f_12) | causes: t_step_04
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"machine_in_coastal_crater","origin":"unknown"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Mirin Reach (f_08), Dador Gate (f_11) | causes: h_relation_0
  effects: [{"a":"f_08","b":"f_11","delta":-26,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Nasil Ruin | -305..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Lulith Gate | -304..-275 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Sesen Well | -303..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Sesen Marsh | -302..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Tora Gate | -301..-293 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Kesil Ruin | -293..-257 | extinct | parents=f_04, f_02, f_00 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Bowen Reach | -275..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Bolith Well | -275..-239 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Mirin Reach | -275..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Minar Gate | -257..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Nanar Ruin | -257..-220 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Dador Gate | -220..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_12: Dalith Well | -220..present | active | parents=f_10 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dara Gate | -538..-317 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-538 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-305 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_00
-304 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-303 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-302 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_03
-301 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-293 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_00
-275 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-275 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-275 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_01
-257 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-257 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_02
-220 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_10 | events=t_step_04
-220 f_12: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_10 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-317 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-293 f_04: absorbed | absorbed_into=f_05 | untracked_strata= | events=t_step_00
-293 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-293 f_00: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-275 f_01: absorbed | absorbed_into=f_06, f_07, f_08 | untracked_strata= | events=t_step_01
-257 f_05: absorbed | absorbed_into=f_09, f_10 | untracked_strata= | events=t_step_02
-239 f_07: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-220 f_10: absorbed | absorbed_into=f_11, f_12 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
Region region: Hara Ruin
Faction f_03: Sesen Marsh | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=maintenance
Faction f_06: Bowen Reach | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_08: Mirin Reach | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_09: Minar Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_11: Dador Gate | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_12: Dalith Well | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
Ancestry f_03: parents=precursor; ancestors=precursor; sources=t_root_f_03, h_found, h_collapse
Ancestry f_06: parents=f_01; ancestors=f_01, precursor; sources=t_step_01, t_root_f_01, h_found, h_collapse
Ancestry f_08: parents=f_01; ancestors=f_01, precursor; sources=t_step_01, t_root_f_01, h_found, h_collapse
Ancestry f_09: parents=f_05; ancestors=f_00, f_02, f_04, f_05, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_02, t_root_f_04, h_found, h_collapse
Ancestry f_11: parents=f_10; ancestors=f_00, f_02, f_04, f_05, f_10, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_02, t_root_f_04, t_step_02, h_found, h_collapse
Ancestry f_12: parents=f_10; ancestors=f_00, f_02, f_04, f_05, f_10, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_02, t_root_f_04, t_step_02, h_found, h_collapse
Relationship f_06 <-> f_12: 11; sources=h_relation_1
Relationship f_08 <-> f_11: 4; sources=h_relation_0, h_last
Settlement home_f_00: Luvak | owner=f_09 | region=region | sources=t_root_f_00, t_step_00, t_step_02
Settlement home_f_01: Senar | owner=f_06 | region=region | sources=t_root_f_01, t_step_01
Settlement home_f_02: Fulith | owner=f_09 | region=region | sources=t_root_f_02, t_step_00, t_step_02
Settlement home_f_03: Harin | owner=f_03 | region=region | sources=t_root_f_03
Settlement home_f_04: Sehalith | owner=f_09 | region=region | sources=t_root_f_04, t_step_00, t_step_02
Settlement home_f_05: Hanalen | owner=f_09 | region=region | sources=t_step_00, t_step_02
Settlement home_f_06: Bomirin | owner=f_06 | region=region | sources=t_step_01
Settlement home_f_08: Misevak | owner=f_08 | region=region | sources=t_step_01
Settlement home_f_09: Tomilen | owner=f_09 | region=region | sources=t_step_02
Settlement home_f_10: Fubovak | owner=f_11 | region=region | sources=t_step_02, t_step_04
Settlement home_f_11: Veyra | owner=f_11 | region=region | sources=t_step_04
Settlement home_f_12: Lumon | owner=f_12 | region=region | sources=t_step_04
Ruin abandoned_f_07: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: legacy_damage_site | occupant= | region=region | sources=h_pressure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"observer_legacy","id":"legacy_orbital","intent":"unknown","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","scope":"local","source_event_ids":["h_legacy_orbital"],"system_id":"fleet_assets","target_selection_reason":"unknown"}
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"primary_system","intent":"unknown","operation":"quarantine","physical_basis":"existing_barrier_infrastructure","scope":"local","source_event_ids":["h_pressure"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Sesen Marsh (f_03; knowledge=):
  [t_root_f_03; confidence 0.72; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.74; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.62; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Bowen Reach (f_06; knowledge=):
  [t_step_01; confidence 0.87; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.55; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.44; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.78; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_12","delta":11}
  [h_discovery; confidence 0.85; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.44; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_12","score":11}
Mirin Reach (f_08; knowledge=):
  [t_step_01; confidence 0.83; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.47; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.86; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":30}
  [h_discovery; confidence 0.77; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.65; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":-26}
  [; confidence 0.82; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_11","score":4}
Minar Gate (f_09; knowledge=):
  [t_step_02; confidence 0.90; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.47; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.83; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Dador Gate (f_11; knowledge=):
  [t_step_04; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.70; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.48; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":30}
  [h_discovery; confidence 0.45; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_08","b":"f_11","delta":-26}
  [; confidence 0.48; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_08","b":"f_11","score":4}
Dalith Well (f_12; knowledge=):
  [t_step_04; confidence 0.40; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records: Older local households remembered altered access and services, whose reason they could not establish. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_orbital; confidence 0.50; interpretation] Some suspect an ancient sky-machine; a meteor or enemy weapon is another account.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.47; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_06","b":"f_12","delta":11}
  [h_discovery; confidence 0.49; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.39; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_12","score":11}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_orbital","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response"],"causal_ratio":0.952380952380952,"direct_count":19,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_orbital","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":21}
```

## current_7 — seed 14

```text
History architecture v2 | generation algorithm v3 | seed 14 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-2","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"dynastic_crown","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"household_council","topology_family":"layered_migration"}
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
-503 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-478 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-359 h_pressure [DISASTER] Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.
  scope=regional | objective cause_domain=natural
  actors: Sedor Gate (precursor), Luvak (regional_body) | causes: h_body
  effects: [{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_farmland","site_type":"agricultural"}]
-347 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (precursor), Luvak (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-343 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (precursor), Misen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-335 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Sedor Gate (precursor), Luvak (regional_body), Misen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-323 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-322 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-321 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-311 t_step_00 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-291 t_step_01 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_01"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-271 t_step_02 [NEWCOMER] A population from outside the local political lineage entered the region and established independent institutions.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["cohort_02"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"}]
-251 t_step_03 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Veywen Reach (f_04) | causes: t_step_01
  effects: [{"entity_id":"cohort_03","kind":"activate"},{"entity_id":"cohort_03","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_04","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04","cohort_03"]}]
-231 t_step_04 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Dasen Ruin (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"a":"f_03","b":"f_06","delta":14,"kind":"relationship"}]
-37 h_reuse [RUIN_REOCCUPIED] A community adopted a recorded compatible use of an older site; the damage and hazard record remained.
  scope=regional | objective cause_domain=human
  actors: Dasen Ruin (f_03) | causes: h_collapse, t_step_00
  effects: [{"entity_id":"reused_site","kind":"activate"},{"entity_id":"reused_site","kind":"settlement","location_id":"region","owner_id":"f_03"},{"kind":"reoccupy","owner_id":"f_03","purpose":"scavenging","ruin_id":"old_administration","settlement_id":"reused_site"}]
-28 h_relation_0 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Kemar Well (f_02), Veywen Reach (f_04) | causes: t_root_f_02, t_step_01
  effects: [{"a":"f_02","b":"f_04","delta":11,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Tora Well (f_00), Lumon Reach (f_06) | causes: t_root_f_00, t_step_04
  effects: [{"a":"f_00","b":"f_06","delta":23,"kind":"relationship"}]
-24 h_relation_2 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Veywen Reach (f_04), Semon Well (f_05) | causes: t_step_01, t_step_02
  effects: [{"a":"f_04","b":"f_05","delta":17,"kind":"relationship"}]
-22 h_relation_3 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Tora Well (f_00), Nalith Well (f_01) | causes: t_root_f_00, t_root_f_01
  effects: [{"a":"f_00","b":"f_01","delta":-29,"kind":"relationship"},{"hazard":"structural","id":"watchpost_3","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Kemar Well (f_02), Veywen Reach (f_04) | causes: h_relation_0
  effects: [{"a":"f_02","b":"f_04","delta":-29,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Tora Well | -323..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Nalith Well | -322..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Kemar Well | -321..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Dasen Ruin | -311..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Veywen Reach | -291..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Semon Well | -271..present | active | parents= | formation=newcomer_formation | ancestry=newcomer | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Lumon Reach | -231..present | active | parents=f_03 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Sedor Gate | -503..-335 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-503 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-323 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-322 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-321 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-311 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_00
-311 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_00 | events=t_step_00
-291 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_01
-291 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_01 | events=t_step_01
-271 cohort_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-271 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=cohort_02 | events=t_step_02
-251 cohort_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_03
-251 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_04, cohort_03 | events=t_step_03
-231 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-335 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
=== CURRENT WORLD ===
Region region: Navak Ruin
Faction f_00: Tora Well | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
Faction f_01: Nalith Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
Faction f_02: Kemar Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
Faction f_03: Dasen Ruin | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=shelter
Faction f_04: Veywen Reach | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
Faction f_05: Semon Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
Faction f_06: Lumon Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=archives
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_01: parents=precursor; ancestors=precursor; sources=t_root_f_01, h_found, h_collapse
Ancestry f_02: parents=; ancestors=; sources=t_root_f_02
Ancestry f_03: parents=; ancestors=; sources=t_step_00
Ancestry f_04: parents=; ancestors=; sources=t_step_01
Ancestry f_05: parents=; ancestors=; sources=t_step_02
Ancestry f_06: parents=f_03; ancestors=f_03; sources=t_step_04, t_step_00
Relationship f_00 <-> f_01: -29; sources=h_relation_3
Relationship f_00 <-> f_06: 23; sources=h_relation_1
Relationship f_02 <-> f_04: -18; sources=h_relation_0, h_last
Relationship f_03 <-> f_06: 14; sources=t_step_04
Relationship f_04 <-> f_05: 17; sources=h_relation_2
Settlement home_f_00: Tosen | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Fumilen | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_02: Bosewen | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Veylith | owner=f_03 | region=region | sources=t_step_00
Settlement home_f_04: Namilen | owner=f_04 | region=region | sources=t_step_01
Settlement home_f_05: Bosen | owner=f_05 | region=region | sources=t_step_02
Settlement home_f_06: Veysil | owner=f_06 | region=region | sources=t_step_04
Settlement reused_site: Dalen | owner=f_03 | region=region | sources=h_reuse
Ruin old_administration: administrative_site | occupant=f_03 | region=region | sources=h_collapse, h_reuse
  site_type=records | hazard=none | recorded_use=scavenging
Ruin pressure_site: abandoned_farmland | occupant= | region=region | sources=h_pressure
  site_type=agricultural | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_3: watchtower | occupant= | region=region | sources=h_relation_3
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Tora Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.61; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_06","delta":23}
  [h_relation_3; confidence 0.79; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_01","delta":-29}
  [; confidence 0.90; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_01","score":-29}
  [; confidence 0.89; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_06","score":23}
Nalith Well (f_01; knowledge=):
  [t_root_f_01; confidence 0.49; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.68; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_01","delta":-29}
  [; confidence 0.56; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_01","score":-29}
Kemar Well (f_02; knowledge=):
  [t_root_f_02; confidence 0.88; legitimacy] Our recorded formation was reorganization. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.86; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":11}
  [h_last; confidence 0.52; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-29}
  [; confidence 0.59; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":-18}
Dasen Ruin (f_03; knowledge=):
  [t_step_00; confidence 0.41; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Who ruled mattered less than keeping old facilities serviceable.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.52; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":14}
  [; confidence 0.61; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":14}
Veywen Reach (f_04; knowledge=):
  [t_step_01; confidence 0.68; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Local assemblies carried responsibility after central appointments failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.83; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.73; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":11}
  [h_relation_2; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":17}
  [h_last; confidence 0.37; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-29}
  [; confidence 0.44; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":-18}
  [; confidence 0.89; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":17}
Semon Well (f_05; knowledge=):
  [t_step_02; confidence 0.62; legitimacy] Our recorded formation was newcomer_formation. We claim no direct inheritance of the old central offices. Moving households joined because a shared welcome mattered more than inherited borders.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.71; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":17}
  [; confidence 0.61; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":17}
Lumon Reach (f_06; knowledge=):
  [t_step_04; confidence 0.79; legitimacy] Our recorded formation was migration_settlement. We claim no direct inheritance of the old central offices. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records: Older local households remembered seasons outside their established schedules. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.46; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":14}
  [h_relation_1; confidence 0.81; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_06","delta":23}
  [; confidence 0.48; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_06","score":23}
  [; confidence 0.65; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":20}
```

## polycentric_succession — seed 17

```text
History architecture v2 | generation algorithm v3 | seed 17 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-2","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"chemical_exposure","response_motif":"regional_autonomy","topology_family":"polycentric_succession"}
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
Region region: Nawen Well
Faction f_00: Zomar Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=local_exchange
Faction f_02: Todor Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=border_watch
Faction f_04: Kelith Ruin | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_07: Zowen Well | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
Faction f_08: Zovak Gate | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
Faction f_11: Nawen Marsh | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_12: Namon Reach | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_13: Serin Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
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
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Zomar Marsh (f_00; knowledge=):
  [t_root_f_00; confidence 0.41; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. The Four Moons withdrew their blessing from those old rulers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.54; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_04","delta":10}
  [h_relation_3; confidence 0.60; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":34}
  [h_relation_4; confidence 0.40; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":14}
  [h_discovery; confidence 0.39; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.49; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_04","score":10}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":34}
  [; confidence 0.52; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":14}
Todor Ruin (f_02; knowledge=):
  [t_root_f_02; confidence 0.53; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Local workshops and exchange give us a reason to remain together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.89; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Kelith Ruin (f_04; knowledge=):
  [t_step_00; confidence 0.71; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Villages survived by sharing duties; no surviving central heir owns us.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.66; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":26}
  [h_relation_1; confidence 0.64; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_04","delta":10}
  [h_relation_2; confidence 0.59; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_07","delta":13}
  [h_discovery; confidence 0.52; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.66; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-26}
  [; confidence 0.59; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_04","score":10}
  [; confidence 0.42; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_07","score":13}
  [; confidence 0.51; interpretation] Current obligations remain unsettled.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":0}
Zowen Well (f_07; knowledge=):
  [t_step_01; confidence 0.90; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.82; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_07","delta":13}
  [h_relation_3; confidence 0.81; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":34}
  [h_relation_5; confidence 0.49; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_12","delta":34}
  [h_discovery; confidence 0.40; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.50; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":34}
  [; confidence 0.67; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_07","score":13}
  [; confidence 0.89; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_12","score":34}
Zovak Gate (f_08; knowledge=):
  [t_step_02; confidence 0.35; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.71; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.75; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
Nawen Marsh (f_11; knowledge=):
  [t_step_04; confidence 0.45; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. The routes died before the state did; renewed exchange gives our obligations meaning.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.75; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.76; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":26}
  [h_relation_4; confidence 0.36; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":14}
  [h_discovery; confidence 0.72; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.39; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_04","b":"f_11","delta":-26}
  [; confidence 0.68; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":14}
  [; confidence 0.40; interpretation] Current obligations remain unsettled.
    reference_scope=present | evidence={"a":"f_04","b":"f_11","score":0}
Namon Reach (f_12; knowledge=):
  [t_step_04; confidence 0.67; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.72; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_relation_5; confidence 0.75; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_12","delta":34}
  [h_discovery; confidence 0.37; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.73; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_07","b":"f_12","score":34}
Serin Well (f_13; knowledge=):
  [t_step_04; confidence 0.56; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records: Older local households remembered harmful vapours from opened ground. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.60; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":23,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":21,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_relation_4","h_relation_5","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":23}
```

## rare_core — seed 19

```text
History architecture v2 | generation algorithm v3 | seed 19 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-2","discovery_motif":"stratum_fragment","extra_core":"core_slope_failure","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"maintenance_secession","topology_family":"late_fragmentation"}
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
Region region: Nalith Marsh
Faction f_00: Kemon Well | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
Faction f_02: Kelith Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
Faction f_07: Sera Ruin | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
Faction f_09: Kesil Ruin | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
Faction f_10: Hamon Reach | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
Faction f_11: Bosil Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
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
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"legacy_core","intent":"unknown","operation":"induced_slope_failure","physical_basis":"existing_slope_stress_and_fluid_pressure","scope":"local","source_event_ids":["h_legacy_core"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Kemon Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.64; legitimacy] Our recorded formation was direct_successor. Our offices continue an older political lineage. Our different adaptations were treated as disloyalty; we learned to govern together.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.77; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.79; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.82; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.86; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
  [; confidence 0.57; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
Kelith Well (f_02; knowledge=):
  [t_step_00; confidence 0.62; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our inherited household duties survived the old state's titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.49; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.61; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_discovery; confidence 0.57; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.35; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
Sera Ruin (f_07; knowledge=):
  [t_step_01; confidence 0.61; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Our shared rites kept the community together when central authority failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.50; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.59; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.71; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.56; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Kesil Ruin (f_09; knowledge=):
  [t_step_03; confidence 0.68; legitimacy] Our recorded formation was merger. Our offices continue an older political lineage. We held local households together when the old government failed.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.70; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.44; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.49; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_discovery; confidence 0.43; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.36; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.47; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
Hamon Reach (f_10; knowledge=):
  [t_step_04; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Shared work and representation outlasted central authority.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.74; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.58; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.85; interpretation] We compare it with ancient works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.76; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Bosil Ruin (f_11; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.73; legitimacy] Our recorded formation was fragmentation. Our offices continue an older political lineage. Maintaining services mattered more than the old officials' titles.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records: Older local households inherited conflicting records of succession. These accounts do not settle the end of the whole age of great states.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.87; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.67; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_relation_1; confidence 0.67; interpretation] That recorded agreement increased trust at the time.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.44; interpretation] We compare it with Observer-era works, but resemblance does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.61; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
  [; confidence 0.40; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```
