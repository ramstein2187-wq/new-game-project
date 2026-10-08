# M041 readable faction culture samples

Shipping histories, derived culture and prospective hooks are separate. Regional scars are explicitly regional, not personal loss or contact.

## two_doctrines — seed 1 / f_02 (Bowen Marsh)

Life: provincial_council. Formation: direct_successor. Political parents: ["precursor"]. Regional roles: ["isolation"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"reformer","interpretation_mode":"pragmatic","memory_frame":"debt","social_anchor":"craft","source_event_ids":["t_root_f_02","h_last"],"source_facts":["formation:direct_successor","way_of_life:provincial_council","role:isolation","political_continuity:true"]}

- **Closed Roads**. An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.
  - Required evidence: ["role:isolation"]. Preferences: []. Selected weight 6, target 3.
  - role:isolation <- ["t_root_f_02"] / entity.regional_roles (faction): isolation.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 3.
  - structure:local_settlement <- ["t_root_f_02"] / present.settlements:home_f_02 (faction): Current local settlement under this polity.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 3.
  - history:cooperation <- ["h_relation_1"] / effect.relationship.delta (faction): 21.
  - history:cooperation <- ["h_last"] / effect.relationship.delta (faction): 43.
- **Order Above Survival** [custom] — Common preference; no stronger reinforcement selected; intensity support []. A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.
  - Required evidence: ["history:regional_collapse", "life:provincial_council"]. Preferences: ["history:hostility"]. Selected weight 7, target 2.
  - history:hostility <- ["t_step_01"] / effect.relationship.delta (faction): -13.
  - history:hostility <- ["h_relation_0"] / effect.relationship.delta (faction): -15.
  - history:regional_collapse <- ["h_collapse"] / event.narrative_key (regional): Recorded regional institutional collapse.
  - life:provincial_council <- ["t_root_f_02"] / entity.way_of_life (faction): provincial_council.
- **The World Must Be Mended** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.
  - Required evidence: ["event:maintenance_accord"]. Preferences: ["adaptive:rebuild"]. Selected weight 7, target 2.
  - adaptive:rebuild <- ["t_root_f_02", "h_last"] / identity.adaptive_stance (derived_identity): rebuild.
  - event:maintenance_accord <- ["h_last"] / event.narrative_key (faction): maintenance_accord.

Values: ["boundary_caution", "compassion", "craftsmanship", "discipline", "duty", "local_service", "reciprocity", "technical_competence"]. Taboos: ["insubordination", "neglect"]. Desires: ["facility_restoration", "infrastructure_repair", "reinforce_order", "route_reconnection"]. Fears: ["infrastructure_loss", "social_disintegration"].

### Recorded history behind the profile

- Year -347 / h_pressure: District offices stopped recognizing central appointments and formed a dissenting assembly. [regional].
- Year -326 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -312 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -283 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -28 / h_relation_0: A minor border dispute damaged a watch post and worsened relations. [regional].
- Year -26 / h_relation_1: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -5 / h_last: Maintainers agreed to share service duties across community boundaries. [regional].

Future goal candidates: reinforce_order <- order_above_survival, reconnect_routes <- world_must_be_mended, repair_infrastructure <- world_must_be_mended, restore_facility <- world_must_be_mended. No actions or target facts are created.

## one_doctrine — seed 2 / f_00 (Tosil Well)

Life: military_remnant. Formation: enclave_continuity. Political parents: []. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"new_foundation","interpretation_mode":"skeptical","memory_frame":"grievance","social_anchor":"institution","source_event_ids":["t_root_f_00","h_relation_0"],"source_facts":["formation:enclave_continuity","way_of_life:military_remnant","role:border_watch","political_continuity:false"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["role:border_watch", "event:border_dispute"]. Preferences: ["life:military_remnant"]. Selected weight 8, target 2.
  - role:border_watch <- ["t_root_f_00"] / entity.regional_roles (faction): border_watch.
  - event:border_dispute <- ["h_relation_0"] / event.narrative_key (faction): border_dispute.
  - event:border_dispute <- ["h_relation_1"] / event.narrative_key (faction): border_dispute.
  - life:military_remnant <- ["t_root_f_00"] / entity.way_of_life (faction): military_remnant.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 2.
  - history:cooperation <- ["h_last"] / effect.relationship.delta (faction): 22.
- **The World Must Be Mended** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.
  - Required evidence: ["event:maintenance_accord"]. Preferences: []. Selected weight 5, target 1.
  - event:maintenance_accord <- ["h_last"] / event.narrative_key (faction): maintenance_accord.

Values: ["compassion", "craftsmanship", "duty", "reciprocity", "technical_competence", "vigilance"]. Taboos: ["neglect"]. Desires: ["facility_restoration", "infrastructure_repair", "route_reconnection"]. Fears: ["infrastructure_loss"].

### Recorded history behind the profile

- Year -473 / t_root_f_00: An autonomous enclave established its own institutions before the regional collapse. [regional].
- Year -340 / h_pressure: Rival succession records divided officials into a dissenting assembly. [regional].
- Year -318 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -28 / h_relation_0: A minor border dispute damaged a watch post and worsened relations. [regional].
- Year -26 / h_relation_1: A minor border dispute damaged a watch post and worsened relations. [regional].
- Year -5 / h_last: Maintainers agreed to share service duties across community boundaries. [regional].

Future goal candidates: reconnect_routes <- world_must_be_mended, repair_infrastructure <- world_must_be_mended, restore_facility <- world_must_be_mended. No actions or target facts are created.

## mundane_zero_doctrines — seed 3 / f_01 (Havak Well)

Life: kinship_clan. Formation: reorganization. Political parents: []. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"withdraw","continuity_stance":"reformer","interpretation_mode":"pragmatic","memory_frame":"rupture","social_anchor":"kin","source_event_ids":["t_root_f_01","h_collapse"],"source_facts":["formation:reorganization","way_of_life:kinship_clan","role:local_exchange","political_continuity:false"]}

- **Household Sovereignty**. A clan livelihood organizes household autonomy. A regional response alone cannot assign this to unrelated factions.
  - Required evidence: ["life:kinship_clan"]. Preferences: []. Selected weight 6, target 3.
  - life:kinship_clan <- ["t_root_f_01"] / entity.way_of_life (faction): kinship_clan.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 3.
  - structure:local_settlement <- ["t_root_f_01"] / present.settlements:home_f_01 (faction): Current local settlement under this polity.
- **Practical Heresy**. Recorded institutional reorganization plus pragmatic interpretation supports adapting everyday conventions; it does not automatically choose the normative Doctrine of the same name.
  - Required evidence: ["formation:reorganization", "interpretation:pragmatic"]. Preferences: []. Selected weight 6, target 3.
  - formation:reorganization <- ["t_root_f_01"] / entity.formation_origin (faction): reorganization.
  - interpretation:pragmatic <- ["t_root_f_01", "h_collapse"] / identity.interpretation_mode (derived_identity): pragmatic.

Values: ["adaptability", "household_autonomy", "local_service", "technical_competence"]. Taboos: []. Desires: []. Fears: [].

### Recorded history behind the profile

- Year -349 / h_pressure: Overextended garrisons withdrew and organized displaced households around abandoned posts. [regional].
- Year -332 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -319 / t_root_f_01: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].

Future goal candidates: none. No actions or target facts are created.

## philosophy_continuity — seed 4 / f_01 (Furin Well)

Life: religious_community. Formation: fragmentation. Political parents: ["f_00"]. Regional roles: ["maintenance"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"reformer","interpretation_mode":"ritual","memory_frame":"rupture","social_anchor":"institution","source_event_ids":["t_step_00","h_collapse"],"source_facts":["formation:fragmentation","way_of_life:religious_community","role:maintenance","political_continuity:true"]}

- **Maintenance Covenant**. The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.
  - Required evidence: ["role:maintenance"]. Preferences: []. Selected weight 6, target 2.
  - role:maintenance <- ["t_step_00"] / entity.regional_roles (faction): maintenance.
- **Ritual Stewardship**. An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.
  - Required evidence: ["life:religious_community"]. Preferences: []. Selected weight 6, target 2.
  - life:religious_community <- ["t_step_00"] / entity.way_of_life (faction): religious_community.
- **Doctrine of Continuity** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.
  - Required evidence: ["structure:inherited_offices"]. Preferences: []. Selected weight 5, target 1.
  - structure:inherited_offices <- ["t_step_00"] / entity.political_continuity (faction): Recorded institutional continuity.

Values: ["craftsmanship", "duty", "institutional_continuity", "memory_preservation", "record_preservation", "ritualism", "technical_competence"]. Taboos: ["gratuitous_institutional_destruction"]. Desires: ["preserve_institutions"]. Fears: ["social_collapse"].

### Recorded history behind the profile

- Year -345 / h_pressure: Overextended garrisons withdrew and organized displaced households around abandoned posts. [regional].
- Year -326 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -314 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -95 / t_step_00: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].

Future goal candidates: preserve_institutions <- continuity. No actions or target facts are created.

## art_living_archive — seed 5 / f_11 (Sewen Well)

Life: religious_community. Formation: migration_settlement. Political parents: ["f_04"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"adapt","continuity_stance":"new_foundation","interpretation_mode":"ritual","memory_frame":"rupture","social_anchor":"ritual","source_event_ids":["t_step_05","h_collapse"],"source_facts":["formation:migration_settlement","way_of_life:religious_community","role:local_exchange","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: []. Selected weight 6, target 4.
  - structure:inherited_offices <- ["t_step_05"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 4.
  - history:cooperation <- ["t_step_05"] / effect.relationship.delta (faction): 16.
  - history:cooperation <- ["h_relation_0"] / effect.relationship.delta (faction): 32.
- **Ritual Stewardship**. An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.
  - Required evidence: ["life:religious_community", "reuse:ritual_site"]. Preferences: []. Selected weight 6, target 4.
  - life:religious_community <- ["t_step_05"] / entity.way_of_life (faction): religious_community.
  - reuse:ritual_site <- ["h_reuse"] / effect.reoccupy.purpose (faction): ritual_site.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["role:local_exchange"]. Preferences: []. Selected weight 6, target 4.
  - role:local_exchange <- ["t_step_05"] / entity.regional_roles (faction): local_exchange.
- **Living Archive** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.
  - Required evidence: ["life:religious_community", "reuse:ritual_site"]. Preferences: []. Selected weight 5, target 1.
  - life:religious_community <- ["t_step_05"] / entity.way_of_life (faction): religious_community.
  - reuse:ritual_site <- ["h_reuse"] / effect.reoccupy.purpose (faction): ritual_site.

Values: ["compassion", "duty", "fair_exchange", "institutional_continuity", "memory_preservation", "oral_history", "performance", "reciprocity", "ritualism", "route_service", "scholarship"]. Taboos: ["memory_erasure"]. Desires: ["memory_source_recovery", "performance_preservation"]. Fears: ["memory_loss"].

### Recorded history behind the profile

- Year -352 / h_pressure: Recurrent stress on an already critical fault released locally, damaging structures and travel routes; tidal stress was a small contributor, not a moon-alignment switch. [regional].
- Year -325 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -206 / t_step_05: Part of an existing population moved to a new political settlement while its source community continued. [regional].
- Year -37 / h_reuse: A community adopted a recorded compatible use of an older site; the damage and hazard record remained. [regional].
- Year -28 / h_relation_0: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -5 / h_last: A recent disagreement over local representation renewed a rivalry. [regional].

Future goal candidates: preserve_performance_tradition <- living_archive, recover_lost_memory_source <- living_archive. No actions or target facts are created.

## philosophy_world_must_be_mended — seed 6 / f_02 (Narin Marsh)

Life: refugee_community. Formation: fragmentation. Political parents: ["f_01"]. Regional roles: ["archives"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"breakaway","interpretation_mode":"pragmatic","memory_frame":"grievance","social_anchor":"refuge","source_event_ids":["t_step_00","h_relation_0"],"source_facts":["formation:fragmentation","way_of_life:refugee_community","role:archives","political_continuity:true"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["event:border_dispute"]. Preferences: []. Selected weight 6, target 2.
  - event:border_dispute <- ["h_relation_0"] / event.narrative_key (faction): border_dispute.
- **Shelter Compact**. An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.
  - Required evidence: ["life:refugee_community"]. Preferences: []. Selected weight 6, target 2.
  - life:refugee_community <- ["t_step_00"] / entity.way_of_life (faction): refugee_community.
- **The World Must Be Mended** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.
  - Required evidence: ["event:maintenance_accord"]. Preferences: []. Selected weight 5, target 1.
  - event:maintenance_accord <- ["h_last"] / event.narrative_key (faction): maintenance_accord.

Values: ["compassion", "craftsmanship", "duty", "hospitality", "technical_competence", "vigilance"]. Taboos: ["neglect"]. Desires: ["facility_restoration", "infrastructure_repair", "route_reconnection"]. Fears: ["infrastructure_loss"].

### Recorded history behind the profile

- Year -370 / h_pressure: District offices stopped recognizing central appointments and formed a dissenting assembly. [regional].
- Year -348 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -95 / t_step_00: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -28 / h_relation_0: A minor border dispute damaged a watch post and worsened relations. [regional].
- Year -26 / h_relation_1: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -5 / h_last: Maintainers agreed to share service duties across community boundaries. [regional].

Future goal candidates: reconnect_routes <- world_must_be_mended, repair_infrastructure <- world_must_be_mended, restore_facility <- world_must_be_mended. No actions or target facts are created.

## art_sacred_craft — seed 7 / f_03 (Lusen Gate)

Life: village_union. Formation: fragmentation. Political parents: ["f_02"]. Regional roles: ["maintenance"].

Identity: {"adaptive_stance":"adapt","continuity_stance":"new_foundation","interpretation_mode":"technical","memory_frame":"rupture","social_anchor":"locality","source_event_ids":["t_step_01","h_collapse"],"source_facts":["formation:fragmentation","way_of_life:village_union","role:maintenance","political_continuity:false"]}

- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: ["life:village_union"]. Selected weight 5, target 2.
  - structure:local_settlement <- ["t_root_f_02", "t_step_01"] / present.settlements:home_f_02 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_01"] / present.settlements:home_f_03 (faction): Current local settlement under this polity.
  - life:village_union <- ["t_step_01"] / entity.way_of_life (faction): village_union.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["life:village_union"]. Preferences: []. Selected weight 6, target 2.
  - life:village_union <- ["t_step_01"] / entity.way_of_life (faction): village_union.
- **Sacred Craft** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual skilled maintenance/craft livelihood can treat skilled making as an aesthetic and moral act, granting artisans social authority.
  - Required evidence: ["role:maintenance"]. Preferences: []. Selected weight 5, target 1.
  - role:maintenance <- ["t_step_01"] / entity.regional_roles (faction): maintenance.

Values: ["compassion", "craftsmanship", "duty", "item_provenance", "local_service", "reciprocity", "technical_competence"]. Taboos: ["craft_desecration"]. Desires: ["honor_skilled_making"]. Fears: ["craft_loss"].

### Recorded history behind the profile

- Year -341 / h_pressure: Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields. [regional].
- Year -316 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -302 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -274 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -238 / t_step_03: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].

Future goal candidates: honor_skilled_making <- sacred_craft. No actions or target facts are created.

## philosophy_no_more_masters — seed 8 / f_04 (Fudor Reach)

Life: provincial_council. Formation: newcomer_formation. Political parents: []. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"new_foundation","interpretation_mode":"technical","memory_frame":"warning","social_anchor":"institution","source_event_ids":["t_step_02","h_pressure"],"source_facts":["formation:newcomer_formation","way_of_life:provincial_council","role:border_watch","political_continuity:false"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["role:border_watch"]. Preferences: []. Selected weight 6, target 4.
  - role:border_watch <- ["t_step_02"] / entity.regional_roles (faction): border_watch.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: ["memory:warning"]. Selected weight 5, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): extreme_seasons.
  - memory:warning <- ["t_step_02", "h_pressure"] / identity.memory_frame (derived_identity): warning.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 4.
  - structure:local_settlement <- ["t_step_02"] / present.settlements:home_f_04 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["h_reuse"] / present.settlements:reused_site (faction): Current local settlement under this polity.
- **Newcomer Charter**. An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.
  - Required evidence: ["formation:newcomer_formation"]. Preferences: []. Selected weight 6, target 4.
  - formation:newcomer_formation <- ["t_step_02"] / entity.formation_origin (faction): newcomer_formation.
- **No More Masters** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded fragmentation, breakaway livelihood or newcomer independence supports resistance to concentrated authority.
  - Required evidence: ["formation:newcomer_formation"]. Preferences: []. Selected weight 5, target 1.
  - formation:newcomer_formation <- ["t_step_02"] / entity.formation_origin (faction): newcomer_formation.

Values: ["duty", "hazard_awareness", "hospitality", "household_autonomy", "local_service", "outsider", "shared_responsibility", "vigilance"]. Taboos: ["absolute_authority", "external_domination"]. Desires: ["resist_domination"]. Fears: ["subjugation"].

### Recorded history behind the profile

- Year -364 / h_pressure: Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields. [regional].
- Year -339 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -274 / t_step_02: A population from outside the local political lineage entered the region and established independent institutions. [regional].
- Year -37 / h_reuse: A community adopted a recorded compatible use of an older site; the damage and hazard record remained. [regional].

Future goal candidates: resist_domination <- no_more_masters. No actions or target facts are created.

## philosophy_radical_impermanence — seed 9 / f_10 (Dalith Well)

Life: religious_community. Formation: fragmentation. Political parents: ["f_08"]. Regional roles: ["shelter"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"reformer","interpretation_mode":"technical","memory_frame":"debt","social_anchor":"ritual","source_event_ids":["t_step_05","h_relation_4"],"source_facts":["formation:fragmentation","way_of_life:religious_community","role:shelter","political_continuity:false"]}

- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 2.
  - history:cooperation <- ["h_relation_4"] / effect.relationship.delta (faction): 26.
- **Ritual Stewardship**. An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.
  - Required evidence: ["life:religious_community"]. Preferences: []. Selected weight 6, target 2.
  - life:religious_community <- ["t_step_05"] / entity.way_of_life (faction): religious_community.
- **Radical Impermanence** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual reorganization or fragmentation can support institutional replacement rather than preservation merely for age.
  - Required evidence: ["formation:fragmentation"]. Preferences: ["identity:reformer"]. Selected weight 7, target 1.
  - formation:fragmentation <- ["t_step_05"] / entity.formation_origin (faction): fragmentation.
  - identity:reformer <- ["t_step_05", "h_relation_4"] / identity.continuity_stance (derived_identity): reformer.

Values: ["adaptability", "compassion", "duty", "institutional_reform", "memory_preservation", "reciprocity", "ritualism"]. Taboos: ["unquestioned_hereditary_authority"]. Desires: ["renew_institutions"]. Fears: ["institutional_stagnation"].

### Recorded history behind the profile

- Year -342 / h_pressure: Failures across the regional trade network left stations abandoned and central levies unsupported. [regional].
- Year -323 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -196 / t_step_05: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -20 / h_relation_4: Communities reopened regional trade and negotiated access obligations. [regional].

Future goal candidates: renew_institutions <- radical_impermanence. No actions or target facts are created.

## philosophy_order_above_survival — seed 10 / f_07 (Darin Ruin)

Life: military_remnant. Formation: newcomer_formation. Political parents: []. Regional roles: ["archives"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"new_foundation","interpretation_mode":"pragmatic","memory_frame":"warning","social_anchor":"kin","source_event_ids":["t_step_04","h_pressure"],"source_facts":["formation:newcomer_formation","way_of_life:military_remnant","role:archives","political_continuity:false"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["event:border_dispute"]. Preferences: ["life:military_remnant"]. Selected weight 8, target 3.
  - event:border_dispute <- ["h_relation_2"] / event.narrative_key (faction): border_dispute.
  - life:military_remnant <- ["t_step_04"] / entity.way_of_life (faction): military_remnant.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: ["memory:warning"]. Selected weight 5, target 3.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): extreme_seasons.
  - memory:warning <- ["t_step_04", "h_pressure"] / identity.memory_frame (derived_identity): warning.
- **Newcomer Charter**. An actual newcomer formation or population join makes incorporation of arriving residents part of social life; no written charter is asserted.
  - Required evidence: ["formation:newcomer_formation"]. Preferences: []. Selected weight 6, target 3.
  - formation:newcomer_formation <- ["t_step_04"] / entity.formation_origin (faction): newcomer_formation.
- **Order Above Survival** [doctrine] — Authored reinforcement rule satisfied by recorded evidence; intensity support ["life:military_remnant", "history:hostility"]. A military-remnant livelihood or institutional role, after recorded collapse, can make strict order a paramount norm.
  - Required evidence: ["history:regional_collapse", "life:military_remnant"]. Preferences: ["history:hostility"]. Selected weight 7, target 1.
  - history:hostility <- ["h_relation_2"] / effect.relationship.delta (faction): -34.
  - history:regional_collapse <- ["h_collapse"] / event.narrative_key (regional): Recorded regional institutional collapse.
  - life:military_remnant <- ["t_step_04"] / entity.way_of_life (faction): military_remnant.

Values: ["discipline", "duty", "hazard_awareness", "hospitality", "outsider", "vigilance"]. Taboos: ["insubordination"]. Desires: ["reinforce_order"]. Fears: ["social_disintegration"].

### Recorded history behind the profile

- Year -367 / h_pressure: Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields. [regional].
- Year -345 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -237 / t_step_04: A population from outside the local political lineage entered the region and established independent institutions. [regional].
- Year -24 / h_relation_2: A minor border dispute damaged a watch post and worsened relations. [regional].

Future goal candidates: reinforce_order <- order_above_survival. No actions or target facts are created.

## art_beauty_against_ruin — seed 13 / f_09 (Minar Gate)

Life: village_union. Formation: fragmentation. Political parents: ["f_05"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"reformer","interpretation_mode":"ritual","memory_frame":"warning","social_anchor":"exchange","source_event_ids":["t_step_02","h_legacy_orbital"],"source_facts":["formation:fragmentation","way_of_life:village_union","role:local_exchange","political_continuity:true"]}

- **Closed Roads**. An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.
  - Required evidence: ["scar:core_quarantine"]. Preferences: []. Selected weight 6, target 2.
  - scar:core_quarantine <- ["h_pressure"] / event.narrative_key (regional): core_quarantine.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["role:local_exchange"]. Preferences: []. Selected weight 6, target 2.
  - role:local_exchange <- ["t_step_02"] / entity.regional_roles (faction): local_exchange.
- **Beauty Against Ruin** [custom] — Common preference; no stronger reinforcement selected; intensity support []. A rebuilding community in an actual collapsed region may prioritize beauty in public reconstruction rather than utility alone.
  - Required evidence: ["history:regional_collapse", "adaptive:rebuild", "structure:local_settlement", "life:village_union"]. Preferences: []. Selected weight 5, target 1.
  - adaptive:rebuild <- ["t_step_02", "h_legacy_orbital"] / identity.adaptive_stance (derived_identity): rebuild.
  - history:regional_collapse <- ["h_collapse"] / event.narrative_key (regional): Recorded regional institutional collapse.
  - life:village_union <- ["t_step_02"] / entity.way_of_life (faction): village_union.
  - structure:local_settlement <- ["t_root_f_00", "t_step_00", "t_step_02"] / present.settlements:home_f_00 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_02", "t_step_00", "t_step_02"] / present.settlements:home_f_02 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_04", "t_step_00", "t_step_02"] / present.settlements:home_f_04 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_00", "t_step_02"] / present.settlements:home_f_05 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_02"] / present.settlements:home_f_09 (faction): Current local settlement under this polity.

Values: ["artistry", "boundary_caution", "craftsmanship", "fair_exchange", "public_beauty", "route_service"]. Taboos: []. Desires: ["beautiful_public_works"]. Fears: ["purely_utilitarian_rebuilding"].

### Recorded history behind the profile

- Year -343 / h_pressure: Core-associated barriers isolated a district using existing infrastructure. The underlying purpose is unknown. [local].
- Year -317 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -305 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -303 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -301 / t_root_f_04: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -293 / t_step_00: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -257 / t_step_02: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -115 / h_legacy_orbital: An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown. [local].

Future goal candidates: beautiful_public_works <- beauty_against_ruin. No actions or target facts are created.

## art_unfinished_form — seed 15 / f_11 (Hanar Gate)

Life: migrant_confederation. Formation: reorganization. Political parents: ["f_04", "f_06"]. Regional roles: ["shelter"].

Identity: {"adaptive_stance":"adapt","continuity_stance":"reformer","interpretation_mode":"technical","memory_frame":"debt","social_anchor":"refuge","source_event_ids":["t_step_04","h_relation_3"],"source_facts":["formation:reorganization","way_of_life:migrant_confederation","role:shelter","political_continuity:false"]}

- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 2.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): radiative_haze.
- **Rebuilt From Fragments**. Actual merger or multiple political parents supports consolidated institutions, not biological fusion.
  - Required evidence: ["structure:multiple_parents"]. Preferences: ["identity:reformer"]. Selected weight 8, target 2.
  - structure:multiple_parents <- ["t_step_04"] / entity.parent_ids (faction): f_04, f_06.
  - identity:reformer <- ["t_step_04", "h_relation_3"] / identity.continuity_stance (derived_identity): reformer.
- **The Unfinished Form** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual institutional reorganization plus adaptive identity supports the aesthetic value of change and incompleteness; no local modified bodies are inferred.
  - Required evidence: ["formation:reorganization", "adaptive:adapt"]. Preferences: []. Selected weight 5, target 1.
  - adaptive:adapt <- ["t_step_04", "h_relation_3"] / identity.adaptive_stance (derived_identity): adapt.
  - formation:reorganization <- ["t_step_04"] / entity.formation_origin (faction): reorganization.

Values: ["artistry", "bodily_adaptation", "coalition_building", "experimentation", "hazard_awareness"]. Taboos: ["enforced_aesthetic_stasis"]. Desires: ["adaptive_aesthetics"]. Fears: ["forced_completion"].

### Recorded history behind the profile

- Year -357 / h_pressure: Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved. [regional].
- Year -337 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -321 / t_root_f_04: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -313 / t_step_00: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -232 / t_step_04: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].
- Year -22 / h_relation_3: Maintainers agreed to share service duties across community boundaries. [regional].

Future goal candidates: adaptive_aesthetics <- unfinished_form. No actions or target facts are created.

## historical_scar_unspoiled_ground — seed 17 / f_00 (Zomar Marsh)

Life: religious_community. Formation: direct_successor. Political parents: ["precursor"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"adapt","continuity_stance":"breakaway","interpretation_mode":"pragmatic","memory_frame":"opportunity","social_anchor":"ritual","source_event_ids":["t_root_f_00","h_discovery"],"source_facts":["formation:direct_successor","way_of_life:religious_community","role:local_exchange","political_continuity:true"]}

- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 3.
  - history:cooperation <- ["h_relation_1"] / effect.relationship.delta (faction): 10.
  - history:cooperation <- ["h_relation_3"] / effect.relationship.delta (faction): 34.
  - history:cooperation <- ["h_relation_4"] / effect.relationship.delta (faction): 14.
- **Ritual Stewardship**. An actual religious/ritual livelihood or recorded ritual-site reuse supports communal stewardship of rites.
  - Required evidence: ["life:religious_community"]. Preferences: []. Selected weight 6, target 3.
  - life:religious_community <- ["t_root_f_00"] / entity.way_of_life (faction): religious_community.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["role:local_exchange"]. Preferences: []. Selected weight 6, target 3.
  - role:local_exchange <- ["t_root_f_00"] / entity.regional_roles (faction): local_exchange.
- **Doctrine of Continuity** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.
  - Required evidence: ["structure:inherited_offices"]. Preferences: []. Selected weight 5, target 2.
  - structure:inherited_offices <- ["t_root_f_00"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Unspoiled Ground** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded chemical abandonment makes clean or restored land a social desire; candidate relocation is an aspiration, not an executed move.
  - Required evidence: ["scar:chemical_exposure"]. Preferences: []. Selected weight 5, target 2.
  - scar:chemical_exposure <- ["h_pressure"] / event.narrative_key (regional): chemical_exposure.

Values: ["compassion", "duty", "fair_exchange", "hazard_awareness", "institutional_continuity", "land_stewardship", "memory_preservation", "reciprocity", "record_preservation", "ritualism", "route_service"]. Taboos: ["gratuitous_institutional_destruction", "land_contamination"]. Desires: ["clean_territory", "land_purification", "preserve_institutions", "safe_relocation"]. Fears: ["contamination", "social_collapse"].

### Recorded history behind the profile

- Year -360 / h_pressure: Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified. [regional].
- Year -332 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -320 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -26 / h_relation_1: Maintainers agreed to share service duties across community boundaries. [regional].
- Year -22 / h_relation_3: Maintainers agreed to share service duties across community boundaries. [regional].
- Year -20 / h_relation_4: Maintainers agreed to share service duties across community boundaries. [regional].
- Year -12 / h_discovery: A fragment showed unfamiliar manufacture; its origin remains unresolved. [local].

Future goal candidates: preserve_institutions <- continuity, find_clean_territory <- unspoiled_ground, purify_contaminated_land <- unspoiled_ground, relocate_population <- unspoiled_ground. No actions or target facts are created.

## philosophy_practical_heresy — seed 18 / f_08 (Veylen Gate)

Life: refugee_community. Formation: reorganization. Political parents: ["f_03", "f_07"]. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"reformer","interpretation_mode":"pragmatic","memory_frame":"opportunity","social_anchor":"refuge","source_event_ids":["t_step_02"],"source_facts":["formation:reorganization","way_of_life:refugee_community","role:border_watch","political_continuity:false"]}

- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 3.
  - structure:local_settlement <- ["t_root_f_03", "t_step_02"] / present.settlements:home_f_03 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_01", "t_step_02"] / present.settlements:home_f_07 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_02"] / present.settlements:home_f_08 (faction): Current local settlement under this polity.
- **Rebuilt From Fragments**. Actual merger or multiple political parents supports consolidated institutions, not biological fusion.
  - Required evidence: ["structure:multiple_parents"]. Preferences: ["identity:reformer"]. Selected weight 8, target 3.
  - structure:multiple_parents <- ["t_step_02"] / entity.parent_ids (faction): f_03, f_07.
  - identity:reformer <- ["t_step_02"] / identity.continuity_stance (derived_identity): reformer.
- **Shelter Compact**. An actual shelter role or refugee-community livelihood organizes refuge and local accommodation.
  - Required evidence: ["life:refugee_community"]. Preferences: []. Selected weight 6, target 3.
  - life:refugee_community <- ["t_step_02"] / entity.way_of_life (faction): refugee_community.
- **Practical Heresy** [doctrine] — Authored reinforcement rule satisfied by recorded evidence; intensity support ["formation:reorganization", "interpretation:pragmatic"]. Actual reorganization or adaptive service practice supports breaking tradition when survival or adaptation requires it.
  - Required evidence: ["formation:reorganization"]. Preferences: ["interpretation:pragmatic"]. Selected weight 7, target 1.
  - formation:reorganization <- ["t_step_02"] / entity.formation_origin (faction): reorganization.
  - interpretation:pragmatic <- ["t_step_02"] / identity.interpretation_mode (derived_identity): pragmatic.

Values: ["adaptability", "coalition_building", "compassion", "hospitality", "local_service", "technical_competence"]. Taboos: ["harmful_rigidity"]. Desires: ["adapt_social_practice"]. Fears: ["tradition_driven_failure"].

### Recorded history behind the profile

- Year -359 / h_pressure: Overextended garrisons withdrew and organized displaced households around abandoned posts. [regional].
- Year -336 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -321 / t_root_f_03: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -292 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -272 / t_step_02: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].

Future goal candidates: adapt_social_practice <- practical_heresy. No actions or target facts are created.

## unusual_technical_revelation — seed 21 / f_13 (Tomar Reach)

Life: regional_commune. Formation: fragmentation. Political parents: ["f_11"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"reformer","interpretation_mode":"technical","memory_frame":"continuity","social_anchor":"craft","source_event_ids":["t_step_07"],"source_facts":["formation:fragmentation","way_of_life:regional_commune","role:local_exchange","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: []. Selected weight 6, target 4.
  - structure:inherited_offices <- ["t_step_07"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: ["life:regional_commune"]. Selected weight 5, target 4.
  - structure:local_settlement <- ["t_root_f_01", "t_step_00", "t_step_02", "t_step_05", "t_step_07"] / present.settlements:home_f_01 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_03", "t_step_00", "t_step_02", "t_step_05", "t_step_07"] / present.settlements:home_f_03 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_00", "t_step_02", "t_step_05", "t_step_07"] / present.settlements:home_f_05 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_02", "t_step_05", "t_step_07"] / present.settlements:home_f_06 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_04", "t_step_05", "t_step_07"] / present.settlements:home_f_10 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_05", "t_step_07"] / present.settlements:home_f_11 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_07"] / present.settlements:home_f_13 (faction): Current local settlement under this polity.
  - life:regional_commune <- ["t_step_07"] / entity.way_of_life (faction): regional_commune.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["life:regional_commune"]. Preferences: []. Selected weight 6, target 4.
  - life:regional_commune <- ["t_step_07"] / entity.way_of_life (faction): regional_commune.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["role:local_exchange"]. Preferences: []. Selected weight 6, target 4.
  - role:local_exchange <- ["t_step_07"] / entity.regional_roles (faction): local_exchange.
- **Machine Revelation** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.
  - Required evidence: ["scar:environmental_change"]. Preferences: ["interpretation:technical"]. Selected weight 7, target 2.
  - interpretation:technical <- ["t_step_07"] / identity.interpretation_mode (derived_identity): technical.
  - scar:environmental_change <- ["h_pressure"] / event.narrative_key (regional): core_boundary_adjustment.
- **New Ecology** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.
  - Required evidence: ["scar:environmental_change"]. Preferences: []. Selected weight 5, target 2.
  - scar:environmental_change <- ["h_pressure"] / event.narrative_key (regional): core_boundary_adjustment.

Values: ["compassion", "duty", "ecological_adaptation", "fair_exchange", "institutional_continuity", "local_service", "machine_study", "reciprocity", "ritualism", "route_service"]. Taboos: []. Desires: ["accommodate_changed_environment", "interpret_legacy_behavior"]. Fears: ["ecological_rigidity", "lost_guidance"].

### Recorded history behind the profile

- Year -345 / h_pressure: Core-associated equipment gradually changed local environmental boundary conditions. Its purpose is unknown. [local].
- Year -321 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -308 / t_root_f_01: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -306 / t_root_f_03: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -297 / t_step_00: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -260 / t_step_02: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -223 / t_step_04: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -204 / t_step_05: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -167 / t_step_07: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].

Future goal candidates: interpret_legacy_behavior <- machine_revelation, accommodate_changed_environment <- new_ecology. No actions or target facts are created.

## historical_scar_machine_revelation — seed 22 / f_10 (Bosil Well)

Life: provincial_council. Formation: migration_settlement. Political parents: ["f_08"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"new_foundation","interpretation_mode":"technical","memory_frame":"warning","social_anchor":"kin","source_event_ids":["t_step_05","h_legacy_core"],"source_facts":["formation:migration_settlement","way_of_life:provincial_council","role:local_exchange","political_continuity:false"]}

- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: ["memory:warning"]. Selected weight 5, target 2.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): extreme_seasons.
  - memory:warning <- ["t_step_05", "h_legacy_core"] / identity.memory_frame (derived_identity): warning.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["role:local_exchange"]. Preferences: []. Selected weight 6, target 2.
  - role:local_exchange <- ["t_step_05"] / entity.regional_roles (faction): local_exchange.
- **Machine Revelation** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded ancient infrastructure behavior may carry meaning or guidance. This is a normative interpretation, never a claim to know Core intention.
  - Required evidence: ["scar:environmental_change"]. Preferences: ["interpretation:technical"]. Selected weight 7, target 2.
  - interpretation:technical <- ["t_step_05", "h_legacy_core"] / identity.interpretation_mode (derived_identity): technical.
  - scar:environmental_change <- ["h_legacy_core"] / event.narrative_key (regional): core_boundary_adjustment.
- **New Ecology** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.
  - Required evidence: ["scar:environmental_change"]. Preferences: []. Selected weight 5, target 2.
  - scar:environmental_change <- ["h_legacy_core"] / event.narrative_key (regional): core_boundary_adjustment.

Values: ["ecological_adaptation", "fair_exchange", "hazard_awareness", "machine_study", "ritualism", "route_service"]. Taboos: []. Desires: ["accommodate_changed_environment", "interpret_legacy_behavior"]. Fears: ["ecological_rigidity", "lost_guidance"].

### Recorded history behind the profile

- Year -360 / h_pressure: Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields. [regional].
- Year -341 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -214 / t_step_05: Part of an existing population moved to a new political settlement while its source community continued. [regional].
- Year -144 / h_legacy_core: Core-associated equipment gradually changed local environmental boundary conditions. Its purpose is unknown. [local].
- Year -24 / h_relation_2: Maintainers agreed to share service duties across community boundaries. [regional].

Future goal candidates: interpret_legacy_behavior <- machine_revelation, accommodate_changed_environment <- new_ecology. No actions or target facts are created.

## historical_scar_skyward_hunger — seed 33 / f_00 (Hawen Well)

Life: modified_human_community. Formation: direct_successor. Political parents: ["precursor"]. Regional roles: ["maintenance"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"heir","interpretation_mode":"technical","memory_frame":"opportunity","social_anchor":"kin","source_event_ids":["t_root_f_00"],"source_facts":["formation:direct_successor","way_of_life:modified_human_community","role:maintenance","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: ["identity:heir"]. Selected weight 8, target 4.
  - structure:inherited_offices <- ["t_root_f_00"] / entity.political_continuity (faction): Recorded institutional continuity.
  - identity:heir <- ["t_root_f_00"] / identity.continuity_stance (derived_identity): heir.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): orbital_fragment.
- **Maintenance Covenant**. The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.
  - Required evidence: ["role:maintenance"]. Preferences: []. Selected weight 6, target 4.
  - role:maintenance <- ["t_root_f_00"] / entity.regional_roles (faction): maintenance.
- **Scarred by the Sky**. Recorded regional orbital damage or debris becomes shared hazard memory; it is not proof of Outerworld contact or purposeful targeting.
  - Required evidence: ["scar:orbital_debris"]. Preferences: []. Selected weight 6, target 4.
  - scar:orbital_debris <- ["h_pressure"] / event.narrative_key (regional): orbital_fragment.
- **Skyward Hunger** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual orbital debris, damage or sky signals may inspire investigation and recovered access even for skeptical interpreters; no origin/contact or working launch capability follows.
  - Required evidence: ["scar:orbital_debris"]. Preferences: ["interpretation:technical", "adaptive:rebuild"]. Selected weight 9, target 1.
  - adaptive:rebuild <- ["t_root_f_00"] / identity.adaptive_stance (derived_identity): rebuild.
  - interpretation:technical <- ["t_root_f_00"] / identity.interpretation_mode (derived_identity): technical.
  - scar:orbital_debris <- ["h_pressure"] / event.narrative_key (regional): orbital_fragment.

Values: ["craftsmanship", "duty", "hazard_awareness", "institutional_continuity", "sky_caution", "sky_inquiry", "technical_competence"]. Taboos: []. Desires: ["launch_technology_search", "orbital_access", "sky_signal_inquiry"]. Fears: ["lost_sky_access"].

### Recorded history behind the profile

- Year -356 / h_pressure: Fragments from a failing Observer-era orbital structure fell locally, leaving identified legacy debris. [local].
- Year -333 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -321 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -290 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -210 / t_step_05: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].

Future goal candidates: investigate_sky_signal <- skyward_hunger, recover_launch_technology <- skyward_hunger, restore_orbital_link <- skyward_hunger. No actions or target facts are created.

## historical_scar_new_ecology — seed 73 / f_07 (Dador Well)

Life: resource_or_trade_commune. Formation: fragmentation. Political parents: ["f_01"]. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"new_foundation","interpretation_mode":"pragmatic","memory_frame":"continuity","social_anchor":"exchange","source_event_ids":["t_step_01"],"source_facts":["formation:fragmentation","way_of_life:resource_or_trade_commune","role:border_watch","political_continuity:false"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["role:border_watch"]. Preferences: []. Selected weight 6, target 4.
  - role:border_watch <- ["t_step_01"] / entity.regional_roles (faction): border_watch.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): core_rainfall_shift.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 4.
  - structure:local_settlement <- ["t_step_01"] / present.settlements:home_f_07 (faction): Current local settlement under this polity.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["life:resource_or_trade_commune"]. Preferences: []. Selected weight 6, target 4.
  - life:resource_or_trade_commune <- ["t_step_01"] / entity.way_of_life (faction): resource_or_trade_commune.
- **New Ecology** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded environmental infrastructure changes may be accepted as a new ecological condition; acceptance is a norm, not knowledge of Core purpose.
  - Required evidence: ["scar:environmental_change"]. Preferences: []. Selected weight 5, target 1.
  - scar:environmental_change <- ["h_pressure"] / event.narrative_key (regional): core_rainfall_shift.

Values: ["duty", "ecological_adaptation", "fair_exchange", "hazard_awareness", "local_service", "route_service", "vigilance"]. Taboos: []. Desires: ["accommodate_changed_environment"]. Fears: ["ecological_rigidity"].

### Recorded history behind the profile

- Year -366 / h_pressure: Core-associated environmental equipment gradually redistributed regional precipitation over decades. Its purpose is unknown. [local].
- Year -343 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -299 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].

Future goal candidates: accommodate_changed_environment <- new_ecology. No actions or target facts are created.

## unusual_skeptical_sky — seed 89 / f_07 (Bomar Ruin)

Life: modified_human_community. Formation: fragmentation. Political parents: ["f_04"]. Regional roles: ["archives"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"heir","interpretation_mode":"skeptical","memory_frame":"warning","social_anchor":"kin","source_event_ids":["t_step_02","h_pressure"],"source_facts":["formation:fragmentation","way_of_life:modified_human_community","role:archives","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: ["identity:heir"]. Selected weight 8, target 3.
  - structure:inherited_offices <- ["t_step_02"] / entity.political_continuity (faction): Recorded institutional continuity.
  - identity:heir <- ["t_step_02", "h_pressure"] / identity.continuity_stance (derived_identity): heir.
- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["event:border_dispute"]. Preferences: []. Selected weight 6, target 3.
  - event:border_dispute <- ["h_relation_1"] / event.narrative_key (faction): border_dispute.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 3.
  - structure:local_settlement <- ["t_step_02"] / present.settlements:home_f_07 (faction): Current local settlement under this polity.
- **Skyward Hunger** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual orbital debris, damage or sky signals may inspire investigation and recovered access even for skeptical interpreters; no origin/contact or working launch capability follows.
  - Required evidence: ["scar:sky_signal"]. Preferences: ["interpretation:skeptical"]. Selected weight 7, target 1.
  - interpretation:skeptical <- ["t_step_02", "h_pressure"] / identity.interpretation_mode (derived_identity): skeptical.
  - scar:sky_signal <- ["h_pressure"] / event.narrative_key (regional): surveillance_failure.

Values: ["duty", "institutional_continuity", "local_service", "sky_inquiry", "technical_competence", "vigilance"]. Taboos: []. Desires: ["launch_technology_search", "orbital_access", "sky_signal_inquiry"]. Fears: ["lost_sky_access"].

### Recorded history behind the profile

- Year -345 / h_pressure: A degraded Observer-era surveillance unit malfunctioned, leaving intermittent signals and damaged hardware. [local].
- Year -325 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -263 / t_step_02: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -26 / h_relation_1: A minor border dispute damaged a watch post and worsened relations. [regional].

Future goal candidates: investigate_sky_signal <- skyward_hunger, recover_launch_technology <- skyward_hunger, restore_orbital_link <- skyward_hunger. No actions or target facts are created.

## shipping_orthodoxy — seed 102 / f_16 (Nador Gate)

Life: modified_human_community. Formation: fragmentation. Political parents: ["f_07"]. Regional roles: ["archives"].

Identity: {"adaptive_stance":"adapt","continuity_stance":"heir","interpretation_mode":"technical","memory_frame":"rupture","social_anchor":"kin","source_event_ids":["t_step_07","h_collapse"],"source_facts":["formation:fragmentation","way_of_life:modified_human_community","role:archives","political_continuity:true"]}

- **Archive Legitimacy**. An archive role or recorded archive accord makes records a practical source of institutional standing.
  - Required evidence: ["role:archives"]. Preferences: ["structure:inherited_offices"]. Selected weight 8, target 4.
  - role:archives <- ["t_step_07"] / entity.regional_roles (faction): archives.
  - structure:inherited_offices <- ["t_step_07"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: ["identity:heir"]. Selected weight 8, target 4.
  - structure:inherited_offices <- ["t_step_07"] / entity.political_continuity (faction): Recorded institutional continuity.
  - identity:heir <- ["t_step_07", "h_collapse"] / identity.continuity_stance (derived_identity): heir.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): trade_failure.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["event:trade_reopening"]. Preferences: []. Selected weight 6, target 4.
  - event:trade_reopening <- ["h_relation_1"] / event.narrative_key (faction): trade_reopening.
- **Doctrine of Continuity** [orthodoxy] — Authored reinforcement rule satisfied by recorded evidence; intensity support ["structure:inherited_offices", "role:archives", "history:cooperation"]. Recorded institutional inheritance or long-lived enclave continuity can make communal survival a moral obligation.
  - Required evidence: ["structure:inherited_offices"]. Preferences: ["identity:heir"]. Selected weight 7, target 2.
  - history:cooperation <- ["h_relation_1"] / effect.relationship.delta (faction): 13.
  - identity:heir <- ["t_step_07", "h_collapse"] / identity.continuity_stance (derived_identity): heir.
  - role:archives <- ["t_step_07"] / entity.regional_roles (faction): archives.
  - structure:inherited_offices <- ["t_step_07"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Living Archive** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual ritual stewardship or archive responsibility can recognize performance and oral memory as historical authority alongside records. It does not assert a particular invented song.
  - Required evidence: ["role:archives"]. Preferences: []. Selected weight 5, target 2.
  - role:archives <- ["t_step_07"] / entity.regional_roles (faction): archives.

Values: ["duty", "fair_exchange", "hazard_awareness", "institutional_continuity", "oral_history", "performance", "record_preservation", "ritualism", "route_service", "scholarship"]. Taboos: ["gratuitous_institutional_destruction", "memory_erasure"]. Desires: ["memory_source_recovery", "performance_preservation", "preserve_institutions"]. Fears: ["memory_loss", "social_collapse"].

### Recorded history behind the profile

- Year -344 / h_pressure: Failures across the regional trade network left stations abandoned and central levies unsupported. [regional].
- Year -320 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -307 / t_root_f_01: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -306 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -305 / t_root_f_03: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -296 / t_step_00: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -259 / t_step_02: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -166 / t_step_07: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -26 / h_relation_1: Communities reopened regional trade and negotiated access obligations. [regional].
- Year -12 / h_discovery: Erosion exposed a sealed object; its origin remains unresolved. [local].

Future goal candidates: preserve_institutions <- continuity, preserve_performance_tradition <- living_archive, recover_lost_memory_source <- living_archive. No actions or target facts are created.

## historical_scar_depth_taboo — seed 107 / f_06 (Kewen Gate)

Life: village_union. Formation: fragmentation. Political parents: ["f_01"]. Regional roles: ["isolation"].

Identity: {"adaptive_stance":"withdraw","continuity_stance":"heir","interpretation_mode":"skeptical","memory_frame":"grievance","social_anchor":"ritual","source_event_ids":["t_step_01","h_relation_1"],"source_facts":["formation:fragmentation","way_of_life:village_union","role:isolation","political_continuity:true"]}

- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["event:border_dispute"]. Preferences: []. Selected weight 6, target 3.
  - event:border_dispute <- ["h_relation_1"] / event.narrative_key (faction): border_dispute.
- **Closed Roads**. An isolation role or a recorded regional access restriction supports constrained connections, without claiming every road is physically closed.
  - Required evidence: ["role:isolation"]. Preferences: ["adaptive:withdraw"]. Selected weight 8, target 3.
  - role:isolation <- ["t_step_01"] / entity.regional_roles (faction): isolation.
  - adaptive:withdraw <- ["t_step_01", "h_relation_1"] / identity.adaptive_stance (derived_identity): withdraw.
- **Deep Boundary Keepers**. Actual recorded underground closure makes deep access management salient without inventing Innerworld ancestry.
  - Required evidence: ["scar:deep_closure"]. Preferences: ["role:isolation"]. Selected weight 8, target 3.
  - scar:deep_closure <- ["h_pressure"] / event.narrative_key (regional): core_underground_closure.
  - role:isolation <- ["t_step_01"] / entity.regional_roles (faction): isolation.
- **Depth Taboo** [doctrine] — Authored reinforcement rule satisfied by recorded evidence; intensity support ["scar:deep_closure", "role:isolation"]. Recorded underground closure supports a norm of keeping dangerous deep access closed, without implying Innerworld contact.
  - Required evidence: ["scar:deep_closure"]. Preferences: ["role:isolation"]. Selected weight 7, target 1.
  - role:isolation <- ["t_step_01"] / entity.regional_roles (faction): isolation.
  - scar:deep_closure <- ["h_pressure"] / event.narrative_key (regional): core_underground_closure.

Values: ["boundary_caution", "deep_caution", "duty", "vigilance"]. Taboos: ["delving"]. Desires: ["discourage_delving", "restricted_deep_maps", "sealed_depths"]. Fears: ["deep_hazards"].

### Recorded history behind the profile

- Year -359 / h_pressure: Core-associated tunnel systems sealed underground access. The underlying purpose is unknown. [local].
- Year -339 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -295 / t_step_01: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -26 / h_relation_1: A minor border dispute damaged a watch post and worsened relations. [regional].

Future goal candidates: discourage_delving <- depth_taboo, restrict_deep_maps <- depth_taboo, seal_deep_access <- depth_taboo. No actions or target facts are created.

## historical_scar_closed_sky — seed 144 / f_00 (Lumon Well)

Life: frontier_settlement_league. Formation: direct_successor. Political parents: ["precursor"]. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"exploit","continuity_stance":"reformer","interpretation_mode":"skeptical","memory_frame":"warning","social_anchor":"locality","source_event_ids":["t_root_f_00","h_legacy_orbital"],"source_facts":["formation:direct_successor","way_of_life:frontier_settlement_league","role:border_watch","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: []. Selected weight 6, target 3.
  - structure:inherited_offices <- ["t_root_f_00"] / entity.political_continuity (faction): Recorded institutional continuity.
- **Boundary Watch**. An assigned border-watch role or a directly witnessed border dispute makes guarding boundaries a daily concern.
  - Required evidence: ["role:border_watch"]. Preferences: []. Selected weight 6, target 3.
  - role:border_watch <- ["t_root_f_00"] / entity.regional_roles (faction): border_watch.
- **Scarred by the Sky**. Recorded regional orbital damage or debris becomes shared hazard memory; it is not proof of Outerworld contact or purposeful targeting.
  - Required evidence: ["scar:orbital_attack"]. Preferences: ["memory:warning"]. Selected weight 8, target 3.
  - scar:orbital_attack <- ["h_legacy_orbital"] / event.narrative_key (regional): orbital_bombardment.
  - memory:warning <- ["t_root_f_00", "h_legacy_orbital"] / identity.memory_frame (derived_identity): warning.
- **The Closed Sky** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Actual regional orbital damage, debris or failed surveillance motivates restraint on reaching or signaling upward. The source motive and any Outerworld connection remain unknown.
  - Required evidence: ["scar:orbital_attack"]. Preferences: ["memory:warning"]. Selected weight 7, target 1.
  - memory:warning <- ["t_root_f_00", "h_legacy_orbital"] / identity.memory_frame (derived_identity): warning.
  - scar:orbital_attack <- ["h_legacy_orbital"] / event.narrative_key (regional): orbital_bombardment.

Values: ["duty", "institutional_continuity", "sky_caution", "vigilance"]. Taboos: ["sky_signaling", "uncontrolled_launch"]. Desires: ["altitude_restraint", "launch_restraint", "signal_restraint"]. Fears: ["orbital_harm"].

### Recorded history behind the profile

- Year -367 / h_pressure: Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved. [regional].
- Year -340 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -328 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -122 / h_legacy_orbital: An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown. [local].

Future goal candidates: disable_signal_source <- closed_sky, prevent_launch <- closed_sky, restrict_high_altitude_activity <- closed_sky. No actions or target facts are created.

## unusual_ritual_trial — seed 202 / f_13 (Kesen Ruin)

Life: facility_community. Formation: merger. Political parents: ["f_07", "f_12", "f_11"]. Regional roles: ["border_watch"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"heir","interpretation_mode":"ritual","memory_frame":"grievance","social_anchor":"refuge","source_event_ids":["t_step_06","h_last"],"source_facts":["formation:merger","way_of_life:facility_community","role:border_watch","political_continuity:true"]}

- **Borrowed Offices**. Recorded institutional heirs govern through inherited offices rather than claiming an entirely new founding.
  - Required evidence: ["structure:inherited_offices"]. Preferences: ["identity:heir"]. Selected weight 8, target 4.
  - structure:inherited_offices <- ["t_step_06"] / entity.political_continuity (faction): Recorded institutional continuity.
  - identity:heir <- ["t_step_06", "h_last"] / identity.continuity_stance (derived_identity): heir.
- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): chemical_exposure.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 4.
  - structure:local_settlement <- ["t_root_f_00", "t_step_00", "t_step_02", "t_step_06"] / present.settlements:home_f_00 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_01", "t_step_00", "t_step_02", "t_step_06"] / present.settlements:home_f_01 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_02", "t_step_05", "t_step_06"] / present.settlements:home_f_02 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_00", "t_step_02", "t_step_06"] / present.settlements:home_f_03 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_02", "t_step_06"] / present.settlements:home_f_07 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_05", "t_step_06"] / present.settlements:home_f_11 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_05", "t_step_06"] / present.settlements:home_f_12 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_06"] / present.settlements:home_f_13 (faction): Current local settlement under this polity.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 4.
  - history:cooperation <- ["h_relation_0"] / effect.relationship.delta (faction): 22.
  - history:cooperation <- ["h_relation_1"] / effect.relationship.delta (faction): 28.
- **Truth Through Trial** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded research reuse or technical service may support experiment as a normative path to truth; ritual interpretation is compatible.
  - Required evidence: ["life:facility_community"]. Preferences: []. Selected weight 5, target 1.
  - life:facility_community <- ["t_step_06"] / entity.way_of_life (faction): facility_community.

Values: ["compassion", "duty", "experimentation", "hazard_awareness", "institutional_continuity", "local_service", "reciprocity", "scholarship", "technical_competence"]. Taboos: ["untested_certainty"]. Desires: ["test_unknown_phenomena"]. Fears: ["untested_hazards"].

### Recorded history behind the profile

- Year -348 / h_pressure: Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified. [regional].
- Year -330 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -318 / t_root_f_00: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -317 / t_root_f_01: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -316 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -306 / t_step_00: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -267 / t_step_02: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -208 / t_step_05: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -189 / t_step_06: Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion. [regional].
- Year -28 / h_relation_0: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -26 / h_relation_1: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -5 / h_last: A recent disagreement over local representation renewed a rivalry. [regional].

Future goal candidates: test_unknown_phenomena <- truth_through_trial. No actions or target facts are created.

## mundane_zero_extra_1 — seed 12 / f_12 (Fudor Marsh)

Life: religious_community. Formation: fragmentation. Political parents: ["f_07"]. Regional roles: ["local_exchange"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"reformer","interpretation_mode":"ritual","memory_frame":"rupture","social_anchor":"exchange","source_event_ids":["t_step_06","h_collapse"],"source_facts":["formation:fragmentation","way_of_life:religious_community","role:local_exchange","political_continuity:false"]}

- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 2.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): adaptation_tension.
- **Mutual Obligation**. Direct positive relationship events or a communal livelihood support obligations between members or communities.
  - Required evidence: ["history:cooperation"]. Preferences: []. Selected weight 6, target 2.
  - history:cooperation <- ["h_relation_0"] / effect.relationship.delta (faction): 17.

Values: ["compassion", "duty", "hazard_awareness", "reciprocity"]. Taboos: []. Desires: []. Fears: [].

### Recorded history behind the profile

- Year -350 / h_pressure: Communities with different environmental adaptations separated from the common assembly. [regional].
- Year -326 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -312 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -310 / t_root_f_04: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -302 / t_step_00: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].
- Year -283 / t_step_01: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].
- Year -245 / t_step_03: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].
- Year -187 / t_step_06: A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects. [regional].
- Year -37 / h_reuse: A community adopted a recorded compatible use of an older site; the damage and hazard record remained. [regional].
- Year -28 / h_relation_0: Communities negotiated a local alliance without restoring a large central state. [regional].
- Year -5 / h_last: A recent disagreement over local representation renewed a rivalry. [regional].

Future goal candidates: none. No actions or target facts are created.

## mundane_zero_extra_2 — seed 14 / f_02 (Kemar Well)

Life: migrant_confederation. Formation: reorganization. Political parents: []. Regional roles: ["archives"].

Identity: {"adaptive_stance":"preserve","continuity_stance":"reformer","interpretation_mode":"technical","memory_frame":"warning","social_anchor":"institution","source_event_ids":["t_root_f_02","h_pressure"],"source_facts":["formation:reorganization","way_of_life:migrant_confederation","role:archives","political_continuity:false"]}

- **Archive Legitimacy**. An archive role or recorded archive accord makes records a practical source of institutional standing.
  - Required evidence: ["role:archives"]. Preferences: []. Selected weight 6, target 2.
  - role:archives <- ["t_root_f_02"] / entity.regional_roles (faction): archives.
- **Route Commonwealth**. An assigned exchange role, trading livelihood or direct reopening accord organizes shared access and exchange.
  - Required evidence: ["event:trade_reopening"]. Preferences: []. Selected weight 6, target 2.
  - event:trade_reopening <- ["h_relation_0"] / event.narrative_key (faction): trade_reopening.

Values: ["fair_exchange", "record_preservation", "route_service", "scholarship"]. Taboos: []. Desires: []. Fears: [].

### Recorded history behind the profile

- Year -359 / h_pressure: Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields. [regional].
- Year -335 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -321 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -28 / h_relation_0: Communities reopened regional trade and negotiated access obligations. [regional].
- Year -5 / h_last: A recent disagreement over local representation renewed a rivalry. [regional].

Future goal candidates: none. No actions or target facts are created.

## ethics_debt_of_shelter — seed 20 / f_12 (Bowen Reach)

Life: refugee_community. Formation: reorganization. Political parents: ["f_11", "f_10"]. Regional roles: ["maintenance"].

Identity: {"adaptive_stance":"rebuild","continuity_stance":"reformer","interpretation_mode":"pragmatic","memory_frame":"rupture","social_anchor":"refuge","source_event_ids":["t_step_04","h_collapse"],"source_facts":["formation:reorganization","way_of_life:refugee_community","role:maintenance","political_continuity:false"]}

- **Hazard Memory**. The real regional pressure remains part of practical safety memory. This is a memory custom, not a new faction-specific catastrophe.
  - Required evidence: ["history:regional_pressure"]. Preferences: []. Selected weight 3, target 4.
  - history:regional_pressure <- ["h_pressure"] / event.narrative_key (regional): succession_dispute.
- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 4.
  - structure:local_settlement <- ["t_root_f_01", "t_step_02", "t_step_04"] / present.settlements:home_f_01 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_root_f_02", "t_step_02", "t_step_04"] / present.settlements:home_f_02 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_02", "t_step_04"] / present.settlements:home_f_10 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_03", "t_step_04"] / present.settlements:home_f_11 (faction): Current local settlement under this polity.
  - structure:local_settlement <- ["t_step_04"] / present.settlements:home_f_12 (faction): Current local settlement under this polity.
- **Practical Heresy**. Recorded institutional reorganization plus pragmatic interpretation supports adapting everyday conventions; it does not automatically choose the normative Doctrine of the same name.
  - Required evidence: ["formation:reorganization", "interpretation:pragmatic"]. Preferences: []. Selected weight 6, target 4.
  - formation:reorganization <- ["t_step_04"] / entity.formation_origin (faction): reorganization.
  - interpretation:pragmatic <- ["t_step_04", "h_collapse"] / identity.interpretation_mode (derived_identity): pragmatic.
- **Rebuilt From Fragments**. Actual merger or multiple political parents supports consolidated institutions, not biological fusion.
  - Required evidence: ["structure:multiple_parents"]. Preferences: ["identity:reformer"]. Selected weight 8, target 4.
  - structure:multiple_parents <- ["t_step_04"] / entity.parent_ids (faction): f_11, f_10.
  - identity:reformer <- ["t_step_04", "h_collapse"] / identity.continuity_stance (derived_identity): reformer.
- **Debt of Shelter** [custom] — Common preference; no stronger reinforcement selected; intensity support []. An actual refugee-community livelihood can turn the experience of refuge into an obligation to shelter others.
  - Required evidence: ["life:refugee_community"]. Preferences: []. Selected weight 5, target 2.
  - life:refugee_community <- ["t_step_04"] / entity.way_of_life (faction): refugee_community.
- **The World Must Be Mended** [custom] — Common preference; no stronger reinforcement selected; intensity support []. Recorded maintenance livelihood, role or service accord makes repair a social mission, not an automatically executed restoration.
  - Required evidence: ["role:maintenance"]. Preferences: ["adaptive:rebuild"]. Selected weight 7, target 2.
  - adaptive:rebuild <- ["t_step_04", "h_collapse"] / identity.adaptive_stance (derived_identity): rebuild.
  - role:maintenance <- ["t_step_04"] / entity.regional_roles (faction): maintenance.

Values: ["adaptability", "coalition_building", "compassion", "craftsmanship", "duty", "hazard_awareness", "hospitality", "local_service", "outsider", "technical_competence"]. Taboos: ["neglect", "refugee_rejection"]. Desires: ["displaced_aid", "facility_restoration", "infrastructure_repair", "refugee_shelter", "route_reconnection"]. Fears: ["abandonment", "infrastructure_loss"].

### Recorded history behind the profile

- Year -347 / h_pressure: Rival succession records divided officials into a dissenting assembly. [regional].
- Year -317 / h_collapse: Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved. [regional].
- Year -304 / t_root_f_01: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -303 / t_root_f_02: A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office. [regional].
- Year -257 / t_step_02: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].
- Year -239 / t_step_03: A population from outside the local political lineage entered the region and established independent institutions. [regional].
- Year -220 / t_step_04: Residents reorganized political institutions, recording predecessor offices separately from contributing populations. [regional].

Future goal candidates: aid_displaced_population <- debt_of_shelter, shelter_refugees <- debt_of_shelter, reconnect_routes <- world_must_be_mended, repair_infrastructure <- world_must_be_mended, restore_facility <- world_must_be_mended. No actions or target facts are created.

## Synthetic dormant/extreme example — not shipping Canon

Identity: {}

- **Local Mandate**. Authority is exercised over an actual local settlement belonging to this current polity. This does not assert elections or universal consent.
  - Required evidence: ["structure:local_settlement"]. Preferences: []. Selected weight 3, target 2.
  - structure:local_settlement <- ["fixture:structure:local_settlement"] / test-only authored evidence (synthetic): structure:local_settlement.
- **Maintenance Covenant**. The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.
  - Required evidence: ["role:maintenance", "life:infrastructure_guild"]. Preferences: []. Selected weight 6, target 2.
  - role:maintenance <- ["fixture:role:maintenance"] / test-only authored evidence (synthetic): role:maintenance.
  - life:infrastructure_guild <- ["fixture:life:infrastructure_guild"] / test-only authored evidence (synthetic): life:infrastructure_guild.
- **Pure Flesh** [orthodoxy] — Authored reinforcement rule satisfied by recorded evidence; intensity support ["scar:machine_war", "history:recent_machine_hostility", "role:isolation"]. Human life should distance itself from machine integration or autonomous dependence. Requires a real authored anti-machine scar; Core barriers, isolation and sky debris do not qualify.
  - Required evidence: ["scar:machine_war"]. Preferences: ["role:isolation"]. Selected weight 7, target 1.
  - history:recent_machine_hostility <- ["fixture:history:recent_machine_hostility"] / test-only authored evidence (synthetic): history:recent_machine_hostility.
  - role:isolation <- ["fixture:role:isolation"] / test-only authored evidence (synthetic): role:isolation.
  - scar:machine_war <- ["fixture:scar:machine_war"] / test-only authored evidence (synthetic): scar:machine_war.

Values: ["craftsmanship", "duty", "human_autonomy", "local_service", "technical_competence"]. Taboos: ["augmented", "autonomous_machine", "machine_integration"]. Desires: ["machine_independence"]. Fears: ["machine_domination"].

Actor expresses augmented + technical_competence + craftsmanship:

```json
{
	"access_hooks": [
		{
			"actor_tag": "craftsmanship",
			"id": "workshop",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "technical_competence",
			"id": "workshop",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "augmented",
			"id": "settlement",
			"intensity": "orthodoxy",
			"reaction": "review_restriction",
			"source_id": "pure_flesh",
			"source_kind": "doctrine"
		}
	],
	"dialogue_hooks": [
		{
			"actor_tag": "craftsmanship",
			"id": "item_provenance",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "technical_competence",
			"id": "repair_evidence",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "augmented",
			"id": "machine_integration_review",
			"intensity": "orthodoxy",
			"reaction": "review_restriction",
			"source_id": "pure_flesh",
			"source_kind": "doctrine"
		}
	],
	"event_hooks": [
		{
			"actor_tag": "craftsmanship",
			"id": "craft_review",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "technical_competence",
			"id": "service_request",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "augmented",
			"id": "integration_dispute",
			"intensity": "orthodoxy",
			"reaction": "review_restriction",
			"source_id": "pure_flesh",
			"source_kind": "doctrine"
		}
	],
	"mixed_reasons": [
		{
			"explanation": "Social usefulness and cultural suspicion coexist; review both sets of reasons",
			"negative_sources": [
				"doctrine:pure_flesh"
			],
			"positive_sources": [
				"society_trait:maintenance_covenant"
			]
		}
	],
	"negative_reasons": [
		{
			"actor_tag": "augmented",
			"intensity": "orthodoxy",
			"provenance": {
				"explanation": "Human life should distance itself from machine integration or autonomous dependence. Requires a real authored anti-machine scar; Core barriers, isolation and sky debris do not qualify.",
				"id": "pure_flesh",
				"kind": "doctrine",
				"matched_preferences": [
					"role:isolation"
				],
				"matched_required": [
					"scar:machine_war"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 1,
					"weight": 7
				},
				"support": {
					"history:recent_machine_hostility": [
						{
							"detail": "history:recent_machine_hostility",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:history:recent_machine_hostility"
							],
							"source_path": "test-only authored evidence"
						}
					],
					"role:isolation": [
						{
							"detail": "role:isolation",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:role:isolation"
							],
							"source_path": "test-only authored evidence"
						}
					],
					"scar:machine_war": [
						{
							"detail": "scar:machine_war",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:scar:machine_war"
							],
							"source_path": "test-only authored evidence"
						}
					]
				}
			},
			"relation": "taboo",
			"source_id": "pure_flesh",
			"source_kind": "doctrine"
		}
	],
	"positive_reasons": [
		{
			"actor_tag": "craftsmanship",
			"intensity": "custom",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance",
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "life:infrastructure_guild",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:life:infrastructure_guild"
							],
							"source_path": "test-only authored evidence"
						}
					],
					"role:maintenance": [
						{
							"detail": "role:maintenance",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:role:maintenance"
							],
							"source_path": "test-only authored evidence"
						}
					]
				}
			},
			"relation": "value",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "technical_competence",
			"intensity": "custom",
			"provenance": {
				"explanation": "The recorded maintenance role or facility/guild livelihood organizes daily service responsibilities.",
				"id": "maintenance_covenant",
				"kind": "society_trait",
				"matched_preferences": [],
				"matched_required": [
					"role:maintenance",
					"life:infrastructure_guild"
				],
				"selection": {
					"method": "Evidence-gated weighted choice in independent culture namespace",
					"target": 2,
					"weight": 6
				},
				"support": {
					"life:infrastructure_guild": [
						{
							"detail": "life:infrastructure_guild",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:life:infrastructure_guild"
							],
							"source_path": "test-only authored evidence"
						}
					],
					"role:maintenance": [
						{
							"detail": "role:maintenance",
							"scope": "synthetic",
							"source_event_ids": [
								"fixture:role:maintenance"
							],
							"source_path": "test-only authored evidence"
						}
					]
				}
			},
			"relation": "value",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		}
	],
	"role_hooks": [
		{
			"actor_tag": "craftsmanship",
			"id": "artisan",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "technical_competence",
			"id": "maintainer",
			"intensity": "custom",
			"reaction": "consider_eligibility",
			"source_id": "maintenance_covenant",
			"source_kind": "society_trait"
		},
		{
			"actor_tag": "augmented",
			"id": "membership_candidate",
			"intensity": "orthodoxy",
			"reaction": "review_restriction",
			"source_id": "pure_flesh",
			"source_kind": "doctrine"
		}
	],
	"standing": "taboo"
}
```
