# Explicit synthetic authored-contact examples — not shipping Canon

Excluded from all shipping statistics. The shipping validator rejects this content identity.

## many_bodies_one_people, seed 1, faction f_02

```text
History architecture v2 | generation algorithm v3 | seed 1 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"administrative_fragmentation","response_motif":"household_council","social_content_id":"social-contacts-m042-test-only","social_revision":"social-incidents-v1-authored-1","topology_family":"consolidation_resplit"}
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
-47 s_00_00_rotating_office_compact [SOCIAL_INCIDENT] Residents adopted a rotating office compact with documented terms and succession duties; council lifestyle alone did not imply this institution.
  scope=local | objective cause_domain=human
  actors: Zosen Reach (f_06) | causes: t_step_02
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_06"}]
-46 s_00_01_office_rotation_review [SOCIAL_INCIDENT] A later assembly carried out and reviewed the previously recorded rotation of officeholders.
  scope=local | objective cause_domain=human
  actors: Zosen Reach (f_06) | causes: t_step_02, s_00_00_rotating_office_compact
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_06"}]
-45 s_01_02_lineage_coexistence_compact [SOCIAL_INCIDENT] Two explicitly authored human-derived lineages became resident in the same society and recorded an integration compact. Political merger alone cannot establish this plurality.
  scope=local | objective cause_domain=human
  actors: Bowen Marsh (f_02) | causes: t_root_f_02
  effects: [{"content_id":"fixture_human_a","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02"},{"content_id":"fixture_human_b","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02"},{"content_id":"fixture_human_a","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02"},{"content_id":"fixture_human_b","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02"}]
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
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_00_rotating_office_compact"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"office_rotation","record_type":"practice","reference_id":"f_06","source_event_ids":["s_00_01_office_rotation_review"],"year":-46}
Social record: {"content_id":"fixture_human_a","entity_id":"f_02","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Social record: {"content_id":"fixture_human_b","entity_id":"f_02","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Social record: {"content_id":"fixture_human_a","entity_id":"f_02","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Social record: {"content_id":"fixture_human_b","entity_id":"f_02","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Current social fact: {"content_id":"fixture_human_a","entity_id":"f_02","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Current social fact: {"content_id":"fixture_human_b","entity_id":"f_02","operation":"establish","record_id":"lineage_integration","record_type":"institution","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Current social fact: {"content_id":"fixture_human_a","entity_id":"f_02","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Current social fact: {"content_id":"fixture_human_b","entity_id":"f_02","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_02","source_event_ids":["s_01_02_lineage_coexistence_compact"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"rotating_office","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_00_rotating_office_compact"],"year":-47}
Region region: Zorin Marsh
Faction f_02: Bowen Marsh | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=isolation
  identity=reformer/craft/rebuild | interpretation=pragmatic/debt | sources=t_root_f_02, h_last
  society patterns: Borrowed Offices, Boundary Watch, Many Forms, One Hearth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Zosen Reach | village_union | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=new_foundation/kin/adapt | interpretation=technical/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Boundary Watch, Hazard Memory, Local Mandate
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
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
Scars: {"causal_count":21,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_rotating_office_compact","s_00_01_office_rotation_review","s_01_02_lineage_coexistence_compact","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_rotating_office_compact","s_00_01_office_rotation_review","s_01_02_lineage_coexistence_compact","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":21}
```

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"facility_restoration",
		"infrastructure_repair",
		"preserve_institutions",
		"route_reconnection"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"world_must_be_mended": "moderate"
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
								"t_root_f_02",
								"h_last"
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
		"many_bodies_one_people",
		"order_above_survival",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"boundary_watch",
		"closed_roads",
		"many_forms_one_hearth",
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
		"event:lineage_coexistence_compact": [
			{
				"detail": "lineage_coexistence_compact",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
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
		"history:lineage_integration": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective institution:lineage_integration",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_history:institution:lineage_integration"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective institution:lineage_integration",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_history:institution:lineage_integration"
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
		"institution:lineage_integration": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective institution:lineage_integration",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_facts:institution:lineage_integration"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective institution:lineage_integration",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_facts:institution:lineage_integration"
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
		"population:mixed_lineages": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective lineage_contact:co_residence",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_facts:lineage_contact:co_residence"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective lineage_contact:co_residence",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_lineage_coexistence_compact"
				],
				"source_path": "present.social_facts:lineage_contact:co_residence"
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
		"infrastructure_loss",
		"social_collapse"
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
			"explanation": "Actual local plurality of authored lineage templates or a multi-Origin lineage supports bodily/lineage coexistence; a lifestyle name is insufficient.",
			"id": "many_forms_one_hearth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"population:mixed_lineages"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"population:mixed_lineages": [
					{
						"content_ids": [
							"fixture_human_a"
						],
						"detail": "Objective lineage_contact:co_residence",
						"reference_ids": [
							"f_02"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_lineage_coexistence_compact"
						],
						"source_path": "present.social_facts:lineage_contact:co_residence"
					},
					{
						"content_ids": [
							"fixture_human_b"
						],
						"detail": "Objective lineage_contact:co_residence",
						"reference_ids": [
							"f_02"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_lineage_coexistence_compact"
						],
						"source_path": "present.social_facts:lineage_contact:co_residence"
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
							"t_root_f_02",
							"h_last"
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
			"category": "membership",
			"display_name": "Many Forms, One Hearth",
			"id": "many_forms_one_hearth",
			"provenance": {
				"explanation": "Actual local plurality of authored lineage templates or a multi-Origin lineage supports bodily/lineage coexistence; a lifestyle name is insufficient.",
				"id": "many_forms_one_hearth",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"population:mixed_lineages"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"population:mixed_lineages": [
						{
							"content_ids": [
								"fixture_human_a"
							],
							"detail": "Objective lineage_contact:co_residence",
							"reference_ids": [
								"f_02"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_lineage_coexistence_compact"
							],
							"source_path": "present.social_facts:lineage_contact:co_residence"
						},
						{
							"content_ids": [
								"fixture_human_b"
							],
							"detail": "Objective lineage_contact:co_residence",
							"reference_ids": [
								"f_02"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_lineage_coexistence_compact"
							],
							"source_path": "present.social_facts:lineage_contact:co_residence"
						}
					]
				}
			},
			"tension_tags": [
				"lineage_exclusion"
			],
			"value_tags": [
				"bodily_adaptation",
				"modified_lineage",
				"inclusion"
			]
		}
	],
	"taboo_tags": [
		"gratuitous_institutional_destruction",
		"neglect"
	],
	"tension_tags": [
		"anti_authority",
		"lineage_exclusion",
		"unrestricted_travel"
	],
	"value_tags": [
		"bodily_adaptation",
		"craftsmanship",
		"duty",
		"inclusion",
		"institutional_continuity",
		"modified_lineage",
		"record_preservation",
		"technical_competence",
		"vigilance"
	]
}
```

## ecological_communion, seed 2, faction f_09

```text
History architecture v2 | generation algorithm v3 | seed 2 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"manufactured_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"ritual_schism","social_content_id":"social-contacts-m042-test-only","social_revision":"social-incidents-v1-authored-1","topology_family":"remnant_mosaic"}
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
-47 s_00_00_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Kelith Reach (f_09) | causes: t_step_04
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_09"}]
-46 s_00_01_bodily_adaptation_program [SOCIAL_INCIDENT] Using the restored workshop, residents carried out a documented bodily modification program in response to local environmental exposure. No detailed physiology or new lineage identity is invented.
  scope=local | objective cause_domain=human
  actors: Kelith Reach (f_09) | causes: t_step_04, s_00_00_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_09"}]
-45 s_00_02_adapted_lineage_registration [SOCIAL_INCIDENT] Following the local bodily adaptation program, an explicitly approved adapted human-derived lineage was recorded among the residents. The authored identity carries no invented phenotype.
  scope=local | objective cause_domain=human
  actors: Kelith Reach (f_09) | causes: t_step_04, s_00_01_bodily_adaptation_program
  effects: [{"content_id":"fixture_human_a","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"adapted_resident","record_type":"lineage_contact","reference_id":"f_09"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_09","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_09","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Social record: {"content_id":"fixture_human_a","entity_id":"f_09","operation":"establish","record_id":"adapted_resident","record_type":"lineage_contact","reference_id":"f_09","source_event_ids":["s_00_02_adapted_lineage_registration"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"environmental_adaptation","record_type":"bodily_change","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_09","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"bodily_modification","record_type":"institution","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"ecological_adaptation","record_type":"institution","reference_id":"f_09","source_event_ids":["s_00_01_bodily_adaptation_program"],"year":-46}
Current social fact: {"content_id":"fixture_human_a","entity_id":"f_09","operation":"establish","record_id":"adapted_resident","record_type":"lineage_contact","reference_id":"f_09","source_event_ids":["s_00_02_adapted_lineage_registration"],"year":-45}
Region region: Zosen Well
Faction f_00: Tosil Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=border_watch
  identity=new_foundation/institution/preserve | interpretation=skeptical/grievance | sources=t_root_f_00, h_relation_0
  society patterns: Hazard Memory, Mutual Obligation
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Sesen Marsh | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/refuge/adapt | interpretation=pragmatic/grievance | sources=t_step_04, h_relation_0
  society patterns: Boundary Watch, Hazard Memory, Mutual Obligation, Shelter Compact
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Hamon Reach | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/craft/preserve | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Maintenance Covenant, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Kelith Reach | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=reformer/locality/rebuild | interpretation=skeptical/opportunity | sources=t_step_04, h_discovery
  society patterns: Closed Roads, Local Mandate, Maintenance Covenant
  Ecological Communion — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=history:biological_adaptation, institution:ecological_adaptation
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
  [t_root_f_00; confidence 0.57; legitimacy] Our recorded formation was enclave_continuity. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.84; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":-31}
  [h_relation_1; confidence 0.77; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-19}
  [h_discovery; confidence 0.39; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.46; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":22}
  [; confidence 0.69; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":-9}
  [; confidence 0.71; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-19}
Sesen Marsh (f_07; knowledge=):
  [t_step_04; confidence 0.43; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.48; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.53; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":-31}
  [h_discovery; confidence 0.47; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.82; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_00","b":"f_07","delta":22}
  [; confidence 0.47; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_07","score":-9}
Hamon Reach (f_08; knowledge=):
  [t_step_04; confidence 0.44; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared work and maintenance hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.38; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_08","delta":-19}
  [h_discovery; confidence 0.60; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.84; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_08","score":-19}
Kelith Reach (f_09; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.61; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared places and local obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.61; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.65; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":21,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_bodily_adaptation_program","s_00_02_adapted_lineage_registration","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_bodily_adaptation_program","s_00_02_adapted_lineage_registration","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":21}
```

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"adapt_to_local_ecology"
	],
	"doctrine_intensities": {
		"ecological_communion": "hardline"
	},
	"doctrines": [
		{
			"category": "biotech",
			"desires": [
				"adapt_to_local_ecology"
			],
			"display_name": "Ecological Communion",
			"fears": [
				"ecological_mismatch"
			],
			"goal_candidates": [
				{
					"desire": "adapt_to_local_ecology",
					"explanation": "Consider adapt to local ecology as a future social priority; no target, capability or completed action is asserted.",
					"id": "adapt_to_local_ecology"
				}
			],
			"id": "ecological_communion",
			"intensity": {
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"history:biological_adaptation",
					"institution:ecological_adaptation"
				]
			},
			"provenance": {
				"explanation": "Human biology should adapt to local ecology, requiring actual local biological adaptation rather than a lifestyle label or planetary Canon.",
				"id": "ecological_communion",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:biological_adaptation",
					"content:local_adapted_lineage"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"content:local_adapted_lineage": [
						{
							"content_ids": [
								"fixture_human_a"
							],
							"detail": "Objective lineage_contact:adapted_resident",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_02_adapted_lineage_registration"
							],
							"source_path": "present.social_facts:lineage_contact:adapted_resident"
						}
					],
					"history:biological_adaptation": [
						{
							"content_ids": [],
							"detail": "Objective bodily_change:environmental_adaptation",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_bodily_adaptation_program"
							],
							"source_path": "present.social_history:bodily_change:environmental_adaptation"
						}
					],
					"institution:ecological_adaptation": [
						{
							"content_ids": [],
							"detail": "Objective institution:ecological_adaptation",
							"reference_ids": [
								"f_09"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_01_bodily_adaptation_program"
							],
							"source_path": "present.social_facts:institution:ecological_adaptation"
						}
					]
				}
			},
			"taboos": [],
			"values": [
				"bodily_adaptation",
				"ecological_adaptation"
			]
		}
	],
	"eligible_doctrines": [
		"beauty_against_ruin",
		"ecological_communion",
		"measured_doubt",
		"mutable_human",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"truth_through_trial",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"closed_roads",
		"local_mandate",
		"maintenance_covenant"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_discovery"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_biotech_workshop_recovery"
				],
				"source_path": "present.social_facts:capability:biotechnology"
			}
		],
		"content:local_adapted_lineage": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective lineage_contact:adapted_resident",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_adapted_lineage_registration"
				],
				"source_path": "present.social_facts:lineage_contact:adapted_resident"
			}
		],
		"event:adapted_lineage_registration": [
			{
				"detail": "adapted_lineage_registration",
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_adapted_lineage_registration"
				],
				"source_path": "event.narrative_key"
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
		"event:bodily_adaptation_program": [
			{
				"detail": "bodily_adaptation_program",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
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
		"history:biological_adaptation": [
			{
				"content_ids": [],
				"detail": "Objective bodily_change:environmental_adaptation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_history:bodily_change:environmental_adaptation"
			}
		],
		"history:bodily_modification": [
			{
				"content_ids": [],
				"detail": "Objective bodily_change:environmental_adaptation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_history:bodily_change:environmental_adaptation"
			}
		],
		"history:recorded_testing": [
			{
				"content_ids": [],
				"detail": "Objective practice:recorded_testing",
				"reference_ids": [
					"f_09"
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_discovery"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:bodily_modification": [
			{
				"content_ids": [],
				"detail": "Objective institution:bodily_modification",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_facts:institution:bodily_modification"
			}
		],
		"institution:ecological_adaptation": [
			{
				"content_ids": [],
				"detail": "Objective institution:ecological_adaptation",
				"reference_ids": [
					"f_09"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_bodily_adaptation_program"
				],
				"source_path": "present.social_facts:institution:ecological_adaptation"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
					"h_discovery"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:infrastructure_guild": [
			{
				"detail": "infrastructure_guild",
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
					"h_discovery"
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
		"ecological_mismatch"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "opportunity",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_04",
			"h_discovery"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:infrastructure_guild",
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
							"t_step_04"
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
			"matched_preferences": [],
			"matched_required": [
				"structure:local_settlement",
				"anchor:locality"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 3
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_04",
							"h_discovery"
						],
						"source_path": "identity.social_anchor"
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
			}
		},
		{
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
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
			"explanation": "Human biology should adapt to local ecology, requiring actual local biological adaptation rather than a lifestyle label or planetary Canon.",
			"id": "ecological_communion",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:biological_adaptation",
				"content:local_adapted_lineage"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"content:local_adapted_lineage": [
					{
						"content_ids": [
							"fixture_human_a"
						],
						"detail": "Objective lineage_contact:adapted_resident",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_02_adapted_lineage_registration"
						],
						"source_path": "present.social_facts:lineage_contact:adapted_resident"
					}
				],
				"history:biological_adaptation": [
					{
						"content_ids": [],
						"detail": "Objective bodily_change:environmental_adaptation",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_bodily_adaptation_program"
						],
						"source_path": "present.social_history:bodily_change:environmental_adaptation"
					}
				],
				"institution:ecological_adaptation": [
					{
						"content_ids": [],
						"detail": "Objective institution:ecological_adaptation",
						"reference_ids": [
							"f_09"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_01_bodily_adaptation_program"
						],
						"source_path": "present.social_facts:institution:ecological_adaptation"
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
					"anchor:locality"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 3
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_04",
								"h_discovery"
							],
							"source_path": "identity.social_anchor"
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
				"matched_preferences": [],
				"matched_required": [
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
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
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"external_domination",
		"neglect",
		"unrestricted_travel"
	],
	"value_tags": [
		"bodily_adaptation",
		"boundary_caution",
		"craftsmanship",
		"duty",
		"ecological_adaptation",
		"local_service",
		"technical_competence"
	]
}
```

## thinking_threshold, seed 4, faction f_02

```text
History architecture v2 | generation algorithm v3 | seed 4 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","social_content_id":"social-contacts-m042-test-only","social_revision":"social-incidents-v1-authored-1","topology_family":"late_fragmentation"}
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
-47 s_00_00_semi_sapient_contact [SOCIAL_INCIDENT] Residents encountered an explicitly authorized historical semi-sapient contact population. This contact comes from authored content, not invented creatures.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_02"}]
-46 s_00_01_personhood_dispute [SOCIAL_INCIDENT] Following the authorized contact, residents recorded a personhood dispute and a threshold institution.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00, s_00_00_semi_sapient_contact
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"personhood_conflict","record_type":"practice","reference_id":"f_02"},{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_02","source_event_ids":["s_00_00_semi_sapient_contact"],"year":-47}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"observe","record_id":"personhood_conflict","record_type":"practice","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Current social fact: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Region region: Lunar Gate
Faction f_01: Furin Well | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=reformer/institution/preserve | interpretation=ritual/rupture | sources=t_step_00, h_collapse
  society patterns: Borrowed Offices, Ritual Stewardship
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Furin Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/ritual/preserve | interpretation=skeptical/continuity | sources=t_step_00
  society patterns: Boundary Watch, Local Mandate
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Fulith Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/locality/withdraw | interpretation=ritual/grievance | sources=t_step_00, t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Closed Roads, Local Mandate
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Misen Ruin | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=breakaway/exchange/rebuild | interpretation=technical/opportunity | sources=t_step_02, h_discovery
  society patterns: Borrowed Offices, Route Commonwealth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Fulith Well | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/kin/rebuild | interpretation=pragmatic/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Maintenance Covenant
  Beauty Against Ruin — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Nalith Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/craft/adapt | interpretation=technical/continuity | sources=t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Maintenance Covenant, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Nasil Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/ritual/withdraw | interpretation=technical/continuity | sources=t_step_03
  society patterns: Boundary Watch, Closed Roads, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Bosil Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/refuge/rebuild | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Local Mandate, Maintenance Covenant, Mutual Obligation
  Beauty Against Ruin — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=adaptive:rebuild, role:maintenance
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
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
  [t_step_00; confidence 0.40; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.88; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.62; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
Furin Gate (f_02; knowledge=):
  [t_step_00; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered withdrawn garrisons and displaced households. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.39; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.77; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.62; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.35; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
Fulith Reach (f_03; knowledge=):
  [t_step_00; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as a failure of obligations people still argue about, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_0; confidence 0.50; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.83; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.41; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.69; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
  [; confidence 0.40; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
Misen Ruin (f_06; knowledge=):
  [t_step_02; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_07; knowledge=):
  [t_step_02; confidence 0.38; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Nalith Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.55; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_1; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.75; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.62; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
  [; confidence 0.43; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Nasil Marsh (f_09; knowledge=):
  [t_step_03; confidence 0.47; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.60; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.50; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Bosil Well (f_10; knowledge=):
  [t_step_04; confidence 0.59; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.41; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_semi_sapient_contact","s_00_01_personhood_dispute","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_semi_sapient_contact","s_00_01_personhood_dispute","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

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
		"kin_beyond_thought",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"thinking_threshold",
		"world_must_be_mended"
	],
	"eligible_traits": [
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
					"t_step_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"content:semi_sapient_contact": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective personhood_contact:semi_sapient",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_semi_sapient_contact"
				],
				"source_path": "present.social_history:personhood_contact:semi_sapient"
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
		"event:personhood_dispute": [
			{
				"detail": "personhood_dispute",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
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
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:semi_sapient_contact": [
			{
				"detail": "semi_sapient_contact",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_semi_sapient_contact"
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
				"detail": "29",
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
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:personhood_conflict": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective practice:personhood_conflict",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
				],
				"source_path": "present.social_history:practice:personhood_conflict"
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
				"detail": "military_overextension",
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
					"t_step_00"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:personhood_threshold": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective institution:personhood_threshold",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
				],
				"source_path": "present.social_facts:institution:personhood_threshold"
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
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.regional_roles"
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
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_02"
			}
		]
	},
	"faction_id": "f_02",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_00"
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
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:border_watch",
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
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
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
				"target": 2,
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
							"t_step_00"
						],
						"source_path": "present.settlements:home_f_02"
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
					"role:border_watch",
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
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
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
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
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
					"target": 2,
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
								"t_step_00"
							],
							"source_path": "present.settlements:home_f_02"
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
		"neglect"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"local_service",
		"technical_competence",
		"vigilance"
	]
}
```

## kin_beyond_thought, seed 4, faction f_02

```text
History architecture v2 | generation algorithm v3 | seed 4 | play start 0
Configuration: {"collapse_pattern":"evacuation","content_revision":"history-v3-authored-4","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"household_council","social_content_id":"social-contacts-m042-test-only","social_revision":"social-incidents-v1-authored-1","topology_family":"late_fragmentation"}
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
-47 s_00_00_semi_sapient_contact [SOCIAL_INCIDENT] Residents encountered an explicitly authorized historical semi-sapient contact population. This contact comes from authored content, not invented creatures.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_02"}]
-46 s_00_01_personhood_dispute [SOCIAL_INCIDENT] Following the authorized contact, residents recorded a personhood dispute and a threshold institution.
  scope=local | objective cause_domain=human
  actors: Furin Gate (f_02) | causes: t_step_00, s_00_00_semi_sapient_contact
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"observe","record_id":"personhood_conflict","record_type":"practice","reference_id":"f_02"},{"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","kind":"social_record","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_02","source_event_ids":["s_00_00_semi_sapient_contact"],"year":-47}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"observe","record_id":"personhood_conflict","record_type":"practice","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Current social fact: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_02","operation":"establish","record_id":"personhood_threshold","record_type":"institution","reference_id":"f_02","source_event_ids":["s_00_01_personhood_dispute"],"year":-46}
Region region: Lunar Gate
Faction f_01: Furin Well | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=reformer/institution/preserve | interpretation=ritual/rupture | sources=t_step_00, h_collapse
  society patterns: Borrowed Offices, Ritual Stewardship
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Furin Gate | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/ritual/preserve | interpretation=skeptical/continuity | sources=t_step_00
  society patterns: Boundary Watch, Local Mandate
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Fulith Reach | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/locality/withdraw | interpretation=ritual/grievance | sources=t_step_00, t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Closed Roads, Local Mandate
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_06: Misen Ruin | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=breakaway/exchange/rebuild | interpretation=technical/opportunity | sources=t_step_02, h_discovery
  society patterns: Borrowed Offices, Route Commonwealth
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Fulith Well | facility_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/kin/rebuild | interpretation=pragmatic/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Maintenance Covenant
  Beauty Against Ruin — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Nalith Ruin | migrant_confederation | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/craft/adapt | interpretation=technical/continuity | sources=t_step_03
  society patterns: Borrowed Offices, Boundary Watch, Maintenance Covenant, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Nasil Marsh | religious_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/ritual/withdraw | interpretation=technical/continuity | sources=t_step_03
  society patterns: Boundary Watch, Closed Roads, Ritual Stewardship
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Bosil Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/refuge/rebuild | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Local Mandate, Maintenance Covenant, Mutual Obligation
  Beauty Against Ruin — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=adaptive:rebuild, role:maintenance
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
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
  [t_step_00; confidence 0.40; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.88; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as the break between the old order and what followed, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.62; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
Furin Gate (f_02; knowledge=):
  [t_step_00; confidence 0.36; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered withdrawn garrisons and displaced households. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.84; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_04","delta":-13}
  [h_relation_0; confidence 0.39; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.77; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [h_last; confidence 0.62; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.35; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
Fulith Reach (f_03; knowledge=):
  [t_step_00; confidence 0.59; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as a failure of obligations people still argue about, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_0; confidence 0.50; interpretation] That recorded dispute reduced trust at the time. We remember it as a breach of obligation between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":-20}
  [h_discovery; confidence 0.83; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.41; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_02","b":"f_03","delta":29}
  [; confidence 0.69; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_02","b":"f_03","score":9}
  [; confidence 0.40; interpretation] Current obligations between our communities are strained.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
Misen Ruin (f_06; knowledge=):
  [t_step_02; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.77; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
Fulith Well (f_07; knowledge=):
  [t_step_02; confidence 0.38; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.57; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Nalith Ruin (f_08; knowledge=observer_scholarly_term):
  [t_step_03; confidence 0.65; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.56; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_03; confidence 0.55; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_08","delta":-24}
  [h_relation_1; confidence 0.64; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.75; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.62; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_03","b":"f_08","score":-24}
  [; confidence 0.43; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Nasil Marsh (f_09; knowledge=):
  [t_step_03; confidence 0.47; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.63; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.60; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_08","b":"f_09","delta":-27}
  [h_discovery; confidence 0.50; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_08","b":"f_09","score":-27}
Bosil Well (f_10; knowledge=):
  [t_step_04; confidence 0.59; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.41; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":18,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_semi_sapient_contact","s_00_01_personhood_dispute","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_semi_sapient_contact","s_00_01_personhood_dispute","t_root_f_00","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":18}
```

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
		"kin_beyond_thought",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"thinking_threshold",
		"world_must_be_mended"
	],
	"eligible_traits": [
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
					"t_step_00"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"content:semi_sapient_contact": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective personhood_contact:semi_sapient",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_semi_sapient_contact"
				],
				"source_path": "present.social_history:personhood_contact:semi_sapient"
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
		"event:personhood_dispute": [
			{
				"detail": "personhood_dispute",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
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
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:semi_sapient_contact": [
			{
				"detail": "semi_sapient_contact",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_semi_sapient_contact"
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
				"detail": "29",
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
				"detail": "-20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:personhood_conflict": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective practice:personhood_conflict",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
				],
				"source_path": "present.social_history:practice:personhood_conflict"
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
				"detail": "military_overextension",
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
					"t_step_00"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:personhood_threshold": [
			{
				"content_ids": [
					"fixture_semi_sapient_contact"
				],
				"detail": "Objective institution:personhood_threshold",
				"reference_ids": [
					"f_02"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_personhood_dispute"
				],
				"source_path": "present.social_facts:institution:personhood_threshold"
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
		"role:border_watch": [
			{
				"detail": "border_watch",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00"
				],
				"source_path": "entity.regional_roles"
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
					"t_step_00"
				],
				"source_path": "present.settlements:home_f_02"
			}
		]
	},
	"faction_id": "f_02",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "breakaway",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_00"
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
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:border_watch",
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
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
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
				"target": 2,
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
							"t_step_00"
						],
						"source_path": "present.settlements:home_f_02"
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
					"role:border_watch",
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
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
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
				"unrestricted_travel"
			],
			"value_tags": [
				"duty",
				"vigilance"
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
					"target": 2,
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
								"t_step_00"
							],
							"source_path": "present.settlements:home_f_02"
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
		"neglect"
	],
	"tension_tags": [
		"external_domination",
		"unrestricted_travel"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"local_service",
		"technical_competence",
		"vigilance"
	]
}
```

## last_human_measure, seed 19, faction f_07

```text
History architecture v2 | generation algorithm v3 | seed 19 | play start 0
Configuration: {"collapse_pattern":"civil_war","content_revision":"history-v3-authored-4","discovery_motif":"stratum_fragment","extra_core":"core_slope_failure","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"maintenance_secession","social_content_id":"social-contacts-m042-test-only","social_revision":"social-incidents-v1-authored-1","topology_family":"late_fragmentation"}
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
-47 s_00_00_lineage_exclusion_dispute [SOCIAL_INCIDENT] Two explicitly authored resident human-derived lineages disputed a locally instituted human-form benchmark and documented exclusion. No new biology is invented.
  scope=local | objective cause_domain=human
  actors: Sera Ruin (f_07) | causes: t_step_01
  effects: [{"content_id":"fixture_human_a","entity_id":"f_07","kind":"social_record","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07"},{"content_id":"fixture_human_b","entity_id":"f_07","kind":"social_record","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07"},{"content_id":"fixture_human_a","entity_id":"f_07","kind":"social_record","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07"},{"content_id":"fixture_human_b","entity_id":"f_07","kind":"social_record","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07"},{"content_id":"fixture_human_a","entity_id":"f_07","kind":"social_record","operation":"observe","record_id":"lineage_exclusion","record_type":"practice","reference_id":"f_07"},{"content_id":"fixture_human_b","entity_id":"f_07","kind":"social_record","operation":"observe","record_id":"lineage_exclusion","record_type":"practice","reference_id":"f_07"}]
-46 s_01_01_semi_sapient_contact [SOCIAL_INCIDENT] Residents encountered an explicitly authorized historical semi-sapient contact population. This contact comes from authored content, not invented creatures.
  scope=local | objective cause_domain=human
  actors: Bosil Ruin (f_11) | causes: t_step_04
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_11","kind":"social_record","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_11"}]
-45 s_01_02_protection_compact [SOCIAL_INCIDENT] Following the authorized contact, residents instituted protection obligations toward that population.
  scope=local | objective cause_domain=human
  actors: Bosil Ruin (f_11) | causes: t_step_04, s_01_01_semi_sapient_contact
  effects: [{"content_id":"fixture_semi_sapient_contact","entity_id":"f_11","kind":"social_record","operation":"establish","record_id":"protection_compact","record_type":"institution","reference_id":"f_11"}]
-44 s_02_03_cloning_archive_recovery [SOCIAL_INCIDENT] Residents recovered stored human-derived genomes and functioning cloning equipment; the equipment recovery is recorded before any clone-born cohort is produced.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03
  effects: [{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_09"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_09"}]
-43 s_02_04_local_population_decline [SOCIAL_INCIDENT] A local disaster reduced the community population and left an abandoned workplace; surviving family stocks remained human-derived.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03
  effects: [{"hazard":"none","id":"s_decline_2","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_09"}]
-42 s_02_05_emergency_reconstitution [SOCIAL_INCIDENT] After documented population decline, residents used the recovered cloning equipment and stored genomes to reconstitute a human-derived cohort. Initial dependent legal status is recorded, not presumed from cloning.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03, s_02_03_cloning_archive_recovery, s_02_04_local_population_decline
  effects: [{"entity_id":"s_cohort_2","kind":"activate"},{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_2"},{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_2"},{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_2"}]
-41 s_02_06_clone_emancipation [SOCIAL_INCIDENT] An assembly abolished the recorded dependent legal status of the existing clone-born cohort and recognized equal citizenship.
  scope=local | objective cause_domain=human
  actors: Kesil Ruin (f_09) | causes: t_step_03, s_02_05_emergency_reconstitution
  effects: [{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"abolish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_2"},{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"abolish","record_id":"clone_caste","record_type":"institution","reference_id":"s_cohort_2"},{"content_id":"human_baseline","entity_id":"f_09","kind":"social_record","operation":"establish","record_id":"clone_emancipation","record_type":"institution","reference_id":"s_cohort_2"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"fixture_human_a","entity_id":"f_07","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_human_b","entity_id":"f_07","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_human_a","entity_id":"f_07","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_human_b","entity_id":"f_07","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_human_a","entity_id":"f_07","operation":"observe","record_id":"lineage_exclusion","record_type":"practice","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_human_b","entity_id":"f_07","operation":"observe","record_id":"lineage_exclusion","record_type":"practice","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_11","operation":"observe","record_id":"semi_sapient","record_type":"personhood_contact","reference_id":"f_11","source_event_ids":["s_01_01_semi_sapient_contact"],"year":-46}
Social record: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_11","operation":"establish","record_id":"protection_compact","record_type":"institution","reference_id":"f_11","source_event_ids":["s_01_02_protection_compact"],"year":-45}
Social record: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_09","source_event_ids":["s_02_03_cloning_archive_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_09","source_event_ids":["s_02_03_cloning_archive_recovery"],"year":-44}
Social record: {"content_id":"","entity_id":"f_09","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_09","source_event_ids":["s_02_04_local_population_decline"],"year":-43}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_2","source_event_ids":["s_02_05_emergency_reconstitution"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_2","source_event_ids":["s_02_05_emergency_reconstitution"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"observe","record_id":"clone_repopulation","record_type":"practice","reference_id":"s_cohort_2","source_event_ids":["s_02_05_emergency_reconstitution"],"year":-42}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"abolish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_2","source_event_ids":["s_02_06_clone_emancipation"],"year":-41}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"abolish","record_id":"clone_caste","record_type":"institution","reference_id":"s_cohort_2","source_event_ids":["s_02_06_clone_emancipation"],"year":-41}
Social record: {"content_id":"human_baseline","entity_id":"f_09","operation":"establish","record_id":"clone_emancipation","record_type":"institution","reference_id":"s_cohort_2","source_event_ids":["s_02_06_clone_emancipation"],"year":-41}
Current social fact: {"content_id":"fixture_human_a","entity_id":"f_07","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Current social fact: {"content_id":"fixture_human_b","entity_id":"f_07","operation":"establish","record_id":"human_form_benchmark","record_type":"institution","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Current social fact: {"content_id":"fixture_human_a","entity_id":"f_07","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Current social fact: {"content_id":"fixture_human_b","entity_id":"f_07","operation":"establish","record_id":"co_residence","record_type":"lineage_contact","reference_id":"f_07","source_event_ids":["s_00_00_lineage_exclusion_dispute"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_09","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_09","source_event_ids":["s_02_03_cloning_archive_recovery"],"year":-44}
Current social fact: {"content_id":"human_baseline","entity_id":"f_09","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_2","source_event_ids":["s_02_05_emergency_reconstitution"],"year":-42}
Current social fact: {"content_id":"human_baseline","entity_id":"f_09","operation":"establish","record_id":"clone_emancipation","record_type":"institution","reference_id":"s_cohort_2","source_event_ids":["s_02_06_clone_emancipation"],"year":-41}
Current social fact: {"content_id":"fixture_semi_sapient_contact","entity_id":"f_11","operation":"establish","record_id":"protection_compact","record_type":"institution","reference_id":"f_11","source_event_ids":["s_01_02_protection_compact"],"year":-45}
Region region: Nalith Marsh
Faction f_00: Kemon Well | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=archives
  identity=heir/locality/preserve | interpretation=skeptical/warning | sources=t_root_f_00, h_legacy_core
  society patterns: Borrowed Offices, Hazard Memory, Mutual Obligation
  Living Archive — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_02: Kelith Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=breakaway/locality/preserve | interpretation=technical/grievance | sources=t_step_00
  society patterns: Borrowed Offices, Boundary Watch, Household Sovereignty, Local Mandate
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Sera Ruin | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/ritual/withdraw | interpretation=technical/warning | sources=t_step_01, h_legacy_core
  society patterns: Maintenance Covenant, Many Forms, One Hearth
Faction f_09: Kesil Ruin | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=merger | regional_roles=archives
  identity=heir/institution/rebuild | interpretation=pragmatic/opportunity | sources=t_step_03, h_relation_0
  society patterns: Archive Legitimacy, Borrowed Offices, Mutual Obligation, Rebuilt From Fragments
Faction f_10: Hamon Reach | regional_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/locality/withdraw | interpretation=pragmatic/warning | sources=t_step_04, h_legacy_core
  society patterns: Borrowed Offices, Closed Roads, Mutual Obligation
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Bosil Ruin | infrastructure_guild | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/craft/withdraw | interpretation=technical/debt | sources=t_step_04, h_relation_1
  society patterns: Borrowed Offices, Closed Roads
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
Ruin s_decline_2: abandoned_hamlet | occupant= | region=region | sources=s_02_04_local_population_decline
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
  site_type=military | hazard=ordnance | recorded_use=
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"core_intervention","id":"legacy_core","intent":"unknown","operation":"induced_slope_failure","physical_basis":"existing_slope_stress_and_fluid_pressure","scope":"local","source_event_ids":["h_legacy_core"],"system_id":"deep_core","target_selection_reason":"unknown"}
=== BELIEFS ===
Kemon Well (f_00; knowledge=):
  [t_root_f_00; confidence 0.64; legitimacy] Our recorded formation was direct_successor. We treat our offices as a continuation of an older political lineage. Shared places and local obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.35; interpretation] Regional records inherited conflicting records of succession. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.77; interpretation] The infrastructure change is recorded; attributing a purpose to the Deep goes beyond the evidence.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_relation_1; confidence 0.45; interpretation] That recorded agreement increased trust at the time. We do not read later intentions back into that record.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.82; interpretation] The object is real; stories about who made it outrun the evidence. Its origin remains unresolved.
    reference_scope=event | evidence={}
  [; confidence 0.86; interpretation] For now, the available evidence says our dealings are distrustful; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
  [; confidence 0.57; interpretation] For now, the available evidence says our dealings are cooperative; we do not treat that as permanent.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
Kelith Well (f_02; knowledge=):
  [t_step_00; confidence 0.62; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared places and local obligations bind us. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.46; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.49; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [t_step_00; confidence 0.61; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_02","delta":-16}
  [h_discovery; confidence 0.57; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.35; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_00","b":"f_02","score":-16}
Sera Ruin (f_07; knowledge=):
  [t_step_01; confidence 0.61; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shared rites give the community continuity. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.49; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.50; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.59; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.71; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [; confidence 0.56; interpretation] Current records indicate that our dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Kesil Ruin (f_09; knowledge=):
  [t_step_03; confidence 0.68; legitimacy] Our recorded formation was merger. We treat our offices as a continuation of an older political lineage. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.70; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a point from which later generations learned to rebuild.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.44; interpretation] Whatever commanded the old controls, we remember the routes, services or boundaries they changed; their purpose remains unknown.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.49; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_discovery; confidence 0.43; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [h_last; confidence 0.36; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.47; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
Hamon Reach (f_10; knowledge=):
  [t_step_04; confidence 0.36; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared places and local obligations bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.74; interpretation] Whatever commanded the old controls, we remember the routes, services or boundaries they changed; their purpose remains unknown.
    reference_scope=event | evidence={}
  [t_step_04; confidence 0.58; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_07","b":"f_10","delta":-25}
  [h_discovery; confidence 0.85; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
  [; confidence 0.76; interpretation] Current dealings are distrustful.
    reference_scope=present | evidence={"a":"f_07","b":"f_10","score":-25}
Bosil Ruin (f_11; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.73; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared work and maintenance hold us together. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [h_legacy_core; confidence 0.87; interpretation] Some attribute the failed slope to the Deep; the purpose of the old controls is unknown. We separate the recorded operation from any claim about motive.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":24}
  [h_relation_1; confidence 0.67; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_00","b":"f_11","delta":26}
  [h_discovery; confidence 0.44; interpretation] We compared its manufacture with Observer-era works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.42; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_09","b":"f_11","delta":-20}
  [; confidence 0.61; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_00","b":"f_11","score":26}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_09","b":"f_11","score":4}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","s_00_00_lineage_exclusion_dispute","s_01_01_semi_sapient_contact","s_01_02_protection_compact","s_02_03_cloning_archive_recovery","s_02_04_local_population_decline","s_02_05_emergency_reconstitution","s_02_06_clone_emancipation","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_legacy_core","h_pressure","h_relation_0","h_relation_1","s_00_00_lineage_exclusion_dispute","s_01_01_semi_sapient_contact","s_01_02_protection_compact","s_02_03_cloning_archive_recovery","s_02_04_local_population_decline","s_02_05_emergency_reconstitution","s_02_06_clone_emancipation","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04"],"important_events":25}
```

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"continuity",
		"last_human_measure",
		"living_archive",
		"many_bodies_one_people",
		"no_more_masters",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"maintenance_covenant",
		"many_forms_one_hearth",
		"ritual_stewardship"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:lineage_exclusion_dispute": [
			{
				"detail": "lineage_exclusion_dispute",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
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
					"t_step_01"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:hostility": [
			{
				"detail": "-25",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:lineage_exclusion": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective practice:lineage_exclusion",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_history:practice:lineage_exclusion"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective practice:lineage_exclusion",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_history:practice:lineage_exclusion"
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
					"h_legacy_core"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:human_form_benchmark": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective institution:human_form_benchmark",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_facts:institution:human_form_benchmark"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective institution:human_form_benchmark",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_facts:institution:human_form_benchmark"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_legacy_core"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:ritual_authority": [
			{
				"detail": "ritual_authority",
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
					"h_legacy_core"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"population:mixed_lineages": [
			{
				"content_ids": [
					"fixture_human_a"
				],
				"detail": "Objective lineage_contact:co_residence",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_facts:lineage_contact:co_residence"
			},
			{
				"content_ids": [
					"fixture_human_b"
				],
				"detail": "Objective lineage_contact:co_residence",
				"reference_ids": [
					"f_07"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_lineage_exclusion_dispute"
				],
				"source_path": "present.social_facts:lineage_contact:co_residence"
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
					"t_step_01"
				],
				"source_path": "present.settlements:home_f_07"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "warning",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_01",
			"h_legacy_core"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:ritual_authority",
			"role:maintenance",
			"political_continuity:true"
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
							"t_step_01"
						],
						"source_path": "entity.regional_roles"
					}
				]
			}
		},
		{
			"explanation": "Actual local plurality of authored lineage templates or a multi-Origin lineage supports bodily/lineage coexistence; a lifestyle name is insufficient.",
			"id": "many_forms_one_hearth",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"population:mixed_lineages"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"population:mixed_lineages": [
					{
						"content_ids": [
							"fixture_human_a"
						],
						"detail": "Objective lineage_contact:co_residence",
						"reference_ids": [
							"f_07"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_lineage_exclusion_dispute"
						],
						"source_path": "present.social_facts:lineage_contact:co_residence"
					},
					{
						"content_ids": [
							"fixture_human_b"
						],
						"detail": "Objective lineage_contact:co_residence",
						"reference_ids": [
							"f_07"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_lineage_exclusion_dispute"
						],
						"source_path": "present.social_facts:lineage_contact:co_residence"
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
			"category": "membership",
			"display_name": "Many Forms, One Hearth",
			"id": "many_forms_one_hearth",
			"provenance": {
				"explanation": "Actual local plurality of authored lineage templates or a multi-Origin lineage supports bodily/lineage coexistence; a lifestyle name is insufficient.",
				"id": "many_forms_one_hearth",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"population:mixed_lineages"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"population:mixed_lineages": [
						{
							"content_ids": [
								"fixture_human_a"
							],
							"detail": "Objective lineage_contact:co_residence",
							"reference_ids": [
								"f_07"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_lineage_exclusion_dispute"
							],
							"source_path": "present.social_facts:lineage_contact:co_residence"
						},
						{
							"content_ids": [
								"fixture_human_b"
							],
							"detail": "Objective lineage_contact:co_residence",
							"reference_ids": [
								"f_07"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_lineage_exclusion_dispute"
							],
							"source_path": "present.social_facts:lineage_contact:co_residence"
						}
					]
				}
			},
			"tension_tags": [
				"lineage_exclusion"
			],
			"value_tags": [
				"bodily_adaptation",
				"modified_lineage",
				"inclusion"
			]
		}
	],
	"taboo_tags": [],
	"tension_tags": [
		"lineage_exclusion",
		"neglect"
	],
	"value_tags": [
		"bodily_adaptation",
		"craftsmanship",
		"duty",
		"inclusion",
		"modified_lineage",
		"technical_competence"
	]
}
```
