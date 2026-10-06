# Seed 3 — incident_founder_replication, clone_followup_clone_divergence, intensity_hardline, intensity_hardline

```text
History architecture v2 | generation algorithm v3 | seed 3 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"impact_machine","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"city_confederation","pressure_domain":"human","pressure_motif":"military_overextension","response_motif":"ritual_schism","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"layered_migration"}
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
-47 s_00_00_cloning_archive_recovery [SOCIAL_INCIDENT] Residents recovered stored human-derived genomes and functioning cloning equipment; the equipment recovery is recorded before any clone-born cohort is produced.
  scope=local | objective cause_domain=human
  actors: Veyrin Gate (f_05) | causes: t_step_05
  effects: [{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_05"}]
-46 s_00_01_local_population_decline [SOCIAL_INCIDENT] A local disaster reduced the community population and left an abandoned workplace; surviving family stocks remained human-derived.
  scope=local | objective cause_domain=human
  actors: Veyrin Gate (f_05) | causes: t_step_05
  effects: [{"hazard":"none","id":"s_decline_0","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet","site_type":"residential"},{"content_id":"","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_05"}]
-45 s_00_02_founder_replication [SOCIAL_INCIDENT] Residents repeatedly copied a stored founder or specialist genome into a human-derived cohort. The copies are separate people, with recorded initial dependent status and founder-template provenance.
  scope=local | objective cause_domain=human
  actors: Veyrin Gate (f_05) | causes: t_step_05, s_00_00_cloning_archive_recovery
  effects: [{"entity_id":"s_cohort_0","kind":"activate"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0"},{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"founder_template","record_type":"practice","reference_id":"s_cohort_0"}]
-44 s_00_03_founder_template_death_record [SOCIAL_INCIDENT] The death of the founder-template person was recorded before a separate clone-born person raised an inheritance or replacement claim. Shared genome does not preserve personal identity.
  scope=local | objective cause_domain=human
  actors: Veyrin Gate (f_05) | causes: t_step_05, s_00_02_founder_replication
  effects: [{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"founder_template_death","record_type":"practice","reference_id":"s_cohort_0"}]
-43 s_00_04_clone_divergence [SOCIAL_INCIDENT] Later members of the recorded cohort diverged from its stored template through accumulated environmental changes and variation. This record does not assert genetic engineering or a new lineage.
  scope=local | objective cause_domain=human
  actors: Veyrin Gate (f_05) | causes: t_step_05, s_00_02_founder_replication
  effects: [{"content_id":"human_baseline","entity_id":"f_05","kind":"social_record","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0"}]
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
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Social record: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"stored_genomes","record_type":"practice","reference_id":"f_05","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Social record: {"content_id":"","entity_id":"f_05","operation":"observe","record_id":"population_decline","record_type":"scar","reference_id":"f_05","source_event_ids":["s_00_01_local_population_decline"],"year":-46}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_founder_replication"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_founder_replication"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"observe","record_id":"founder_template","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_02_founder_replication"],"year":-45}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"observe","record_id":"founder_template_death","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_03_founder_template_death_record"],"year":-44}
Social record: {"content_id":"human_baseline","entity_id":"f_05","operation":"observe","record_id":"clone_divergence","record_type":"practice","reference_id":"s_cohort_0","source_event_ids":["s_00_04_clone_divergence"],"year":-43}
Current social fact: {"content_id":"","entity_id":"f_05","operation":"establish","record_id":"cloning","record_type":"capability","reference_id":"f_05","source_event_ids":["s_00_00_cloning_archive_recovery"],"year":-47}
Current social fact: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_born","record_type":"cohort","reference_id":"s_cohort_0","source_event_ids":["s_00_02_founder_replication"],"year":-45}
Current social fact: {"content_id":"human_baseline","entity_id":"f_05","operation":"establish","record_id":"clone_dependency","record_type":"institution","reference_id":"s_cohort_0","source_event_ids":["s_00_02_founder_replication"],"year":-45}
Region region: Bolith Well
Faction f_01: Havak Well | kinship_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=local_exchange
  identity=reformer/kin/withdraw | interpretation=pragmatic/rupture | sources=t_root_f_01, h_collapse
  society patterns: Adaptive Customs, Household Sovereignty, Route Commonwealth
Faction f_04: Kewen Well | village_union | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=newcomer_formation | regional_roles=local_exchange
  identity=outsider/craft/adapt | interpretation=technical/rupture | sources=t_step_04, h_collapse
  society patterns: Mutual Obligation, Route Commonwealth
Faction f_05: Veyrin Gate | ritual_authority | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=shelter
  identity=reformer/refuge/preserve | interpretation=pragmatic/rupture | sources=t_step_05, h_collapse
  society patterns: Adaptive Customs, Hazard Memory, Ritual Stewardship, Shelter Compact
  Practical Heresy — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=formation:reorganization, interpretation:pragmatic
Faction f_06: Hawen Well | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=border_watch
  identity=new_foundation/institution/preserve | interpretation=technical/grievance | sources=t_step_06, h_last
  society patterns: Boundary Watch, Mutual Obligation, Route Commonwealth
Faction f_07: Sera Marsh | breakaway_clan | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=isolation
  identity=breakaway/kin/withdraw | interpretation=ritual/warning | sources=t_step_06, h_pressure
  society patterns: Household Sovereignty, Mutual Obligation, Route Commonwealth
  No More Masters — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=formation:fragmentation, life:breakaway_clan
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
Ruin s_decline_0: abandoned_hamlet | occupant= | region=region | sources=s_00_01_local_population_decline
  site_type=residential | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
Discovery unknown_object: machine_in_coastal_crater | origin=unknown | sources=h_discovery
=== BELIEFS ===
Havak Well (f_01; knowledge=):
  [t_root_f_01; confidence 0.84; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Household ties are what bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.55; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.70; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Kewen Well (f_04; knowledge=):
  [t_step_04; confidence 0.38; legitimacy] Our recorded formation was newcomer_formation. We entered this region outside the old local political lineage. Shared work and maintenance hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.87; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.51; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":20}
  [h_discovery; confidence 0.40; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.67; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-13}
  [; confidence 0.69; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":7}
Veyrin Gate (f_05; knowledge=):
  [t_step_05; confidence 0.61; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.65; interpretation] Regional records remembered withdrawn garrisons and displaced households. Whatever larger story people tell, our tradition remembers it as the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_discovery; confidence 0.64; interpretation] We record what the object does and where it was found; stories about its origin remain unproven.
    reference_scope=event | evidence={}
Hawen Well (f_06; knowledge=):
  [t_step_06; confidence 0.82; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.74; interpretation] Regional records remembered withdrawn garrisons and displaced households. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a failure of obligations people still argue about.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.90; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":20}
  [h_relation_1; confidence 0.68; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":17}
  [h_discovery; confidence 0.73; interpretation] We compared its manufacture with ancient works; the comparison narrows questions but does not establish its origin.
    reference_scope=event | evidence={}
  [h_last; confidence 0.75; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_04","b":"f_06","delta":-13}
  [; confidence 0.68; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_04","b":"f_06","score":7}
  [; confidence 0.39; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":17}
Sera Marsh (f_07; knowledge=):
  [t_step_06; confidence 0.79; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Household ties are what bind us. We survive by limiting obligations beyond our own boundaries.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.44; interpretation] Regional records remembered withdrawn garrisons and displaced households. Our rites preserve the event as a warning against repeating old mistakes, but ritual meaning does not establish its physical cause or the wider collapse.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.47; interpretation] That recorded agreement increased trust at the time. We remember it as an obligation accepted between communities.
    reference_scope=event | evidence={"a":"f_06","b":"f_07","delta":17}
  [h_discovery; confidence 0.37; interpretation] Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin.
    reference_scope=event | evidence={}
  [; confidence 0.41; interpretation] Current obligations between our communities are being kept.
    reference_scope=present | evidence={"a":"f_06","b":"f_07","score":17}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":25,"causal_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_founder_replication","s_00_03_founder_template_death_record","s_00_04_clone_divergence","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","h_response","h_body"],"causal_ratio":1.0,"direct_count":23,"direct_event_ids":["h_collapse","h_discovery","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","h_reuse","s_00_00_cloning_archive_recovery","s_00_01_local_population_decline","s_00_02_founder_replication","s_00_03_founder_template_death_record","s_00_04_clone_divergence","t_root_f_00","t_root_f_01","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06"],"important_events":25}
```

## Havak Well (f_01)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"adaptive_customs",
		"household_sovereignty",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
					"h_collapse"
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
					"t_root_f_01"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01"
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
				"detail": "military_overextension",
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
					"t_root_f_01",
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
					"t_root_f_01",
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
					"t_root_f_01"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_root_f_01",
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
					"t_root_f_01"
				],
				"source_path": "entity.regional_roles"
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
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_root_f_01",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:kinship_clan",
			"role:local_exchange",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
			"id": "adaptive_customs",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"formation:reorganization",
				"interpretation:pragmatic"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_root_f_01"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_root_f_01",
							"h_collapse"
						],
						"source_path": "identity.interpretation_mode"
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
							"t_root_f_01"
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"role:local_exchange": [
					{
						"detail": "local_exchange",
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
		"doctrines": 0,
		"society_traits": 3
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Adaptive Customs",
			"id": "adaptive_customs",
			"provenance": {
				"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
				"id": "adaptive_customs",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:reorganization",
					"interpretation:pragmatic"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_root_f_01",
								"h_collapse"
							],
							"source_path": "identity.interpretation_mode"
						}
					]
				}
			},
			"tension_tags": [
				"rigidity"
			],
			"value_tags": [
				"adaptability",
				"technical_competence"
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
								"t_root_f_01"
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
					"target": 3,
					"weight": 6
				},
				"support": {
					"role:local_exchange": [
						{
							"detail": "local_exchange",
							"scope": "faction",
							"source_event_ids": [
								"t_root_f_01"
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
	"taboo_tags": [],
	"tension_tags": [
		"external_domination",
		"rigidity",
		"route_monopoly"
	],
	"value_tags": [
		"adaptability",
		"fair_exchange",
		"household_autonomy",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[]`

## Kewen Well (f_04)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"no_more_masters"
	],
	"eligible_traits": [
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
					"t_step_04",
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
					"t_step_04",
					"h_collapse"
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
		"formation:newcomer_formation": [
			{
				"detail": "newcomer_formation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "20",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_0"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
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
				"detail": "military_overextension",
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
					"t_step_04",
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
					"t_step_04",
					"h_collapse"
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
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "present.settlements:home_f_04"
			}
		]
	},
	"faction_id": "f_04",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "outsider",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "craft",
		"source_event_ids": [
			"t_step_04",
			"h_collapse"
		],
		"source_facts": [
			"formation:newcomer_formation",
			"way_of_life:village_union",
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
						"detail": "20",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
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
							"t_step_04"
						],
						"source_path": "entity.regional_roles"
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
							"detail": "20",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
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
	"taboo_tags": [],
	"tension_tags": [
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"reciprocity",
		"route_service"
	]
}
```

Candidates: `[]`

## Veyrin Gate (f_05)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"adapt_social_practice"
	],
	"doctrine_intensities": {
		"practical_heresy": "hardline"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"formation:reorganization",
					"interpretation:pragmatic"
				]
			},
			"provenance": {
				"explanation": "Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.",
				"id": "practical_heresy",
				"kind": "doctrine",
				"matched_preferences": [
					"interpretation:pragmatic"
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
								"t_step_05"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_05",
								"h_collapse"
							],
							"source_path": "identity.interpretation_mode"
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
		"living_archive",
		"practical_heresy",
		"radical_impermanence"
	],
	"eligible_traits": [
		"adaptive_customs",
		"hazard_memory",
		"ritual_stewardship",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
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
					"t_step_05",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"capability:cloning": [
			{
				"content_ids": [],
				"detail": "Objective capability:cloning",
				"reference_ids": [
					"f_05"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_cloning_archive_recovery"
				],
				"source_path": "present.social_facts:capability:cloning"
			}
		],
		"event:clone_divergence": [
			{
				"detail": "clone_divergence",
				"scope": "faction",
				"source_event_ids": [
					"s_00_04_clone_divergence"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:cloning_archive_recovery": [
			{
				"detail": "cloning_archive_recovery",
				"scope": "faction",
				"source_event_ids": [
					"s_00_00_cloning_archive_recovery"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:founder_replication": [
			{
				"detail": "founder_replication",
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_founder_replication"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:founder_template_death_record": [
			{
				"detail": "founder_template_death_record",
				"scope": "faction",
				"source_event_ids": [
					"s_00_03_founder_template_death_record"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:local_population_decline": [
			{
				"detail": "local_population_decline",
				"scope": "faction",
				"source_event_ids": [
					"s_00_01_local_population_decline"
				],
				"source_path": "event.narrative_key"
			}
		],
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:reorganization": [
			{
				"detail": "reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:clone_divergence": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective practice:clone_divergence",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_04_clone_divergence"
				],
				"source_path": "present.social_history:practice:clone_divergence"
			}
		],
		"history:founder_replication": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective practice:founder_template",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_founder_replication"
				],
				"source_path": "present.social_history:practice:founder_template"
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
		"identity:reformer": [
			{
				"detail": "reformer",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_collapse"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"institution:clone_dependency": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective institution:clone_dependency",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_founder_replication"
				],
				"source_path": "present.social_facts:institution:clone_dependency"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
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
					"t_step_05"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:rupture": [
			{
				"detail": "rupture",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_05",
					"h_collapse"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"population:clone_born": [
			{
				"content_ids": [
					"human_baseline"
				],
				"detail": "Objective cohort:clone_born",
				"reference_ids": [
					"s_cohort_0"
				],
				"scope": "faction",
				"source_event_ids": [
					"s_00_02_founder_replication"
				],
				"source_path": "present.social_facts:cohort:clone_born"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
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
					"t_step_00",
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_02"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_05"
				],
				"source_path": "present.settlements:home_f_05"
			}
		]
	},
	"faction_id": "f_05",
	"fear_tags": [
		"tradition_driven_failure"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "rupture",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_05",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:ritual_authority",
			"role:shelter",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
			"id": "adaptive_customs",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"formation:reorganization",
				"interpretation:pragmatic"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"formation:reorganization": [
					{
						"detail": "reorganization",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_05",
							"h_collapse"
						],
						"source_path": "identity.interpretation_mode"
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
						"detail": "military_overextension",
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
							"t_step_05"
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
				"target": 4,
				"weight": 6
			},
			"support": {
				"life:ritual_authority": [
					{
						"detail": "ritual_authority",
						"scope": "faction",
						"source_event_ids": [
							"t_step_05"
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
							"t_step_05"
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
			"matched_preferences": [
				"interpretation:pragmatic"
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
							"t_step_05"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"interpretation:pragmatic": [
					{
						"detail": "pragmatic",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_05",
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
		"society_traits": 4
	},
	"society_traits": [
		{
			"category": "institutions",
			"display_name": "Adaptive Customs",
			"id": "adaptive_customs",
			"provenance": {
				"explanation": "Daily customs can change to meet concrete survival needs; this structural habit is distinct from the normative doctrine Practical Heresy.",
				"id": "adaptive_customs",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"formation:reorganization",
					"interpretation:pragmatic"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 4,
					"weight": 6
				},
				"support": {
					"formation:reorganization": [
						{
							"detail": "reorganization",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"interpretation:pragmatic": [
						{
							"detail": "pragmatic",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_05",
								"h_collapse"
							],
							"source_path": "identity.interpretation_mode"
						}
					]
				}
			},
			"tension_tags": [
				"rigidity"
			],
			"value_tags": [
				"adaptability",
				"technical_competence"
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
							"detail": "military_overextension",
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
								"t_step_05"
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"life:ritual_authority": [
						{
							"detail": "ritual_authority",
							"scope": "faction",
							"source_event_ids": [
								"t_step_05"
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
								"t_step_05"
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
		"harmful_rigidity"
	],
	"tension_tags": [
		"cruelty",
		"recklessness",
		"rigidity",
		"ritual_desecration"
	],
	"value_tags": [
		"adaptability",
		"compassion",
		"hazard_awareness",
		"hospitality",
		"memory_preservation",
		"ritualism",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"adapt_social_practice","explanation":"Consider adapt social practice as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"adapt_social_practice","intensity":"hardline","provenance":{"explanation":"Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.","id":"practical_heresy","kind":"doctrine","matched_preferences":["interpretation:pragmatic"],"matched_required":["formation:reorganization"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:reorganization":[{"detail":"reorganization","scope":"faction","source_event_ids":["t_step_05"],"source_path":"entity.formation_origin"}],"interpretation:pragmatic":[{"detail":"pragmatic","scope":"derived_identity","source_event_ids":["t_step_05","h_collapse"],"source_path":"identity.interpretation_mode"}]}},"source_doctrine_id":"practical_heresy","status":"candidate"}]`

## Hawen Well (f_06)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"boundary_watch",
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
					"t_step_06",
					"h_last"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "20",
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
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-13",
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
				"detail": "military_overextension",
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
					"t_step_06",
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
					"t_step_06",
					"h_last"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:military_remnant": [
			{
				"detail": "military_remnant",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:grievance": [
			{
				"detail": "grievance",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_last"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:border_watch": [
			{
				"detail": "border_watch",
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
					"t_step_02",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_06"
			}
		]
	},
	"faction_id": "f_06",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "technical",
		"memory_frame": "grievance",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_06",
			"h_last"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
			"role:border_watch",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.",
			"id": "boundary_watch",
			"kind": "society_trait",
			"matched_preferences": [
				"life:military_remnant"
			],
			"matched_required": [
				"role:border_watch"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 8
			},
			"support": {
				"life:military_remnant": [
					{
						"detail": "military_remnant",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
						],
						"source_path": "entity.way_of_life"
					}
				],
				"role:border_watch": [
					{
						"detail": "border_watch",
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "20",
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
				"matched_preferences": [
					"life:military_remnant"
				],
				"matched_required": [
					"role:border_watch"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 8
				},
				"support": {
					"life:military_remnant": [
						{
							"detail": "military_remnant",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
							],
							"source_path": "entity.way_of_life"
						}
					],
					"role:border_watch": [
						{
							"detail": "border_watch",
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
							"detail": "20",
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
	"taboo_tags": [],
	"tension_tags": [
		"free_riding",
		"route_monopoly",
		"unrestricted_travel"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"reciprocity",
		"route_service",
		"vigilance"
	]
}
```

Candidates: `[]`

## Sera Marsh (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"resist_domination"
	],
	"doctrine_intensities": {
		"no_more_masters": "hardline"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"formation:fragmentation",
					"life:breakaway_clan"
				]
			},
			"provenance": {
				"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
				"id": "no_more_masters",
				"kind": "doctrine",
				"matched_preferences": [
					"identity:breakaway"
				],
				"matched_required": [
					"formation:fragmentation",
					"life:breakaway_clan"
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
								"t_step_06"
							],
							"source_path": "entity.formation_origin"
						}
					],
					"identity:breakaway": [
						{
							"detail": "breakaway",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_06",
								"h_pressure"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"life:breakaway_clan": [
						{
							"detail": "breakaway_clan",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
							],
							"source_path": "entity.way_of_life"
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"closed_roads",
		"hazard_memory",
		"household_sovereignty",
		"mutual_obligation",
		"route_commonwealth"
	],
	"evidence": {
		"adaptive:withdraw": [
			{
				"detail": "withdraw",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:impact_machine": [
			{
				"detail": "impact_machine",
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
				"detail": "military_overextension",
				"scope": "regional",
				"source_event_ids": [
					"h_pressure"
				],
				"source_path": "event.narrative_key"
			}
		],
		"history:unknown_discovery": [
			{
				"detail": "machine_in_coastal_crater",
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
					"h_pressure"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:ritual": [
			{
				"detail": "ritual",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
					"h_pressure"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:breakaway_clan": [
			{
				"detail": "breakaway_clan",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:warning": [
			{
				"detail": "warning",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
		"role:isolation": [
			{
				"detail": "isolation",
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
				"source_path": "present.settlements:home_f_07"
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
	"faction_id": "f_07",
	"fear_tags": [
		"subjugation"
	],
	"identity_profile": {
		"adaptive_stance": "withdraw",
		"continuity_stance": "breakaway",
		"interpretation_mode": "ritual",
		"memory_frame": "warning",
		"social_anchor": "kin",
		"source_event_ids": [
			"t_step_06",
			"h_pressure"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:breakaway_clan",
			"role:isolation",
			"political_continuity:false"
		]
	},
	"provenance": [
		{
			"explanation": "A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.",
			"id": "household_sovereignty",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"life:breakaway_clan"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 3,
				"weight": 6
			},
			"support": {
				"life:breakaway_clan": [
					{
						"detail": "breakaway_clan",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
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
				"target": 3,
				"weight": 6
			},
			"support": {
				"history:cooperation": [
					{
						"detail": "17",
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
			"explanation": "Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.",
			"id": "no_more_masters",
			"kind": "doctrine",
			"matched_preferences": [
				"identity:breakaway"
			],
			"matched_required": [
				"formation:fragmentation",
				"life:breakaway_clan"
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
							"t_step_06"
						],
						"source_path": "entity.formation_origin"
					}
				],
				"identity:breakaway": [
					{
						"detail": "breakaway",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_06",
							"h_pressure"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"life:breakaway_clan": [
					{
						"detail": "breakaway_clan",
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
		"doctrines": 1,
		"society_traits": 3
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
					"life:breakaway_clan"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 3,
					"weight": 6
				},
				"support": {
					"life:breakaway_clan": [
						{
							"detail": "breakaway_clan",
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
				"external_domination"
			],
			"value_tags": [
				"household_autonomy"
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
							"detail": "17",
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
		"absolute_authority",
		"external_domination"
	],
	"tension_tags": [
		"external_domination",
		"free_riding",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"duty",
		"fair_exchange",
		"household_autonomy",
		"reciprocity",
		"route_service",
		"shared_responsibility"
	]
}
```

Candidates: `[{"desire":"resist_domination","explanation":"Consider resist domination as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"resist_domination","intensity":"hardline","provenance":{"explanation":"Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.","id":"no_more_masters","kind":"doctrine","matched_preferences":["identity:breakaway"],"matched_required":["formation:fragmentation","life:breakaway_clan"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_06"],"source_path":"entity.formation_origin"}],"identity:breakaway":[{"detail":"breakaway","scope":"derived_identity","source_event_ids":["t_step_06","h_pressure"],"source_path":"identity.continuity_stance"}],"life:breakaway_clan":[{"detail":"breakaway_clan","scope":"faction","source_event_ids":["t_step_06"],"source_path":"entity.way_of_life"}]}},"source_doctrine_id":"no_more_masters","status":"candidate"}]`
