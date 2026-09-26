# Milestones

This file is the short index for project milestones. Keep it concise. For unfinished features, future work, and unassigned ideas, see `docs/ROADMAP.md`.

## Current State

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
