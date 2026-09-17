# Milestones

This file is the short index for project milestones. Keep it concise.

## Current State

- Latest completed: `M006` — Ruin landmark placement pass
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

## Usage

At the start of substantial work, read this index and then only the milestone document relevant to the task.

When opening a new milestone:

1. define a narrow goal and completion criteria
2. record only decisions and progress needed to continue the work later
3. keep durable architectural decisions in `docs/decisions/` if they need to outlive the milestone
4. mark the milestone complete once its completion criteria are validated
5. avoid continuously expanding completed milestone documents
