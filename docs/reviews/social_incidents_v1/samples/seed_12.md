# Seed 12 — incident_anti_entrenchment_reform

```text
History architecture v2 | generation algorithm v3 | seed 12 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"adaptation_tension","response_motif":"regional_autonomy","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"enclave_continuity"}
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
-47 s_00_00_anti_entrenchment_reform [SOCIAL_INCIDENT] Residents reformed entrenched local offices into a recorded rotating stewardship institution without founding or retiring a polity.
  scope=local | objective cause_domain=human
  actors: Fudor Marsh (f_12) | causes: t_step_06
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_12"}]
-46 s_00_01_office_rotation_review [SOCIAL_INCIDENT] A later assembly carried out and reviewed the previously recorded rotation of officeholders.
  scope=local | objective cause_domain=human
  actors: Fudor Marsh (f_12) | causes: t_step_06, s_00_00_anti_entrenchment_reform
  effects: [{"content_id":"","entity_id":"f_12","kind":"social_record","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_12"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_12","source_event_ids":["s_00_00_anti_entrenchment_reform"],"year":-47}
Social record: {"content_id":"","entity_id":"f_12","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_12","source_event_ids":["s_00_01_office_rotation_review"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_12","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_12","source_event_ids":["s_00_00_anti_entrenchment_reform"],"year":-47}
Region region: Namar Marsh
Faction f_00: Nawen Marsh | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=maintenance
  identity=new_foundation/institution/rebuild | interpretation=pragmatic/opportunity | sources=t_root_f_00
  society patterns: Maintenance Covenant, Route Commonwealth
  Sacred Craft — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Sedor Marsh | kinship_clan | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=border_watch
  identity=heir/kin/preserve | interpretation=technical/debt | sources=t_root_f_03, h_relation_2
  society patterns: Boundary Watch, Household Sovereignty
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Mirin Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=new_foundation/institution/preserve | interpretation=skeptical/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Closed Roads
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Order Above Survival — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=life:military_remnant, history:hostility
Faction f_09: Fulen Marsh | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=heir/kin/preserve | interpretation=skeptical/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Hazard Memory, Household Sovereignty, Shelter Compact
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Fulith Well | modified_human_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/institution/preserve | interpretation=pragmatic/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Kerin Reach | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=maintenance
  identity=new_foundation/craft/preserve | interpretation=pragmatic/debt | sources=t_step_05, h_relation_0
  society patterns: Mutual Obligation, Newcomer Charter
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_12: Fudor Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=reformer/exchange/rebuild | interpretation=ritual/rupture | sources=t_step_06, h_collapse
  society patterns: Mutual Obligation, Ritual Stewardship
Faction f_13: Fura Ruin | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=breakaway/refuge/preserve | interpretation=pragmatic/opportunity | sources=t_step_06, h_discovery
  society patterns: Archive Legitimacy, Mutual Obligation
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
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
  [t_root_f_00; confidence 0.59; legitimacy] Our recorded formation was enclave_continuity. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.88; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Sedor Marsh (f_03; knowledge=observer_scholarly_term):
  [t_root_f_03; confidence 0.52; legitimacy] Our recorded formation was direct_successor. We treat our offices as a continuation of an older political lineage. Household ties are what bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.38; interpretation] Regional records remembered communities divided over their different adaptations. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.48; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-13}
  [h_relation_2; confidence 0.43; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_10","delta":13}
  [h_discovery; confidence 0.40; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.53; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-13}
  [; confidence 0.50; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_10","score":13}
Mirin Reach (f_08; knowledge=):
  [t_step_04; confidence 0.82; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.90; interpretation] Regional records remembered communities divided over their different adaptations. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.83; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-13}
  [h_discovery; confidence 0.71; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.74; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-13}
Fulen Marsh (f_09; knowledge=):
  [t_step_04; confidence 0.44; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Household ties are what bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.78; interpretation] Regional records remembered communities divided over their different adaptations. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.72; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
Fulith Well (f_10; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.68; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.84; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":14}
  [h_relation_2; confidence 0.63; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_03","b":"f_10","delta":13}
  [h_discovery; confidence 0.80; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.75; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_10","score":13}
  [; confidence 0.86; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":14}
Kerin Reach (f_11; knowledge=):
  [t_step_05; confidence 0.57; legitimacy] Our recorded formation was newcomer_formation. We define ourselves as a community formed after the old order failed. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.73; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.55; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":17}
  [h_discovery; confidence 0.84; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.60; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":-26}
  [; confidence 0.38; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_11","b":"f_12","score":-9}
Fudor Marsh (f_12; knowledge=):
  [t_step_06; confidence 0.59; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Routes, exchange and reciprocal obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.51; interpretation] Regional records remembered communities divided over their different adaptations. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.78; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":17}
  [h_discovery; confidence 0.71; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.44; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_11","b":"f_12","delta":-26}
  [; confidence 0.83; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_11","b":"f_12","score":-9}
Fura Ruin (f_13; knowledge=):
  [t_step_06; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.50; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_10","b":"f_13","delta":14}
  [h_discovery; confidence 0.46; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.71; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_10","b":"f_13","score":14}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":26,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","s_00_00_anti_entrenchment_reform","s_00_01_office_rotation_review","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response","h_body"],"causal_ratio":1.0,"direct_count":24,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_relation_2","h_reuse","s_00_00_anti_entrenchment_reform","s_00_01_office_rotation_review","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_root_f_04","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":26}
```

## Nawen Marsh (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"honor_skilled_making"
	],
	"doctrine_intensities": {
		"sacred_craft": "moderate"
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
					"target": 1,
					"weight": 5
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
		"continuity",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"maintenance_covenant",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
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
				"detail": "adaptation_tension",
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
					"t_root_f_00"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
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
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00"
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
		"craft_loss"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_root_f_00"
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
			"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
			"id": "sacred_craft",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
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
		"craft_desecration"
	],
	"tension_tags": [
		"neglect",
		"route_monopoly"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"fair_exchange",
		"item_provenance",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"honor_skilled_making","explanation":"Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"honor_skilled_making","intensity":"moderate","provenance":{"explanation":"Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.","id":"sacred_craft","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"sacred_craft","status":"candidate"}]`

## Sedor Marsh (f_03)

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
								"h_relation_2"
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
		"continuity",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"household_sovereignty",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
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
					"t_root_f_03",
					"h_relation_2"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:local_successor": [
			{
				"detail": "local_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:maintenance_accord": [
			{
				"detail": "maintenance_accord",
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
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:direct_successor": [
			{
				"detail": "direct_successor",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
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
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
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
				"detail": "adaptation_tension",
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
					"t_root_f_03",
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
					"t_root_f_03",
					"h_relation_2"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_relation_2"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "present.settlements:home_f_03"
			}
		]
	},
	"faction_id": "f_03",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_root_f_03",
			"h_relation_2"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:kinship_clan",
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
							"t_root_f_03"
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:kinship_clan": [
					{
						"detail": "kinship_clan",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_03"
						],
						"source_path": "entity.way_of_life"
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
							"h_relation_2"
						],
						"source_path": "event.narrative_key"
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
								"t_root_f_03"
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
								"t_root_f_03"
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
		"neglect"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"household_autonomy",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Mirin Reach (f_08)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"reinforce_order",
		"resist_domination"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate",
		"order_above_survival": "hardline"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"life:military_remnant",
					"history:hostility"
				]
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
					"life:military_remnant"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 7
				},
				"support": {
					"history:hostility": [
						{
							"detail": "-13",
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
					"life:military_remnant": [
						{
							"detail": "military_remnant",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
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
		"continuity",
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
		"history:hostility": [
			{
				"detail": "-13",
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
				"detail": "adaptation_tension",
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
					"t_step_04"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
				"source_path": "present.settlements:home_f_08"
			}
		]
	},
	"faction_id": "f_08",
	"fear_tags": [
		"social_disintegration",
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_04"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
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
							"t_step_04"
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
		{
			"explanation": "A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.",
			"id": "order_above_survival",
			"kind": "doctrine",
			"matched_preferences": [
				"history:hostility"
			],
			"matched_required": [
				"history:regional_collapse",
				"life:military_remnant"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 7
			},
			"support": {
				"history:hostility": [
					{
						"detail": "-13",
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
				"life:military_remnant": [
					{
						"detail": "military_remnant",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
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
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination",
		"insubordination"
	],
	"tension_tags": [
		"anti_authority",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"discipline",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"},{"desire":"reinforce_order","explanation":"Consider reinforce order as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"reinforce_order","intensity":"hardline","provenance":{"explanation":"A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.","id":"order_above_survival","kind":"doctrine","matched_preferences":["history:hostility"],"matched_required":["history:regional_collapse","life:military_remnant"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"history:hostility":[{"detail":"-13","scope":"faction","source_event_ids":["t_step_04"],"source_path":"effect.relationship.delta"}],"history:regional_collapse":[{"detail":"Recorded regional institutional collapse","scope":"regional","source_event_ids":["h_collapse"],"source_path":"event.narrative_key"}],"life:military_remnant":[{"detail":"military_remnant","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"order_above_survival","status":"candidate"}]`

## Fulen Marsh (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions",
		"renew_institutions"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"radical_impermanence": "moderate"
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
					"identity:heir",
					"memory:continuity"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 9
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"household_sovereignty",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
				"detail": "adaptation_tension",
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
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:kinship_clan": [
			{
				"detail": "kinship_clan",
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
				"source_path": "present.settlements:home_f_09"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"institutional_stagnation",
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "heir",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_04"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:kinship_clan",
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
						"detail": "adaptation_tension",
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
			"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
			"id": "household_sovereignty",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:kinship_clan"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:kinship_clan": [
					{
						"detail": "kinship_clan",
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
				"identity:heir",
				"memory:continuity"
			],
			"matched_required": [
				"structure:inherited_offices"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 9
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
							"detail": "adaptation_tension",
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:kinship_clan": [
						{
							"detail": "kinship_clan",
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
				"external_domination"
			],
			"value_tags": [
				"household_autonomy"
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
		"gratuitous_institutional_destruction",
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"anti_authority",
		"cruelty",
		"external_domination",
		"recklessness"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"duty",
		"hazard_awareness",
		"hospitality",
		"household_autonomy",
		"institutional_continuity",
		"institutional_reform",
		"record_preservation"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":["identity:heir","memory:continuity"],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":9},"support":{"identity:heir":[{"detail":"heir","scope":"derived_identity","source_event_ids":["t_step_04"],"source_path":"identity.continuity_stance"}],"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_04"],"source_path":"identity.memory_frame"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"},{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`

## Fulith Well (f_10)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"infrastructure_repair",
		"resist_domination",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"no_more_masters": "moderate",
		"world_must_be_mended": "moderate"
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
					"target": 2,
					"weight": 7
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
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04"
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
				"matched_preferences": [],
				"matched_required": [
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
								"h_relation_1"
							],
							"source_path": "event.narrative_key"
						},
						{
							"detail": "maintenance_accord",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_2"
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
		"continuity",
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"mutual_obligation",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
			},
			{
				"detail": "maintenance_accord",
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
				"detail": "14",
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
				"detail": "adaptation_tension",
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
					"t_step_04"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"infrastructure_loss",
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_04"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:modified_human_community",
			"role:shelter",
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
				"target": 2,
				"weight": 6
			},
			"support": {
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
				"target": 2,
				"weight": 7
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
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "identity.continuity_stance"
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
				"target": 2,
				"weight": 5
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
					},
					{
						"detail": "maintenance_accord",
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
		"doctrines": 2,
		"society_traits": 2
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
					"target": 2,
					"weight": 6
				},
				"support": {
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
		"neglect"
	],
	"tension_tags": [
		"anti_authority",
		"free_riding"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"reciprocity",
		"shared_responsibility",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_04"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"},{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"},{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"},{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_1"],"source_path":"event.narrative_key"},{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_relation_2"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Kerin Reach (f_11)

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
					"role:maintenance"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
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
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"maintenance_covenant",
		"mutual_obligation",
		"newcomer_charter",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_0"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:craft": [
			{
				"detail": "craft",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_0"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
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
					"t_step_05"
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
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "17",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
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
				"detail": "adaptation_tension",
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
					"h_relation_0"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_relation_0"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:resource_or_trade_commune": [
			{
				"detail": "resource_or_trade_commune",
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
					"h_relation_0"
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
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_05",
			"h_relation_0"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:resource_or_trade_commune",
			"role:maintenance",
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
						"detail": "17",
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
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
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
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
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
							"detail": "17",
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"formation:newcomer_formation": [
						{
							"detail": "newcomer_formation",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
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
		"neglect"
	],
	"tension_tags": [
		"exclusion",
		"free_riding"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"hospitality",
		"outsider",
		"reciprocity",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Fudor Marsh (f_12)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"living_archive",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"local_mandate",
		"mutual_obligation",
		"ritual_stewardship",
		"rotating_stewardship",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:anti_entrenchment_reform": [
			{
				"detail": "anti_entrenchment_reform",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_anti_entrenchment_reform"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:office_rotation_review": [
			{
				"detail": "office_rotation_review",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_office_rotation_review"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
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
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "17",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
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
				"detail": "adaptation_tension",
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
					"t_step_06",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:rotating_office": [
			{
				"content_ids": [],
				"detail": "Objective institution:rotating_office",
				"reference_ids": [
					"f_12"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_anti_entrenchment_reform"
				],
				"source_path": "present.social_facts:institution:rotating_office"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_collapse"
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02",
					"t_step_00",
					"t_step_01",
					"t_step_03",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_02"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_04",
					"t_step_03",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_01",
					"t_step_03",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_05"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01",
					"t_step_03",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_03",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_07"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_12"
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
	"faction_id": "f_12",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "rupture",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_06",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:religious_community",
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
						"detail": "17",
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
							"t_step_06"
						],
						"source_path": "entity.way_of_life"
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
							"detail": "17",
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
								"t_step_06"
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
	"taboo_tags": [],
	"tension_tags": [
		"free_riding",
		"ritual_desecration"
	],
	"value_tags": [
		"compassion",
		"duty",
		"memory_preservation",
		"reciprocity",
		"ritualism"
	]
}
```

Candidates: `[]`

## Fura Ruin (f_13)

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
				"matched_preferences": [],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
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
		}
	],
	"eligible_doctrines": [
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_discovery"
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
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "14",
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
				"detail": "adaptation_tension",
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
					"t_step_06",
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
					"t_step_06",
					"h_discovery"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:modified_human_community": [
			{
				"detail": "modified_human_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:opportunity": [
			{
				"detail": "opportunity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_13"
			}
		]
	},
	"faction_id": "f_13",
	"fear_tags": [
		"memory_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "opportunity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_06",
			"h_discovery"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:modified_human_community",
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
							"t_step_06"
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
						"detail": "14",
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
			"explanation": "Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.",
			"id": "living_archive",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"role:archives"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
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
								"t_step_06"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "14",
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
		"memory_erasure"
	],
	"tension_tags": [
		"free_riding",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"duty",
		"oral_history",
		"performance",
		"reciprocity",
		"record_preservation",
		"ritualism",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"performance_preservation","explanation":"A future preservation priority; no particular tradition is invented.","historical_reference_ids":[],"id":"preserve_performance_tradition","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_06"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"},{"desire":"memory_source_recovery","explanation":"Seek memory sources, without asserting a lost object exists.","historical_reference_ids":[],"id":"recover_lost_memory_source","intensity":"moderate","provenance":{"explanation":"Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.","id":"living_archive","kind":"doctrine","matched_preferences":[],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_06"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"living_archive","status":"candidate"}]`
