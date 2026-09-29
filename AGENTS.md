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

For character and content design, prefer a small shared action grammar with meaningful differentiation through body, origin, traits, equipment, learned abilities, and accumulated change. Progression should emphasize new capabilities and identity as well as numerical growth. See `docs/decisions/player_identity_and_action_design.md`.

## Engine and Language

- Prefer GDScript.
- Use Godot 4.x APIs compatible with the current project version.
- Prefer Godot-native systems where practical.
- Do not introduce C# or external dependencies without a concrete technical reason.

## Context and Documentation Workflow

Before substantial work:

1. Read this file.
2. Read `docs/ROADMAP.md` for relevant unfinished work and its status.
3. Read `docs/MILESTONES.md`.
4. Read only the current/relevant milestone document under `docs/milestones/`.
5. Read additional architecture or decision documents only when directly relevant.

Do not load every historical milestone by default.

Documentation roles:

- `AGENTS.md`: stable working rules only.
- `docs/ROADMAP.md`: concise inventory of unfinished features, planned work, exploratory ideas, and links to active work.
- `docs/MILESTONES.md`: short milestone index and current status.
- `docs/milestones/`: goal, scope, progress, validation, and handoff notes for each milestone.
- `docs/decisions/`: long-lived architectural decisions when a milestone decision must survive beyond that milestone.
- Notion `CRPG 개발 위키 / 개발일지`: chronological daily development summaries generated from verified Git/DevSpace evidence; this is the current daily journal location.
- `docs/wiki/`: concise current-system documentation mirrored automatically to the Notion CRPG development wiki. Git remains the editable source; Notion is a derived reading surface.
- `docs/specs/`: algorithm, pipeline, state-model and data-model details with diagrams; mirrored to Notion `상세 설계`.
- `docs/datasets/`: structured documented monster, skill, body-template, equipment, status/trait, and Threat-measurement values; mirrored to Notion catalog databases. Runtime code/Resources remain authoritative until explicitly migrated to data-driven content.
- `THIRD_PARTY.md`: license/provenance notices for external code, assets, or other material actually included or redistributed with the repository.
- `docs/REFERENCES.md`: external repositories and technical material consulted for design/research when their code is not vendored.

Record agreed future features in the roadmap before starting implementation. Mark tentative ideas as candidates rather than committed work. When a feature starts, create or link a narrowly scoped milestone and task branch. On validated completion, update both the roadmap and milestone status; record newly discovered follow-ups in the roadmap rather than expanding completed milestones. Never claim a discussed or branch-specific feature is implemented on `main` without checking its actual code, branch, and validation.

When a milestone is completed, treat its document as mostly frozen. Prefer recording new work in the next milestone instead of continually expanding old documents.

When implementation materially changes a documented system's player-visible behavior, durable architecture, core numeric rules, implementation status, or important limitations, update the relevant `docs/wiki/*.md` page in the same task. If the change alters an algorithm, processing order, state transition, formula, or non-obvious invariant, update the matching `docs/specs/*.md` and diagram in the same task. If it changes or adds documented monster, skill, body-template, equipment, status/trait, or Threat-measurement values, update the appropriate `docs/datasets/*.json` record in the same task. Never invent a Threat Rating merely to fill the catalog; unvalidated derived scores remain null until the documented model and measurement protocol justify them. Do not mark planned or discussed behavior as implemented. Incidental refactors that do not change the system description do not require a wiki edit. New durable systems should get a new wiki Markdown file using the TOML front matter documented in `docs/wiki/README.md`; after the file reaches `main`, the Notion page is discovered or created automatically from its Git source path. The Notion mirror is synchronized from `docs/wiki/` after changes reach `main`; do not treat manual Notion body edits as authoritative.

Keep milestone documents concise enough to serve as efficient context for future sessions.

## General Working Rules

Before modifying the project:

- inspect relevant existing files and dependencies
- inspect Git status and current branch
- preserve existing working behavior unless the task requires changing it
- prefer the smallest reversible change that solves the problem
- avoid unrelated cleanup or speculative refactors

For large architectural changes, explain the reason, affected systems, and risks before proceeding.

When using external code or assets, verify the upstream source and license before adding them. Record copied, ported, substantially adapted, or redistributed material in `THIRD_PARTY.md`, including the upstream URL, revision/date when practical, license, local files, and modifications. Preserve copyright/license notices required by the upstream license. For research-only repositories whose code is not copied, record material references in `docs/REFERENCES.md` instead. Never assume an asset's or snippet's license from a search result or third-party mirror when an authoritative upstream source is available.

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
- roadmap and milestone documentation updated, when relevant
