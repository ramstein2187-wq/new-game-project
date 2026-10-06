# Seed 14 — additional_distinct_history

```text
History architecture v2 | generation algorithm v3 | seed 14 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"dynastic_crown","pressure_domain":"natural","pressure_motif":"extreme_seasons","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"layered_migration"}
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
-47 s_00_00_autonomous_machine_conflict [SOCIAL_INCIDENT] Local autonomous machines fought residents and damaged a service site. Their manufacture and relationship to ancient systems are unclassified; no Core or Observer motive is asserted.
  scope=local | objective cause_domain=human
  actors: Lumon Reach (f_06) | causes: t_step_04
  effects: [{"hazard":"restricted","id":"s_damage_0","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_06"}]
-46 s_00_01_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Lumon Reach (f_06) | causes: t_step_04, s_00_00_autonomous_machine_conflict
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_06"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_06","source_event_ids":["s_00_00_autonomous_machine_conflict"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_06","source_event_ids":["s_00_00_autonomous_machine_conflict"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_06","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_01_machine_safety_reform"],"year":-46}
Region region: Navak Ruin
Faction f_00: Tora Well | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
  identity=reformer/ritual/preserve | interpretation=ritual/rupture | sources=t_root_f_00, h_collapse
  society patterns: Boundary Watch, Ritual Stewardship, Route Commonwealth
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_01: Nalith Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
  identity=heir/craft/preserve | interpretation=technical/warning | sources=t_root_f_01, h_pressure
  society patterns: Boundary Watch, Mutual Obligation
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Kemar Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=archives
  identity=reformer/institution/preserve | interpretation=technical/warning | sources=t_root_f_02, h_pressure
  society patterns: Archive Legitimacy, Hazard Memory
Faction f_03: Dasen Ruin | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=shelter
  identity=outsider/craft/preserve | interpretation=technical/continuity | sources=t_step_00
  society patterns: Maintenance Covenant, Newcomer Charter
  Practical Heresy — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_04: Veywen Reach | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
  identity=outsider/craft/rebuild | interpretation=technical/debt | sources=t_step_01, h_relation_2
  society patterns: Mutual Obligation, Newcomer Charter, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Order Above Survival — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_05: Semon Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=isolation
  identity=outsider/institution/adapt | interpretation=skeptical/rupture | sources=t_step_02, h_collapse
  society patterns: Newcomer Charter, Route Commonwealth
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Lumon Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=archives
  identity=new_foundation/craft/rebuild | interpretation=skeptical/opportunity | sources=t_step_04, h_relation_1
  society patterns: Archive Legitimacy, Mutual Obligation
  Pure Flesh — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=scar:machine_war, history:machine_harm_memory, institution:human_oversight
  Silent Circuit — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=history:autonomous_machine_harm, institution:human_oversight, history:machine_harm_memory
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
Ruin s_damage_0: legacy_damage_site | occupant= | region=region | sources=s_00_00_autonomous_machine_conflict
  site_type=legacy | hazard=restricted | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_3: watchtower | occupant= | region=region | sources=h_relation_3
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Tora Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.61; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered seasons outside their established schedules. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_00","b":"f_06","delta":23}
  [h_relation_3; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_00","b":"f_01","delta":-29}
  [; confidence 0.90; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_00","b":"f_01","score":-29}
  [; confidence 0.89; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_00","b":"f_06","score":23}
Nalith Well (f_01; knowledge=):
  [t_root_f_01; confidence 0.49; legitimacy] Our recorded formation was direct_successor. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_3; confidence 0.68; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_01","delta":-29}
  [; confidence 0.56; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_01","score":-29}
Kemar Well (f_02; knowledge=):
  [t_root_f_02; confidence 0.88; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.86; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":11}
  [h_last; confidence 0.52; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-29}
  [; confidence 0.59; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":-18}
Dasen Ruin (f_03; knowledge=):
  [t_step_00; confidence 0.41; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.52; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":14}
  [; confidence 0.61; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":14}
Veywen Reach (f_04; knowledge=):
  [t_step_01; confidence 0.68; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.83; interpretation] Regional records remembered seasons outside their established schedules. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.73; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":11}
  [h_relation_2; confidence 0.36; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":17}
  [h_last; confidence 0.37; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-29}
  [; confidence 0.44; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_02","b":"f_04","score":-18}
  [; confidence 0.89; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":17}
Semon Well (f_05; knowledge=):
  [t_step_02; confidence 0.62; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered seasons outside their established schedules. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_2; confidence 0.71; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_04","b":"f_05","delta":17}
  [; confidence 0.61; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_04","b":"f_05","score":17}
Lumon Reach (f_06; knowledge=):
  [t_step_04; confidence 0.79; legitimacy] Our recorded formation was migration_settlement. We define ourselves as a community formed after the old order failed. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered seasons outside their established schedules. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.46; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_03","b":"f_06","delta":14}
  [h_relation_1; confidence 0.81; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_06","delta":23}
  [; confidence 0.48; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_06","score":23}
  [; confidence 0.65; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_03","b":"f_06","score":14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":22,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","s_00_00_autonomous_machine_conflict","s_00_01_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":20,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_relation_3","h_reuse","s_00_00_autonomous_machine_conflict","s_00_01_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":22}
```

## Tora Well (f_00)

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
								"t_root_f_00"
							],
							"source_path": "entity.formation_origin"
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
		"radical_impermanence"
	],
	"eligible_traits": [
		"boundary_watch",
		"mutual_obligation",
		"ritual_stewardship",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
					"t_root_f_00",
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
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
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
		"history:cooperation": [
			{
				"detail": "23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-29",
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
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_root_f_00",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:ritual_authority",
			"role:local_exchange",
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
							"t_root_f_00"
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
							"t_root_f_00"
						],
						"source_path": "entity.formation_origin"
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
		"ritual_desecration",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"adaptability",
		"duty",
		"fair_exchange",
		"institutional_reform",
		"memory_preservation",
		"ritualism",
		"route_service",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_root_f_00","h_collapse"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Nalith Well (f_01)

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
								"t_root_f_01"
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
		"continuity",
		"living_archive",
		"measured_doubt"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
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
					"t_root_f_01",
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
					"h_relation_3"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_successor": [
			{
				"detail": "local_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:direct_successor": [
			{
				"detail": "direct_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-29",
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
				"detail": "extreme_seasons",
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
					"t_root_f_01",
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
					"t_root_f_01",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
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
					"t_root_f_01"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
				],
				"source_path": "present.settlements:home_f_01"
			}
		]
	},
	"faction_id": "f_01",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_root_f_01",
			"h_pressure"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:village_union",
			"role:archives",
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
							"h_relation_3"
						],
						"source_path": "event.narrative_key"
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
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:village_union": [
					{
						"detail": "village_union",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_01"
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
							"t_root_f_01"
						],
						"source_path": "entity.regional_roles"
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
			"category": "institutions",
			"display_name": "Mutual Obligation",
			"id": "mutual_obligation",
			"provenance": {
				"explanation": "Direct positive relationship events or a communal livelihood support obligations between members or communities.",
				"id": "mutual_obligation",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:village_union": [
						{
							"detail": "village_union",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01"
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
		"unsupported_certainty"
	],
	"tension_tags": [
		"free_riding",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"duty",
		"reciprocity",
		"scholarship",
		"skepticism",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":["role:archives"],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_root_f_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Kemar Well (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"living_archive",
		"measured_doubt",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"hazard_memory",
		"mutual_obligation",
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
		"anchor:institution": [
			{
				"detail": "institution",
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
					"t_root_f_02",
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
					"t_root_f_02",
					"h_pressure"
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
		"role:archives": [
			{
				"detail": "archives",
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
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_root_f_02",
			"h_pressure"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:migrant_confederation",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
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
				"target": 2,
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
							"t_root_f_02",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
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
				"record_destruction"
			],
			"value_tags": [
				"scholarship",
				"record_preservation"
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
					"target": 2,
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
								"t_root_f_02",
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
		"record_destruction"
	],
	"value_tags": [
		"hazard_awareness",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[]`

## Dasen Ruin (f_03)

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
					"reuse:scavenging"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"reuse:scavenging": [
						{
							"detail": "scavenging",
							"scope": "faction",
							"source_event_ids": [
								"h_reuse"
							],
							"source_path": "effect.reoccupy.purpose"
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
		"no_more_masters",
		"practical_heresy",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"hazard_memory",
		"maintenance_covenant",
		"mutual_obligation",
		"newcomer_charter",
		"salvage_custom",
		"shelter_compact"
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
					"t_step_00"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "14",
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
				"detail": "extreme_seasons",
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
		"life:facility_community": [
			{
				"detail": "facility_community",
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
		"reuse:scavenging": [
			{
				"detail": "scavenging",
				"scope": "faction",
				"source_event_ids": [
					"h_reuse"
				],
				"source_path": "effect.reoccupy.purpose"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
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
				"source_path": "present.settlements:home_f_03"
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
	"faction_id": "f_03",
	"fear_tags": [
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "outsider",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_00"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:facility_community",
			"role:shelter",
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
				"life:facility_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:facility_community": [
					{
						"detail": "facility_community",
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
							"t_step_00"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"role:shelter": [
					{
						"detail": "shelter",
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
			"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
			"id": "practical_heresy",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"reuse:scavenging"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"reuse:scavenging": [
					{
						"detail": "scavenging",
						"scope": "faction",
						"source_event_ids": [
							"h_reuse"
						],
						"source_path": "effect.reoccupy.purpose"
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
					"life:facility_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:facility_community": [
						{
							"detail": "facility_community",
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
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
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
					"target": 2,
					"weight": 8
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
					],
					"role:shelter": [
						{
							"detail": "shelter",
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
				"exclusion"
			],
			"value_tags": [
				"outsider",
				"hospitality"
			]
		}
	],
	"taboo_tags": [
		"harmful_rigidity"
	],
	"tension_tags": [
		"exclusion",
		"neglect"
	],
	"value_tags": [
		"adaptability",
		"craftsmanship",
		"duty",
		"hospitality",
		"outsider",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"moderate","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":[],"matched_required":["reuse:scavenging"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"reuse:scavenging":[{"detail":"scavenging","scope":"faction","source_event_ids":["h_reuse"],"source_path":"effect.reoccupy.purpose"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Veywen Reach (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"reinforce_order",
		"resist_domination"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate",
		"order_above_survival": "moderate"
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
					"target": 2,
					"weight": 5
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
		},
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
				"matched_preferences": [
					"history:hostility"
				],
				"matched_required": [
					"history:regional_collapse",
					"life:provincial_council"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
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
					"life:provincial_council": [
						{
							"detail": "provincial_council",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
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
		"no_more_masters",
		"order_above_survival"
	],
	"eligible_traits": [
		"closed_roads",
		"mutual_obligation",
		"newcomer_charter",
		"route_commonwealth"
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
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_2"
				],
				"source_path": "identity.social_anchor"
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
		"event:population_join": [
			{
				"detail": "population_join",
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
				"detail": "17",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
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
		"history:population_join": [
			{
				"detail": "Recorded population arrival/join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
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
				"detail": "extreme_seasons",
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
					"t_step_01",
					"h_relation_2"
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
					"h_relation_2"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
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
					"h_relation_2"
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
		"social_disintegration",
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "outsider",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_01",
			"h_relation_2"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:provincial_council",
			"role:isolation",
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
						"detail": "17",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_2"
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
				"formation:newcomer_formation",
				"history:population_join"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
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
				"history:population_join": [
					{
						"detail": "Recorded population arrival/join",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "effect.population.mode"
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
				"target": 2,
				"weight": 5
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
				]
			}
		},
		{
			"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
			"id": "order_above_survival",
			"kind": "doctrine",
			"matched_preferences": [
				"history:hostility"
			],
			"matched_required": [
				"history:regional_collapse",
				"life:provincial_council"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
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
				"life:provincial_council": [
					{
						"detail": "provincial_council",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "entity.way_of_life"
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
							"detail": "17",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
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
					"formation:newcomer_formation",
					"history:population_join"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
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
					"history:population_join": [
						{
							"detail": "Recorded population arrival/join",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
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
	"taboo_tags": [
		"absolute_authority",
		"external_domination",
		"insubordination"
	],
	"tension_tags": [
		"exclusion",
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"discipline",
		"duty",
		"fair_exchange",
		"hospitality",
		"household_autonomy",
		"outsider",
		"reciprocity",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:newcomer_formation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:newcomer_formation":[{"detail":"newcomer_formation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"},{"desire":"reinforce_order","explanation":"Consider reinforce order as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"reinforce_order","intensity":"moderate","provenance":{"explanation":"A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.","id":"order_above_survival","kind":"doctrine","matched_preferences":["history:hostility"],"matched_required":["history:regional_collapse","life:provincial_council"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"history:hostility":[{"detail":"-29","scope":"faction","source_event_ids":["h_last"],"source_path":"effect.relationship.delta"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:provincial_council":[{"detail":"provincial_council","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"order_above_survival","status":"candidate"}]`

## Semon Well (f_05)

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
								"t_step_02",
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
		"no_more_masters"
	],
	"eligible_traits": [
		"closed_roads",
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
					"t_step_02",
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
					"t_step_02",
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
					"t_step_02"
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
		"history:cooperation": [
			{
				"detail": "17",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_2"
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
		"identity:outsider": [
			{
				"detail": "outsider",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
					"t_step_02",
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
					"t_step_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
				"source_path": "present.settlements:home_f_05"
			}
		]
	},
	"faction_id": "f_05",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "outsider",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:migrant_confederation",
			"role:isolation",
			"political_continuity:false"
		]
	},
	"provenance": [
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
				"target": 2,
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
							"t_step_02",
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
				"matched_preferences": [],
				"matched_required": [
					"formation:newcomer_formation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
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
		"unsupported_certainty"
	],
	"tension_tags": [
		"exclusion",
		"route_monopoly"
	],
	"value_tags": [
		"fair_exchange",
		"hospitality",
		"outsider",
		"route_service",
		"scholarship",
		"skepticism"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":[],"matched_required":["interpretation:skeptical"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"interpretation:skeptical":[{"detail":"skeptical","scope":"derived_identity","source_event_ids":["t_step_02","h_collapse"],"source_path":"identity.interpretation_mode"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Lumon Reach (f_06)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"machine_independence",
		"restrain_machine_autonomy"
	],
	"doctrine_intensities": {
		"pure_flesh": "fanatic",
		"silent_circuit": "fanatic"
	},
	"doctrines": [
		{
			"category": "machine",
			"desires": [
				"machine_independence"
			],
			"display_name": "Pure Flesh",
			"fears": [
				"machine_domination"
			],
			"goal_candidates": [
				{
					"desire": "machine_independence",
					"explanation": "Consider machine independence as a future social priority; no target, capability or completed action is asserted.",
					"id": "machine_independence"
				}
			],
			"id": "pure_flesh",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"scar:machine_war",
					"history:machine_harm_memory",
					"institution:human_oversight"
				]
			},
			"provenance": {
				"explanation": "Human life should distance itself from machine integration or autonomous dependence. Requires a real authored anti-machine scar; Core barriers, isolation and sky debris do not qualify.",
				"id": "pure_flesh",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"scar:machine_war"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 10
				},
				"support": {
					"history:machine_harm_memory": [
						{
							"content_ids": [],
							"detail": "Objective practice:machine_harm_memory",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_machine_safety_reform"
							],
							"source_path": "present.social_history:practice:machine_harm_memory"
						}
					],
					"institution:human_oversight": [
						{
							"content_ids": [],
							"detail": "Objective institution:human_oversight",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_machine_safety_reform"
							],
							"source_path": "present.social_facts:institution:human_oversight"
						}
					],
					"scar:machine_war": [
						{
							"content_ids": [],
							"detail": "Objective scar:machine_war",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_autonomous_machine_conflict"
							],
							"source_path": "present.social_history:scar:machine_war"
						}
					]
				}
			},
			"taboos": [
				"machine_integration",
				"augmented",
				"autonomous_machine"
			],
			"values": [
				"human_autonomy"
			]
		},
		{
			"category": "machine",
			"desires": [
				"restrain_machine_autonomy"
			],
			"display_name": "Silent Circuit",
			"fears": [
				"unaccountable_automation"
			],
			"goal_candidates": [
				{
					"desire": "restrain_machine_autonomy",
					"explanation": "Consider restrain machine autonomy as a future social priority; no target, capability or completed action is asserted.",
					"id": "restrain_machine_autonomy"
				}
			],
			"id": "silent_circuit",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"history:autonomous_machine_harm",
					"institution:human_oversight",
					"history:machine_harm_memory"
				]
			},
			"provenance": {
				"explanation": "Useful machines must not exercise autonomous judgment. Real autonomous-machine harm is required, not generic skepticism.",
				"id": "silent_circuit",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:autonomous_machine_harm"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 10
				},
				"support": {
					"history:autonomous_machine_harm": [
						{
							"content_ids": [],
							"detail": "Objective scar:machine_war",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_autonomous_machine_conflict"
							],
							"source_path": "present.social_history:scar:machine_war"
						}
					],
					"history:machine_harm_memory": [
						{
							"content_ids": [],
							"detail": "Objective practice:machine_harm_memory",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_machine_safety_reform"
							],
							"source_path": "present.social_history:practice:machine_harm_memory"
						}
					],
					"institution:human_oversight": [
						{
							"content_ids": [],
							"detail": "Objective institution:human_oversight",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_machine_safety_reform"
							],
							"source_path": "present.social_facts:institution:human_oversight"
						}
					]
				}
			},
			"taboos": [
				"autonomous_machine"
			],
			"values": [
				"human_judgment",
				"technical_competence"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"living_archive",
		"measured_doubt",
		"pure_flesh",
		"silent_circuit"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"local_mandate",
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
		"event:autonomous_machine_conflict": [
			{
				"detail": "autonomous_machine_conflict",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
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
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"history:cooperation": [
			{
				"detail": "14",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "23",
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
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_history:practice:machine_harm_memory"
			}
		],
		"history:recent_machine_hostility": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
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
					"t_step_04",
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
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_1"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:machine_war": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_autonomous_machine_conflict"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"machine_domination",
		"unaccountable_automation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "skeptical",
		"memory_frame": "opportunity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_04",
			"h_relation_1"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:village_union",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
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
				"history:cooperation",
				"life:village_union"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "14",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "23",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					}
				],
				"life:village_union": [
					{
						"detail": "village_union",
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
			"explanation": "Human life should distance itself from machine integration or autonomous dependence. Requires a real authored anti-machine scar; Core barriers, isolation and sky debris do not qualify.",
			"id": "pure_flesh",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"scar:machine_war"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 10
			},
			"support": {
				"history:machine_harm_memory": [
					{
						"content_ids": [],
						"detail": "Objective practice:machine_harm_memory",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_machine_safety_reform"
						],
						"source_path": "present.social_history:practice:machine_harm_memory"
					}
				],
				"institution:human_oversight": [
					{
						"content_ids": [],
						"detail": "Objective institution:human_oversight",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_machine_safety_reform"
						],
						"source_path": "present.social_facts:institution:human_oversight"
					}
				],
				"scar:machine_war": [
					{
						"content_ids": [],
						"detail": "Objective scar:machine_war",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_autonomous_machine_conflict"
						],
						"source_path": "present.social_history:scar:machine_war"
					}
				]
			}
		},
		{
			"explanation": "Useful machines must not exercise autonomous judgment. Real autonomous-machine harm is required, not generic skepticism.",
			"id": "silent_circuit",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:autonomous_machine_harm"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 10
			},
			"support": {
				"history:autonomous_machine_harm": [
					{
						"content_ids": [],
						"detail": "Objective scar:machine_war",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_autonomous_machine_conflict"
						],
						"source_path": "present.social_history:scar:machine_war"
					}
				],
				"history:machine_harm_memory": [
					{
						"content_ids": [],
						"detail": "Objective practice:machine_harm_memory",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_machine_safety_reform"
						],
						"source_path": "present.social_history:practice:machine_harm_memory"
					}
				],
				"institution:human_oversight": [
					{
						"content_ids": [],
						"detail": "Objective institution:human_oversight",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_machine_safety_reform"
						],
						"source_path": "present.social_facts:institution:human_oversight"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
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
					"history:cooperation",
					"life:village_union"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "14",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "23",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						}
					],
					"life:village_union": [
						{
							"detail": "village_union",
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
		"augmented",
		"autonomous_machine",
		"machine_integration"
	],
	"tension_tags": [
		"free_riding",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"duty",
		"human_autonomy",
		"human_judgment",
		"reciprocity",
		"record_preservation",
		"scholarship",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"machine_independence","explanation":"Consider machine independence as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_06"],"id":"machine_independence","intensity":"fanatic","provenance":{"explanation":"Human life should distance itself from machine integration or autonomous dependence. Requires a real authored anti-machine scar; Core barriers, isolation and sky debris do not qualify.","id":"pure_flesh","kind":"doctrine","matched_preferences":[],"matched_required":["scar:machine_war"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"history:machine_harm_memory":[{"content_ids":[],"detail":"Objective practice:machine_harm_memory","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_01_machine_safety_reform"],"source_path":"present.social_history:practice:machine_harm_memory"}],"institution:human_oversight":[{"content_ids":[],"detail":"Objective institution:human_oversight","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_01_machine_safety_reform"],"source_path":"present.social_facts:institution:human_oversight"}],"scar:machine_war":[{"content_ids":[],"detail":"Objective scar:machine_war","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_00_autonomous_machine_conflict"],"source_path":"present.social_history:scar:machine_war"}]}},"source_doctrine_id":"pure_flesh","status":"candidate"},{"desire":"restrain_machine_autonomy","explanation":"Consider restrain machine autonomy as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_06"],"id":"restrain_machine_autonomy","intensity":"fanatic","provenance":{"explanation":"Useful machines must not exercise autonomous judgment. Real autonomous-machine harm is required, not generic skepticism.","id":"silent_circuit","kind":"doctrine","matched_preferences":[],"matched_required":["history:autonomous_machine_harm"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"history:autonomous_machine_harm":[{"content_ids":[],"detail":"Objective scar:machine_war","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_00_autonomous_machine_conflict"],"source_path":"present.social_history:scar:machine_war"}],"history:machine_harm_memory":[{"content_ids":[],"detail":"Objective practice:machine_harm_memory","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_01_machine_safety_reform"],"source_path":"present.social_history:practice:machine_harm_memory"}],"institution:human_oversight":[{"content_ids":[],"detail":"Objective institution:human_oversight","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_01_machine_safety_reform"],"source_path":"present.social_facts:institution:human_oversight"}]}},"source_doctrine_id":"silent_circuit","status":"candidate"}]`
