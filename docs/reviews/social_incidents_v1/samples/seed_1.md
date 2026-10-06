# Seed 1 — incident_forced_evacuation, incident_defense_network_hostility, incident_count_2, intensity_moderate, intensity_fanatic, doctrine_silent_circuit, intensity_moderate, intensity_moderate, intensity_moderate

```text
History architecture v2 | generation algorithm v3 | seed 1 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"consolidation_resplit"}
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
-47 s_00_00_forced_evacuation [SOCIAL_INCIDENT] A hazardous local emergency forced evacuation of the community's recorded home. Survivors resettled and retained the identifiable abandoned site record.
  scope=local | objective cause_domain=human
  actors: Zosen Reach (f_06) | causes: t_step_02, t_root_f_00
  effects: [{"entity_id":"home_f_00","kind":"retire"},{"hazard":"none","id":"s_lost_home_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"entity_id":"s_relocated_0","kind":"activate"},{"entity_id":"s_relocated_0","kind":"settlement","location_id":"region","owner_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_00"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_00"}]
-46 s_00_01_homeland_memory_charter [SOCIAL_INCIDENT] Residents established a register preserving the association with their previously recorded lost homeland site; it executes no reclamation or territorial claim.
  scope=local | objective cause_domain=human
  actors: Zosen Reach (f_06) | causes: t_step_02, s_00_00_forced_evacuation
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_00"}]
-45 s_01_02_defense_network_hostility [SOCIAL_INCIDENT] A local automated defense network attacked community workplaces, closing access and leaving damaged infrastructure. Its operators and command provenance remain unclassified.
  scope=local | objective cause_domain=human
  actors: Bowen Marsh (f_02) | causes: t_root_f_02
  effects: [{"hazard":"restricted","id":"s_damage_1","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site","site_type":"legacy"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_02"}]
-44 s_01_03_machine_safety_reform [SOCIAL_INCIDENT] After the recorded machine harm, residents installed human oversight and kept a public incident record; it did not establish cooperation with those machines.
  scope=local | objective cause_domain=human
  actors: Bowen Marsh (f_02) | causes: t_root_f_02, s_01_02_defense_network_hostility
  effects: [{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02"},{"content_id":"","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_02"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"lost_homeland","record_type":"scar","reference_id":"home_f_00","source_event_ids":["s_00_00_forced_evacuation"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"homeland_loss","record_type":"site_history","reference_id":"home_f_00","source_event_ids":["s_00_00_forced_evacuation"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_00","source_event_ids":["s_00_01_homeland_memory_charter"],"year":-46}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_war","record_type":"scar","reference_id":"f_02","source_event_ids":["s_01_02_defense_network_hostility"],"year":-45}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_hostility","record_type":"practice","reference_id":"f_02","source_event_ids":["s_01_02_defense_network_hostility"],"year":-45}
Social record: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_03_machine_safety_reform"],"year":-44}
Social record: {"content_id":"","entity_id":"f_02","operation":"observe","record_id":"machine_harm_memory","record_type":"practice","reference_id":"f_02","source_event_ids":["s_01_03_machine_safety_reform"],"year":-44}
Current social fact: {"content_id":"","entity_id":"f_02","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_03_machine_safety_reform"],"year":-44}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"homeland_memory","record_type":"institution","reference_id":"home_f_00","source_event_ids":["s_00_01_homeland_memory_charter"],"year":-46}
Region region: Zorin Marsh
Faction f_02: Bowen Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=isolation
  identity=reformer/craft/rebuild | interpretation=pragmatic/debt | sources=t_root_f_02, h_last
  society patterns: Borrowed Offices, Boundary Watch, Closed Roads
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Silent Circuit — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=history:autonomous_machine_harm, institution:human_oversight, history:machine_harm_memory
Faction f_06: Zosen Reach | village_union | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=new_foundation/kin/adapt | interpretation=technical/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Boundary Watch, Hazard Memory, Local Mandate
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Veywen Reach | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=heir/craft/rebuild | interpretation=skeptical/rupture | sources=t_step_02, h_collapse
  society patterns: Archive Legitimacy, Borrowed Offices
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Semon Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=shelter
  identity=reformer/refuge/rebuild | interpretation=ritual/grievance | sources=t_step_04, h_relation_0
  society patterns: Boundary Watch, Mutual Obligation
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_02: parents=precursor; ancestors=precursor; sources=t_root_f_02, h_found, h_collapse
Ancestry f_06: parents=f_03; ancestors=f_00, f_01, f_03, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_01, h_found, h_collapse
Ancestry f_07: parents=f_03; ancestors=f_00, f_01, f_03, precursor; sources=t_step_02, t_root_f_00, t_step_00, t_root_f_01, h_found, h_collapse
Ancestry f_09: parents=f_08, f_04; ancestors=f_00, f_01, f_02, f_03, f_04, f_08, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_01, t_root_f_02, t_step_02, t_step_01, h_found, h_collapse
Relationship f_02 <-> f_06: 21; sources=h_relation_1
Relationship f_02 <-> f_09: 28; sources=h_relation_0, h_last
Settlement home_f_01: Lura | owner=f_06 | region=region | sources=t_root_f_01, t_step_00, t_step_02
Settlement home_f_02: Sekerin | owner=f_02 | region=region | sources=t_root_f_02
Settlement home_f_03: Fubosil | owner=f_06 | region=region | sources=t_step_00, t_step_02
Settlement home_f_04: Lumar | owner=f_09 | region=region | sources=t_step_01, t_step_04
Settlement home_f_06: Kesil | owner=f_06 | region=region | sources=t_step_02
Settlement home_f_07: Zolith | owner=f_07 | region=region | sources=t_step_02
Settlement home_f_08: Lubora | owner=f_09 | region=region | sources=t_step_02, t_step_04
Settlement home_f_09: Nabolen | owner=f_09 | region=region | sources=t_step_04
Settlement s_relocated_0: Lusil | owner=f_06 | region=region | sources=s_00_00_forced_evacuation
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_archive | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=structural | recorded_use=
Ruin s_damage_1: legacy_damage_site | occupant= | region=region | sources=s_01_02_defense_network_hostility
  site_type=legacy | hazard=restricted | recorded_use=
Ruin s_lost_home_0: abandoned_hamlet | occupant= | region=region | sources=s_00_00_forced_evacuation
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Ruin watchpost_0: watchtower | occupant= | region=region | sources=h_relation_0
  site_type=military | hazard=structural | recorded_use=
Discovery unknown_object: unfamiliar_manufacturing | origin=unknown | sources=h_discovery
=== BELIEFS ===
Bowen Marsh (f_02; knowledge=):
  [t_root_f_02; confidence 0.44; legitimacy] Our recorded formation was direct_successor. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.58; interpretation] Regional records disputed who could appoint district officials. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.43; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.63; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":-15}
  [h_relation_1; confidence 0.37; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_02","b":"f_06","delta":21}
  [h_discovery; confidence 0.49; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.64; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":43}
  [; confidence 0.51; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_06","score":21}
  [; confidence 0.77; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_09","score":28}
Zosen Reach (f_06; knowledge=observer_scholarly_term):
  [t_step_02; confidence 0.71; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Household ties are what bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.71; interpretation] Regional records disputed who could appoint district officials. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.52; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_02","b":"f_06","delta":21}
  [h_discovery; confidence 0.61; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.55; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_02","b":"f_06","score":21}
Veywen Reach (f_07; knowledge=):
  [t_step_02; confidence 0.78; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records disputed who could appoint district officials. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.54; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
Semon Well (f_09; knowledge=):
  [t_step_04; confidence 0.69; legitimacy] Our recorded formation was merger. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.69; interpretation] Regional records disputed who could appoint district officials. Our rites preserve the event as a failure of obligations people still argue about, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":-15}
  [h_discovery; confidence 0.77; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.68; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_09","delta":43}
  [; confidence 0.71; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_02","b":"f_09","score":28}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":22,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_forced_evacuation","s_00_01_homeland_memory_charter","s_01_02_defense_network_hostility","s_01_03_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":20,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_forced_evacuation","s_00_01_homeland_memory_charter","s_01_02_defense_network_hostility","s_01_03_machine_safety_reform","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":22}
```

## Bowen Marsh (f_02)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions",
		"restrain_machine_autonomy"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"silent_circuit": "fanatic"
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
								"f_02"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_defense_network_hostility"
							],
							"source_path": "present.social_history:scar:machine_war"
						}
					],
					"history:machine_harm_memory": [
						{
							"content_ids": [],
							"detail": "Objective practice:machine_harm_memory",
							"reference_ids": [
								"f_02"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_03_machine_safety_reform"
							],
							"source_path": "present.social_history:practice:machine_harm_memory"
						}
					],
					"institution:human_oversight": [
						{
							"content_ids": [],
							"detail": "Objective institution:human_oversight",
							"reference_ids": [
								"f_02"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_03_machine_safety_reform"
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
		"continuity",
		"order_above_survival",
		"pure_flesh",
		"silent_circuit",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"closed_roads",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
					"t_root_f_02",
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
		"event:defense_network_hostility": [
			{
				"detail": "defense_network_hostility",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_defense_network_hostility"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_alliance": [
			{
				"detail": "local_alliance",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
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
		"event:machine_safety_reform": [
			{
				"detail": "machine_safety_reform",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_machine_safety_reform"
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
					"t_step_01"
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
		"history:autonomous_machine_harm": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_defense_network_hostility"
				],
				"source_path": "present.social_history:scar:machine_war"
			}
		],
		"history:cooperation": [
			{
				"detail": "21",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "43",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-15",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:machine_harm_memory": [
			{
				"content_ids": [],
				"detail": "Objective practice:machine_harm_memory",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_machine_safety_reform"
				],
				"source_path": "present.social_history:practice:machine_harm_memory"
			}
		],
		"history:recent_machine_hostility": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_defense_network_hostility"
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
				"detail": "administrative_fragmentation",
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
					"h_last"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_oversight": [
			{
				"content_ids": [],
				"detail": "Objective institution:human_oversight",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_machine_safety_reform"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
					"h_last"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:debt": [
			{
				"detail": "debt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_02",
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
					"t_root_f_02"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"scar:machine_war": [
			{
				"content_ids": [],
				"detail": "Objective scar:machine_war",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_defense_network_hostility"
				],
				"source_path": "present.social_history:scar:machine_war"
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
		"social_collapse",
		"unaccountable_automation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_root_f_02",
			"h_last"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:provincial_council",
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
				"life:provincial_council"
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
				"life:provincial_council": [
					{
						"detail": "provincial_council",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_02"
						],
						"source_path": "entity.way_of_life"
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
							"t_root_f_02"
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
							"t_root_f_02"
						],
						"source_path": "entity.political_continuity"
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
							"f_02"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_defense_network_hostility"
						],
						"source_path": "present.social_history:scar:machine_war"
					}
				],
				"history:machine_harm_memory": [
					{
						"content_ids": [],
						"detail": "Objective practice:machine_harm_memory",
						"reference_ids": [
							"f_02"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_03_machine_safety_reform"
						],
						"source_path": "present.social_history:practice:machine_harm_memory"
					}
				],
				"institution:human_oversight": [
					{
						"content_ids": [],
						"detail": "Objective institution:human_oversight",
						"reference_ids": [
							"f_02"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_03_machine_safety_reform"
						],
						"source_path": "present.social_facts:institution:human_oversight"
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
					"life:provincial_council"
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
					"life:provincial_council": [
						{
							"detail": "provincial_council",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_02"
							],
							"source_path": "entity.way_of_life"
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
								"t_root_f_02"
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
		"autonomous_machine",
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"duty",
		"human_judgment",
		"institutional_continuity",
		"record_preservation",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":[],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_root_f_02"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"},{"desire":"restrain_machine_autonomy","explanation":"Consider restrain machine autonomy as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_02"],"id":"restrain_machine_autonomy","intensity":"fanatic","provenance":{"explanation":"Useful machines must not exercise autonomous judgment. Real autonomous-machine harm is required, not generic skepticism.","id":"silent_circuit","kind":"doctrine","matched_preferences":[],"matched_required":["history:autonomous_machine_harm"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":10},"support":{"history:autonomous_machine_harm":[{"content_ids":[],"detail":"Objective scar:machine_war","reference_ids":["f_02"],"scope":"faction","source_event_ids":["s_01_02_defense_network_hostility"],"source_path":"present.social_history:scar:machine_war"}],"history:machine_harm_memory":[{"content_ids":[],"detail":"Objective practice:machine_harm_memory","reference_ids":["f_02"],"scope":"faction","source_event_ids":["s_01_03_machine_safety_reform"],"source_path":"present.social_history:practice:machine_harm_memory"}],"institution:human_oversight":[{"content_ids":[],"detail":"Objective institution:human_oversight","reference_ids":["f_02"],"scope":"faction","source_event_ids":["s_01_03_machine_safety_reform"],"source_path":"present.social_facts:institution:human_oversight"}]}},"source_doctrine_id":"silent_circuit","status":"candidate"}]`

## Zosen Reach (f_06)

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
					"memory:continuity"
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
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"reclamation"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"local_mandate",
		"mutual_obligation"
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
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:forced_evacuation": [
			{
				"detail": "forced_evacuation",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
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
				"detail": "21",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:homeland_displacement": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"history:local_hazard_response": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
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
				"detail": "administrative_fragmentation",
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
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:homeland_memory": [
			{
				"content_ids": [],
				"detail": "Objective institution:homeland_memory",
				"reference_ids": [
					"home_f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_homeland_memory_charter"
				],
				"source_path": "present.social_facts:institution:homeland_memory"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:village_union": [
			{
				"detail": "village_union",
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
		"scar:lost_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
			}
		],
		"site:ancestral_homeland": [
			{
				"content_ids": [],
				"detail": "Objective scar:lost_homeland",
				"reference_ids": [
					"home_f_00"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
				],
				"source_path": "present.social_history:scar:lost_homeland"
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
					"t_step_00",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_06"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_forced_evacuation"
				],
				"source_path": "present.settlements:s_relocated_0"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_02"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:village_union",
			"role:border_watch",
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
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
			"matched_preferences": [],
			"matched_required": [
				"history:regional_pressure",
				"role:border_watch",
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
						"detail": "Objective scar:lost_homeland",
						"reference_ids": [
							"home_f_00"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_forced_evacuation"
						],
						"source_path": "present.social_history:scar:lost_homeland"
					}
				],
				"history:regional_pressure": [
					{
						"detail": "administrative_fragmentation",
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
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_01",
							"t_step_00",
							"t_step_02"
						],
						"source_path": "present.settlements:home_f_01"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_00",
							"t_step_02"
						],
						"source_path": "present.settlements:home_f_03"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
						],
						"source_path": "present.settlements:home_f_06"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_forced_evacuation"
						],
						"source_path": "present.settlements:s_relocated_0"
					}
				]
			}
		},
		{
			"explanation": "Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.",
			"id": "continuity",
			"kind": "doctrine",
			"matched_preferences": [
				"memory:continuity"
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
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_02"
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
								"t_step_02"
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
				"matched_preferences": [],
				"matched_required": [
					"history:regional_pressure",
					"role:border_watch",
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
							"detail": "Objective scar:lost_homeland",
							"reference_ids": [
								"home_f_00"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_forced_evacuation"
							],
							"source_path": "present.social_history:scar:lost_homeland"
						}
					],
					"history:regional_pressure": [
						{
							"detail": "administrative_fragmentation",
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
								"t_step_02"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01",
								"t_step_00",
								"t_step_02"
							],
							"source_path": "present.settlements:home_f_01"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_00",
								"t_step_02"
							],
							"source_path": "present.settlements:home_f_03"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_02"
							],
							"source_path": "present.settlements:home_f_06"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_forced_evacuation"
							],
							"source_path": "present.settlements:s_relocated_0"
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
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"external_domination",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"institutional_continuity",
		"local_service",
		"record_preservation",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_02"],"source_path":"identity.memory_frame"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Veywen Reach (f_07)

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
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02",
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
					"t_step_02",
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
				"detail": "administrative_fragmentation",
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
		"life:military_remnant": [
			{
				"detail": "military_remnant",
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
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "entity.regional_roles"
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
					"t_step_02"
				],
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "heir",
		"interpretation_mode": "skeptical",
		"memory_frame": "rupture",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_02",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
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
							"t_step_02"
						],
						"source_path": "entity.regional_roles"
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
				]
			}
		},
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
							"t_step_02",
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
							"t_step_02"
						],
						"source_path": "entity.political_continuity"
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
								"t_step_02"
							],
							"source_path": "entity.regional_roles"
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
								"t_step_02",
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
								"t_step_02"
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
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"record_destruction"
	],
	"value_tags": [
		"duty",
		"household_autonomy",
		"institutional_continuity",
		"record_preservation",
		"scholarship",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_02"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Semon Well (f_09)

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
								"t_step_04",
								"h_relation_0"
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
		"continuity",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_0"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_0"
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
		"event:political_merge": [
			{
				"detail": "political_merge",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:merger": [
			{
				"detail": "merger",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "43",
				"scope": "faction",
				"source_event_ids": [
					"h_last"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-15",
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
				"detail": "administrative_fragmentation",
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
					"t_step_04",
					"h_relation_0"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_0"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:migrant_confederation": [
			{
				"detail": "migrant_confederation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_relation_0"
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
					"t_step_01",
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02",
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_08"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_09"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_08, f_04",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "ritual",
		"memory_frame": "grievance",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_04",
			"h_relation_0"
		],
		"source_facts": [
			"formation:merger",
			"way_of_life:migrant_confederation",
			"role:shelter",
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
							"h_relation_0"
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
				"history:cooperation",
				"life:migrant_confederation"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "43",
						"scope": "faction",
						"source_event_ids": [
							"h_last"
						],
						"source_path": "effect.relationship.delta"
					}
				],
				"life:migrant_confederation": [
					{
						"detail": "migrant_confederation",
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
				"target": 1,
				"weight": 7
			},
			"support": {
				"adaptive:rebuild": [
					{
						"detail": "rebuild",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_relation_0"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "43",
							"scope": "faction",
							"source_event_ids": [
								"h_last"
							],
							"source_path": "effect.relationship.delta"
						}
					],
					"life:migrant_confederation": [
						{
							"detail": "migrant_confederation",
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
		"neglect"
	],
	"tension_tags": [
		"free_riding",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"reciprocity",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_relation_0"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_relation_0"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":["adaptive:rebuild"],"matched_required":["event:maintenance_accord"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"adaptive:rebuild":[{"detail":"rebuild","scope":"derived_identity","source_event_ids":["t_step_04","h_relation_0"],"source_path":"identity.adaptive_stance"}],"event:maintenance_accord":[{"detail":"maintenance_accord","scope":"faction","source_event_ids":["h_last"],"source_path":"event.narrative_key"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`
