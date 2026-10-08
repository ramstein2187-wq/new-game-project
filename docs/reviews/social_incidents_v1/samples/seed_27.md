# Seed 27 — doctrine_bounded_automation

```text
History architecture v2 | generation algorithm v3 | seed 27 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"erosion_seal","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"trade_league","pressure_domain":"human","pressure_motif":"adaptation_tension","response_motif":"maintenance_secession","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"enclave_continuity"}
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
-504 h_found [FOUNDING] A trade league linked regional markets and travel stations.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-479 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Havak Reach (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-469 t_root_f_00 [FOUNDING] An autonomous enclave established its own institutions before the regional collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_found
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-343 h_pressure [SCHISM] Communities with different environmental adaptations separated from the common assembly.
  scope=regional | objective cause_domain=human
  actors: Havak Reach (precursor), Semar (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"}]
-336 h_response [SPLIT] Maintainers withdrew central services and formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Havak Reach (precursor), Semar (regional_body), Veybonar (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-332 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Havak Reach (precursor), Mihador (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-327 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Havak Reach (precursor), Semar (regional_body), Veybonar (pressure_group), Mihador (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-314 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-313 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-312 t_root_f_03 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"}]
-303 t_step_00 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Dalen Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_02","kind":"retire"},{"hazard":"none","id":"abandoned_f_02","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-284 t_step_01 [MIGRATION] Part of an existing population moved to a new political settlement while its source community continued.
  scope=regional | objective cause_domain=human
  actors: Bomon Well (f_03) | causes: t_root_f_03
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"a":"f_03","b":"f_04","delta":5,"kind":"relationship"}]
-265 t_step_02 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fura Ruin (f_01) | causes: t_root_f_01
  effects: [{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_01"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"a":"f_01","b":"f_05","delta":-9,"kind":"relationship"}]
-246 t_step_03 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Hara Marsh (f_05) | causes: t_step_02
  effects: [{"entity_id":"f_05","kind":"retire"},{"disposition":"untracked","entity_id":"f_05","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_05","kind":"retire"},{"hazard":"none","id":"abandoned_f_05","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-226 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Bosen Ruin (f_07) | causes: t_step_02
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_07"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"home_f_07","kind":"site_owner","owner_id":"f_08"},{"entity_id":"f_07","kind":"retire"},{"disposition":"absorbed","entity_id":"f_07","kind":"population_fate","successor_ids":["f_08","f_09","f_10"],"untracked_template_ids":[]}]
-207 t_step_05 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Fulith Reach (f_10) | causes: t_step_04
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_10","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_10","cohort_00"]}]
-47 s_00_00_biotech_workshop_recovery [SOCIAL_INCIDENT] Residents restored a local biological workshop and documented usable biotechnology equipment and testing practice. Modified residents alone did not establish this capability.
  scope=local | objective cause_domain=human
  actors: Nalen Gate (f_06) | causes: t_step_02
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_06"}]
-46 s_00_01_lineage_preservation_program [SOCIAL_INCIDENT] A documented loss and bottleneck of local human-derived family stocks led to a genome preservation program. The loss concerns this local stock, not extinction of all humans.
  scope=local | objective cause_domain=human
  actors: Nalen Gate (f_06) | causes: t_step_02, s_00_00_biotech_workshop_recovery
  effects: [{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_06"},{"content_id":"","entity_id":"f_06","kind":"social_record","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06"}]
-45 s_01_02_automation_oversight_compact [SOCIAL_INCIDENT] Residents put functioning local automation under a human review and final-authority institution. Automation capability and authority are recorded separately from machine social membership.
  scope=local | objective cause_domain=human
  actors: Bomon Well (f_03) | causes: t_root_f_03
  effects: [{"content_id":"","entity_id":"f_03","kind":"social_record","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_03"},{"content_id":"","entity_id":"f_03","kind":"social_record","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_03"}]
-44 s_01_03_human_final_authority [SOCIAL_INCIDENT] A later review upheld the previously recorded human oversight compact and tested its automation limits.
  scope=local | objective cause_domain=human
  actors: Bomon Well (f_03) | causes: t_root_f_03, s_01_02_automation_oversight_compact
  effects: [{"content_id":"","entity_id":"f_03","kind":"social_record","operation":"observe","record_id":"oversight_review","record_type":"practice","reference_id":"f_03"}]
-28 h_relation_0 [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Fura Ruin (f_01), Nawen Ruin (f_04) | causes: t_root_f_01, t_step_01
  effects: [{"a":"f_01","b":"f_04","delta":23,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Fura Ruin (f_01), Bomon Well (f_03) | causes: t_root_f_01, t_root_f_03
  effects: [{"a":"f_01","b":"f_03","delta":15,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Fura Ruin (f_01), Nawen Ruin (f_04) | causes: h_relation_0
  effects: [{"a":"f_01","b":"f_04","delta":-11,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Zolen Reach | -469..present | active | parents= | formation=enclave_continuity | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Fura Ruin | -314..present | active | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Dalen Well | -313..-303 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Bomon Well | -312..present | active | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Nawen Ruin | -284..present | active | parents=f_03 | formation=migration_settlement | ancestry=split_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Hara Marsh | -265..-246 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Nalen Gate | -265..present | active | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Bosen Ruin | -265..-226 | extinct | parents=f_01 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Sewen Reach | -226..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Mivak Marsh | -226..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Fulith Reach | -226..present | active | parents=f_07 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Havak Reach | -504..-327 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-504 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-469 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-314 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-313 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-312 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_03
-284 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_01
-265 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-265 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-265 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_01 | events=t_step_02
-226 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-226 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-226 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_07 | events=t_step_04
-207 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_05
-207 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_10, cohort_00 | events=t_step_05
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-327 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-303 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-246 f_05: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_03
-226 f_07: absorbed | absorbed_into=f_08, f_09, f_10 | untracked_strata= | events=t_step_04
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"recorded_testing","record_type":"practice","reference_id":"f_06","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_06","operation":"observe","record_id":"lineage_loss","record_type":"scar","reference_id":"f_06","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Social record: {"content_id":"","entity_id":"f_03","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_03","source_event_ids":["s_01_02_automation_oversight_compact"],"year":-45}
Social record: {"content_id":"","entity_id":"f_03","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_03","source_event_ids":["s_01_02_automation_oversight_compact"],"year":-45}
Social record: {"content_id":"","entity_id":"f_03","operation":"observe","record_id":"oversight_review","record_type":"practice","reference_id":"f_03","source_event_ids":["s_01_03_human_final_authority"],"year":-44}
Current social fact: {"content_id":"","entity_id":"f_03","operation":"establish","record_id":"automation","record_type":"capability","reference_id":"f_03","source_event_ids":["s_01_02_automation_oversight_compact"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_03","operation":"establish","record_id":"human_oversight","record_type":"institution","reference_id":"f_03","source_event_ids":["s_01_02_automation_oversight_compact"],"year":-45}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"biotechnology","record_type":"capability","reference_id":"f_06","source_event_ids":["s_00_00_biotech_workshop_recovery"],"year":-47}
Current social fact: {"content_id":"","entity_id":"f_06","operation":"establish","record_id":"genetic_preservation","record_type":"institution","reference_id":"f_06","source_event_ids":["s_00_01_lineage_preservation_program"],"year":-46}
Region region: Tosil Marsh
Faction f_00: Zolen Reach | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=enclave_continuity | regional_roles=archives
  identity=reformer/refuge/adapt | interpretation=skeptical/warning | sources=t_root_f_00, h_pressure
  society patterns: Archive Legitimacy, Hazard Memory, Shelter Compact
  Debt of Shelter — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_01: Fura Ruin | infrastructure_guild | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=direct_successor | regional_roles=isolation
  identity=heir/kin/rebuild | interpretation=technical/grievance | sources=t_root_f_01, h_last
  society patterns: Borrowed Offices, Maintenance Covenant
  Sacred Craft — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_03: Bomon Well | migrant_confederation | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=border_watch
  identity=reformer/institution/preserve | interpretation=technical/debt | sources=t_root_f_03, h_relation_1
  society patterns: Boundary Watch, Hazard Memory, Mutual Obligation
  Bounded Automation — fanatic: Core uncompromising identity norm; enforcement candidate requires consumer review | reinforcement=capability:automation, institution:human_oversight, history:oversight_review
Faction f_04: Nawen Ruin | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=migration_settlement | regional_roles=shelter
  identity=new_foundation/institution/adapt | interpretation=pragmatic/debt | sources=t_step_01, h_relation_0
  society patterns: Hazard Memory, Mutual Obligation
  Debt of Shelter — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=life:refugee_community, role:shelter
Faction f_06: Nalen Gate | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=heir/refuge/adapt | interpretation=skeptical/continuity | sources=t_step_02
  society patterns: Borrowed Offices, Closed Roads, Shelter Compact
  Truth Through Trial — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_08: Sewen Reach | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=breakaway/refuge/adapt | interpretation=pragmatic/rupture | sources=t_step_04, h_collapse
  society patterns: Borrowed Offices, Shelter Compact
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_09: Mivak Marsh | resource_or_trade_commune | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=local_exchange
  identity=heir/ritual/exploit | interpretation=pragmatic/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Route Commonwealth
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_10: Fulith Reach | migrant_confederation | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=heir/exchange/adapt | interpretation=pragmatic/warning | sources=t_step_04, h_pressure
  society patterns: Borrowed Offices, Hazard Memory
  Doctrine of Continuity — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
  No More Masters — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_00: parents=; ancestors=; sources=t_root_f_00
Ancestry f_01: parents=precursor; ancestors=precursor; sources=t_root_f_01, h_found, h_collapse
Ancestry f_03: parents=; ancestors=; sources=t_root_f_03
Ancestry f_04: parents=f_03; ancestors=f_03; sources=t_step_01, t_root_f_03
Ancestry f_06: parents=f_01; ancestors=f_01, precursor; sources=t_step_02, t_root_f_01, h_found, h_collapse
Ancestry f_08: parents=f_07; ancestors=f_01, f_07, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_09: parents=f_07; ancestors=f_01, f_07, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Ancestry f_10: parents=f_07; ancestors=f_01, f_07, precursor; sources=t_step_04, t_root_f_01, t_step_02, h_found, h_collapse
Relationship f_01 <-> f_03: 15; sources=h_relation_1
Relationship f_01 <-> f_04: 12; sources=h_relation_0, h_last
Relationship f_03 <-> f_04: 5; sources=t_step_01
Settlement home_f_00: Damidor | owner=f_00 | region=region | sources=t_root_f_00
Settlement home_f_01: Fusil | owner=f_01 | region=region | sources=t_root_f_01
Settlement home_f_03: Tobora | owner=f_03 | region=region | sources=t_root_f_03
Settlement home_f_04: Serin | owner=f_04 | region=region | sources=t_step_01
Settlement home_f_06: Dalen | owner=f_06 | region=region | sources=t_step_02
Settlement home_f_07: Minar | owner=f_08 | region=region | sources=t_step_02, t_step_04
Settlement home_f_08: Veyzorin | owner=f_08 | region=region | sources=t_step_04
Settlement home_f_09: Lura | owner=f_09 | region=region | sources=t_step_04
Settlement home_f_10: Kerin | owner=f_10 | region=region | sources=t_step_04
Ruin abandoned_f_02: administrative_site | occupant= | region=region | sources=t_step_00
  site_type=records | hazard=none | recorded_use=
Ruin abandoned_f_05: administrative_site | occupant= | region=region | sources=t_step_03
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: abandoned_hamlet | occupant= | region=region | sources=h_pressure
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
=== BELIEFS ===
Zolen Reach (f_00; knowledge=):
  [t_root_f_00; confidence 0.46; legitimacy] Our recorded formation was enclave_continuity. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.42; interpretation] Regional records remembered communities divided over their different adaptations. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a warning against repeating old mistakes.
    reference_scope=event | evidence={}
Fura Ruin (f_01; knowledge=):
  [t_root_f_01; confidence 0.40; legitimacy] Our recorded formation was direct_successor. We treat our offices as a continuation of an older political lineage. Household ties are what bind us. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.60; interpretation] Regional records remembered communities divided over their different adaptations. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [t_step_02; confidence 0.87; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_05","delta":-9}
  [h_relation_0; confidence 0.88; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":23}
  [h_relation_1; confidence 0.53; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_03","delta":15}
  [h_last; confidence 0.57; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":-11}
  [; confidence 0.82; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_03","score":15}
  [; confidence 0.46; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_04","score":12}
Bomon Well (f_03; knowledge=):
  [t_root_f_03; confidence 0.90; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.39; interpretation] Regional records remembered communities divided over their different adaptations. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.59; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_03","b":"f_04","delta":5}
  [h_relation_1; confidence 0.70; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_01","b":"f_03","delta":15}
  [; confidence 0.38; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_03","score":15}
  [; confidence 0.84; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_04","score":5}
Nawen Ruin (f_04; knowledge=):
  [t_step_01; confidence 0.87; legitimacy] Our recorded formation was migration_settlement. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.84; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a reminder of who kept obligations when others failed.
    reference_scope=event | evidence={}
  [t_step_01; confidence 0.42; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_03","b":"f_04","delta":5}
  [h_relation_0; confidence 0.90; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":23}
  [h_last; confidence 0.63; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_01","b":"f_04","delta":-11}
  [; confidence 0.78; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_01","b":"f_04","score":12}
  [; confidence 0.83; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_03","b":"f_04","score":5}
Nalen Gate (f_06; knowledge=):
  [t_step_02; confidence 0.65; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.85; interpretation] Regional records remembered communities divided over their different adaptations. We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks a test of obligations that endured.
    reference_scope=event | evidence={}
Sewen Reach (f_08; knowledge=):
  [t_step_04; confidence 0.73; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Shelter and mutual protection define membership. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.45; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
Mivak Marsh (f_09; knowledge=):
  [t_step_04; confidence 0.37; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Shared rites give the community continuity. We make deliberate use of what the ruined world still offers.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.66; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
Fulith Reach (f_10; knowledge=observer_scholarly_term):
  [t_step_04; confidence 0.82; legitimacy] Our recorded formation was fragmentation. We treat our offices as a continuation of an older political lineage. Routes, exchange and reciprocal obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records remembered communities divided over their different adaptations. Whatever larger story people tell, our tradition remembers it as a warning against repeating old mistakes.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":23,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_lineage_preservation_program","s_01_02_automation_oversight_compact","s_01_03_human_final_authority","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","h_response","h_body"],"causal_ratio":1.0,"direct_count":21,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","s_00_00_biotech_workshop_recovery","s_00_01_lineage_preservation_program","s_01_02_automation_oversight_compact","s_01_03_human_final_authority","t_root_f_00","t_root_f_01","t_root_f_02","t_root_f_03","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05"],"important_events":23}
```

## Zolen Reach (f_00)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"displaced_aid",
		"refugee_shelter"
	],
	"doctrine_intensities": {
		"debt_of_shelter": "moderate"
	},
	"doctrines": [
		{
			"category": "ethics",
			"desires": [
				"refugee_shelter",
				"displaced_aid"
			],
			"display_name": "Debt of Shelter",
			"fears": [
				"abandonment"
			],
			"goal_candidates": [
				{
					"desire": "refugee_shelter",
					"explanation": "A standing future obligation, not a claim that refugees are currently waiting.",
					"id": "shelter_refugees"
				},
				{
					"desire": "displaced_aid",
					"explanation": "Consider aid when an actual displaced population is encountered.",
					"id": "aid_displaced_population"
				}
			],
			"id": "debt_of_shelter",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
				"id": "debt_of_shelter",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"life:refugee_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
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
			"taboos": [
				"refugee_rejection"
			],
			"values": [
				"compassion",
				"hospitality",
				"outsider"
			]
		}
	],
	"eligible_doctrines": [
		"continuity",
		"debt_of_shelter",
		"living_archive",
		"measured_doubt"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"hazard_memory",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
					"h_pressure"
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
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_00",
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
		"abandonment"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "skeptical",
		"memory_frame": "warning",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_root_f_00",
			"h_pressure"
		],
		"source_facts": [
			"formation:enclave_continuity",
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
				"target": 4,
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
						"detail": "adaptation_tension",
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
							"t_root_f_00",
							"h_pressure"
						],
						"source_path": "identity.memory_frame"
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
				"target": 4,
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
			"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
			"id": "debt_of_shelter",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"life:refugee_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
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
				"matched_preferences": [],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
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
							"detail": "adaptation_tension",
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
								"t_root_f_00",
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
					"target": 4,
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
		"refugee_rejection"
	],
	"tension_tags": [
		"cruelty",
		"recklessness",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"hazard_awareness",
		"hospitality",
		"outsider",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"displaced_aid","explanation":"Consider aid when an actual displaced population is encountered.","historical_reference_ids":[],"id":"aid_displaced_population","intensity":"moderate","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":[],"matched_required":["life:refugee_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"life:refugee_community":[{"detail":"refugee_community","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"},{"desire":"refugee_shelter","explanation":"A standing future obligation, not a claim that refugees are currently waiting.","historical_reference_ids":[],"id":"shelter_refugees","intensity":"moderate","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":[],"matched_required":["life:refugee_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"life:refugee_community":[{"detail":"refugee_community","scope":"faction","source_event_ids":["t_root_f_00"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"}]`

## Fura Ruin (f_01)

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
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01"
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
		"continuity",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
		"maintenance_covenant",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
					"h_last"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:kin": [
			{
				"detail": "kin",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
					"h_last"
				],
				"source_path": "identity.social_anchor"
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
					"t_root_f_01"
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
					"t_step_02"
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
		"history:cooperation": [
			{
				"detail": "23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "15",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-9",
				"scope": "faction",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-11",
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
		"identity:heir": [
			{
				"detail": "heir",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
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
					"t_root_f_01",
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
					"t_root_f_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
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
		"craft_loss"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "heir",
		"interpretation_mode": "technical",
		"memory_frame": "grievance",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_root_f_01",
			"h_last"
		],
		"source_facts": [
			"formation:direct_successor",
			"way_of_life:infrastructure_guild",
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
				"target": 2,
				"weight": 8
			},
			"support": {
				"identity:heir": [
					{
						"detail": "heir",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_root_f_01",
							"h_last"
						],
						"source_path": "identity.continuity_stance"
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
				"target": 2,
				"weight": 8
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
				],
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
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
			"explanation": "Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.",
			"id": "sacred_craft",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"life:infrastructure_guild"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"life:infrastructure_guild": [
					{
						"detail": "infrastructure_guild",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_01"
						],
						"source_path": "entity.way_of_life"
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
					"target": 2,
					"weight": 8
				},
				"support": {
					"identity:heir": [
						{
							"detail": "heir",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_root_f_01",
								"h_last"
							],
							"source_path": "identity.continuity_stance"
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
					"target": 2,
					"weight": 8
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
					],
					"life:infrastructure_guild": [
						{
							"detail": "infrastructure_guild",
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
				"neglect"
			],
			"value_tags": [
				"technical_competence",
				"duty",
				"craftsmanship"
			]
		}
	],
	"taboo_tags": [
		"craft_desecration"
	],
	"tension_tags": [
		"anti_authority",
		"neglect"
	],
	"value_tags": [
		"craftsmanship",
		"duty",
		"institutional_continuity",
		"item_provenance",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"honor_skilled_making","explanation":"Consider honor skilled making as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"honor_skilled_making","intensity":"moderate","provenance":{"explanation":"Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.","id":"sacred_craft","kind":"doctrine","matched_preferences":[],"matched_required":["life:infrastructure_guild"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"life:infrastructure_guild":[{"detail":"infrastructure_guild","scope":"faction","source_event_ids":["t_root_f_01"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"sacred_craft","status":"candidate"}]`

## Bomon Well (f_03)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"supervised_automation"
	],
	"doctrine_intensities": {
		"bounded_automation": "fanatic"
	},
	"doctrines": [
		{
			"category": "machine",
			"desires": [
				"supervised_automation"
			],
			"display_name": "Bounded Automation",
			"fears": [
				"lost_control"
			],
			"goal_candidates": [
				{
					"desire": "supervised_automation",
					"explanation": "Consider supervised automation as a future social priority; no target, capability or completed action is asserted.",
					"id": "supervised_automation"
				}
			],
			"id": "bounded_automation",
			"intensity": {
				"explanation": "Core uncompromising identity norm; enforcement candidate requires consumer review",
				"level": "fanatic",
				"support_tags": [
					"capability:automation",
					"institution:human_oversight",
					"history:oversight_review"
				]
			},
			"provenance": {
				"explanation": "Machines may work while final judgment remains human; needs actual local automation use and an oversight institution.",
				"id": "bounded_automation",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"capability:automation",
					"institution:human_oversight"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 10
				},
				"support": {
					"capability:automation": [
						{
							"content_ids": [],
							"detail": "Objective capability:automation",
							"reference_ids": [
								"f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_automation_oversight_compact"
							],
							"source_path": "present.social_facts:capability:automation"
						}
					],
					"history:oversight_review": [
						{
							"content_ids": [],
							"detail": "Objective practice:oversight_review",
							"reference_ids": [
								"f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_03_human_final_authority"
							],
							"source_path": "present.social_history:practice:oversight_review"
						}
					],
					"institution:human_oversight": [
						{
							"content_ids": [],
							"detail": "Objective institution:human_oversight",
							"reference_ids": [
								"f_03"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_01_02_automation_oversight_compact"
							],
							"source_path": "present.social_facts:institution:human_oversight"
						}
					]
				}
			},
			"taboos": [
				"unaccountable_automation"
			],
			"values": [
				"human_judgment",
				"technical_competence"
			]
		}
	],
	"eligible_doctrines": [
		"bounded_automation",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"boundary_watch",
		"hazard_memory",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_relation_1"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_relation_1"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:automation": [
			{
				"content_ids": [],
				"detail": "Objective capability:automation",
				"reference_ids": [
					"f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_automation_oversight_compact"
				],
				"source_path": "present.social_facts:capability:automation"
			}
		],
		"event:automation_oversight_compact": [
			{
				"detail": "automation_oversight_compact",
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_automation_oversight_compact"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:human_final_authority": [
			{
				"detail": "human_final_authority",
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_human_final_authority"
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
					"t_root_f_03"
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
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_03"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "5",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "15",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:oversight_review": [
			{
				"content_ids": [],
				"detail": "Objective practice:oversight_review",
				"reference_ids": [
					"f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_03_human_final_authority"
				],
				"source_path": "present.social_history:practice:oversight_review"
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
					"t_root_f_03",
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
					"f_03"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_01_02_automation_oversight_compact"
				],
				"source_path": "present.social_facts:institution:human_oversight"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_03",
					"h_relation_1"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:migrant_confederation": [
			{
				"detail": "migrant_confederation",
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
					"h_relation_1"
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
		"lost_control"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "debt",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_root_f_03",
			"h_relation_1"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:migrant_confederation",
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
							"t_root_f_03"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "5",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "15",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_1"
						],
						"source_path": "effect.relationship.delta"
					}
				],
				"life:migrant_confederation": [
					{
						"detail": "migrant_confederation",
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
			"explanation": "Machines may work while final judgment remains human; needs actual local automation use and an oversight institution.",
			"id": "bounded_automation",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"capability:automation",
				"institution:human_oversight"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 10
			},
			"support": {
				"capability:automation": [
					{
						"content_ids": [],
						"detail": "Objective capability:automation",
						"reference_ids": [
							"f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_automation_oversight_compact"
						],
						"source_path": "present.social_facts:capability:automation"
					}
				],
				"history:oversight_review": [
					{
						"content_ids": [],
						"detail": "Objective practice:oversight_review",
						"reference_ids": [
							"f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_03_human_final_authority"
						],
						"source_path": "present.social_history:practice:oversight_review"
					}
				],
				"institution:human_oversight": [
					{
						"content_ids": [],
						"detail": "Objective institution:human_oversight",
						"reference_ids": [
							"f_03"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_01_02_automation_oversight_compact"
						],
						"source_path": "present.social_facts:institution:human_oversight"
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
					"history:cooperation",
					"life:migrant_confederation"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "5",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "15",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_1"
							],
							"source_path": "effect.relationship.delta"
						}
					],
					"life:migrant_confederation": [
						{
							"detail": "migrant_confederation",
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
		"unaccountable_automation"
	],
	"tension_tags": [
		"free_riding",
		"recklessness",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"human_judgment",
		"reciprocity",
		"technical_competence",
		"vigilance"
	]
}
```

Candidates: `[{"desire":"supervised_automation","explanation":"Consider supervised automation as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_03"],"id":"supervised_automation","intensity":"fanatic","provenance":{"explanation":"Machines may work while final judgment remains human; needs actual local automation use and an oversight institution.","id":"bounded_automation","kind":"doctrine","matched_preferences":[],"matched_required":["capability:automation","institution:human_oversight"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":10},"support":{"capability:automation":[{"content_ids":[],"detail":"Objective capability:automation","reference_ids":["f_03"],"scope":"faction","source_event_ids":["s_01_02_automation_oversight_compact"],"source_path":"present.social_facts:capability:automation"}],"history:oversight_review":[{"content_ids":[],"detail":"Objective practice:oversight_review","reference_ids":["f_03"],"scope":"faction","source_event_ids":["s_01_03_human_final_authority"],"source_path":"present.social_history:practice:oversight_review"}],"institution:human_oversight":[{"content_ids":[],"detail":"Objective institution:human_oversight","reference_ids":["f_03"],"scope":"faction","source_event_ids":["s_01_02_automation_oversight_compact"],"source_path":"present.social_facts:institution:human_oversight"}]}},"source_doctrine_id":"bounded_automation","status":"candidate"}]`

## Nawen Ruin (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"displaced_aid",
		"refugee_shelter"
	],
	"doctrine_intensities": {
		"debt_of_shelter": "hardline"
	},
	"doctrines": [
		{
			"category": "ethics",
			"desires": [
				"refugee_shelter",
				"displaced_aid"
			],
			"display_name": "Debt of Shelter",
			"fears": [
				"abandonment"
			],
			"goal_candidates": [
				{
					"desire": "refugee_shelter",
					"explanation": "A standing future obligation, not a claim that refugees are currently waiting.",
					"id": "shelter_refugees"
				},
				{
					"desire": "displaced_aid",
					"explanation": "Consider aid when an actual displaced population is encountered.",
					"id": "aid_displaced_population"
				}
			],
			"id": "debt_of_shelter",
			"intensity": {
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"life:refugee_community",
					"role:shelter"
				]
			},
			"provenance": {
				"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
				"id": "debt_of_shelter",
				"kind": "doctrine",
				"matched_preferences": [
					"role:shelter",
					"memory:debt"
				],
				"matched_required": [
					"life:refugee_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 9
				},
				"support": {
					"life:refugee_community": [
						{
							"detail": "refugee_community",
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
								"t_step_01"
							],
							"source_path": "entity.regional_roles"
						}
					]
				}
			},
			"taboos": [
				"refugee_rejection"
			],
			"values": [
				"compassion",
				"hospitality",
				"outsider"
			]
		}
	],
	"eligible_doctrines": [
		"debt_of_shelter",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"hazard_memory",
		"mutual_obligation",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_01",
					"h_relation_0"
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
					"h_relation_0"
				],
				"source_path": "identity.social_anchor"
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
				"detail": "5",
				"scope": "faction",
				"source_event_ids": [
					"t_step_01"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "23",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-11",
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
					"t_step_01",
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
					"t_step_01",
					"h_relation_0"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:refugee_community": [
			{
				"detail": "refugee_community",
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
		"abandonment"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "debt",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_01",
			"h_relation_0"
		],
		"source_facts": [
			"formation:migration_settlement",
			"way_of_life:refugee_community",
			"role:shelter",
			"political_continuity:false"
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
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
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
				"target": 2,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "5",
						"scope": "faction",
						"source_event_ids": [
							"t_step_01"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "23",
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
			"explanation": "An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.",
			"id": "debt_of_shelter",
			"kind": "doctrine",
			"matched_preferences": [
				"role:shelter",
				"memory:debt"
			],
			"matched_required": [
				"life:refugee_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 9
			},
			"support": {
				"life:refugee_community": [
					{
						"detail": "refugee_community",
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
							"t_step_01"
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
					"target": 2,
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
								"t_step_01"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"history:cooperation": [
						{
							"detail": "5",
							"scope": "faction",
							"source_event_ids": [
								"t_step_01"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "23",
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
		"refugee_rejection"
	],
	"tension_tags": [
		"free_riding",
		"recklessness"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hazard_awareness",
		"hospitality",
		"outsider",
		"reciprocity"
	]
}
```

Candidates: `[{"desire":"displaced_aid","explanation":"Consider aid when an actual displaced population is encountered.","historical_reference_ids":[],"id":"aid_displaced_population","intensity":"hardline","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":["role:shelter","memory:debt"],"matched_required":["life:refugee_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":9},"support":{"life:refugee_community":[{"detail":"refugee_community","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.way_of_life"}],"memory:debt":[{"detail":"debt","scope":"derived_identity","source_event_ids":["t_step_01","h_relation_0"],"source_path":"identity.memory_frame"}],"role:shelter":[{"detail":"shelter","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"},{"desire":"refugee_shelter","explanation":"A standing future obligation, not a claim that refugees are currently waiting.","historical_reference_ids":[],"id":"shelter_refugees","intensity":"hardline","provenance":{"explanation":"An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.","id":"debt_of_shelter","kind":"doctrine","matched_preferences":["role:shelter","memory:debt"],"matched_required":["life:refugee_community"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":9},"support":{"life:refugee_community":[{"detail":"refugee_community","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.way_of_life"}],"memory:debt":[{"detail":"debt","scope":"derived_identity","source_event_ids":["t_step_01","h_relation_0"],"source_path":"identity.memory_frame"}],"role:shelter":[{"detail":"shelter","scope":"faction","source_event_ids":["t_step_01"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"debt_of_shelter","status":"candidate"}]`

## Nalen Gate (f_06)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"test_unknown_phenomena"
	],
	"doctrine_intensities": {
		"truth_through_trial": "moderate"
	},
	"doctrines": [
		{
			"category": "knowledge",
			"desires": [
				"test_unknown_phenomena"
			],
			"display_name": "Truth Through Trial",
			"fears": [
				"untested_hazards"
			],
			"goal_candidates": [
				{
					"desire": "test_unknown_phenomena",
					"explanation": "Consider test unknown phenomena as a future social priority; no target, capability or completed action is asserted.",
					"id": "test_unknown_phenomena"
				}
			],
			"id": "truth_through_trial",
			"intensity": {
				"explanation": "A clear preference that generally tolerates disagreement or violation",
				"level": "moderate",
				"support_tags": []
			},
			"provenance": {
				"explanation": "Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.",
				"id": "truth_through_trial",
				"kind": "doctrine",
				"matched_preferences": [],
				"matched_required": [
					"history:recorded_testing"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 5
				},
				"support": {
					"history:recorded_testing": [
						{
							"content_ids": [],
							"detail": "Objective practice:recorded_testing",
							"reference_ids": [
								"f_06"
							],
							"scope": "faction",
							"source_event_ids": [
								"s_00_00_biotech_workshop_recovery"
							],
							"source_path": "present.social_history:practice:recorded_testing"
						}
					]
				}
			},
			"taboos": [
				"untested_certainty"
			],
			"values": [
				"experimentation",
				"technical_competence",
				"scholarship"
			]
		}
	],
	"eligible_doctrines": [
		"ancestral_genome",
		"continuity",
		"debt_of_shelter",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence",
		"truth_through_trial"
	],
	"eligible_traits": [
		"borrowed_offices",
		"closed_roads",
		"shelter_compact"
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
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:biotechnology": [
			{
				"content_ids": [],
				"detail": "Objective capability:biotechnology",
				"reference_ids": [
					"f_06"
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
		"history:lineage_loss": [
			{
				"content_ids": [],
				"detail": "Objective scar:lineage_loss",
				"reference_ids": [
					"f_06"
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
					"f_06"
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
					"t_step_02"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:genetic_preservation": [
			{
				"content_ids": [],
				"detail": "Objective institution:genetic_preservation",
				"reference_ids": [
					"f_06"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_lineage_preservation_program"
				],
				"source_path": "present.social_facts:institution:genetic_preservation"
			}
		],
		"interpretation:skeptical": [
			{
				"detail": "skeptical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_02"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:refugee_community": [
			{
				"detail": "refugee_community",
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
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [
		"untested_hazards"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "heir",
		"interpretation_mode": "skeptical",
		"memory_frame": "continuity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_02"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:refugee_community",
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
							"t_step_02"
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
							"t_step_02"
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
							"t_step_02"
						],
						"source_path": "entity.way_of_life"
					}
				]
			}
		},
		{
			"explanation": "Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.",
			"id": "truth_through_trial",
			"kind": "doctrine",
			"matched_preferences": [],
			"matched_required": [
				"history:recorded_testing"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 1,
				"weight": 5
			},
			"support": {
				"history:recorded_testing": [
					{
						"content_ids": [],
						"detail": "Objective practice:recorded_testing",
						"reference_ids": [
							"f_06"
						],
						"scope": "faction",
						"source_event_ids": [
							"s_00_00_biotech_workshop_recovery"
						],
						"source_path": "present.social_history:practice:recorded_testing"
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
								"t_step_02"
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
				"boundary_caution"
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
								"t_step_02"
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
		"untested_certainty"
	],
	"tension_tags": [
		"anti_authority",
		"cruelty",
		"unrestricted_travel"
	],
	"value_tags": [
		"boundary_caution",
		"compassion",
		"duty",
		"experimentation",
		"hospitality",
		"institutional_continuity",
		"scholarship",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"test_unknown_phenomena","explanation":"Consider test unknown phenomena as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":["f_06"],"id":"test_unknown_phenomena","intensity":"moderate","provenance":{"explanation":"Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.","id":"truth_through_trial","kind":"doctrine","matched_preferences":[],"matched_required":["history:recorded_testing"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"history:recorded_testing":[{"content_ids":[],"detail":"Objective practice:recorded_testing","reference_ids":["f_06"],"scope":"faction","source_event_ids":["s_00_00_biotech_workshop_recovery"],"source_path":"present.social_history:practice:recorded_testing"}]}},"source_doctrine_id":"truth_through_trial","status":"candidate"}]`

## Sewen Reach (f_08)

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
								"t_step_04",
								"h_collapse"
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
		"continuity",
		"debt_of_shelter",
		"no_more_masters",
		"radical_impermanence"
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
		"anchor:refuge": [
			{
				"detail": "refuge",
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
		"life:refugee_community": [
			{
				"detail": "refugee_community",
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
				"source_path": "present.settlements:home_f_07"
			},
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
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:refugee_community",
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
			"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
			"id": "shelter_compact",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:shelter",
				"life:refugee_community"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 6
			},
			"support": {
				"life:refugee_community": [
					{
						"detail": "refugee_community",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
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
							"t_step_04",
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
			"category": "membership",
			"display_name": "Shelter Compact",
			"id": "shelter_compact",
			"provenance": {
				"explanation": "An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.",
				"id": "shelter_compact",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:shelter",
					"life:refugee_community"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:refugee_community": [
						{
							"detail": "refugee_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
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
				"cruelty"
			],
			"value_tags": [
				"compassion",
				"hospitality"
			]
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"cruelty"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hospitality",
		"household_autonomy",
		"institutional_continuity",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_04","h_collapse"],"source_path":"identity.continuity_stance"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Mivak Marsh (f_09)

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
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:exploit": [
			{
				"detail": "exploit",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:ritual": [
			{
				"detail": "ritual",
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
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "exploit",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "ritual",
		"source_event_ids": [
			"t_step_04"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:resource_or_trade_commune",
			"role:local_exchange",
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"anti_authority",
		"route_monopoly"
	],
	"value_tags": [
		"duty",
		"fair_exchange",
		"household_autonomy",
		"institutional_continuity",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`

## Fulith Reach (f_10)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions",
		"resist_domination"
	],
	"doctrine_intensities": {
		"continuity": "moderate",
		"no_more_masters": "moderate"
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
					"target": 2,
					"weight": 7
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
		}
	],
	"eligible_doctrines": [
		"continuity",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"mutual_obligation",
		"newcomer_charter",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04",
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
					"t_step_04",
					"h_pressure"
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
		"event:population_join": [
			{
				"detail": "population_join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
		"history:population_join": [
			{
				"detail": "Recorded population arrival/join",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
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
					"t_step_04",
					"h_pressure"
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
		"social_collapse",
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "heir",
		"interpretation_mode": "pragmatic",
		"memory_frame": "warning",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_04",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:migrant_confederation",
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
				"target": 2,
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
				"memory:warning",
				"role:shelter"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 2,
				"weight": 5
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
				"target": 2,
				"weight": 7
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
				"matched_preferences": [
					"identity:heir"
				],
				"matched_required": [
					"structure:inherited_offices"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
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
					"memory:warning",
					"role:shelter"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 5
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
		}
	],
	"taboo_tags": [
		"absolute_authority",
		"external_domination",
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"anti_authority",
		"recklessness"
	],
	"value_tags": [
		"duty",
		"hazard_awareness",
		"household_autonomy",
		"institutional_continuity",
		"record_preservation",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"moderate","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":["identity:heir"],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":7},"support":{"identity:heir":[{"detail":"heir","scope":"derived_identity","source_event_ids":["t_step_04","h_pressure"],"source_path":"identity.continuity_stance"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"},{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"moderate","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":2,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`
