# Seed 8 — incident_machine_control_failure

```text
History architecture v2 | generation algorithm v3 | seed 8 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"ritual_schism","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"layered_migration"}
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
-47 s_00_00_machine_control_failure [SOCIAL_INCIDENT] An autonomous local control unit lost safe control and destroyed a workplace. This recorded harm is a control failure, not a machine war or an identified ancient-system intervention.
  scope=local | objective cause_domain=human
  actors: Lura Marsh (f_05) | causes: t_step_03
  effects: [{"hazard":"restricted","id":"s_damage_0","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"autonomous_machine_catastrophe","record_type":"scar","reference_id":"f_05"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"autonomous_machine_harm","record_type":"practice","reference_id":"f_05"}]
-46 s_00_01_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Lura Marsh (f_05) | causes: t_step_03, s_00_00_machine_control_failure
  effects: [{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_05"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_05"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"autonomous_machine_catastrophe","record_type":"scar","reference_id":"f_05","source_event_ids":["s_00_00_machine_control_failure"],"year":-47}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"autonomous_machine_harm","record_type":"practice","reference_id":"f_05","source_event_ids":["s_00_00_machine_control_failure"],"year":-47}
Social record: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_05","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_05","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_05","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Region region: Fuwen Reach
Faction f_00: Veyrin Ruin | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
  identity=reformer/craft/adapt | interpretation=technical/rupture | sources=t_root_f_00, h_collapse
  society patterns: Archive Legitimacy, Shelter Compact
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Fulen Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=archives
  identity=reformer/exchange/rebuild | interpretation=technical/warning | sources=t_step_00, h_pressure
  society patterns: Boundary Watch, Hazard Memory, Mutual Obligation, Newcomer Charter
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Veylith Ruin | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=maintenance
  identity=new_foundation/craft/adapt | interpretation=technical/rupture | sources=t_step_01, h_collapse
  society patterns: Boundary Watch, Maintenance Covenant, Mutual Obligation, Route Commonwealth
  Sacred Craft — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  The World Must Be Mended — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=role:maintenance, event:maintenance_accord
Faction f_04: Fudor Reach | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=border_watch
  identity=new_foundation/institution/rebuild | interpretation=technical/warning | sources=t_step_02, h_pressure
  society patterns: Boundary Watch, Hazard Memory, Newcomer Charter
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_05: Lura Marsh | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/refuge/rebuild | interpretation=ritual/rupture | sources=t_step_03, h_collapse
  society patterns: Boundary Watch, Hazard Memory, Household Sovereignty
Faction f_06: Bolen Marsh | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=breakaway/institution/preserve | interpretation=pragmatic/opportunity | sources=t_step_03, h_discovery
  society patterns: Archive Legitimacy, Mutual Obligation, Route Commonwealth
  Order Above Survival — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
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
Ruin s_damage_0: legacy_damage_site | occupant= | region=region | sources=s_00_00_machine_control_failure
  site_type=legacy | hazard=restricted | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: sealed_object_in_erosion | origin=unknown | sources=h_discovery
=== BELIEFS ===
Veyrin Ruin (f_00; knowledge=):
  [t_root_f_00; confidence 0.47; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.46; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_05","delta":-14}
  [h_discovery; confidence 0.42; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.83; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_05","score":-14}
Fulen Marsh (f_02; knowledge=):
  [t_step_00; confidence 0.52; legitimacy] Our recorded formation was newcomer_formation. We inherited older obligations, but not the right to reproduce the old order unchanged. Routes, exchange and reciprocal obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.54; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.54; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-30}
  [h_discovery; confidence 0.84; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.81; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":20}
  [; confidence 0.38; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":-10}
Veylith Ruin (f_03; knowledge=):
  [t_step_01; confidence 0.63; legitimacy] Our recorded formation was migration_settlement. We define ourselves as a community formed after the old order failed. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.76; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_03","delta":9}
  [h_relation_0; confidence 0.72; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-30}
  [h_relation_1; confidence 0.39; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":11}
  [h_discovery; confidence 0.42; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.63; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":20}
  [; confidence 0.57; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":-10}
  [; confidence 0.90; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":11}
Fudor Reach (f_04; knowledge=):
  [t_step_02; confidence 0.36; legitimacy] Our recorded formation was newcomer_formation. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.58; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.86; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Lura Marsh (f_05; knowledge=):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered seasons outside their established schedules. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.71; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_00","b":"f_05","delta":-14}
  [h_discovery; confidence 0.90; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [; confidence 0.80; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_00","b":"f_05","score":-14}
Bolen Marsh (f_06; knowledge=):
  [t_step_03; confidence 0.49; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.86; interpretation] Regional records remembered seasons outside their established schedules. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.82; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":11}
  [h_discovery; confidence 0.38; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.78; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":11}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":20,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_machine_control_failure","s_00_01_machine_safety_reform","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":18,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_machine_control_failure","s_00_01_machine_safety_reform","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":20}
```

## Veyrin Ruin (f_00)

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
				"matched_preferences": [
					"role:archives"
				],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
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
				"unsupported_certainty"
			],
			"values": [
				"skepticism",
				"scholarship"
			]
		}
	],
	"eligible_doctrines": [
		"debt_of_shelter",
		"living_archive",
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence",
		"unfinished_form"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_collapse"
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
					"t_root_f_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-14",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
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
				"detail": "extreme_seasons",
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
					"t_root_f_00",
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
					"t_root_f_00",
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
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_root_f_00",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:refugee_community",
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
							"t_root_f_00"
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
							"t_root_f_00"
						],
						"source_path": "entity.way_of_life"
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
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
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
								"t_root_f_00"
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
								"t_root_f_00"
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
		"unsupported_certainty"
	],
	"tension_tags": [
		"cruelty",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"hospitality",
		"record_preservation",
		"scholarship",
		"skepticism"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":["role:archives"],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Fulen Marsh (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"infrastructure_repair",
		"route_reconnection",
		"verify_claims"
	],
	"doctrine_intensities": {
		"measured_doubt": "moderate",
		"world_must_be_mended": "moderate"
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
				"matched_preferences": [
					"role:archives"
				],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00"
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
				"matched_preferences": [
					"adaptive:rebuild"
				],
				"matched_required": [
					"event:maintenance_accord"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
					"adaptive:rebuild": [
						{
							"detail": "rebuild",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_00",
								"h_pressure"
							],
							"source_path": "identity.adaptive_stance"
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
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"newcomer_charter"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
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
					"t_step_00",
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
				"detail": "20",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-30",
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
				"detail": "extreme_seasons",
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
					"t_step_00",
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
					"t_step_00",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00",
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
				"source_path": "present.settlements:home_f_02"
			}
		]
	},
	"faction_id": "f_02",
	"fear_tags": [
		"false_certainty",
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_00",
			"h_pressure"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:provincial_council",
			"role:archives",
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
				"memory:warning"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "extreme_seasons",
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
							"t_step_00",
							"h_pressure"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "20",
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
			"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
			"id": "newcomer_charter",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"formation:newcomer_formation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
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
		{
			"explanation": "Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.",
			"id": "measured_doubt",
			"kind": "doctrine",
			"matched_preferences": [
				"role:archives"
			],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
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
			"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
			"id": "world_must_be_mended",
			"kind": "doctrine",
			"matched_preferences": [
				"adaptive:rebuild"
			],
			"matched_required": [
				"event:maintenance_accord"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
				"adaptive:rebuild": [
					{
						"detail": "rebuild",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_00",
							"h_pressure"
						],
						"source_path": "identity.adaptive_stance"
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
					"memory:warning"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "extreme_seasons",
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
								"t_step_00",
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
							"detail": "20",
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
			"category": "membership",
			"display_name": "Newcomer Charter",
			"id": "newcomer_charter",
			"provenance": {
				"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
				"id": "newcomer_charter",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
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
		"neglect",
		"unsupported_certainty"
	],
	"tension_tags": [
		"exclusion",
		"free_riding",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"hazard_awareness",
		"hospitality",
		"outsider",
		"reciprocity",
		"scholarship",
		"skepticism",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":["role:archives"],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_00"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"},{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_00","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_00","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_00","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Veylith Ruin (f_03)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"honor_skilled_making",
		"infrastructure_repair",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"sacred_craft": "moderate",
		"world_must_be_mended": "hardline"
	},
	"doctrines": [
		{
			"category": "art",
			"desires": [
				"honor_skilled_making"
			],
			"display_name": "Sacred Craft",
			"fears": [
				"craft_loss"
			],
			"goal_candidates": [
				{
					"desire": "honor_skilled_making",
					"explanation": "Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.",
					"id": "honor_skilled_making"
				}
			],
			"id": "sacred_craft",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
				"id": "sacred_craft",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
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
			"taboos": [
				"craft_desecration"
			],
			"values": [
				"craftsmanship",
				"item_provenance",
				"technical_competence"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"role:maintenance",
					"event:maintenance_accord"
				]
			},
			"provenance": {
				"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
				"id": "world_must_be_mended",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance",
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
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
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
					"t_step_01",
					"h_collapse"
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
					"h_relation_0"
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
		"event:population_migration": [
			{
				"detail": "population_migration",
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
					"h_relation_1"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:migration_settlement": [
			{
				"detail": "migration_settlement",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "11",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "20",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-30",
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
				"detail": "extreme_seasons",
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
					"t_step_01",
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_03"
			}
		]
	},
	"faction_id": "f_03",
	"fear_tags": [
		"craft_loss",
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_01",
			"h_collapse"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:resource_or_trade_commune",
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
							"h_relation_0"
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
							"t_step_01"
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
						"detail": "9",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "11",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "20",
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
			"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
			"id": "route_commonwealth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:resource_or_trade_commune",
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					}
				],
				"life:resource_or_trade_commune": [
					{
						"detail": "resource_or_trade_commune",
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
			"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
			"id": "sacred_craft",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
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
		{
			"explanation": "Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.",
			"id": "world_must_be_mended",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance",
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
							"detail": "9",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "11",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "20",
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
			"category": "livelihood",
			"display_name": "Route Commonwealth",
			"id": "route_commonwealth",
			"provenance": {
				"explanation": "An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.",
				"id": "route_commonwealth",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:resource_or_trade_commune",
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
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						}
					],
					"life:resource_or_trade_commune": [
						{
							"detail": "resource_or_trade_commune",
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
				"route_monopoly"
			],
			"value_tags": [
				"fair_exchange",
				"route_service"
			]
		}
	],
	"taboo_tags": [
		"craft_desecration",
		"neglect"
	],
	"tension_tags": [
		"free_riding",
		"neglect",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"item_provenance",
		"reciprocity",
		"route_service",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"honor_skilled_making","explanation":"Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"honor_skilled_making","intensity":"moderate","provenance":{"explanation":"Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.","id":"sacred_craft","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"sacred_craft","status":"candidate"},{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"hardline","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"hardline","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"hardline","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}],"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Fudor Reach (f_04)

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
		"no_more_masters",
		"order_above_survival"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"newcomer_charter"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
					"h_pressure"
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
					"h_pressure"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:newcomer_entry": [
			{
				"detail": "newcomer_entry",
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
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
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
				"detail": "extreme_seasons",
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
					"t_step_02",
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
					"t_step_02",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_04"
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
	"faction_id": "f_04",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_02",
			"h_pressure"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:provincial_council",
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
				"target": 4,
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
				"target": 4,
				"weight": 5
			},
			"support": {
				"history:regional_pressure": [
					{
						"detail": "extreme_seasons",
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
							"t_step_02",
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
							"t_step_02"
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
			"matched_preferences": [],
			"matched_required": [
				"formation:newcomer_formation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"formation:newcomer_formation": [
					{
						"detail": "newcomer_formation",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.formation_origin"
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
					"target": 4,
					"weight": 5
				},
				"support": {
					"history:regional_pressure": [
						{
							"detail": "extreme_seasons",
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
								"t_step_02",
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
			"display_name": "Newcomer Charter",
			"id": "newcomer_charter",
			"provenance": {
				"explanation": "An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.",
				"id": "newcomer_charter",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"formation:newcomer_formation": [
						{
							"detail": "newcomer_formation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.formation_origin"
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"exclusion",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"hospitality",
		"household_autonomy",
		"outsider",
		"shared_responsibility",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:newcomer_formation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:newcomer_formation":[{"detail":"newcomer_formation","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Lura Marsh (f_05)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"no_more_masters",
		"pure_flesh",
		"radical_impermanence",
		"silent_circuit"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"household_sovereignty"
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
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_collapse"
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
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:autonomous_machine_catastrophe",
				"reference_ids": [
					"f_05"
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
				"detail": "-14",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_harm_memory": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_harm_memory",
				"reference_ids": [
					"f_05"
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
				"detail": "extreme_seasons",
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
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_05"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
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
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
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
		"scar:autonomous_machine_catastrophe": [
			{
				"content_ids": [],
				"detail": "Objective scar:autonomous_machine_catastrophe",
				"reference_ids": [
					"f_05"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_machine_control_failure"
				],
				"source_path": "present.social_history:scar:autonomous_machine_catastrophe"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_05"
			}
		]
	},
	"faction_id": "f_05",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_03",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:kinship_clan",
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
							"t_step_03"
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
						"detail": "extreme_seasons",
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
							"t_step_03"
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
							"t_step_03"
						],
						"source_path": "entity.way_of_life"
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
							"detail": "extreme_seasons",
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
								"t_step_03"
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
	"taboo_tags": [],
	"tension_tags": [
		"external_domination",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"household_autonomy",
		"vigilance"
	]
}
```

Candidates: `[]`

## Bolen Marsh (f_06)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"reinforce_order"
	],
	"doctrine_intensities": {
		"order_above_survival": "moderate"
	},
	"doctrines": [
		{
			"category": "philosophy",
			"desires": [
				"reinforce_order"
			],
			"display_name": "Order Above Survival",
			"fears": [
				"social_disintegration"
			],
			"goal_candidates": [
				{
					"desire": "reinforce_order",
					"explanation": "Consider reinforce order as a future social priority; no target, capability or completed action is asserted.",
					"id": "reinforce_order"
				}
			],
			"id": "order_above_survival",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
				"id": "order_above_survival",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:regional_collapse",
					"life:military_remnant"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
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
			"taboos": [
				"insubordination"
			],
			"values": [
				"duty",
				"discipline"
			]
		}
	],
	"eligible_doctrines": [
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
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
					"t_step_03",
					"h_discovery"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:erosion_seal": [
			{
				"detail": "erosion_seal",
				"scope": "faction",
				"source_event_ids": [
					"h_discovery"
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
				"detail": "extreme_seasons",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "sealed_object_in_erosion",
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
					"t_step_03",
					"h_discovery"
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
					"h_discovery"
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
					"h_discovery"
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
		"social_disintegration"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_03",
			"h_discovery"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
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
							"h_relation_1"
						],
						"source_path": "event.narrative_key"
					}
				]
			}
		},
		{
			"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
			"id": "order_above_survival",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:regional_collapse",
				"life:military_remnant"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
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
								"t_step_03"
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
								"h_relation_1"
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
		"insubordination"
	],
	"tension_tags": [
		"free_riding",
		"record_destruction",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"discipline",
		"duty",
		"fair_exchange",
		"reciprocity",
		"record_preservation",
		"route_service",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"reinforce_order","explanation":"Consider reinforce order as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"reinforce_order","intensity":"moderate","provenance":{"explanation":"A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.","id":"order_above_survival","kind":"doctrine","matched_preferences":[],"matched_required":["history:regional_collapse","life:military_remnant"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:military_remnant":[{"detail":"military_remnant","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"order_above_survival","status":"candidate"}]`
