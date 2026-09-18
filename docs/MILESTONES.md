# Milestones

This file is the short index for project milestones. Keep it concise.

## Current State

- Latest completed: `M009` — Playable procedural map
- Comparison baseline: `M010` — Micro-AP test room
- Active experiment: `M011` — Time-cost scheduler test room
- Still planned: `M002` — Interactive objects and simple state

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
| M011 | In Progress | Action-cost scheduler with player-priority ready-time turns | `docs/milestones/M011_time_cost_scheduler.md` |

## Usage

At the start of substantial work, read this index and then only the milestone document relevant to the task.

When opening a new milestone:

1. define a narrow goal and completion criteria
2. record only decisions and progress needed to continue the work later
3. keep durable architectural decisions in `docs/decisions/` if they need to outlive the milestone
4. mark the milestone complete once its completion criteria are validated
5. avoid continuously expanding completed milestone documents
