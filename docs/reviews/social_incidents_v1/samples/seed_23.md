# Seed 23 — additional_distinct_history

```text
History architecture v2 | generation algorithm v3 | seed 23 | play start 0
Configuration: {"collapse_pattern":"office_fragmentation","content_revision":"history-v3-authored-4","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","population_catalog_id":"shipping_social_v1","precursor_form":"administrative_federation","pressure_domain":"human","pressure_motif":"succession_dispute","response_motif":"household_council","social_content_id":"social-contacts-v1-shipping-1","social_revision":"social-incidents-v1-authored-1","topology_family":"remnant_mosaic"}
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
-548 h_found [FOUNDING] A federation established a shared regional administration.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"},{"entity_id":"precursor","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]}]
-523 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Semon Gate (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-355 h_pressure [SPLIT] Rival succession records divided officials into a dissenting assembly.
  scope=regional | objective cause_domain=human
  actors: Semon Gate (precursor), Midasen (regional_body) | causes: h_body
  effects: [{"entity_id":"pressure_group","kind":"activate"},{"hazard":"none","id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-346 h_response [SPLIT] Households established their own provincial council as central coordination failed.
  scope=regional | objective cause_domain=human
  actors: Semon Gate (precursor), Midasen (regional_body), Bosil (pressure_group) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-337 h_failure [DISASTER] Regional offices ceased coordinating records and appointments; their administrative site was abandoned.
  scope=regional | objective cause_domain=human
  actors: Semon Gate (precursor), Veyveywen (province) | causes: h_response
  effects: [{"hazard":"none","id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-328 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Semon Gate (precursor), Midasen (regional_body), Bosil (pressure_group), Veyveywen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"hazard":"none","id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"},{"entity_id":"pressure_group","kind":"retire"},{"disposition":"untracked","entity_id":"precursor","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-316 t_root_f_00 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_00","kind":"activate"},{"entity_id":"f_00","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_00","kind":"activate"},{"entity_id":"home_f_00","kind":"settlement","location_id":"region","owner_id":"f_00"}]
-315 t_root_f_01 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_01","kind":"activate"},{"entity_id":"f_01","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["precursor"]},{"entity_id":"home_f_01","kind":"activate"},{"entity_id":"home_f_01","kind":"settlement","location_id":"region","owner_id":"f_01"}]
-314 t_root_f_02 [FOUNDING] A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"f_02","kind":"activate"},{"entity_id":"f_02","kind":"population","mode":"seed","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"home_f_02","kind":"activate"},{"entity_id":"home_f_02","kind":"settlement","location_id":"region","owner_id":"f_02"}]
-304 t_step_00 [MERGE] Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.
  scope=regional | objective cause_domain=human
  actors: Kemon Gate (f_00), Nawen Gate (f_01) | causes: t_root_f_00, t_root_f_01
  effects: [{"entity_id":"f_03","kind":"activate"},{"entity_id":"f_03","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_00"]},{"entity_id":"home_f_03","kind":"activate"},{"entity_id":"home_f_03","kind":"settlement","location_id":"region","owner_id":"f_03"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_00","kind":"retire"},{"disposition":"absorbed","entity_id":"f_00","kind":"population_fate","successor_ids":["f_03"],"untracked_template_ids":[]},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_03"},{"entity_id":"f_01","kind":"retire"},{"disposition":"untracked","entity_id":"f_01","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-285 t_step_01 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Namar Well (f_02) | causes: t_root_f_02
  effects: [{"entity_id":"cohort_00","kind":"activate"},{"entity_id":"cohort_00","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_02","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_02","cohort_00"]}]
-266 t_step_02 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Veyrin Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"cohort_01","kind":"activate"},{"entity_id":"cohort_01","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03","cohort_01"]}]
-246 t_step_03 [MIGRATION] Arriving residents joined an existing community without making their source a political parent.
  scope=regional | objective cause_domain=human
  actors: Veyrin Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"cohort_02","kind":"activate"},{"entity_id":"cohort_02","kind":"population","mode":"arrival","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":[]},{"entity_id":"f_03","kind":"population","mode":"join","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03","cohort_02"]}]
-227 t_step_04 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Veyrin Gate (f_03) | causes: t_step_00
  effects: [{"entity_id":"f_04","kind":"activate"},{"entity_id":"f_04","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_04","kind":"activate"},{"entity_id":"home_f_04","kind":"settlement","location_id":"region","owner_id":"f_04"},{"entity_id":"f_05","kind":"activate"},{"entity_id":"f_05","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_05","kind":"activate"},{"entity_id":"home_f_05","kind":"settlement","location_id":"region","owner_id":"f_05"},{"entity_id":"f_06","kind":"activate"},{"entity_id":"f_06","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_03"]},{"entity_id":"home_f_06","kind":"activate"},{"entity_id":"home_f_06","kind":"settlement","location_id":"region","owner_id":"f_06"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_04"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_04"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_04"},{"entity_id":"f_03","kind":"retire"},{"disposition":"absorbed","entity_id":"f_03","kind":"population_fate","successor_ids":["f_04","f_05","f_06"],"untracked_template_ids":[]}]
-207 t_step_05 [EXTINCTION] A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.
  scope=regional | objective cause_domain=human
  actors: Navak Gate (f_06) | causes: t_step_04
  effects: [{"entity_id":"f_06","kind":"retire"},{"disposition":"untracked","entity_id":"f_06","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]},{"entity_id":"home_f_06","kind":"retire"},{"hazard":"none","id":"abandoned_f_06","kind":"ruin","location_id":"region","ruin_kind":"administrative_site","site_type":"records"}]
-188 t_step_06 [REORGANIZATION] Residents reorganized political institutions, recording predecessor offices separately from contributing populations.
  scope=regional | objective cause_domain=human
  actors: Halith Gate (f_04), Namar Well (f_02) | causes: t_step_04, t_root_f_02
  effects: [{"entity_id":"f_07","kind":"activate"},{"entity_id":"f_07","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_04"]},{"entity_id":"home_f_07","kind":"activate"},{"entity_id":"home_f_07","kind":"settlement","location_id":"region","owner_id":"f_07"},{"entity_id":"home_f_04","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_03","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_00","kind":"site_owner","owner_id":"f_07"},{"entity_id":"home_f_01","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_04","kind":"retire"},{"disposition":"absorbed","entity_id":"f_04","kind":"population_fate","successor_ids":["f_07"],"untracked_template_ids":[]},{"entity_id":"home_f_02","kind":"site_owner","owner_id":"f_07"},{"entity_id":"f_02","kind":"retire"},{"disposition":"untracked","entity_id":"f_02","kind":"population_fate","successor_ids":[],"untracked_template_ids":["human_baseline"]}]
-169 t_step_07 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Fusen Well (f_05) | causes: t_step_04
  effects: [{"entity_id":"f_08","kind":"activate"},{"entity_id":"f_08","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_08","kind":"activate"},{"entity_id":"home_f_08","kind":"settlement","location_id":"region","owner_id":"f_08"},{"entity_id":"f_09","kind":"activate"},{"entity_id":"f_09","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_05"]},{"entity_id":"home_f_09","kind":"activate"},{"entity_id":"home_f_09","kind":"settlement","location_id":"region","owner_id":"f_09"},{"a":"f_05","b":"f_08","delta":-15,"kind":"relationship"}]
-149 t_step_08 [SPLIT] A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.
  scope=regional | objective cause_domain=human
  actors: Lusil Ruin (f_08) | causes: t_step_07
  effects: [{"entity_id":"f_10","kind":"activate"},{"entity_id":"f_10","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_10","kind":"activate"},{"entity_id":"home_f_10","kind":"settlement","location_id":"region","owner_id":"f_10"},{"entity_id":"f_11","kind":"activate"},{"entity_id":"f_11","kind":"population","mode":"inherit","profile":{"strata":[{"origins":["human_derived"],"prevalence":"majority","template_id":"human_baseline"}]},"source_ids":["f_08"]},{"entity_id":"home_f_11","kind":"activate"},{"entity_id":"home_f_11","kind":"settlement","location_id":"region","owner_id":"f_11"},{"entity_id":"home_f_08","kind":"site_owner","owner_id":"f_10"},{"entity_id":"f_08","kind":"retire"},{"disposition":"absorbed","entity_id":"f_08","kind":"population_fate","successor_ids":["f_10","f_11"],"untracked_template_ids":[]}]
-28 h_relation_0 [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Fusen Well (f_05), Hamar Gate (f_10) | causes: t_step_04, t_step_08
  effects: [{"a":"f_05","b":"f_10","delta":11,"kind":"relationship"}]
-26 h_relation_1 [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Fusen Well (f_05), Minar Gate (f_07) | causes: t_step_04, t_step_06
  effects: [{"a":"f_05","b":"f_07","delta":28,"kind":"relationship"}]
-5 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Fusen Well (f_05), Hamar Gate (f_10) | causes: h_relation_0
  effects: [{"a":"f_05","b":"f_10","delta":-10,"kind":"relationship"}]
=== PRESENT ===
=== HISTORICAL POLITIES (including extinct) ===
f_00: Kemon Gate | -316..-304 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_01: Nawen Gate | -315..-304 | extinct | parents=precursor | formation=direct_successor | ancestry=direct_successor | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_02: Namar Well | -314..-188 | extinct | parents= | formation=reorganization | ancestry=no_political_predecessor | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_03: Veyrin Gate | -304..-227 | extinct | parents=f_00, f_01 | formation=merger | ancestry=merge_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_04: Halith Gate | -227..-188 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_05: Fusen Well | -227..present | active | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_06: Navak Gate | -227..-207 | extinct | parents=f_03 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_07: Minar Gate | -188..present | active | parents=f_04, f_02 | formation=reorganization | ancestry=reorganized_descendant | institutional_heir=false | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_08: Lusil Ruin | -169..-149 | extinct | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_09: Nawen Well | -169..present | active | parents=f_05 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_10: Hamar Gate | -149..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
f_11: Namon Marsh | -149..present | active | parents=f_08 | formation=fragmentation | ancestry=split_descendant | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
precursor: Semon Gate | -548..-328 | extinct | parents= | formation=founding | ancestry=root | institutional_heir=true | founding_origins=human_baseline:Human-derived [majority; single-Origin lineage] | last_origins=human_baseline:Human-derived [majority; single-Origin lineage]
=== POPULATION PROVENANCE (distinct from political parents) ===
-548 precursor: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=h_found
-316 f_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_00
-315 f_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=precursor | events=t_root_f_01
-314 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=seed | donors= | events=t_root_f_02
-304 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_00 | events=t_step_00
-285 cohort_00: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_01
-285 f_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_02, cohort_00 | events=t_step_01
-266 cohort_01: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_02
-266 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_03, cohort_01 | events=t_step_02
-246 cohort_02: human_baseline:Human-derived [majority; single-Origin lineage] | mode=arrival | donors= | events=t_step_03
-246 f_03: human_baseline:Human-derived [majority; single-Origin lineage] | mode=join | donors=f_03, cohort_02 | events=t_step_03
-227 f_04: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-227 f_05: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-227 f_06: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_03 | events=t_step_04
-188 f_07: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_04 | events=t_step_06
-169 f_08: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_07
-169 f_09: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_05 | events=t_step_07
-149 f_10: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_08
-149 f_11: human_baseline:Human-derived [majority; single-Origin lineage] | mode=inherit | donors=f_08 | events=t_step_08
=== POLITICAL RETIREMENT / POPULATION DISPOSITION ===
-328 precursor: untracked | absorbed_into= | untracked_strata=human_baseline | events=h_collapse
-304 f_00: absorbed | absorbed_into=f_03 | untracked_strata= | events=t_step_00
-304 f_01: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_00
-227 f_03: absorbed | absorbed_into=f_04, f_05, f_06 | untracked_strata= | events=t_step_04
-207 f_06: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_05
-188 f_04: absorbed | absorbed_into=f_07 | untracked_strata= | events=t_step_06
-188 f_02: untracked | absorbed_into= | untracked_strata=human_baseline | events=t_step_06
-149 f_08: absorbed | absorbed_into=f_10, f_11 | untracked_strata= | events=t_step_08
=== CURRENT WORLD ===
=== OBJECTIVE SOCIAL HISTORY / CURRENT FACTS ===
Region region: Davak Reach
Faction f_05: Fusen Well | provincial_council | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=maintenance
  identity=breakaway/exchange/adapt | interpretation=technical/continuity | sources=t_step_04
  society patterns: Borrowed Offices, Maintenance Covenant, Mutual Obligation, Route Commonwealth
  The World Must Be Mended — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_07: Minar Gate | refugee_community | knowledge=observer_scholarly_term
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=reorganization | regional_roles=maintenance
  identity=reformer/institution/adapt | interpretation=technical/rupture | sources=t_step_06, h_collapse
  society patterns: Rebuilt From Fragments, Route Commonwealth
Faction f_09: Nawen Well | refugee_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=reformer/refuge/preserve | interpretation=pragmatic/continuity | sources=t_step_07
  society patterns: Archive Legitimacy, Shelter Compact
  Doctrine of Continuity — hardline: Important social norm; restriction candidate requires consumer review | reinforcement=structure:inherited_offices, role:archives
Faction f_10: Hamar Gate | modified_human_community | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=archives
  identity=reformer/locality/adapt | interpretation=pragmatic/continuity | sources=t_step_08
  society patterns: Borrowed Offices, Local Mandate, Mutual Obligation
  Measured Doubt — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Faction f_11: Namon Marsh | military_remnant | knowledge=
  origins=human_baseline:Human-derived [majority; single-Origin lineage] | formation=fragmentation | regional_roles=shelter
  identity=new_foundation/institution/rebuild | interpretation=pragmatic/continuity | sources=t_step_08
  society patterns: Borrowed Offices, Hazard Memory
  Radical Impermanence — moderate: A clear preference that generally tolerates disagreement or violation | reinforcement=
Ancestry f_05: parents=f_03; ancestors=f_00, f_01, f_03, precursor; sources=t_step_04, t_root_f_00, t_step_00, t_root_f_01, h_found, h_collapse
Ancestry f_07: parents=f_04, f_02; ancestors=f_00, f_01, f_02, f_03, f_04, precursor; sources=t_step_06, t_root_f_00, t_step_00, t_root_f_01, t_root_f_02, t_step_04, h_found, h_collapse
Ancestry f_09: parents=f_05; ancestors=f_00, f_01, f_03, f_05, precursor; sources=t_step_07, t_root_f_00, t_step_00, t_root_f_01, t_step_04, h_found, h_collapse
Ancestry f_10: parents=f_08; ancestors=f_00, f_01, f_03, f_05, f_08, precursor; sources=t_step_08, t_root_f_00, t_step_00, t_root_f_01, t_step_04, t_step_07, h_found, h_collapse
Ancestry f_11: parents=f_08; ancestors=f_00, f_01, f_03, f_05, f_08, precursor; sources=t_step_08, t_root_f_00, t_step_00, t_root_f_01, t_step_04, t_step_07, h_found, h_collapse
Relationship f_05 <-> f_07: 28; sources=h_relation_1
Relationship f_05 <-> f_10: 1; sources=h_relation_0, h_last
Settlement home_f_00: Midor | owner=f_07 | region=region | sources=t_root_f_00, t_step_00, t_step_04, t_step_06
Settlement home_f_01: Dasen | owner=f_07 | region=region | sources=t_root_f_01, t_step_00, t_step_04, t_step_06
Settlement home_f_02: Nalen | owner=f_07 | region=region | sources=t_root_f_02, t_step_06
Settlement home_f_03: Dafura | owner=f_07 | region=region | sources=t_step_00, t_step_04, t_step_06
Settlement home_f_04: Tolulen | owner=f_07 | region=region | sources=t_step_04, t_step_06
Settlement home_f_05: Sesil | owner=f_05 | region=region | sources=t_step_04
Settlement home_f_07: Tosen | owner=f_07 | region=region | sources=t_step_06
Settlement home_f_08: Kesil | owner=f_10 | region=region | sources=t_step_07, t_step_08
Settlement home_f_09: Veysen | owner=f_09 | region=region | sources=t_step_07
Settlement home_f_10: Nafumon | owner=f_10 | region=region | sources=t_step_08
Settlement home_f_11: Botodor | owner=f_11 | region=region | sources=t_step_08
Ruin abandoned_f_06: administrative_site | occupant= | region=region | sources=t_step_05
  site_type=records | hazard=none | recorded_use=
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
  site_type=records | hazard=none | recorded_use=
Ruin pressure_site: administrative_site | occupant= | region=region | sources=h_pressure
  site_type=records | hazard=none | recorded_use=
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
  site_type=records | hazard=none | recorded_use=
=== BELIEFS ===
Fusen Well (f_05; knowledge=):
  [t_step_04; confidence 0.41; legitimacy] Our recorded formation was fragmentation. Our identity begins with the decision to separate from a larger authority. Routes, exchange and reciprocal obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.37; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks a test of obligations that endured.
    reference_scope=event | evidence={}
  [t_step_07; confidence 0.73; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_05","b":"f_08","delta":-15}
  [h_relation_0; confidence 0.65; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_05","b":"f_10","delta":11}
  [h_relation_1; confidence 0.35; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":28}
  [h_last; confidence 0.87; interpretation] That recorded dispute reduced trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_05","b":"f_10","delta":-10}
  [; confidence 0.40; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":28}
  [; confidence 0.50; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_10","score":1}
Minar Gate (f_07; knowledge=observer_scholarly_term):
  [t_step_06; confidence 0.36; legitimacy] Our recorded formation was reorganization. We inherited older obligations, but not the right to reproduce the old order unchanged. Records, offices and shared procedures hold us together. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.40; interpretation] Regional records inherited conflicting records of succession. We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks the break between the old order and what followed.
    reference_scope=event | evidence={}
  [h_relation_1; confidence 0.68; interpretation] That recorded agreement increased trust at the time. Our account treats that recorded change as evidence, not proof of motive.
    reference_scope=event | evidence={"a":"f_05","b":"f_07","delta":28}
  [; confidence 0.85; interpretation] Current records indicate that our dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_07","score":28}
Nawen Well (f_09; knowledge=):
  [t_step_07; confidence 0.56; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shelter and mutual protection define membership. We try to preserve what still works.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.79; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
Hamar Gate (f_10; knowledge=):
  [t_step_08; confidence 0.53; legitimacy] Our recorded formation was fragmentation. We inherited older obligations, but not the right to reproduce the old order unchanged. Shared places and local obligations bind us. We change inherited practice when survival requires it.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.53; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
  [h_relation_0; confidence 0.81; interpretation] That recorded agreement increased trust at the time. It made practical cooperation easier.
    reference_scope=event | evidence={"a":"f_05","b":"f_10","delta":11}
  [h_last; confidence 0.79; interpretation] That recorded dispute reduced trust at the time. It made practical cooperation harder.
    reference_scope=event | evidence={"a":"f_05","b":"f_10","delta":-10}
  [; confidence 0.84; interpretation] Current dealings are cooperative.
    reference_scope=present | evidence={"a":"f_05","b":"f_10","score":1}
Namon Marsh (f_11; knowledge=):
  [t_step_08; confidence 0.80; legitimacy] Our recorded formation was fragmentation. We define ourselves as a community formed after the old order failed. Records, offices and shared procedures hold us together. We measure continuity by what we can restore.
    reference_scope=event | evidence={}
  [h_pressure; confidence 0.86; interpretation] Regional records inherited conflicting records of succession. Whatever larger story people tell, our tradition remembers it as a test of obligations that endured.
    reference_scope=event | evidence={}
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: not_checked
Scars: {"causal_count":21,"causal_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08","h_response","h_body"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_collapse","h_failure","h_found","h_last","h_pressure","h_relation_0","h_relation_1","t_root_f_00","t_root_f_01","t_root_f_02","t_step_00","t_step_01","t_step_02","t_step_03","t_step_04","t_step_05","t_step_06","t_step_07","t_step_08"],"important_events":21}
```

## Fusen Well (f_05)

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
								"t_step_04"
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
		"continuity",
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence",
		"sacred_craft",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"borrowed_offices",
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
					"t_step_04"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:exchange": [
			{
				"detail": "exchange",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
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
					"t_step_04"
				],
				"source_path": "event.narrative_key"
			},
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
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
					"t_step_04"
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
				"detail": "28",
				"scope": "faction",
				"source_event_ids": [
					"h_relation_1"
				],
				"source_path": "effect.relationship.delta"
			}
		],
		"history:hostility": [
			{
				"detail": "-15",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "effect.relationship.delta"
			},
			{
				"detail": "-10",
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
					"t_step_04"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_04"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:provincial_council": [
			{
				"detail": "provincial_council",
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
		"role:maintenance": [
			{
				"detail": "maintenance",
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
				"source_path": "present.settlements:home_f_05"
			}
		]
	},
	"faction_id": "f_05",
	"fear_tags": [
		"infrastructure_loss"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "breakaway",
		"interpretation_mode": "technical",
		"memory_frame": "continuity",
		"social_anchor": "exchange",
		"source_event_ids": [
			"t_step_04"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:provincial_council",
			"role:maintenance",
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
				"target": 4,
				"weight": 8
			},
			"support": {
				"life:provincial_council": [
					{
						"detail": "provincial_council",
						"scope": "faction",
						"source_event_ids": [
							"t_step_04"
						],
						"source_path": "entity.way_of_life"
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
			"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
			"id": "maintenance_covenant",
			"kind": "society_trait",
			"matched_preferences": [],
			"matched_required": [
				"role:maintenance"
			],
			"selection": {
				"method": "Evidence-gated weighted choice in independent culture namespace",
				"target": 4,
				"weight": 6
			},
			"support": {
				"role:maintenance": [
					{
						"detail": "maintenance",
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
						"detail": "11",
						"scope": "faction",
						"source_event_ids": [
							"h_relation_0"
						],
						"source_path": "effect.relationship.delta"
					},
					{
						"detail": "28",
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
							"t_step_04"
						],
						"source_path": "entity.regional_roles"
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
				"matched_preferences": [
					"life:provincial_council"
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
					"life:provincial_council": [
						{
							"detail": "provincial_council",
							"scope": "faction",
							"source_event_ids": [
								"t_step_04"
							],
							"source_path": "entity.way_of_life"
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
					"target": 4,
					"weight": 6
				},
				"support": {
					"role:maintenance": [
						{
							"detail": "maintenance",
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
							"detail": "11",
							"scope": "faction",
							"source_event_ids": [
								"h_relation_0"
							],
							"source_path": "effect.relationship.delta"
						},
						{
							"detail": "28",
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
		"neglect"
	],
	"tension_tags": [
		"anti_authority",
		"free_riding",
		"neglect",
		"route_monopoly"
	],
	"value_tags": [
		"compassion",
		"craftsmanship",
		"duty",
		"fair_exchange",
		"institutional_continuity",
		"reciprocity",
		"route_service",
		"technical_competence"
	]
}
```

Candidates: `[{"desire":"route_reconnection","explanation":"Consider reconnection, without changing route state.","historical_reference_ids":[],"id":"reconnect_routes","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"infrastructure_repair","explanation":"Consider repair; no new structure or capability is created.","historical_reference_ids":[],"id":"repair_infrastructure","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"},{"desire":"facility_restoration","explanation":"Seek restoration opportunities; no new facility is assumed.","historical_reference_ids":[],"id":"restore_facility","intensity":"moderate","provenance":{"explanation":"Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.","id":"world_must_be_mended","kind":"doctrine","matched_preferences":[],"matched_required":["role:maintenance"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"role:maintenance":[{"detail":"maintenance","scope":"faction","source_event_ids":["t_step_04"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"world_must_be_mended","status":"candidate"}]`

## Minar Gate (f_07)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [],
	"doctrine_intensities": {},
	"doctrines": [],
	"eligible_doctrines": [
		"debt_of_shelter",
		"practical_heresy",
		"radical_impermanence",
		"sacred_craft",
		"unfinished_form",
		"world_must_be_mended"
	],
	"eligible_traits": [
		"maintenance_covenant",
		"mutual_obligation",
		"rebuilt_from_fragments",
		"route_commonwealth",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
					"t_step_06",
					"h_collapse"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_reorganization": [
			{
				"detail": "political_reorganization",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
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
					"t_step_06"
				],
				"source_path": "entity.formation_origin"
			}
		],
		"history:cooperation": [
			{
				"detail": "28",
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
		"interpretation:technical": [
			{
				"detail": "technical",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_06",
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
		"role:maintenance": [
			{
				"detail": "maintenance",
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
					"t_root_f_00",
					"t_step_00",
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_00"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_01",
					"t_step_00",
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_01"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_root_f_02",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_02"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_00",
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_03"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_04",
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_04"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "present.settlements:home_f_07"
			}
		],
		"structure:multiple_parents": [
			{
				"detail": "f_04, f_02",
				"scope": "faction",
				"source_event_ids": [
					"t_step_06"
				],
				"source_path": "entity.parent_ids"
			}
		]
	},
	"faction_id": "f_07",
	"fear_tags": [],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "technical",
		"memory_frame": "rupture",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_06",
			"h_collapse"
		],
		"source_facts": [
			"formation:reorganization",
			"way_of_life:refugee_community",
			"role:maintenance",
			"political_continuity:false"
		]
	},
	"provenance": [
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
							"t_step_06",
							"h_collapse"
						],
						"source_path": "identity.continuity_stance"
					}
				],
				"structure:multiple_parents": [
					{
						"detail": "f_04, f_02",
						"scope": "faction",
						"source_event_ids": [
							"t_step_06"
						],
						"source_path": "entity.parent_ids"
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
		"society_traits": 2
	},
	"society_traits": [
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
								"t_step_06",
								"h_collapse"
							],
							"source_path": "identity.continuity_stance"
						}
					],
					"structure:multiple_parents": [
						{
							"detail": "f_04, f_02",
							"scope": "faction",
							"source_event_ids": [
								"t_step_06"
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
		"factional_exclusion",
		"route_monopoly"
	],
	"value_tags": [
		"coalition_building",
		"fair_exchange",
		"route_service"
	]
}
```

Candidates: `[]`

## Nawen Well (f_09)

```json
{
	"culture_revision": "faction-culture-v1-authored-2",
	"desire_tags": [
		"preserve_institutions"
	],
	"doctrine_intensities": {
		"continuity": "hardline"
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
				"explanation": "Important social norm; restriction candidate requires consumer review",
				"level": "hardline",
				"support_tags": [
					"structure:inherited_offices",
					"role:archives"
				]
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
								"t_step_07"
							],
							"source_path": "identity.memory_frame"
						}
					],
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.regional_roles"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
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
		"debt_of_shelter",
		"living_archive",
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:preserve": [
			{
				"detail": "preserve",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:refuge": [
			{
				"detail": "refuge",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
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
					"t_step_07"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:refugee_community": [
			{
				"detail": "refugee_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07"
				],
				"source_path": "present.settlements:home_f_09"
			}
		]
	},
	"faction_id": "f_09",
	"fear_tags": [
		"social_collapse"
	],
	"identity_profile": {
		"adaptive_stance": "preserve",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "refuge",
		"source_event_ids": [
			"t_step_07"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:refugee_community",
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
				"target": 2,
				"weight": 8
			},
			"support": {
				"role:archives": [
					{
						"detail": "archives",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.regional_roles"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
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
							"t_step_07"
						],
						"source_path": "entity.way_of_life"
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
							"t_step_07"
						],
						"source_path": "identity.memory_frame"
					}
				],
				"role:archives": [
					{
						"detail": "archives",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.regional_roles"
					}
				],
				"structure:inherited_offices": [
					{
						"detail": "Recorded institutional continuity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07"
						],
						"source_path": "entity.political_continuity"
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
				"matched_preferences": [
					"structure:inherited_offices"
				],
				"matched_required": [
					"role:archives"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 8
				},
				"support": {
					"role:archives": [
						{
							"detail": "archives",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
							],
							"source_path": "entity.regional_roles"
						}
					],
					"structure:inherited_offices": [
						{
							"detail": "Recorded institutional continuity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
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
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:refugee_community": [
						{
							"detail": "refugee_community",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07"
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
		"gratuitous_institutional_destruction"
	],
	"tension_tags": [
		"cruelty",
		"record_destruction"
	],
	"value_tags": [
		"compassion",
		"duty",
		"hospitality",
		"institutional_continuity",
		"record_preservation",
		"scholarship"
	]
}
```

Candidates: `[{"desire":"preserve_institutions","explanation":"Consider preserve institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"preserve_institutions","intensity":"hardline","provenance":{"explanation":"Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.","id":"continuity","kind":"doctrine","matched_preferences":["memory:continuity"],"matched_required":["structure:inherited_offices"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"memory:continuity":[{"detail":"continuity","scope":"derived_identity","source_event_ids":["t_step_07"],"source_path":"identity.memory_frame"}],"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_07"],"source_path":"entity.regional_roles"}],"structure:inherited_offices":[{"detail":"Recorded institutional continuity","scope":"faction","source_event_ids":["t_step_07"],"source_path":"entity.political_continuity"}]}},"source_doctrine_id":"continuity","status":"candidate"}]`

## Hamar Gate (f_10)

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
								"t_step_08"
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
		"measured_doubt",
		"no_more_masters",
		"radical_impermanence"
	],
	"eligible_traits": [
		"archive_legitimacy",
		"borrowed_offices",
		"local_mandate",
		"mutual_obligation"
	],
	"evidence": {
		"adaptive:adapt": [
			{
				"detail": "adapt",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:locality": [
			{
				"detail": "locality",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
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
					"t_step_08"
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
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
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
				"detail": "-10",
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
					"t_step_08"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:modified_human_community": [
			{
				"detail": "modified_human_community",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:archives": [
			{
				"detail": "archives",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_07",
					"t_step_08"
				],
				"source_path": "present.settlements:home_f_08"
			},
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "present.settlements:home_f_10"
			}
		]
	},
	"faction_id": "f_10",
	"fear_tags": [
		"false_certainty"
	],
	"identity_profile": {
		"adaptive_stance": "adapt",
		"continuity_stance": "reformer",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "locality",
		"source_event_ids": [
			"t_step_08"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:modified_human_community",
			"role:archives",
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
							"t_step_08"
						],
						"source_path": "entity.political_continuity"
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
				"target": 3,
				"weight": 3
			},
			"support": {
				"anchor:locality": [
					{
						"detail": "locality",
						"scope": "derived_identity",
						"source_event_ids": [
							"t_step_08"
						],
						"source_path": "identity.social_anchor"
					}
				],
				"structure:local_settlement": [
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_07",
							"t_step_08"
						],
						"source_path": "present.settlements:home_f_08"
					},
					{
						"detail": "Current local settlement under this polity",
						"scope": "faction",
						"source_event_ids": [
							"t_step_08"
						],
						"source_path": "present.settlements:home_f_10"
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
							"h_relation_0"
						],
						"source_path": "effect.relationship.delta"
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
							"t_step_08"
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
								"t_step_08"
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
					"target": 3,
					"weight": 3
				},
				"support": {
					"anchor:locality": [
						{
							"detail": "locality",
							"scope": "derived_identity",
							"source_event_ids": [
								"t_step_08"
							],
							"source_path": "identity.social_anchor"
						}
					],
					"structure:local_settlement": [
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_07",
								"t_step_08"
							],
							"source_path": "present.settlements:home_f_08"
						},
						{
							"detail": "Current local settlement under this polity",
							"scope": "faction",
							"source_event_ids": [
								"t_step_08"
							],
							"source_path": "present.settlements:home_f_10"
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
		"anti_authority",
		"external_domination",
		"free_riding"
	],
	"value_tags": [
		"compassion",
		"duty",
		"institutional_continuity",
		"local_service",
		"reciprocity",
		"scholarship",
		"skepticism"
	]
}
```

Candidates: `[{"desire":"verify_claims","explanation":"Consider verify claims as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"verify_claims","intensity":"moderate","provenance":{"explanation":"Actual unknown discovery, archive work or skeptical evidence handling supports a norm of withholding unsupported certainty.","id":"measured_doubt","kind":"doctrine","matched_preferences":["role:archives"],"matched_required":["role:archives"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":7},"support":{"role:archives":[{"detail":"archives","scope":"faction","source_event_ids":["t_step_08"],"source_path":"entity.regional_roles"}]}},"source_doctrine_id":"measured_doubt","status":"candidate"}]`

## Namon Marsh (f_11)

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
								"t_step_08"
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
		"no_more_masters",
		"order_above_survival",
		"radical_impermanence"
	],
	"eligible_traits": [
		"borrowed_offices",
		"hazard_memory",
		"shelter_compact"
	],
	"evidence": {
		"adaptive:rebuild": [
			{
				"detail": "rebuild",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.adaptive_stance"
			}
		],
		"anchor:institution": [
			{
				"detail": "institution",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.social_anchor"
			}
		],
		"event:political_split": [
			{
				"detail": "political_split",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "event.narrative_key"
			}
		],
		"formation:fragmentation": [
			{
				"detail": "fragmentation",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
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
		"identity:new_foundation": [
			{
				"detail": "new_foundation",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.continuity_stance"
			}
		],
		"interpretation:pragmatic": [
			{
				"detail": "pragmatic",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.interpretation_mode"
			}
		],
		"life:military_remnant": [
			{
				"detail": "military_remnant",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.way_of_life"
			}
		],
		"memory:continuity": [
			{
				"detail": "continuity",
				"scope": "derived_identity",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "identity.memory_frame"
			}
		],
		"role:shelter": [
			{
				"detail": "shelter",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.regional_roles"
			}
		],
		"structure:inherited_offices": [
			{
				"detail": "Recorded institutional continuity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "entity.political_continuity"
			}
		],
		"structure:local_settlement": [
			{
				"detail": "Current local settlement under this polity",
				"scope": "faction",
				"source_event_ids": [
					"t_step_08"
				],
				"source_path": "present.settlements:home_f_11"
			}
		]
	},
	"faction_id": "f_11",
	"fear_tags": [
		"institutional_stagnation"
	],
	"identity_profile": {
		"adaptive_stance": "rebuild",
		"continuity_stance": "new_foundation",
		"interpretation_mode": "pragmatic",
		"memory_frame": "continuity",
		"social_anchor": "institution",
		"source_event_ids": [
			"t_step_08"
		],
		"source_facts": [
			"formation:fragmentation",
			"way_of_life:military_remnant",
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
							"t_step_08"
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
				"target": 2,
				"weight": 3
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
				"role:shelter": [
					{
						"detail": "shelter",
						"scope": "faction",
						"source_event_ids": [
							"t_step_08"
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
							"t_step_08"
						],
						"source_path": "entity.formation_origin"
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
								"t_step_08"
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
					"target": 2,
					"weight": 3
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
					"role:shelter": [
						{
							"detail": "shelter",
							"scope": "faction",
							"source_event_ids": [
								"t_step_08"
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
		"unquestioned_hereditary_authority"
	],
	"tension_tags": [
		"anti_authority",
		"recklessness"
	],
	"value_tags": [
		"adaptability",
		"duty",
		"hazard_awareness",
		"institutional_continuity",
		"institutional_reform"
	]
}
```

Candidates: `[{"desire":"renew_institutions","explanation":"Consider renew institutions as a future social priority; no target, capability or completed action is asserted.","historical_reference_ids":[],"id":"renew_institutions","intensity":"moderate","provenance":{"explanation":"Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.","id":"radical_impermanence","kind":"doctrine","matched_preferences":[],"matched_required":["formation:fragmentation"],"selection":{"method":"Evidence-gated weighted choice in independent culture namespace","target":1,"weight":5},"support":{"formation:fragmentation":[{"detail":"fragmentation","scope":"faction","source_event_ids":["t_step_08"],"source_path":"entity.formation_origin"}]}},"source_doctrine_id":"radical_impermanence","status":"candidate"}]`
