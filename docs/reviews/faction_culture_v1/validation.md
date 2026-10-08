# M041 validation evidence

2026-10-06. Godot4.7.2 stable, exact M040 base and isolated task worktree.

## Focused culture test

```text
Godot Engine v4.7.2.stable.mono.official.ed1daf0bf - https://godotengine.org

PASS: Faction culture (54081 assertions)
```

## Full Godot gate

`bash tools/check_godot.sh`: editor import, main startup,36test scripts and exact exporter passed. No SCRIPT ERROR, ERROR or FAIL lines.

```text
-- tests/test_attributes_effects.gd
PASS: M031 attributes/effects, movement and paired golden (422 assertions)
-- tests/test_basic_interaction.gd
PASS: basic interaction
-- tests/test_character_modifier_tones.gd
PASS: Character Inspector semantic modifier tones (53 assertions)
-- tests/test_character_overview.gd
PASS: Character Overview queries (281 assertions)
-- tests/test_character_screen.gd
PASS: Character Screen input, Inspector and layouts (284 assertions)
-- tests/test_combat_batch_runner.gd
PASS: deterministic production-combat batch runner, paired matchup metrics and termination
-- tests/test_combat_body.gd
PASS: combat/body rules, RNG, Action/AI, allocation UI and reset
-- tests/test_combat_content_source.gd
PASS: single-source content, references, coverage, isolation and tuning
-- tests/test_combat_data_foundation.gd
PASS: M024 combat data foundation, prototype content and production simulation
-- tests/test_combat_log.gd
PASS: structured combat log
-- tests/test_common_action_system.gd
PASS: common action system
-- tests/test_common_actor.gd
PASS: common Actor ownership, isolation, registry and lifecycle
-- tests/test_con_hp_scaling.gd
PASS: CON/Endurance derived HP (121 assertions)
-- tests/test_eight_way_combat.gd
PASS: eight-way movement, 1400/1050 diagonal costs, injury scaling, diagonal melee and corner collision
-- tests/test_extensible_melee_ai.gd
PASS: M028 extensible melee AI (64 assertions)
-- tests/test_faction_culture.gd
PASS: Faction culture (54081 assertions)
-- tests/test_faction_identity.gd
PASS: Faction identity / cultural interpretation (12983 assertions)
-- tests/test_generated_map_combat.gd
PASS: generated-map action-cost combat
-- tests/test_generation_settings.gd
PASS: generation settings
-- tests/test_history_generator.gd
PASS: History Generator v0.2 (48463 assertions)
-- tests/test_history_topology.gd
PASS: History topology v0.3 (96292 assertions)
-- tests/test_m017_m018_integration.gd
PASS: M017/M018 corner routing, honest reach feedback, generated terrain, injured diagonal scheduling and both scene inputs
-- tests/test_micro_ap_game.gd
PASS: micro AP test room
-- tests/test_multiple_npcs.gd
PASS: multiple NPC scheduling, occupancy, combat, AI, generated reset/replay and playable UI
-- tests/test_physical_combat_weapon_actions.gd
PASS: M027 physical profiles, weapon actions, hands, RNG and playground controls
-- tests/test_population_origins.gd
PASS: Population strata/content gate (7539 assertions)
-- tests/test_procedural_map_preview.gd
PASS: procedural map preview
-- tests/test_procedural_naming.gd
PASS: Procedural Naming v1 (30266 assertions)
-- tests/test_procedural_playground.gd
PASS: procedural playground
-- tests/test_seed_deriver.gd
PASS: seed deriver
-- tests/test_simple_map_generator.gd
PASS: simple procedural map generator
-- tests/test_single_actor_replay.gd
PASS: original CON/HP replay, M027 and normalized M024 compatibility (3 seeds each)
-- tests/test_tactical_ai.gd
PASS: tactical AI decision and explainability
-- tests/test_time_cost_game.gd
PASS: time-cost scheduler test room
-- tests/test_time_cost_input.gd
PASS: time-cost scene input, defeat and reset
-- tests/test_time_scheduler.gd
PASS: independent time scheduler
Combat datasets checked
All Godot checks passed.
```

## Corpus and offline checks

1,000 shipping histories,6,246 factions; replay/profile/safety counters0. See statistics.json and readable/editorial samples.
18wiki pages/16specs metadata and exact combat fingerprints PASS; git diff --check PASS. Original checkout sidecar SHA256 and main audits saved separately.
