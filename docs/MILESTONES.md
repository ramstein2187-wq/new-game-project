# Milestones

This file is the short index for project milestones. Keep it concise. For unfinished features, future work, and unassigned ideas, see `docs/ROADMAP.md`.

## Current State

- M037: **Complete on task branch; not merged main** codex/history-generator-v0.2, exact Observer-lore base11127ef; independent recipe axes, canonical naming, knowledge-gated claims. History 48,463 assertions / 1000 seeds, Naming 30,266 assertions, full 32-script check and ten qualitative reports pass. [Generation v2](milestones/M037_history_generation_v2.md).

- M036: **Complete on task branch; not merged main** codex/history-generator-v0.1; constrained regional history and repo Canon. [History Prototype v0.1](milestones/M036_history_generator_v0_1.md).

- M035: **Complete on task branch; not merged main** on `codex/procedural-naming-v1`, base latest fetched `origin/main` `5c527e2`. Canonical procedural names, native synthetic content, independent SeedDeriver namespaces and en/ko grammar. Focused 30,266 assertions / 6,000 fixed-seed samples; full 31-test Godot check, offline wiki/spec and layout audits pass. [Procedural Naming v1](milestones/M035_procedural_naming_v1.md).

- M034: **Complete on task branch; main integration pending** `codex/con-hp-scaling-integration` over main `78ab715`; selectively reintegrates completed `005c7a6` through resolved CON, damage-preserving HP lifecycle and authoritative Overview/export queries. Full Godot check passes all 30 tests/import/startup/export; focused CON/HP 121 and M033 422 assertions pass. Manual visual/play/balance acceptance is separate. [CON derived Max HP](milestones/M034_con_max_hp.md).

- M033: **Complete on main** at `96da962` via [PR #40](https://github.com/ramstein2187-wq/new-game-project/pull/40). Defines the six semantic domains, a one-primary resolved runtime check with explicit alternates only, and keeps movement_speed independent. Godot 4.7.2 editor parse/startup, all 29 project tests, replay regressions and generated dataset checks passed both before and after integration. [Primary Attribute Runtime Contract](milestones/M033_primary_attribute_runtime.md).

- M032: **Complete on main** at `8245bfa` via [PR #36](https://github.com/ramstein2187-wq/new-game-project/pull/36). Adaptive read-only Character Overview, Label/Hint/Final rows and on-demand Inspector are integrated. All 29 tests passed in bounded groups before integration plus import/startup/export check; focused Character suites total 522 assertions. Manual visual acceptance remains pending. [Character Overview](milestones/M032_character_overview.md).

- M031: **Complete on main** at `0b859aa` via [PR #34](https://github.com/ramstein2187-wq/new-game-project/pull/34). Six attributes, movement-speed migration, Modifier/Effect ownership and common stat/action-cost breakdown resolution are integrated. Task-branch validation passed the full 26-script Godot check; post-merge validation on a fresh worktree passed editor import, the 405-assertion M031 suite, focused M027/M028 regressions, combat-content/batch checks and exact dataset verification. Manual GUI/play and live Notion remain follow-ups. [Attributes/effects](milestones/M031_attributes_effects_foundation.md).

- M029: **Complete on main** at `2216d5b` via [PR #32](https://github.com/ramstein2187-wq/new-game-project/pull/32). The M029 single-source combat content work was relocated onto the M030 folder structure and squash-merged after editor import/main startup, all 25 project tests, exact dataset regeneration checks, the M030 layout audit, and offline Notion knowledge/wiki validation passed. [Combat content single source](milestones/M029_combat_content_single_source.md).

- M030: **Complete on main** at `15e309e` via [PR #30](https://github.com/ramstein2187-wq/new-game-project/pull/30). The responsibility-based folder migration was validated on the task branch with all 24 project tests, cache-free import/load checks, UID preservation and a Git-base path-only audit; gameplay logic and balance data were unchanged. Manual visual/play acceptance was not required for this path-only integration. [Project folder structure](milestones/M030_project_folder_structure.md).

- M028: **Complete on main** at `c90bdbd` via [PR #28](https://github.com/ramstein2187-wq/new-game-project/pull/28). The task branch passed all 24 project tests in chunks, focused M028 64 assertions, and a final 600-encounter paired sample with zero simulation errors/stalls. After merge, editor parse plus focused M028/M027/tactical AI, batch, multi-NPC and replay regressions passed on `main`, along with Notion wiki/knowledge validation. Manual visual/gameplay feel review remains a follow-up rather than an integration blocker. [Extensible melee tactical AI](milestones/M028_extensible_melee_ai.md).

- M027: **Complete on main** at `7c49499` via [PR #26](https://github.com/ramstein2187-wq/new-game-project/pull/26). The task branch passed 23/23 tests, both headless scenes, deterministic replay and paired production batches; after merge, Godot editor parse and the focused M027 regression test passed on `main`. User authorized integration on 2026-09-29; manual feel/balance acceptance remains a follow-up rather than an integration blocker. [Physical combat and weapon actions](milestones/M027_physical_combat_weapon_actions.md).

- M024: **Complete on main** at `e79ddb1` via [PR #19](https://github.com/ramstein2187-wq/new-game-project/pull/19). Data-driven damage dice, shared Attack definitions, capability-count weapon use, five weapons, five armor pieces, ten new hostile prototypes, and M023 paired smoke are integrated. User manual play validation reported no issues; post-merge `bash tools/check_godot.sh` passed all 22 test scripts. Final Threat Rating calibration remains out of scope. [Combat data foundation](milestones/M024_combat_data_foundation.md).

- M023: **Complete on main** at `8d71504` via [PR #17](https://github.com/ramstein2187-wq/new-game-project/pull/17). Configurable actor matchups, same-seed paired side swaps, slot-bias diagnostics, and event-derived hit/armor/body-disable metrics are integrated; post-merge `bash tools/check_godot.sh` passed on main. Final Threat Rating scale remains deliberately unassigned. [Threat measurement foundation](milestones/M023_threat_measurement_foundation.md).

- M022: **Complete on main** at `542f534` via [PR #8](https://github.com/ramstein2187-wq/new-game-project/pull/8), after M019 PR #7. Final main: 21/21 scripts and 20-run smoke passed; integration 100/1000-run samples had zero simulation errors. [Headless combat batch simulation](milestones/M022_headless_combat_batch.md).

- M019: **Complete on main** at `b109ffd` via [PR #7](https://github.com/ramstein2187-wq/new-game-project/pull/7), 20/20 integration scripts passed. User authorized merge; manual play acceptance remains unverified. [Integration record](reviews/2026-09-27-m019-m022-integration.md).

- M017 and M018: **Complete on `main` at `7276272`**, merged through [PR #4](https://github.com/ramstein2187-wq/new-game-project/pull/4) on 2026-09-21 and verified on resume 2026-09-22. The user confirmed manual verification of both M017 and latest M018 (1.4× diagonal cost); all 17 integration tests passed. [Integration record](reviews/2026-09-21-m017-m018-integration.md).

- Baseline before this integration: M016 on `main`; PR #3 merged at `9b92d80` on 2026-09-21.
- Still planned on `main`: `M002` — Interactive objects and simple state.
- M010 remains the paused comparison prototype; M011 action-cost time is the selected model. M011–M016 code, tests and design documents are on `main`.
- M011–M015: automated validation passed; user confirmed manual validation on 2026-09-21 (PR #2, `19ce6d1`). The agent did not perform that manual playthrough.
- M016: 14 combined automated test scripts passed on the integration branch; user confirmed all M016 manual play checks passed on 2026-09-21. PR #3 was merged into `main` at `9b92d80`. The agent did not perform the manual playthrough; see `docs/milestones/M016_generated_map_combat.md`.
- World persistence is design only; M002 remains planned. Prototype doors do not complete reusable stateful interaction objects.
- Other future and unfinished work, including items on separate branches: `docs/ROADMAP.md`.

## Milestone Index

| ID | Status | Focus | Document |
| --- | --- | --- | --- |
| M037 | In progress on task branch | Independent pressure/response axes, knowledge gate and canonical naming | docs/milestones/M037_history_generation_v2.md |
| M036 | Complete on task branch; not merged main | Canon-constrained history/present/claims; 809 focused assertions and full 32-test check PASS | docs/milestones/M036_history_generator_v0_1.md |
| M035 | Complete on task branch; not merged main | Canonical proper/semantic/mixed names, locale grammar and numbered administrator facilities; 30,266 focused assertions and full 31-test check pass | `docs/milestones/M035_procedural_naming_v1.md` |
| M034 | Complete on task branch; main integration pending | CON/Endurance derived Max HP, preserved damage lifecycle and authoritative Overview/export; full 30-test Godot check passes | `docs/milestones/M034_con_max_hp.md` |
| M033 | Complete on main | Semantic domains; one resolved primary modifier per check; explicit alternate only; movement_speed independent; PR #40 merged at `96da962` | `docs/milestones/M033_primary_attribute_runtime.md` |
| M032 | Complete on main; manual acceptance pending | Read-only Character Overview with adaptive Inspector and shared Label/Hint/Final rows; PR #36 merged at `8245bfa` | `docs/milestones/M032_character_overview.md` |
| M031 | Complete on main | Six attributes, movement speed, minimal Effects/Modifiers and common stat/action-cost breakdown; PR #34 merged at `0b859aa` | `docs/milestones/M031_attributes_effects_foundation.md` |
| M030 | Complete on main | Path-only responsibility-based project layout; PR #30 merged with no gameplay changes | `docs/milestones/M030_project_folder_structure.md` |
| M029 | Complete on main | Native `.tres` combat content, Rat integration, generated datasets and tuning-independent tests; PR #32 squash-merged after M030 | `docs/milestones/M029_combat_content_single_source.md` |
| M028 | Complete on main | Extensible melee AI, qualitative weapon-action selection, armor matchup, coarse coverage and conservative bounded Retreat; PR #28 merged | `docs/milestones/M028_extensible_melee_ai.md` |
| M027 | Complete on main | Physical damage, extensible armor profiles, weapon actions and capability-based hands; PR #26 merged | `docs/milestones/M027_physical_combat_weapon_actions.md` |
| M024 | Complete on main | Damage dice, shared weapon/natural Attack data, shared 1000 attack cost, armor/loadouts, 10 hostile prototypes; PR #19 and post-merge checks passed | `docs/milestones/M024_combat_data_foundation.md` |
| M023 | Complete on main | Configurable production matchups, paired side swaps, slot-bias and combat metrics; PR #17, post-merge checks passed; no final TR scale yet | `docs/milestones/M023_threat_measurement_foundation.md` |
| M022 | Complete on main | Production combat batch infrastructure; 21/21 scripts, 100/1000-run samples with zero errors | `docs/milestones/M022_headless_combat_batch.md` |
| M019 | Complete on main | Common Actor ownership, three NPCs; 20/20 scripts; manual play unverified | `docs/milestones/M019_common_actor.md` |
| M017 | Complete on main | D20, abilities, bodies and armor; user manual approval, 17 combined tests passed | `docs/milestones/M017_combat_body_phase1.md` |
| M018 | Complete on main | Eight-way movement/melee, blocked corners, 1.4× diagonal movement costs composed with injuries | `docs/milestones/M018_eight_way_combat.md` |
| M001 | Complete | Player movement, collision, camera, basic interaction, headless validation | `docs/milestones/M001_foundation.md` |
| M002 | Planned | Reusable interactive objects with state, beginning with a door | Create when work starts |
| M003 | Complete | Deterministic seed-based ASCII procedural map prototype | `docs/milestones/M003_procedural_map_prototype.md` |
| M004 | Complete | Noise-based forest regions and guaranteed north-south path | `docs/milestones/M004_coherent_forest_and_path.md` |
| M005 | Complete | Visual Godot preview of generated map data | `docs/milestones/M005_visual_procedural_map_preview.md` |
| M006 | Complete | Deterministic ruin landmark placement with path-aware constraints | `docs/milestones/M006_ruin_landmark_pass.md` |
| M007 | Complete | Namespaced deterministic sub-seeds from one world seed | `docs/milestones/M007_seed_deriver.md` |
| M008 | Complete | Data-driven procedural generation tuning settings | `docs/milestones/M008_generation_settings.md` |
| M009 | Complete | Playable generated map with collision derived from map data | `docs/milestones/M009_playable_procedural_map.md` |
| M010 | Paused / Baseline | 3-AP grid-turn test room retained for comparison | `docs/milestones/M010_micro_ap_test_room.md` |
| M011 | Complete / Selected Model | Action-cost time with player-priority ready-time turns | `docs/milestones/M011_time_cost_scheduler.md` |
| M012 | Complete | Structured combat log for M011 | `docs/milestones/M012_structured_combat_log.md` |
| M013 | Complete | Independent clock/scheduler for multiple actor IDs | `docs/milestones/M013_independent_time_scheduler.md` |
| M014 | Complete | Shared player/NPC actions with validity, costs, execution and event data | `docs/milestones/M014_common_action_system.md` |
| M015 | Complete | Action candidate evaluation, injury/trait-driven rat decisions, observable reasons | `docs/milestones/M015_tactical_ai_prototype.md` |
| M016 | Complete | Generated-map time/Action/AI integration; reset and spawn validation fixed, manual checks confirmed, PR #3 merged | `docs/milestones/M016_generated_map_combat.md` |

## Usage

At the start of substantial work, read this index, `docs/ROADMAP.md`, and then only the milestone document relevant to the task.

When opening a new milestone:

1. choose a narrow planned item from the roadmap (or record a newly agreed item there)
2. define a narrow goal and completion criteria and register the milestone in this index
3. record only decisions and progress needed to continue the work later
4. keep durable architectural decisions in `docs/decisions/` if they need to outlive the milestone
5. mark the milestone complete once its completion criteria are validated, and update the corresponding roadmap entry at the same time
6. avoid continuously expanding completed milestone documents; put newly found unfinished work into the roadmap
