# History Prototype v0.1 — completion and seed evidence

Date: 2026-10-05 (Asia/Seoul). Branch: `codex/history-generator-v0.1`.
Worktree: `C:\GameDev\history-generator-v0.1`.
Fetched base `origin/main`: `b60d2b9f940f4926a3fb57d0943d934de6728a43` (M035 integrated).
Delivery commit SHA/push confirmation is recorded after commit in
`C:\GameDev\history-generator-v0.1-work-record.md` and the final user report.
This branch is not merged into main. Original checkout changes are preserved.

## Files and implementation

- Added eleven `game/history/*.gd` data/policy/generation/projection/validation/name/debug
  scripts and their Godot UID sidecars; added `tests/test_history_generator.gd` and
  `tools/preview_history.gd` with UID sidecars.
- Added `docs/lore/world_canon_v0_1.md` (minimum authored world facts/candidates) and
  `docs/lore/history_generation_contract.md` (four policy classes and generator boundaries).
  They were written before implementation. Runtime uses `CanonPolicy`, not Markdown parsing.
- Added `docs/specs/history_generator.md`, `docs/wiki/history_generator.md`,
  `docs/diagrams/history_generator.svg`, M036 milestone and this report.
- Updated ROADMAP/MILESTONES to record this branch and future integration boundaries.
  Existing gameplay, worldgen, naming content/API, combat data and old tests are unchanged.

`CanonPolicy` constrains reviewed local facts. `HistoryGenerator` emits separate entity
definitions and objective events. `HistoryProjector` replays effects into `HistoryState`.
`HistoricalClaim` stores current faction interpretations independently. `HistoryResult`
packages the seed, fixed policy, timeline, present and claims; `HistoryValidator` checks
them and an optional replay. `HistoryNameSource` accepts an optional pure name supplier.

Pipeline: fixed Canon → precursor → four-event pressure/collapse chain → remnant/refugee
groups → successor factions → local conflict/aid/sites/reoccupation/discovery → present
projection → claims → validation. No forward simulation or existing gameplay integration.

## Verification

- Godot 4.7.2: full `bash tools/check_godot.sh` PASS, exit 0; editor import,
  main-scene startup, all **32** test scripts, exact combat dataset check; no ERROR/FAIL.
- Focused history suite: **809 assertions**, including 300 fixed seeds × repeated
  generation, additional requested/boundary seeds, adversarial cases and real M035 adapter.
- Offline wiki metadata: 17 pages PASS; detailed knowledge: 15 specs PASS; combat
  source/output fingerprints PASS. Layout audit: 179 resources, 131 script UIDs,
  seven instantiated scenes PASS. No live Notion synchronization was performed.
- Validation checks policy equality/unknown objective facts, duplicate IDs/references,
  chronology/actors/lifecycle/resurrection, ancestry/successor sources, collapse chain,
  relation/site/ruin ownership/reoccupation, discovery origin, reprojected present,
  important-event scars, claim target/confidence/claimant and deterministic replay.
  Missing different interpretations warns; false/conflicting beliefs are allowed.
- Export copies are isolated, reversed entity definition order projects identically,
  global RNG/unrelated generation does not affect output. Editing belief text cannot
  change objective state. Removing a war relationship effect removes current hostility.
- Logs: `C:\GameDev\history-generator-v0.1-{import,focused,full-check,preview,layout}.log`;
  five JSON CLI logs and `history-generator-v0.1-seed-comparison.json` share this prefix.

## Diversity

| Seed | Local pressure before collapse | A lifestyle | Events | C formation | A/B score | B/C score |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | drought → levy refusal → civil war | military remnant | 16 | schism | -36 | +11 |
| 2 | drought → levy refusal → civil war | military remnant | 16 | schism | -61 | +26 |
| 42 | tremor → sanctuary schism → evacuation | kinship clan | 16 | split | -61 | +13 |
| 1001 | flood → succession split → civil war | trading house | 15 | schism | -40 | +11 |
| 10492 | drought → levy refusal → civil war | military remnant | 16 | schism | -63 | +22 |

All five: region1, precursor1, current factions3, settlements4, ruins4, claims9,
objective discovery origin `unknown`, no errors/warnings, deterministic replay PASS,
100% direct and causal important-event scar coverage. Seed1001 has no evidenced A/C
relationship; other listed seeds include a later canal conflict. Absent relation means
no recorded local relationship, not a generated neutral score.

Across 300 seeds: three pressure/collapse template families, three A lifestyles,
three ancestry graphs, two event-count topologies (15/16), split/schism alternatives,
three machine observations and **294 distinct current relationship states**.
Collapse/schism accounts change with pressure and community form. This exceeds name-only
variation but remains a small authored family selection, not unconstrained history.

## Limits and next boundaries

Structural validation cannot judge arbitrary prose truth or narrative quality. New
objective templates require Canon review; natural-language inference and complete
knowledge simulation are absent. The discovery frequency is a prototype example budget,
not evidence that an Outerworld arrival occurs in every region.

No playable map scars, coordinates, territories, NPCs, economy, quests, full diplomacy,
save/import protocol, player knowledge filtering or post-start simulation. Years are
relative chronology, and labels are developer prototype displays. Exported-package,
manual lore/readability/play/balance and live Notion acceptance are not covered.

Future worldgen consumes stable region/location/site/ruin IDs and supplies spatial
placement. Future factions import active faction identities, ancestry and evidenced
relationships with causes. Naming can supply M035 canonical names via `HistoryNameSource`;
the tested optional adapter changes labels while preserving all event effects/RNG.
Full locale/save integration should retain canonical GeneratedName rather than only
its rendered label. Simulation starts after year0 under a separate ownership contract.

## Full readable seed 42 output

Captured directly from `tools/preview_history.gd -- 42` after final code changes;
the engine banner is omitted. Everything below is developer debug output, including
hidden Canon and explicitly attributed beliefs.

```text
History Prototype v0.1 | seed 42 | play start 0
=== CANON ===
Locked facts:
  administrator_empire: gone
  administrator_role: observe preserve constrain civilization
  administrator_system: closed
  administrators_existed: true
  core_and_some_management_systems: remain
  external_shield: mostly lost
  faction_knows_all_truth: false
  human_lineages: multiple modified lineages
  human_origin: Earth Homo sapiens
  major_regular_moons: 4
  modern_origin_knowledge: mostly lost
  original_habitability: unsuitable for humans
  outerworld: origin category, not a single polity or Administrator
  outerworld_arrivals: rare possible
  past_great_states: true
  planetary_environment_modification: true
  present_politics: fragmented after collapse
  system_age: about 1.35 billion Earth years
  tides: strong complex predictable cycles
Reserved mysteries: human_arrival, first_terraformer, administrator_origin, administrator_disappearance, pre_administrator_intervention, core_intent, complete_ancient_chronology, modern_atmosphere_composition, complete_human_lineage_history, outerworld_civilizations, global_collapse_cause, rings, core_tidal_energy
=== OBJECTIVE HISTORY ===
-482 h01 [FOUNDING] A regional trade league was established.
  actors:  | causes:
  effects: [{"entity_id":"region","kind":"activate"},{"entity_id":"precursor","kind":"activate"}]
-383 h02 [DISASTER] An earthquake broke the canal and interrupted regional transport.
  actors: Tide Bank precursor (precursor) | causes: h01
  effects: [{"id":"canal","kind":"ruin","location_id":"region","ruin_kind":"canal"}]
-370 h03 [SCHISM] A provincial sanctuary rejected the central authority.
  actors: Tide Bank precursor (precursor) | causes: h02
  effects: [{"entity_id":"province","kind":"activate"}]
-366 h04 [MIGRATION] Households evacuated the provincial seat; local offices and supply depots were abandoned.
  actors: Tide Bank precursor (precursor), Salt Ford province (province) | causes: h03
  effects: [{"id":"abandoned_seat","kind":"ruin","location_id":"region","ruin_kind":"abandoned_hamlet"}]
-361 h05 [COLLAPSE] The regional state and provincial government ceased functioning after these local pressures.
  actors: Tide Bank precursor (precursor), Salt Ford province (province) | causes: h04, h02
  effects: [{"entity_id":"precursor","kind":"retire"},{"entity_id":"province","kind":"retire"},{"id":"old_administration","kind":"ruin","location_id":"region","ruin_kind":"administrative_site"}]
-360 h06 [FOUNDING] Two remnant groups and a refugee assembly organized after the collapse.
  actors:  | causes: h05
  effects: [{"entity_id":"remnant_1","kind":"activate"},{"entity_id":"remnant_2","kind":"activate"},{"entity_id":"refugees","kind":"activate"}]
-359 h07 [MERGE] Two remnant groups merged into a successor community.
  actors: Grey Haven remnant_1 (remnant_1), Ash Ford remnant_2 (remnant_2) | causes: h06
  effects: [{"entity_id":"faction_a","kind":"activate"},{"entity_id":"remnant_1","kind":"retire"},{"entity_id":"remnant_2","kind":"retire"}]
-357 h08 [MIGRATION] Refugee households migrated and founded a successor community and settlement.
  actors: Ash Bank refugees (refugees) | causes: h06
  effects: [{"entity_id":"faction_b","kind":"activate"},{"entity_id":"refugees","kind":"retire"},{"entity_id":"settlement_b","kind":"activate"},{"entity_id":"settlement_b","kind":"settlement","location_id":"region","owner_id":"faction_b"}]
-311 h09 [SPLIT] A community separated over access to surviving facilities.
  actors: Salt Marsh faction_b (faction_b) | causes: h08
  effects: [{"entity_id":"faction_c","kind":"activate"},{"a":"faction_b","b":"faction_c","delta":-15,"kind":"relationship"}]
-307 h10 [FOUNDING] A successor community founded a settlement.
  actors: Ash Ford faction_a (faction_a) | causes: h07
  effects: [{"entity_id":"settlement_a","kind":"activate"},{"entity_id":"settlement_a","kind":"settlement","location_id":"region","owner_id":"faction_a"}]
-300 h11 [FOUNDING] A successor community founded a settlement.
  actors: Tide Ford faction_c (faction_c) | causes: h09
  effects: [{"entity_id":"settlement_c","kind":"activate"},{"entity_id":"settlement_c","kind":"settlement","location_id":"region","owner_id":"faction_c"}]
-284 h12 [WAR] Two successor communities fought over a border watchtower.
  actors: Ash Ford faction_a (faction_a), Salt Marsh faction_b (faction_b) | causes: h07, h08
  effects: [{"a":"faction_a","b":"faction_b","delta":-61,"kind":"relationship"},{"id":"border_watchtower","kind":"ruin","location_id":"region","ruin_kind":"watchtower"}]
-274 h13 [MIGRATION] One community sheltered displaced households from another.
  actors: Salt Marsh faction_b (faction_b), Tide Ford faction_c (faction_c) | causes: h12, h09
  effects: [{"a":"faction_b","b":"faction_c","delta":28,"kind":"relationship"}]
-255 h14 [RUIN_REOCCUPIED] A community reoccupied the old canal pumping site.
  actors: Tide Ford faction_c (faction_c) | causes: h02, h09
  effects: [{"entity_id":"pump_settlement","kind":"activate"},{"entity_id":"pump_settlement","kind":"settlement","location_id":"region","owner_id":"faction_c"},{"kind":"reoccupy","owner_id":"faction_c","ruin_id":"canal","settlement_id":"pump_settlement"}]
-249 h15 [WAR] A later struggle over canal access worsened relations between two communities.
  actors: Ash Ford faction_a (faction_a), Tide Ford faction_c (faction_c) | causes: h12, h14
  effects: [{"a":"faction_a","b":"faction_c","delta":-39,"kind":"relationship"}]
-20 h16 [ANOMALOUS_DISCOVERY] An unknown machine was exposed in a salt deposit. Its origin remains unresolved.
  actors: Tide Ford faction_c (faction_c) | causes: h14
  effects: [{"id":"unknown_machine","kind":"discovery","location_id":"region","observation":"machine_in_salt_deposit","origin":"unknown"}]
=== PRESENT ===
Region region: Grey Bank region
Faction faction_a: Ash Ford faction_a | kinship_clan
Faction faction_b: Salt Marsh faction_b | modified_human_community
Faction faction_c: Tide Ford faction_c | facility_community
Ancestry faction_a: parents=remnant_1, remnant_2; ancestors=precursor, remnant_1, remnant_2; sources=h07, h01, h05, h06
Ancestry faction_b: parents=refugees; ancestors=precursor, province, refugees; sources=h08, h01, h05, h03, h06
Ancestry faction_c: parents=faction_b; ancestors=faction_b, precursor, province, refugees; sources=h09, h08, h01, h05, h03, h06
Relationship faction_a <-> faction_b: -61; sources=h12
Relationship faction_a <-> faction_c: -39; sources=h15
Relationship faction_b <-> faction_c: 13; sources=h09, h13
Settlement pump_settlement: Tide Marsh pump_settlement | owner=faction_c | region=region | sources=h14
Settlement settlement_a: Grey Reach settlement_a | owner=faction_a | region=region | sources=h10
Settlement settlement_b: Moss Gate settlement_b | owner=faction_b | region=region | sources=h08
Settlement settlement_c: Moss Gate settlement_c | owner=faction_c | region=region | sources=h11
Ruin abandoned_seat: abandoned_hamlet | occupant= | region=region | sources=h04
Ruin border_watchtower: watchtower | occupant= | region=region | sources=h12
Ruin canal: canal | occupant=faction_c | region=region | sources=h02, h14
Ruin old_administration: administrative_site | occupant= | region=region | sources=h05
Discovery unknown_machine: machine_in_salt_deposit | origin=unknown | sources=h16
=== BELIEFS ===
Ash Ford faction_a (faction_a):
  [h05; confidence 0.90; legitimacy] The provincial sanctuaries abandoned the broken transport network; our kin preserved the old state's households.
  [h16; confidence 0.75; interpretation] It is an ancient Administrator device.
Salt Marsh faction_b (faction_b):
  [h05; confidence 0.85; interpretation] Central officials left us among the broken depots; the evacuation saved us, not the old state.
  [h09; confidence 0.60; interpretation] Our neighbours left to control access to the surviving facilities.
  [h16; confidence 0.40; interpretation] It came from outside our sky; the administrators did not make it.
Tide Ford faction_c (faction_c):
  [h05; confidence 0.70; interpretation] The old council neglected the pumps; keeping water moving matters more than restoring a crown.
  [h09; confidence 0.80; interpretation] We separated to protect our households and maintain the pumps.
  [h16; confidence 0.55; interpretation] Its manufacture differs from the devices familiar to our local technicians; its source remains uncertain.
  [first_terraformer; confidence 0.65; belief] The administrators shaped the first habitable world.
=== VALIDATION ===
Errors: []
Warnings: []
Determinism: pass
Scars: {"causal_count":16,"causal_event_ids":["h01","h02","h03","h04","h05","h06","h07","h08","h09","h10","h11","h12","h13","h14","h15","h16"],"causal_ratio":1.0,"direct_count":16,"direct_event_ids":["h01","h02","h03","h04","h05","h06","h07","h08","h09","h10","h11","h12","h13","h14","h15","h16"],"important_events":16}
```
