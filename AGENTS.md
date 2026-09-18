# AGENTS.md

## Purpose

This file contains only stable project-wide rules for AI-assisted development.

Do not turn `AGENTS.md` into a development log, feature specification, or milestone history. Keep changing project context in `docs/` instead.

## Project Direction

This is a Godot 4.x game project, currently using Godot 4.7.

The project is exploratory and aims toward a CRPG/systemic-roguelike direction. Favor:

- systemic interactions
- emergent gameplay
- simulation-driven mechanics
- modular systems
- data-driven content
- extensibility without premature abstraction

Current prototypes are not automatically final architecture.

## Engine and Language

- Prefer GDScript.
- Use Godot 4.x APIs compatible with the current project version.
- Prefer Godot-native systems where practical.
- Do not introduce C# or external dependencies without a concrete technical reason.

## Context and Documentation Workflow

Before substantial work:

1. Read this file.
2. Read `docs/MILESTONES.md`.
3. Read only the current/relevant milestone document under `docs/milestones/`.
4. Read additional architecture or decision documents only when directly relevant.

Do not load every historical milestone by default.

Documentation roles:

- `AGENTS.md`: stable working rules only.
- `docs/MILESTONES.md`: short milestone index and current status.
- `docs/milestones/`: goal, scope, progress, validation, and handoff notes for each milestone.
- `docs/decisions/`: long-lived architectural decisions when a milestone decision must survive beyond that milestone.
- `docs/devlog/`: very short chronological daily summaries; do not load by default unless historical context is needed.

When a milestone is completed, treat its document as mostly frozen. Prefer recording new work in the next milestone instead of continually expanding old documents.

Keep milestone documents concise enough to serve as efficient context for future sessions.

## General Working Rules

Before modifying the project:

- inspect relevant existing files and dependencies
- inspect Git status and current branch
- preserve existing working behavior unless the task requires changing it
- prefer the smallest reversible change that solves the problem
- avoid unrelated cleanup or speculative refactors

For large architectural changes, explain the reason, affected systems, and risks before proceeding.

## File Safety

Do not without explicit permission:

- delete existing files
- overwrite unrelated work
- modify files outside this project
- perform broad renames or folder moves

Never assume unfamiliar changes are disposable; they may belong to the user or another agent.

## Git Safety and Workflow

Git is the recovery boundary between user work and AI work.

Never use destructive history/worktree operations such as:

- `git reset --hard`
- `git clean -fd`
- force push
- history rewriting
- commands that discard unrelated uncommitted work

For substantial implementation work:

1. inspect status and branch
2. preserve unrelated changes
3. use a dedicated task branch
4. implement the requested change
5. validate it
6. inspect the final diff
7. stage only intended files
8. make a coherent descriptive commit
9. push the task branch
10. report branch, commit, validation, and limitations

Branch naming:

- `chat/<topic>` for ChatGPT-owned work
- `codex/<topic>` for Codex-owned work
- `feature/<topic>` for tool-agnostic work

Do not automatically commit or push directly to `main`, and do not merge into `main` unless explicitly requested.

Avoid overlapping edits by multiple agents in the same checkout. Use separate branches/worktrees or clear subsystem ownership for parallel work.

## Architecture and Godot Guidelines

Prefer:

- modular systems with clear responsibilities
- composition over deep inheritance
- scenes for reusable compositions
- Resources/data objects for reusable content data
- signals where loose coupling is useful
- separation of simulation, presentation, input, and UI

Avoid:

- giant manager classes
- excessive global state or unnecessary autoloads
- hard-coded content that should reasonably be data
- abstractions created only for hypothetical future needs

For gameplay systems, prefer reusable properties, components, tags, effects, or data definitions over isolated scripted exceptions when the added structure is justified by current needs.

## Explainable Systemic Behavior

Systemic depth should be legible to the player, not only present internally.

- Preserve meaningful reasons for important AI decisions and state changes as data instead of discarding them once an action is chosen.
- Surface those reasons through appropriate player-facing channels such as behavior, animation, dialogue/barks, logs, inspection, or other contextual feedback.
- Do not require exact internal numbers to be exposed; the player should be able to form a useful explanation from information their character could reasonably observe or learn.
- Prefer systems where understanding a reason can create a gameplay response: faction hostility, fear, loyalty, revenge, orders, hazards, and similar causes should be manipulable when appropriate.
- Treat complex simulation that produces no perceivable or meaningful difference for the player as low-value complexity.
- Keep player-facing explainability and developer-facing decision traces compatible so AI behavior can be debugged from the same underlying reasons.

See `docs/decisions/explainable_systemic_behavior.md` for the durable design rationale.

## Prototyping

The project is still exploratory.

For prototypes:

- validate the idea before polishing it
- keep code understandable and removable
- distinguish temporary solutions from intended architecture
- prefer reversible choices
- avoid building large generalized frameworks prematurely

## Testing and Validation

After code or scene changes:

- check syntax/parse errors and obvious references
- run `bash tools/check_godot.sh` when the local Godot installation is available
- add or update focused automated tests when practical
- clearly state what was and was not tested
- explain any remaining manual in-editor or visual checks

Do not claim a change works unless it was actually validated or the limitation is explicitly stated.

## Communication

For non-trivial changes, briefly report:

- what changed and why
- files/systems affected
- validation performed
- important limitations or follow-up work
- milestone documentation updated, when relevant
