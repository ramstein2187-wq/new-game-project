# Milestones

This file is the short index for project milestones. Keep it concise. For unfinished features, future work, and unassigned ideas, see `docs/ROADMAP.md`.

## Current State

- Latest completed on `main`: M015; PR #2 merged at `19ce6d1` on 2026-09-21.
- Still planned on `main`: `M002` — Interactive objects and simple state
- M010 remains the paused comparison prototype; M011 action-cost time is the selected model. M011–M015 code, tests and design documents are on main.
- M011–M015: automated validation passed; user confirmed manual validation on 2026-09-21. The agent did not perform that manual playthrough.
- M016 candidate: `codex/integrate-m016`, based on main `19ce6d1`, reuses `chat/procgen-time-combat` (`8b5c2a6`) and fixes generated-map reset/configuration. All 14 combined test scripts pass. Manual GUI checks and main merge remain pending; see `docs/milestones/M016_generated_map_combat.md`.
- World persistence is design only; M002 remains planned. Prototype doors do not complete reusable stateful interaction objects.
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
| M011 | Complete / Selected Model | Action-cost time with player-priority ready-time turns | `docs/milestones/M011_time_cost_scheduler.md` |
| M012 | Complete | Structured combat log for M011 | `docs/milestones/M012_structured_combat_log.md` |
| M013 | Complete | Independent clock/scheduler for multiple actor IDs | `docs/milestones/M013_independent_time_scheduler.md` |
| M014 | Complete | Shared player/NPC actions with validity, costs, execution and event data | `docs/milestones/M014_common_action_system.md` |
| M015 | Complete | Action candidate evaluation, injury/trait-driven rat decisions, observable reasons | `docs/milestones/M015_tactical_ai_prototype.md` |
| M016 | Automated Validation Complete / Manual Check Pending | Generated-map time/Action/AI integration; reset fixed, main merge pending | `docs/milestones/M016_generated_map_combat.md` |

## Usage

At the start of substantial work, read this index, `docs/ROADMAP.md`, and then only the milestone document relevant to the task.

When opening a new milestone:

1. choose a narrow planned item from the roadmap (or record a newly agreed item there)
2. define a narrow goal and completion criteria and register the milestone in this index
3. record only decisions and progress needed to continue the work later
4. keep durable architectural decisions in `docs/decisions/` if they need to outlive the milestone
5. mark the milestone complete once its completion criteria are validated, and update the corresponding roadmap entry at the same time
6. avoid continuously expanding completed milestone documents; put newly found unfinished work into the roadmap
