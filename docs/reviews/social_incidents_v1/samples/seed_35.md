# Seed 35 — doctrine_designed_kinship

```text
History architecture v2 | generation algorithm v3 | seed 35 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"regional_autonomy","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"enclave_continuity"}
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
  actors: Dalen Ruin (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-496 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-366 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Dalen Ruin (precursor), Hara (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-359 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Dalen Ruin (precursor), Hara (regional_body), Lukelith (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-350 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Dalen Ruin (precursor), Fuvak (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-341 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Dalen Ruin (precursor), Hara (regional_body), Lukelith (pressure_group), Fuvak (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-328 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-327 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-326 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-325 t_root_f_04 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"}]
-317 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Kesil Well (f_04) | causes: t_root_f_04
  effects: [{"entity_id":"f_04","kind":"retire"},{"disposition":"untracked","entity_id":"f_04","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_04","kind":"retire"},{"hazard":"none","id":"abandoned_f_04","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-297 t_step_01 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Zodor Reach (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_05"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_05","f_06"],"untracked_template_ids":[]}]
-276 t_step_02 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Zora Gate (f_06) | causes: t_step_01
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_06","b":"f_07","delta":14,"kind":"relationship"}]
-255 t_step_03 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Zonar Marsh (f_01), Milen Gate (f_05) | causes: t_root_f_01, t_step_01
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_01","kind":"retire"},{"disposition":"absorbed","entity_id":"f_01","kind":"population_fate","successor_ids":["f_08"],"untracked_template_ids":[]},{"entity_id":"home_f_05","kind":"site_owner","owner_id":"f_08"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-235 t_step_04 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Zora Gate (f_06) | causes: t_step_01
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_06","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_06","cohort_00"]}]
-47 s_00_00_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Zonar Reach (f_00) | causes: t_root_f_00
  effects: [{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_00"},{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_00"}]
-46 s_00_01_designed_descent_program [SOCIAL_INCIDENT] With documented biotechnology equipment, residents established intentional hereditary design for descendants. This is distinct from ordinary reproduction or copying a stored genome.
  scope=local | objective cause_domain=human
  actors: Zonar Reach (f_00) | causes: t_root_f_00, s_00_00_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"establish","record_id":"heredity_design","record_type":"institution","reference_id":"f_00"},{"content_id":"","entity_id":"f_00","kind":"social_record","operation":"observe","record_id":"intentional_heredity_design","record_type":"practice","reference_id":"f_00"}]
-28 h_relation_0 [WAR] A minor border dispute damaged a watch post and worsened relations.
  scope=regional | objective cause_domain=human
  actors: Zora Gate (f_06), Kewen Reach (f_08) | causes: t_step_01, t_step_03
  effects: [{"a":"f_06","b":"f_08","delta":-27,"kind":"relationship"},{"hazard":"structural","id":"watchpost_0","kind":"ruin","location_id":"region","ruin_kind":"watchtower","site_type":"military"}]
-26 h_relation_1 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zora Gate (f_06), Zora Well (f_07) | causes: t_step_01, t_step_02
  effects: [{"a":"f_06","b":"f_07","delta":11,"kind":"relationship"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Zora Gate (f_06), Kewen Reach (f_08) | causes: h_relation_0
  effects: [{"a":"f_06","b":"f_08","delta":36,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zonar Reach | -496..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Zonar Marsh | -328..-255 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Tonar Gate | -327..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Zodor Reach | -326..-297 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Kesil Well | -325..-317 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Milen Gate | -297..-255 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Zora Gate | -297..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Zora Well | -276..present | active | parents=f_06 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Kewen Reach | -255..present | active | parents=f_01, f_05 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Dalen Ruin | -531..-341 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-531 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-496 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-328 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_01
-327 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_02
-326 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_03
-325 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_04
-297 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-297 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-276 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_06 | events=t_step_02
-255 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_03
-235 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_04
-235 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_06, cohort_00 | events=t_step_04
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-341 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-317 f_04: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-297 f_03: absorbed | absorbed_into=f_05, f_06 | untracked_strata= | events=t_step_01
-255 f_01: absorbed | absorbed_into=f_08 | untracked_strata= | events=t_step_03
-255 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_00","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_00","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"heredity_design","record_type":"institution","reference_id":"f_00","source_event_ids":["s_00_01_designed_descent_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_00","operation":"observe","record_id":"intentional_heredity_design","record_type":"practice","reference_id":"f_00","source_event_ids":["s_00_01_designed_descent_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_00","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_00","operation":"establish","record_id":"heredity_design","record_type":"institution","reference_id":"f_00","source_event_ids":["s_00_01_designed_descent_program"],"year":-46}
Region region: Zomon Ruin
Faction f_00: Zonar Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=archives
  identity=reformer/ritual/preserve | interpretation=technical/continuity | sources=t_root_f_00
  society patterns: Archive Legitimacy
  Designed Kinship — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=capability:biotechnology, institution:heredity_design
Faction f_02: Tonar Gate | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
  identity=reformer/exchange/preserve | interpretation=skeptical/continuity | sources=t_root_f_02
  society patterns: Archive Legitimacy, Borrowed Offices, Mutual Obligation
Faction f_06: Zora Gate | trading_house | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=breakaway/locality/adapt | interpretation=pragmatic/debt | sources=t_step_01, h_last
  society patterns: Mutual Obligation, Newcomer Charter
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Zora Well | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=border_watch
  identity=breakaway/kin/rebuild | interpretation=technical/warning | sources=t_step_02, h_pressure
  society patterns: Boundary Watch, Hazard Memory, Maintenance Covenant, Mutual Obligation
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Kewen Reach | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=isolation
  identity=reformer/craft/rebuild | interpretation=technical/opportunity | sources=t_step_03, h_last
  society patterns: Mutual Obligation, Rebuilt From Fragments
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Sacred Craft — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_06: parents=f_03; ancestors=f_03; sources=t_step_01, t_root_f_03
Ancestry f_07: parents=f_06; ancestors=f_03, f_06; sources=t_step_02, t_root_f_03, t_step_01
Ancestry f_08: parents=f_01, f_05; ancestors=f_01, f_03, f_05; sources=t_step_03, t_root_f_01, t_root_f_03, t_step_01
Relationship f_06 <-> f_07: 25; sources=t_step_02, h_relation_1
Relationship f_06 <-> f_08: 9; sources=h_relation_0, h_last
Settlement home_f_00: Veylen | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Tovak | owner=f_08 | region=region | sources=t_root_f_01, t_step_03
Settlement home_f_02: Fumimar | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Namira | owner=f_08 | region=region | sources=t_root_f_03, t_step_01, t_step_03
Settlement home_f_05: Nara | owner=f_08 | region=region | sources=t_step_01, t_step_03
Settlement home_f_06: Sezosen | owner=f_06 | region=region | sources=t_step_01
Settlement home_f_07: Dazowen | owner=f_07 | region=region | sources=t_step_02
Settlement home_f_08: Tomiwen | owner=f_08 | region=region | sources=t_step_03
Ruin abandoned_f_04: administrative_site | occupant= | region=region | sources=t_step_00
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
=== BELIEFS ===
Zonar Reach (f_00; knowledge=):
  [t_root_f_00; confidence 0.39; legitimacy] Our recorded formation was enclave_continuity. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.57; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
Tonar Gate (f_02; knowledge=):
  [t_root_f_02; confidence 0.89; legitimacy] Our recorded formation was direct_successor. We inherited older obligations, but not the right to reproduce the old order unchanged. Routes, exchange and reciprocal obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.74; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
Zora Gate (f_06; knowledge=):
  [t_step_01; confidence 0.75; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.50; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":14}
  [h_relation_0; confidence 0.58; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-27}
  [h_relation_1; confidence 0.70; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":11}
  [h_last; confidence 0.85; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":36}
  [; confidence 0.87; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":25}
  [; confidence 0.39; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":9}
Zora Well (f_07; knowledge=observer_scholarly_term):
  [t_step_02; confidence 0.90; legitimacy] Our recorded formation was migration_settlement. Our identity begins with the decision to separate from a larger authority. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":14}
  [h_relation_1; confidence 0.70; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":11}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":25}
Kewen Reach (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.39; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.52; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.80; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":-27}
  [h_last; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_06","b":"f_08","delta":36}
  [; confidence 0.60; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_08","score":9}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":21,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_designed_descent_program","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_designed_descent_program","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":21}
```

## Zonar Reach (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"shape_descendants"
	],
	"doctrine_intensities": {
		"designed_kinship": "hardline"
	},
	"doctrines": [
		{
			"category": "biotech",
			"desires": [
				"shape_descendants"
			],
			"display_name": "Designed Kinship",
			"fears": [
				"unaccountable_heredity_design"
			],
			"goal_candidates": [
				{
					"desire": "shape_descendants",
					"explanation": "Consider shape descendants as a future social priority; no target, capability or completed action is asserted.",
					"id": "shape_descendants"
				}
			],
			"id": "designed_kinship",
			"intensity": {
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"capability:biotechnology",
					"institution:heredity_design"
				]
			},
			"provenance": {
				"explanation": "Descendants may be intentionally shaped only where actual biotechnology and authored heredity design practice exist.",
				"id": "designed_kinship",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"capability:biotechnology",
					"institution:heredity_design"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 10
				},
				"support": {
					"capability:biotechnology": [
						{
							"content_ids": [],
							"detail": "Objective capability:biotechnology",
							"reference_ids": [
								"f_00"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_biotech_workshop_recovery"
							],
							"source_path": "present.social_facts:capability:biotechnology"
						}
					],
					"institution:heredity_design": [
						{
							"content_ids": [],
							"detail": "Objective institution:heredity_design",
							"reference_ids": [
								"f_00"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_designed_descent_program"
							],
							"source_path": "present.social_facts:institution:heredity_design"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"biotechnology",
				"designed_heredity"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"designed_kinship",
		"living_archive",
		"measured_doubt",
		"order_above_survival",
		"truth_through_trial"
	],
	"eligible_traits": [
		"archive_legitimacy"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:biotechnology": [
			{
				"content_ids": [],
				"detail": "Objective capability:biotechnology",
				"reference_ids": [
					"f_00"
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
		"event:designed_descent_program": [
			{
				"detail": "designed_descent_program",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_designed_descent_program"
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
		"history:recorded_testing": [
			{
				"content_ids": [],
				"detail": "Objective practice:recorded_testing",
				"reference_ids": [
					"f_00"
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
					"t_root_f_00"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:heredity_design": [
			{
				"content_ids": [],
				"detail": "Objective institution:heredity_design",
				"reference_ids": [
					"f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_designed_descent_program"
				],
				"source_path": "present.social_facts:institution:heredity_design"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:military_remnant": [
			{
				"detail": "military_remnant",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
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
		"unaccountable_heredity_design"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_root_f_00"
		],
		"source_facts": [
			"formation:enclave_continuity",
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
				"target": 2,
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
			"explanation": "Descendants may be intentionally shaped only where actual biotechnology and authored heredity design practice exist.",
			"id": "designed_kinship",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"capability:biotechnology",
				"institution:heredity_design"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 10
			},
			"support": {
				"capability:biotechnology": [
					{
						"content_ids": [],
						"detail": "Objective capability:biotechnology",
						"reference_ids": [
							"f_00"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_biotech_workshop_recovery"
						],
						"source_path": "present.social_facts:capability:biotechnology"
					}
				],
				"institution:heredity_design": [
					{
						"content_ids": [],
						"detail": "Objective institution:heredity_design",
						"reference_ids": [
							"f_00"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_designed_descent_program"
						],
						"source_path": "present.social_facts:institution:heredity_design"
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"record_destruction"
	],
	"value_tags": [
		"biotechnology",
		"designed_heredity",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"shape_descendants","explanation":"Consider shape descendants as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_00"],"id":"shape_descendants","intensity":"hardline","provenance":{"explanation":"Descendants may be intentionally shaped only where actual biotechnology and authored heredity design practice exist.","id":"designed_kinship","kind":"doctrine","matched_preferences":[],"matched_required":["capability:biotechnology","institution:heredity_design"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"capability:biotechnology":[{"content_ids":[],"detail":"Objective capability:biotechnology","reference_ids":["f_00"],"scope":"faction","source_event_ids":["s_00_00_biotech_workshop_recovery"],"source_path":"present.social_facts:capability:biotechnology"}],"institution:heredity_design":[{"content_ids":[],"detail":"Objective institution:heredity_design","reference_ids":["f_00"],"scope":"faction","source_event_ids":["s_00_01_designed_descent_program"],"source_path":"present.social_facts:institution:heredity_design"}]}},"source_doctrine_id":"designed_kinship","status":"candidate"}]`

## Tonar Gate (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"continuity",
		"living_archive",
		"measured_doubt"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02"
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
					"t_root_f_02"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02"
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
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02"
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
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_root_f_02"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:migrant_confederation",
			"role:archives",
			"political_continuity:true"
		]
	},
	"provenance": [
		{
			"explanation": "An archive role or recorded archive accord makes records a practical source of institutional standing.",
			"id": "archive_legitimacy",
			"kind": "society_trait",
			"matched_preferences": [
				"structure:inherited_offices"
			],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 8
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
				]
			}
		},
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
							"t_root_f_02"
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
				"life:migrant_confederation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
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
		}
	],
	"selection_targets": {
		"doctrines": 0,
		"society_traits": 4
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
				"matched_preferences": [
					"structure:inherited_offices"
				],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 8
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
								"t_root_f_02"
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
					"life:migrant_confederation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
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
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"anti_authority",
		"free_riding",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"duty",
		"institutional_continuity",
		"reciprocity",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[]`

## Zora Gate (f_06)

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
								"t_step_01"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_01",
								"h_last"
							],
							"source_path": "identity.continuity_stance"
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
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
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
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
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
		"event:population_join": [
			{
				"detail": "population_join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:population_migration": [
			{
				"detail": "population_migration",
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
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "14",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
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
				"detail": "36",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-27",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:population_join": [
			{
				"detail": "Recorded population arrival/join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
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
					"h_last"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
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
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_last"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:local_exchange": [
			{
				"detail": "local_exchange",
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
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_01",
			"h_last"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:trading_house",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "14",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
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
						"detail": "36",
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
				"history:population_join"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:population_join": [
					{
						"detail": "Recorded population arrival/join",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "effect.population.mode"
					}
				]
			}
		},
		{
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
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
							"t_step_01"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_01",
							"h_last"
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
							"detail": "14",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
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
							"detail": "36",
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
					"history:population_join"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:population_join": [
						{
							"detail": "Recorded population arrival/join",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"exclusion",
		"free_riding"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hospitality",
		"household_autonomy",
		"outsider",
		"reciprocity",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_01","h_last"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Zora Well (f_07)

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
				"matched_preferences": [
					"adaptive:rebuild"
				],
				"matched_required": [
					"life:infrastructure_guild",
					"event:maintenance_accord"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
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
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
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
		"beauty_against_ruin",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"maintenance_covenant",
		"mutual_obligation"
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
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
					"t_step_02"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:migration_settlement": [
			{
				"detail": "migration_settlement",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "14",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
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
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
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
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_02",
			"h_pressure"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:infrastructure_guild",
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
						"detail": "succession_dispute",
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
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [
				"event:maintenance_accord"
			],
			"matched_required": [
				"life:infrastructure_guild"
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
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
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
						"detail": "14",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
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
				"life:infrastructure_guild",
				"event:maintenance_accord"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 7
			},
			"support": {
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
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
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
							"detail": "succession_dispute",
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
					"life:infrastructure_guild"
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
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
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
							"detail": "14",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
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
		"neglect"
	],
	"tension_tags": [
		"free_riding",
		"neglect",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"hazard_awareness",
		"reciprocity",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["life:infrastructure_guild","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_02","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"}],"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["life:infrastructure_guild","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_02","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"}],"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["life:infrastructure_guild","event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_02","h_pressure"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"}],"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Kewen Reach (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"honor_skilled_making",
		"renew_institutions"
	],
	"doctrine_intensities": {
		"radical_impermanence": "moderate",
		"sacred_craft": "moderate"
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
					"target": 2,
					"weight": 7
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
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
								"h_last"
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
		},
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
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
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
				"craft_desecration"
			],
			"values": [
				"craftsmanship",
				"item_provenance",
				"technical_competence"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"practical_heresy",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"boundary_watch",
		"closed_roads",
		"maintenance_covenant",
		"mutual_obligation",
		"rebuilt_from_fragments"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_last"
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
					"h_last"
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
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
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
					"t_step_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "36",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-27",
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
					"h_last"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_03",
					"h_last"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
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
					"h_last"
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
					"t_root_f_01",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03",
					"t_step_01",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "present.settlements:home_f_08"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_01, f_05",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [
		"craft_loss",
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "opportunity",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_03",
			"h_last"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:infrastructure_guild",
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "36",
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
				"target": 2,
				"weight": 8
			},
			"support": {
				"identity:reformer": [
					{
						"detail": "reformer",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_03",
							"h_last"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_01, f_05",
						"scope": "faction",
						"source_event_ids": [
							"t_step_03"
						],
						"source_path": "entity.parent_ids"
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
				"target": 2,
				"weight": 7
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
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
							"h_last"
						],
						"source_path": "identity.continuity_stance"
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
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
			},
			"support": {
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
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
							"detail": "36",
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
					"target": 2,
					"weight": 8
				},
				"support": {
					"identity:reformer": [
						{
							"detail": "reformer",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_03",
								"h_last"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_01, f_05",
							"scope": "faction",
							"source_event_ids": [
								"t_step_03"
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
	"taboo_tags": [
		"craft_desecration",
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"factional_exclusion",
		"free_riding"
	],
	"value_tags": [
		"adaptability",
		"coalition_building",
		"compassion",
		"craftsmanship",
		"duty",
		"institutional_reform",
		"item_provenance",
		"reciprocity",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":["identity:reformer"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.formation_origin"}],"identity:reformer":[{"detail":"reformer","scope":"derived_identity","source_event_ids":["t_step_03","h_last"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"},{"desire":"honor_skilled_making","explanation":"Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"honor_skilled_making","intensity":"moderate","provenance":{"explanation":"Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.","id":"sacred_craft","kind":"doctrine","matched_preferences":[],"matched_required":["life:infrastructure_guild"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_step_03"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"sacred_craft","status":"candidate"}]`
