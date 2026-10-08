# M037 / History Generator v0.2 completion review

2026-10-06. Authoritative base: Observer lore update `11127ef`.
This report separates automated evidence, Codex qualitative reading and user acceptance.

## 1–5. Delivery and file scope

- Branch: `codex/history-generator-v0.2` (no main merge).
- Worktree: `C:\GameDev\history-generator-v0.2`.
- Base: `11127ef59029879f5a517fc1ae405df0c2eb6dcf`, `chat/observer-lore-update`, directly after v0.1 `25f12bf7aa068662daee273947cf3ed10a6c0364`.
- Final commit/push SHA is reported in the delivery message and external completion record; a committed report cannot embed its own final commit SHA. Resolve locally with `git rev-parse codex/history-generator-v0.2`.
- Runtime files: `game/history/{canon_policy,historical_entity,historical_event,history_debug_formatter,history_generator,history_name_source,history_projector,history_result,history_state,history_validator}.gd`;
  new `history_motifs.gd` and `history_claim_builder.gd` plus their Godot UIDs.
- Diagnostics/tests: `tests/test_history_generator.gd`; new `tools/analyze_history.gd`, `tools/history_statistics.gd` and UIDs.
- Documents: `docs/specs/history_generator.md`, `docs/wiki/history_generator.md`, `docs/diagrams/history_generator.svg`, `docs/MILESTONES.md`, `docs/ROADMAP.md`, `docs/milestones/M037_history_generation_v2.md`, this review, `docs/reviews/history_v2/{diversity.json,samples.md}`.
- No edits to authoritative lore, naming runtime/content, SeedDeriver, combat/gameplay, project.godot or generated combat datasets. EverRogue `.import` sidecars are excluded.

## 6–8. Version, composition and RNG

Architecture stays **v1**. Algorithm is **v2**, content revision `history-v2-authored-1`.
The old giant `variant=0..2` coupling has been removed. A small reviewed motif catalog
and stage composer select precursor, pressure domain/motif, human response, terminal
failure, A/B/C forms, ancestry, middle/recent events, discovery and belief profile separately.
This still uses a bounded causal skeleton: one precursor, one regional collapse, remnant
merge A, displaced B and a B-derived C. It is not unrestricted social simulation.

Unchanged SeedDeriver produces local RNG seeds from `[history, 2, domain]`:
`precursor`, `pressure/domain`, `pressure/motif`, `response`, `collapse`,
`successors/a`, `successors/b`, `successors/ancestry`, `faction-c`, `middle`, `recent`,
`discovery`, `beliefs/profile`, `dates/<stage>`, `relations/<phase>`,
`knowledge/<faction>`, `recent/owner`, `recent/last`,
`legacy/{core,orbital}/{budget,motif}`. Claimant outlook/confidence and M035 names
are separate namespaces. Same seed/version/content gives identical output; global RNG
and generation order do not advance local streams. Adding/reordering reviewed discoveries
and editing authored en/ko token forms leave all other structural data unchanged.

## 9–12. Motifs, political forms and residual systems

| Domain | Authored motifs | Bounds |
| --- | --- | --- |
| natural | extreme_seasons, geophysical_stress, chemical_exposure, radiative_haze | Extraordinary seasons outside normal adaptations; already critical faults; trapped chemicals in modified ground; local exposure/haze, not a solved atmosphere model |
| human | administrative_fragmentation, succession_dispute, military_overextension, migration_pressure, trade_failure, adaptation_tension | Human coordination and lineage tensions can suffice without ancient systems |
| observer_legacy | orbital_bombardment, orbital_reentry, orbital_fragment, surveillance_failure | One bounded regional asset consequence at most; unknown activation/target-selection reason |
| core_intervention | core_quarantine, core_route_isolation, core_underground_closure, core_rainfall_shift, core_boundary_adjustment, core_shutdown, core_slope_failure, core_fault_release | Existing infrastructure/boundary conditions/stressed terrain; no energy from nothing; at most one consequence |

Primary domain probabilities: natural45%, human45%, Core8%, Observer2%. Outside a primary
Core/Observer history, optional Core3% and Observer2% budgets are independent. The latter
may coexist; finite seed samples need not contain every possible count combination.
System traces retain operation, physical basis, local scope and direct source event IDs.
Deep Core, environmental infrastructure, orbital defense and fleet assets have distinct IDs.
No shared omniscient AI, universal activation explanation, infinite bombardment or global
collapse truth is generated. Gradual rainfall/boundary changes describe decades of effects,
with one consequence timestamp. Identified Observer wreckage is a system consequence;
nearby generic discoveries do not acquire an Observer origin.

| Axis | Choices |
| --- | --- |
| Precursor5 | trade_league, dynastic_crown, provincial_compact, city_confederation, administrative_federation |
| Response4 | regional_autonomy, ritual_schism, maintenance_secession, household_council |
| Collapse3 | civil_war, evacuation, office_fragmentation |
| A6 | military_remnant, trading_house, kinship_clan, provincial_council, infrastructure_guild, ritual_authority |
| B6 | refugee_community, village_union, modified_human_community, migrant_confederation, frontier_settlement_league, regional_commune |
| C4 | religious_community, facility_community, breakaway_clan, resource_or_trade_commune |

## 13–16. Knowledge, names, claims and validation

Observer is developer/modern scholarly terminology, not an ancient self-name. Claims
with Observer/관찰자 require `observer_scholarly_term`; ordinary communities use ancient
builders/sky-machines or mistaken meteor, enemy-weapon and judgment interpretations.
Knowledge tags are deterministic per-faction metadata, not propagated global knowledge.
Actual Observer self-name, political system, origin/disappearance and all reserved truths
remain unresolved. The naming prototype ID `administrator` is unchanged.

Default names use M035 GeneratedName Resources with stable entity IDs, separate canonical
identity and authored en/ko rendering. Result-local blocked displays and 32 bounded retries
avoid collisions. Culture/lineage context inherits through parent definitions using the
existing prototype_surface culture; there is no new faction language taxonomy. Pure custom
label/canonical providers remain supported; failed generation has a stable-ID warning fallback.

Claims reflect actual ancestry, lifestyle, local remembered pressure, independent outlook,
legitimacy, current relationship and knowledge. Pragmatic/skeptical/technical/ritual voices
coexist; a community can share some memory with another without identical legitimacy claims.
Claims never enter HistoryProjector. Confidence records conviction, not truth probability.
The generator creates 15..21 claims depending on legacy events.

Validator keeps schema/reference/lifecycle/ancestry/scar/reprojection protections and adds:
version/architecture and exact recipe axes; recipe/event/form agreement; scope/domain/template
agreement; reviewed separate systems and physical mechanisms; unknown reasons; local legacy
budgets and no invented human trigger; Observer knowledge gate; name collisions; >=3 recent
events. Generic origin stays unknown. Strict closed effect/config fields reject reserved-answer
injection. Arbitrary authored prose still requires review; this is not a natural-language truth engine.

## 17–18. Measured diversity and rare-event frequencies

Seeds **1..1000**, algorithm2, unchanged production naming catalog. Zero invalid histories;
all 1000 exact replays pass. Structural signatures exclude names/dates/claims. All recipe
choices were observed, including all 22 primary pressure motifs. There were 1000 unique
configuration recipes, 1000 structural signatures and 344 semantic-ID/event-type topologies.
These are generator diversity measurements, not measures of literary quality.

| Axis | Counts |
| --- | --- |
| Primary domains | natural448, human448, Core78, Observer26 |
| Precursor | trade187, crown208, compact198, cities205, federation202 |
| Collapse | war350, evacuation340, office fragmentation310 |
| A | military178, trade153, kinship174, council146, infrastructure174, ritual175 |
| B | refugee175, village154, modified168, migrant178, frontier158, commune167 |
| C | religious245, facility262, clan241, resource/trade252 |
| Response | autonomy265, ritual244, maintenance248, households243 |
| Discoveries | impact169, mineral173, manufacture177, erosion170, stratum155, surface156 |
| Base belief outlook | pragmatic242, skeptical248, technical240, ritual270 |
| Events | 19:957 histories; 20:43; 21:0 in this finite sample |
| Ruins / settlements | ruins3:813, ruins4:187; settlements5 in every history |
| Recent / scars | minimum five events in last100 years; minimum causal scar ratio100% |

| History occurrence (>=1 event) | Count /1000 | Actual rate |
| --- | ---: | ---: |
| No Observer or Core | 857 | 85.7% |
| Natural + human only | 424 | 42.4% |
| Human only | 433 | 43.3% |
| Observer legacy | 45 | 4.5% |
| Core intervention | 102 | 10.2% |
| Orbital bombardment | 7 | 0.7% |

Four histories contain both legacy domains, so percentages should not be summed as exclusive
categories. Natural+human-only means natural primary pressure and human responses with no
legacy event. Human-only means human primary pressure/responses with no legacy event. Full
motif/recent/ancestry distributions and reproducible definitions are in [diversity.json](history_v2/diversity.json).

## 19. Ten representative histories and concrete qualitative reading

Codex read the ten readable reports, including objective narratives, projected ancestry/
relations/sites/discoveries and claims. This is agent qualitative assessment; it does not
claim separate user/manual/editor/play approval. All ten validate without errors/warnings
and replay deterministically. Full outputs are in [samples.md](history_v2/samples.md).

| Seed | Type and distinctive local history | Assessment |
| --- | --- | --- |
| 1 | Crown; haze/radiative pressure → autonomy → evacuation. Infrastructure A, refugee B, breakaway C. Trade+32, A/C archive/rivalry net+22. | Natural+human history stands without old systems. B/C provincial lineage contrasts with A's central remnants; sky mechanism stays unresolved. |
| 4 | City confederation; trade failure → autonomy → offices cease. Military A, modified B, religious C; watchpost damage makes A/B -29. | Human coordination alone explains local collapse. Religious legitimacy remains a belief; A/C net0 is described as unsettled, not positive cooperation. |
| 5 | Provincial compact; exposed chemical layers → ritual schism → evacuation. Ritual A, village B, facility C; B/C -6 after separation/aid. | First modifier is not identified; accessible site portions can be reused without claiming damage erased. Technical C has the scholarly term while A/B do not. |
| 10 | Administrative federation; Core service shutdown → autonomy → evacuation. Military A, migrant B, clan C. | Trace names old service infrastructure and Deep Core, not planetary magic. Claims now say lost services rather than unrelated changed boundaries; purpose remains unknown. |
| 17 | Crown; extreme seasons beyond adapted schedules → maintenance secession → civil war. Military A, migrant B, clan C. | Normal seasonality is not treated as inherently catastrophic. Farmland/battlefield and A/C -4 persist despite recent household acceptance A/B+36. |
| 22 | Federation; adaptation schism → autonomy → civil war. Infrastructure A, refugee B, facility C; A/B -33, B/C+24. | Facility responsibility is a different basis of community. A knows scholarly terminology while C compares ancient devices without that tag; knowledge is not automatic from lifestyle. |
| 27 | Cities; falling Observer orbital fragments → household council → evacuation. Ritual A, modified B, clan C; recent routes/trade/maintenance improve all relations. | Known orbital fragments and later unidentified surface wreckage stay separate. Ordinary residents retain enemy/judgment/meteor interpretations without Observer vocabulary. |
| 30 | Cities; district appointment fragmentation → household council → evacuation. Kinship A, refugee B, workshop/trade C. Recent alliance A/B+34 and maintenance reverses A/C competition to+15. | Recent events change older relations; B/C remains -1 after aid. All pressure outlooks happen to be technical, but ancestry/lifestyle/discovery/legitimacy claims still differ. |
| 93 | Trade league; chemical exposure → ritual schism → office failure. Ritual A, modified B, facility C; routes and maintenance establish cooperation. | Unusual successor composition is independently selected, not fixed to the chemical motif. B/C scholarly tags coexist with A's ritual memory; no modifier truth is implied. |
| 97 | Cities; one bounded orbital bombardment → ritual schism → civil war. Ritual A, refugee B, clan C; generic stratum fragment appears centuries later. | Ordnance/system trace confirms local legacy damage, not why the asset fired or what the later fragment is. Tagged B says Observer-era; ordinary C says ancient; A retains a possibly false judgment/weapon account. |

### Ten requested qualitative questions

1. **Only names changed?** No: pressure, response, terminal failure, forms, C event type,
   ancestry, recent relation direction and unknown discovery differ. The remnant-merge /
   displaced / B-derived-C envelope remains intentionally shared.
2. **Why three factions?** A merges remnant bodies, B organizes displaced households,
   C separates for ritual/facility/household/workshop duties. Parent/source event chains
   are present, including different provincial participation.
3. **Relations explained by events?** Yes: seed4 A/B -29 is watchpost conflict; seed30 A/C
   +15 combines earlier competition with later maintenance. Net scores can remain strained
   after aid; claims describe current sentiment rather than retelling just the last delta.
4. **This world's history?** Strong adapted seasons, exposure in modified ground, modified
   human communities and uncertain old machinery add local character. Normal predictable
   moons alone do not trigger geology. Climate/orbit equations are deliberately absent.
5. **Observer/Core万能 explanation?** No: 85.7% of sampled histories have neither; seed1/4/5/17
   form coherent local chains without them. Unknown global collapse remains explicit.
6. **Water/canal/pump convergence?** No required canal/pump events. Farmland, routes,
   archives, hamlets, chemical sites and boundary/service traces vary. Existing M035 names
   still include Well/Marsh tokens; a display name does not imply a water-driven collapse.
7. **Claims tied to ancestry/lifestyle?** Yes: provincial/central ancestry prefixes, maintenance
   vs rites vs household obligations, skeptical discovery accounts and recent trust differ.
   Short authored phrase pools can repeat; they are not a complete prose/religion generator.
8. **Reserved answers implied?** Checked first modifier/global collapse/Observer self-name/
   polity and old command/motive boundaries. Generic discoveries stay unknown; former-builder
   creation stories and moon judgments remain separate beliefs with uncertainty.
9. **Natural vs system distinction/confusion?** Developer domains separate mechanisms;
   residents can confuse ground stress, the Deep, meteors and old devices. Objective known
   legacy debris does not resolve other generic findings.
10. **Recent decades frozen?** No: five events in last100 years include trade/borders/households,
    aid, discovery, settlement and renewed rivalry/maintenance. They leave current records.

Reading caused three refinements before final validation: zero-score relationships use
unsettled wording; Core memories match actual operation; reoccupation is restricted to
accessible site portions. Human memories were also made motif-specific instead of a single
appointments phrase. These refinements were rerun through focused and full checks.

## 20. Two full readable outputs

The following are unabridged formatter outputs for seed1 (pure natural+human) and seed97
(rare bombardment), including policy, full effects, present, beliefs and validation. The
other eight unabridged outputs are available in the companion samples report.

## natural_and_human — seed 1

```text
History architecture v1 | generation algorithm v2 | seed 1 | play start 0
Configuration: {"ancestry_mode":"provincial_refugees","belief_profile":"ritual","collapse_pattern":"evacuation","content_revision":"history-v2-authored-1","discovery_motif":"mineral_object","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"dynastic_crown","pressure_domain":"natural","pressure_motif":"radiative_haze","recent_motif":"trade_reopening","response_motif":"regional_autonomy","successor_a_form":"infrastructure_guild","successor_b_form":"refugee_community"}
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
-498 h_found [FOUNDING] A dynastic crown united several regional districts.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-473 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-340 h_pressure [DISASTER] Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved.
  scope=regional | objective cause_domain=natural
  actors: Towen Well (precursor), Dalusen (regional_body) | causes: h_body
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet"}]
-334 h_response [SPLIT] Regional delegates separated into an autonomous provincial body in response to the local pressure.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Dalusen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-329 h_failure [MIGRATION] Officials and households evacuated the regional seat, abandoning local offices.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Zolen (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-323 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Towen Well (precursor), Dalusen (regional_body), Zolen (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-321 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-318 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Sedor (remnant_1), Bosil (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-314 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Toveylith (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-278 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Sera Reach (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-6,"kind":"relationship"}]
-273 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-268 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Mira Reach (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-263 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Mira Reach (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-183 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Mira Reach (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":28,"kind":"relationship"}]
-80 h_recent [FOUNDING] Communities reopened regional trade and negotiated access obligations.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Sera Reach (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":32,"kind":"relationship"}]
-69 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Sera Reach (faction_b), Mira Reach (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":15,"kind":"relationship"}]
-46 h_discovery [ANOMALOUS_DISCOVERY] An object was exposed in a mineral layer; its origin remains unresolved.
  scope=local | objective cause_domain=unknown
  actors: Mira Reach (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"object_in_mineral_layer","origin":"unknown"}]
-27 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-10 h_last [WAR] A recent disagreement over local representation renewed a rivalry.
  scope=regional | objective cause_domain=human
  actors: Tora Well (faction_a), Mira Reach (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":-6,"kind":"relationship"}]
=== PRESENT ===
Region region: Misil Ruin
Faction faction_a: Tora Well | infrastructure_guild | knowledge=
Faction faction_b: Sera Reach | refugee_community | knowledge=
Faction faction_c: Mira Reach | breakaway_clan | knowledge=observer_scholarly_term
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, province, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_response, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, province, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_response, h_body
Relationship faction_a <-> faction_b: 32; sources=h_recent
Relationship faction_a <-> faction_c: 22; sources=h_middle, h_last
Relationship faction_b <-> faction_c: 9; sources=h_c_formed, h_aid
Settlement recent_settlement: Dasen | owner=faction_a | region=region | sources=h_expansion
Settlement service_settlement: Nafura | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Veykevak | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Nalen | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Darin | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: abandoned_hamlet | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: administrative_site | occupant= | region=region | sources=h_failure
Discovery unknown_object: object_in_mineral_layer | origin=unknown | sources=h_discovery
=== BELIEFS ===
Tora Well (faction_a; knowledge=):
  [h_collapse; confidence 0.88; legitimacy] Our elders came through the former regional assemblies. Maintaining services mattered more than the old officials' titles.
  [h_pressure; confidence 0.47; interpretation] Our elders remembered a veiled sky and unusual exposure. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.79; interpretation] We compared its manufacture with ancient devices; the comparison does not settle its origin.
  [h_recent; confidence 0.50; interpretation] Recent agreements let us cooperate despite different ancestry.
Sera Reach (faction_b; knowledge=):
  [h_collapse; confidence 0.76; legitimacy] Our elders include households of the former provincial body. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.61; interpretation] Our elders remembered a veiled sky and unusual exposure. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.57; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.57; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.80; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Mira Reach (faction_c; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.41; legitimacy] Our elders include households of the former provincial body. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.70; interpretation] Our elders remembered a veiled sky and unusual exposure. We remember this disruption through communal rites; others disagree about what those signs mean.
  [h_discovery; confidence 0.44; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.78; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_c_formed; confidence 0.49; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.37; belief] Some say the Observer-era builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```


## orbital_bombardment — seed 97

```text
History architecture v1 | generation algorithm v2 | seed 97 | play start 0
Configuration: {"ancestry_mode":"mixed_provincial","belief_profile":"pragmatic","collapse_pattern":"civil_war","content_revision":"history-v2-authored-1","discovery_motif":"stratum_fragment","extra_core":"","extra_orbital":"","faction_c_formation":"breakaway_clan","middle_motif":"archive_accord","precursor_form":"city_confederation","pressure_domain":"observer_legacy","pressure_motif":"orbital_bombardment","recent_motif":"local_alliance","response_motif":"ritual_schism","successor_a_form":"ritual_authority","successor_b_form":"refugee_community"}
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
-509 h_found [FOUNDING] A confederation joined otherwise autonomous cities.
  scope=regional | objective cause_domain=human
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-484 h_body [FOUNDING] A local assembly formed under the regional polity.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor) | causes: h_found
  effects: [{"entity_id":"regional_body","kind":"activate"}]
-359 h_pressure [DISASTER] An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown.
  scope=local | objective cause_domain=observer_legacy
  actors: Zowen Well (precursor), Kewen (regional_body) | causes:
  effects: [{"id":"pressure_site","kind":"ruin","location_id":"region","ruin_kind":"legacy_damage_site"},{"activation_reason":"unknown","id":"primary_system","intent":"unknown","kind":"system_trace","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","system_id":"fleet_assets","target_selection_reason":"unknown"}]
-352 h_response [SCHISM] A dispute about communal rites formed a provincial body amid the local pressure.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Kewen (regional_body) | causes: h_pressure
  effects: [{"entity_id":"province","kind":"activate"}]
-343 h_failure [WAR] Central and provincial bodies fought over local authority, leaving a battlefield.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Naharin (province) | causes: h_response
  effects: [{"id":"terminal_site","kind":"ruin","location_id":"region","ruin_kind":"battlefield"}]
-336 h_collapse [COLLAPSE] Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.
  scope=regional | objective cause_domain=human
  actors: Zowen Well (precursor), Kewen (regional_body), Naharin (province) | causes: h_failure, h_pressure
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"regional_body","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-334 h_remnants [FOUNDING] Two remnant assemblies and a displaced-household group organized after the local collapse.
  scope=regional | objective cause_domain=human
  actors:  | causes: h_collapse
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"displaced","kind":"activate"}]
-331 h_merge [MERGE] Two remnant assemblies merged into a successor community.
  scope=regional | objective cause_domain=human
  actors: Tolusen (remnant_1), Hasenar (remnant_2) | causes: h_remnants
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-327 h_displaced [MIGRATION] Displaced households established a successor community and settlement.
  scope=regional | objective cause_domain=human
  actors: Bolen (displaced) | causes: h_remnants
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"displaced","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-277 h_c_formed [SPLIT] A clan separated to govern its own households and inherited obligations.
  scope=regional | objective cause_domain=human
  actors: Tomon Reach (faction_b) | causes: h_displaced
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-19,"kind":"relationship"}]
-272 h_town_a [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a) | causes: h_merge
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-267 h_town_c [FOUNDING] A successor community established a settlement.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_c_formed
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-262 h_reuse [RUIN_REOCCUPIED] A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_pressure, h_c_formed
  effects: [{"entity_id":"service_settlement","kind":"activate"},{"entity_id":"service_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"pressure_site","settlement_id":"service_settlement"}]
-170 h_middle [FOUNDING] Communities compared succession records and accepted a limited accord.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Bonar Gate (faction_c) | causes: h_merge, h_reuse
  effects: [{"a":"faction_a","b":"faction_c","delta":27,"kind":"relationship"}]
-90 h_recent [FOUNDING] Communities negotiated a local alliance without restoring a large central state.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Tomon Reach (faction_b) | causes: h_displaced, h_middle
  effects: [{"a":"faction_a","b":"faction_b","delta":26,"kind":"relationship"}]
-66 h_aid [MIGRATION] A community sheltered recently displaced neighbours, changing a strained relationship.
  scope=regional | objective cause_domain=human
  actors: Tomon Reach (faction_b), Bonar Gate (faction_c) | causes: h_c_formed, h_recent
  effects: [{"a":"faction_b","b":"faction_c","delta":17,"kind":"relationship"}]
-36 h_discovery [ANOMALOUS_DISCOVERY] A fragment was embedded in an old geological stratum; its origin and exact age remain unresolved.
  scope=local | objective cause_domain=unknown
  actors: Bonar Gate (faction_c) | causes: h_reuse
  effects: [{"id":"unknown_object","kind":"discovery","location_id":"region","observation":"fragment_in_old_stratum","origin":"unknown"}]
-28 h_expansion [FOUNDING] A community established a new settlement during the recent reconstruction.
  scope=regional | objective cause_domain=human
  actors: Bonar Gate (faction_c) | causes: h_aid
  effects: [{"entity_id":"recent_settlement","kind":"activate"},{"entity_id":"recent_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-5 h_last [FOUNDING] Maintainers agreed to share service duties across community boundaries.
  scope=regional | objective cause_domain=human
  actors: Luwen Well (faction_a), Bonar Gate (faction_c) | causes: h_middle, h_expansion
  effects: [{"a":"faction_a","b":"faction_c","delta":18,"kind":"relationship"}]
=== PRESENT ===
Region region: Miwen Marsh
Faction faction_a: Luwen Well | ritual_authority | knowledge=observer_scholarly_term
Faction faction_b: Tomon Reach | refugee_community | knowledge=observer_scholarly_term
Faction faction_c: Bonar Gate | breakaway_clan | knowledge=
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, province, regional_body, remnant_1, remnant_2; sources=h_merge, h_found, h_collapse, h_response, h_body, h_remnants
Ancestry faction_b: parents=displaced; ancestors=displaced, precursor, regional_body; sources=h_displaced, h_remnants, h_found, h_collapse, h_body
Ancestry faction_c: parents=faction_b; ancestors=displaced, faction_b, precursor, regional_body; sources=h_c_formed, h_remnants, h_displaced, h_found, h_collapse, h_body
Relationship faction_a <-> faction_b: 26; sources=h_recent
Relationship faction_a <-> faction_c: 45; sources=h_middle, h_last
Relationship faction_b <-> faction_c: -2; sources=h_c_formed, h_aid
Settlement recent_settlement: Habolith | owner=faction_c | region=region | sources=h_expansion
Settlement service_settlement: Zomilen | owner=faction_c | region=region | sources=h_reuse
Settlement settlement_a: Lulen | owner=faction_a | region=region | sources=h_town_a
Settlement settlement_b: Sesenar | owner=faction_b | region=region | sources=h_displaced
Settlement settlement_c: Tofulen | owner=faction_c | region=region | sources=h_town_c
Ruin old_administration: administrative_site | occupant= | region=region | sources=h_collapse
Ruin pressure_site: legacy_damage_site | occupant=faction_c | region=region | sources=h_pressure, h_reuse
Ruin terminal_site: battlefield | occupant= | region=region | sources=h_failure
Discovery unknown_object: fragment_in_old_stratum | origin=unknown | sources=h_discovery
System consequence: {"activation_reason":"unknown","cause_domain":"observer_legacy","id":"primary_system","intent":"unknown","operation":"bounded_orbital_discharge","physical_basis":"limited_aged_weapon_asset","scope":"local","source_event_ids":["h_pressure"],"system_id":"fleet_assets","target_selection_reason":"unknown"}
=== BELIEFS ===
Luwen Well (faction_a; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.59; legitimacy] Our elders include households of the former provincial body. Our shared rites kept the community together when central authority failed.
  [h_pressure; confidence 0.68; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit.
  [h_discovery; confidence 0.73; interpretation] Some call it a sign from above; our rites do not establish who made it.
  [h_recent; confidence 0.88; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.68; interpretation] Our elders called the sky damage an enemy secret weapon or a judgment; that account may be wrong.
Tomon Reach (faction_b; knowledge=observer_scholarly_term):
  [h_collapse; confidence 0.38; legitimacy] Our elders came through the former regional assemblies. The old government abandoned displaced households; shelter made our community.
  [h_pressure; confidence 0.62; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. No local record tells us why the whole age of great states ended.
  [h_discovery; confidence 0.50; interpretation] It might have come from beyond the sky or from buried older works; neither account is proven.
  [h_aid; confidence 0.70; interpretation] Recent disputes make us distrust our neighbours' account of the old state's obligations.
  [h_pressure; confidence 0.62; interpretation] We suspect an Observer-era sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.81; interpretation] Their separation changed our household council; their own story emphasizes different duties.
Bonar Gate (faction_c; knowledge=):
  [h_collapse; confidence 0.89; legitimacy] Our elders came through the former regional assemblies. Our households kept their promises when larger councils could not.
  [h_pressure; confidence 0.54; interpretation] Our elders remembered damage from old sky machinery, without agreeing on its cause. The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state.
  [h_discovery; confidence 0.85; interpretation] It may be a machine of the ancient builders; resemblance alone does not identify its origin.
  [h_last; confidence 0.90; interpretation] Recent agreements let us cooperate despite different ancestry.
  [h_pressure; confidence 0.54; interpretation] We suspect an ancient sky-machine; others call it a meteor, judgment or an enemy weapon.
  [h_c_formed; confidence 0.77; interpretation] Our households kept their promises when larger councils could not.
  [first_terraformer; confidence 0.40; belief] Some say the ancient builders made the first habitable world; our tradition does not prove that.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":19,"causal_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"causal_ratio":1.0,"direct_count":19,"direct_event_ids":["h_aid","h_body","h_c_formed","h_collapse","h_discovery","h_displaced","h_expansion","h_failure","h_found","h_last","h_merge","h_middle","h_pressure","h_recent","h_remnants","h_response","h_reuse","h_town_a","h_town_c"],"important_events":19}
```


## 21. Validation evidence

- Focused history: **PASS, 48,463 assertions**. Includes 1000 exact replays, edge seeds,
  exported-data isolation, projection independence from claims/entity order, all naming
  resources and en/ko collision checks, altered naming forms, added/reordered discovery
  choices, lifecycle/schema/Canon/knowledge/physical mechanism/budget negative cases.
- Analyzer: seeds1..1000, ten distinct representative categories, zero invalid histories.
- Full Godot suite: **PASS, all 32 test scripts**, editor parse/import, main startup and exact dataset exporter check. Procedural Naming v1 passes **30,266 assertions**.
- Offline wiki: **17 pages**; knowledge/spec: **15 specs**, source datasets validated.
- Generated combat datasets: source/output fingerprints match; unchanged.
- Layout: **183 resources /135 script UIDs /7 scenes**, pass.
- No user play/editor acceptance, exported-package, balance, language-specialist review
  or live Notion synchronization was performed.

## 22–23. Limits and next integration boundary

One regional precursor/collapse and fixed A/B/C succession envelope constrain coverage.
Primary pressure is one motif plus independent human response/failure; optional rare legacy
consequences do not make this a full emergent simulator. No leader/person genealogy,
population/economy/spatial simulation, quests, language evolution, religion generation,
save migration, scar decay, global knowledge propagation or post-start history is added.
History prose is English developer output; M035 name forms are en/ko, but historical claims
are not localized dialogue. Existing place-name templates are a provisional polity label.
Knowledge tags summarize access to a scholarly term, not a reliable belief truth system.
Natural-language plausibility remains authored review; schemas cannot prove every sentence.

Next worldgen boundary: place existing `location_ids`, settlement/ruin IDs and system
consequence records into explicit spatial topology without inventing new historical causes.
Next faction boundary: import projected active faction IDs, ancestry/lifestyle/knowledge,
canonical names and relationship records once. Use source event IDs for explanations.
No consumer should parse Claims as truth or recalculate relationship effects. Year-0 state
ownership/save and player knowledge disclosure need separate design before gameplay hookup.

## Preservation and handoff audit

Required isolated base/worktree verified; no main merge. Original checkout's two dirty
tracked files and twelve untracked EverRogue sidecars were verified unchanged by SHA256 (14/14).
Main remains `10f6f31cd39f165a7e04c658921056089eb794ef`; the original branch remains codex/con-hp-scaling. Task branch staging is explicit and excludes all EverRogue `.import` files. The external
work record, baseline JSON and final completion record in `C:\GameDev` remain available
for resuming and locating the final commit/push evidence.
