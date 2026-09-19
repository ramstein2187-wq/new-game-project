# Milestones

This file is the short index for project milestones. Keep it concise. For unfinished features, future work, and unassigned ideas, see `docs/ROADMAP.md`.

## Current State

- Latest completed on `main`: `M009` — Playable procedural map
- Still planned on `main`: `M002` — Interactive objects and simple state
- In the local `chat/roadmap-milestone-local-sync` branch (based on `chat/tactical-ai-prototype`), `M010` is the paused Micro-AP comparison baseline; `M011` selects action-cost time (see `docs/decisions/turn_time_model.md`).
- On this branch, `M012` structured combat log, `M013` independent scheduler, `M014` common Action system, and `M015` explainable tactical AI have automated validation recorded in their milestone documents; manual checks remain pending. These milestones are not claimed to be merged into `main`.
- Other future and unfinished work, including items on separate branches: `docs/ROADMAP.md`.

## Milestone Index

| ID | Status | Focus | Document |
| --- | --- | --- | --- |
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
| M011 | Selected Model / Manual Check Pending | Action-cost time with player-priority ready-time turns | `docs/milestones/M011_time_cost_scheduler.md` |
| M012 | Automated Validation Complete | Structured combat log for M011 (manual UI check pending) | `docs/milestones/M012_structured_combat_log.md` |
| M013 | Automated Validation Complete | Independent clock/scheduler for multiple actor IDs | `docs/milestones/M013_independent_time_scheduler.md` |
| M014 | Automated Validation Complete | Shared player/NPC actions with validity, costs, execution and event data | `docs/milestones/M014_common_action_system.md` |
| M015 | Automated Validation Complete | Action candidate evaluation, injury/trait-driven rat decisions, observable reasons | `docs/milestones/M015_tactical_ai_prototype.md` |

## Usage

At the start of substantial work, read this index, `docs/ROADMAP.md`, and then only the milestone document relevant to the task.

When opening a new milestone:

1. choose a narrow planned item from the roadmap (or record a newly agreed item there)
2. define a narrow goal and completion criteria and register the milestone in this index
3. record only decisions and progress needed to continue the work later
4. keep durable architectural decisions in `docs/decisions/` if they need to outlive the milestone
5. mark the milestone complete once its completion criteria are validated, and update the corresponding roadmap entry at the same time
6. avoid continuously expanding completed milestone documents; put newly found unfinished work into the roadmap
