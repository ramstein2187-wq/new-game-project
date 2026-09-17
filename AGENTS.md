# AGENTS.md

## Project Overview

This is a Godot 4.x game project, currently using Godot 4.7.

The project is in an early design and prototyping stage. The intended direction combines elements of CRPGs and systemic roguelikes such as Caves of Qud.

The design should favor:

- systemic interactions
- emergent gameplay
- simulation-driven mechanics
- modular systems
- data-driven content
- extensibility for future content

Do not assume that current prototypes or temporary systems are final design decisions.

## Engine and Language

- Use Godot 4.x APIs compatible with the project's current Godot version.
- Prefer GDScript by default.
- Do not introduce C# unless there is a clear technical reason.
- Use Godot-native systems and APIs where practical.
- Avoid adding external dependencies unless they provide a meaningful benefit.

## General Working Rules

Before modifying the project:

1. Inspect the relevant existing files.
2. Understand the current structure and dependencies.
3. Prefer the smallest change that solves the problem.
4. Preserve existing working behavior unless the task explicitly requires changing it.

Do not perform large architectural refactors without first explaining why the refactor is needed, which files or systems will change, and what risks it introduces.

When the project is still experimental, prefer reversible changes over highly committed architecture.

## File Safety

Do not:

- delete files without explicit permission
- overwrite unrelated files
- modify files outside the current project
- rename large groups of files without explaining why
- move major folders without approval

If an existing file appears obsolete, explain why before removing it.

Temporary test files may be created when useful, but clearly identify them as temporary.

## Git Safety

Treat Git history as a recovery mechanism and as the boundary between work performed by different AI agents.

Do not run destructive Git commands without explicit permission.

In particular, do not use:

- `git reset --hard`
- `git clean -fd`
- forced pushes
- history rewriting
- commands that discard another agent's uncommitted work

Before modifying files, inspect the current Git state when practical. If unrelated uncommitted changes already exist, preserve them and do not overwrite, revert, stage, or commit them as part of the current task.

Before making a large change, recommend creating a Git commit if the current state is not already safely committed.

### Parallel AI Work

ChatGPT, Codex, and other coding agents must not independently make overlapping changes in the same checkout at the same time.

When another agent may be working concurrently:

- prefer a separate feature branch
- use a separate Git worktree for substantial or parallel implementation work
- assign one agent ownership of a file or subsystem at a time when possible
- use another agent as a reviewer rather than a second simultaneous implementer on the same files
- check `git status` and relevant diffs before starting and before handing work back
- never assume an unfamiliar change is safe to revert; it may belong to the user or another agent

Recommended branch naming when useful:

- `feature/<topic>` for ordinary feature work
- `chat/<topic>` for substantial ChatGPT-owned work
- `codex/<topic>` for substantial Codex-owned work

Branch prefixes identify the working context, but commit messages should describe the actual logical change rather than the tool that made it.

### Commit Discipline

Prefer small, coherent commits that each represent one logical change.

Before a commit, verify:

1. `git status`
2. the relevant `git diff`
3. available tests or validation
4. that only intended files are staged

Use descriptive commit messages such as:

- `feat: add inventory item stacking`
- `fix: prevent duplicate actor turns`
- `refactor: separate map generation from rendering`
- `docs: document world generation architecture`

Avoid vague messages such as `AI changes`, `ChatGPT work`, `Codex changes`, or `misc fixes`.

### Automated Branch / Commit / Push Workflow

This project explicitly uses an automated Git workflow for AI-assisted implementation.

For a new implementation task, the default workflow is:

1. inspect `git status` and current branch
2. ensure unrelated user or agent changes are preserved
3. create a dedicated task branch before substantial edits
4. perform the requested implementation
5. run available tests, validation, or Godot command-line checks when practical
6. inspect the final diff and verify that only intended files belong to the task
7. stage only files that belong to the task
8. create one or more coherent commits with descriptive messages
9. push the task branch to its upstream remote
10. report the branch name, commits, validation performed, pushed remote, and any remaining limitations

Branch naming:

- use `chat/<topic>` when ChatGPT owns the implementation
- use `codex/<topic>` when Codex owns the implementation
- use `feature/<topic>` when the work is tool-agnostic
- use short lowercase kebab-case topics where practical

Automatic commit and push are authorized for dedicated task branches when the requested implementation is complete and validation has not revealed a blocking failure.

Do not automatically commit or push directly to `main`. Do not automatically merge a task branch into `main`. Integration into `main` remains a separate step unless the user explicitly requests it.

If the repository is dirty before the task begins, do not include unrelated pre-existing changes in the task commit. If safe isolation is not possible in the current checkout, use a separate branch/worktree or stop before committing and clearly report the conflict.

If tests fail because of the new change, fix the issue before committing when practical. If validation cannot be run or fails for a pre-existing/unrelated reason, report that clearly; do not claim successful validation.

Never use force push as part of this automation. If a normal push is rejected because the remote branch changed, inspect and reconcile the divergence rather than overwriting remote history.

## Architecture Guidelines

Prefer modular systems with clear responsibilities.

Avoid:

- giant manager classes
- excessive global state
- unnecessary singletons
- tightly coupling gameplay logic to UI or visual presentation
- hard-coding content that could reasonably be represented as data

Prefer separating simulation logic, presentation, input, UI, and content/data definitions.

Use Resources, data objects, configuration files, or similar data-driven approaches when they make content easier to extend.

Do not introduce abstractions purely for theoretical future needs. Add complexity only when there is a concrete reason.

## Godot Guidelines

Prefer:

- scenes for reusable compositions
- Resources for reusable game data
- signals for communication where loose coupling is useful
- composition over deep inheritance hierarchies

Use autoloads only for systems that genuinely require global lifetime or access.

Avoid putting unrelated responsibilities into a single Node.

Keep node paths and scene dependencies reasonably robust against future restructuring.

## Gameplay Systems

When designing gameplay systems, favor systems that can interact with one another rather than isolated scripted exceptions.

Where practical, game entities should be represented through reusable properties, components, tags, effects, or data definitions.

Prefer designs where adding new content requires creating data rather than modifying core engine code.

Examples include:

- status effects
- abilities
- items
- creatures
- factions
- terrain properties
- environmental interactions

The long-term goal is to support a world where systems can combine in unexpected but understandable ways.

## Prototyping

The project is currently exploratory.

For prototypes:

- prioritize validating the idea over polishing implementation
- keep prototype code understandable and removable
- clearly distinguish temporary solutions from intended architecture
- avoid prematurely building large generalized frameworks

If a prototype reveals that the architecture should change, explain the tradeoffs before restructuring it.

## Testing and Validation

After modifying code:

- check for syntax or parse errors
- check obvious references and dependencies
- use available command-line validation when practical
- run `bash tools/check_godot.sh` for the standard headless editor scan, main-scene startup smoke test, and project test scripts when the local Godot installation is available
- explain how the user can verify the change inside Godot

Do not claim that something works unless it was actually tested or the limitation is clearly stated.

If Godot itself must be opened or interacted with manually, explain exactly what should be tested.

## Communication

When making a non-trivial change, briefly report:

- what changed
- why it changed
- which files were modified
- how to test it
- any important limitations or follow-up work

If the request is ambiguous, prefer a conservative implementation that is easy to revise.

Do not silently make unrelated improvements while completing a requested task.

## Documentation

Keep important architectural decisions documented.

Use the `docs/` directory for longer design and technical documents.

Suggested structure:

```text
docs/
├── game_design.md
├── architecture.md
├── combat.md
├── world_generation.md
└── decisions/
```

`AGENTS.md` should contain stable working rules, not the entire game design.

If a new system introduces an important architectural decision, update the relevant documentation when appropriate.
