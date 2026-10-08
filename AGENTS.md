# AGENTS.md

## Purpose

Stable, repository-wide instructions for AI-assisted development. Keep changing
implementation status, milestone history, and detailed designs in `docs/`, not here.
Read task-specific documents only when their information is needed.

## Product Direction

- Godot 4.x (currently 4.7), GDScript-first, exploratory solo-developed
  CRPG/systemic roguelike. Prototypes are not automatically final architecture.
- **History creates the world. Systems create possibilities. The player creates
  the story.** Prioritize enjoyable survival, exploration, meaningful action,
  discovery, growth, and player agency over simulation or lore completeness.
- Pursue a living world, systemic emergence, authored lore/content alongside
  procedural variation, discovery and choice, and mutual player/world change.
- Prefer a small shared action grammar; let body, origin, traits, equipment,
  abilities, and experience create distinct ways of acting and becoming.
- Governing decisions: `docs/decisions/player_experience_first.md` and
  `docs/decisions/player_identity_and_action_design.md`.

## Context: Read Only What the Task Needs

1. Follow this file; inspect the Git branch/status and relevant source before editing.
2. **Always read `docs/lore/world_canon_v0_1.md` in full before substantive
   project work. This is mandatory, not subject to selective context loading.**
   For history, world generation, factions, lore, or content involving world facts,
   also read `docs/lore/history_generation_contract.md` and relevant contracts.
3. When planning work or checking unfinished scope, consult the **relevant entries**
   in `docs/ROADMAP.md`, not the entire project history.
4. Consult `docs/MILESTONES.md` and the specific `docs/milestones/` document
   when implementing, validating, or integrating milestone work.
5. Read the relevant `docs/decisions/`, `docs/specs/`, `docs/wiki/`, or
   `docs/datasets/` files only when the task depends on their contracts.
6. For a small, well-scoped fix or documentation edit, do not load unrelated
   roadmaps, milestones, reviews, or historical samples by default. The world
   canon requirement above still applies.

Verify the actual code, branch, and tests before claiming something is on
`main` or implemented. A discussion, document, or unmerged branch is not proof.
Preserve the canon's LOCKED facts, RESERVED unknowns, and distinction between
objective history and in-world beliefs. Do not invent answers to unresolved lore
or promote generated/local events into global canon; flag conflicts for review.

## Documentation: One Source of Truth

- `docs/ROADMAP.md`: planned/candidate work and unfinished follow-ups.
- `docs/MILESTONES.md` + `docs/milestones/`: milestone index, scope,
  completion evidence, and handoff; completed milestone records stay mostly frozen.
- `docs/decisions/`: durable choices and design principles.
- `docs/lore/world_canon_v0_1.md`: mandatory worldbuilding authority; the
  history generation contract defines allowed facts, mysteries, and beliefs.
- `docs/specs/`: detailed algorithms, processing order, and data/state contracts.
- `docs/wiki/`: current, concise system explanations; Git is authoritative
  and the Notion system wiki is derived from these files.
- `docs/datasets/`: documented content values; runtime code/Resources remain
  authoritative unless a migration explicitly changes that.
- `docs/reviews/`: version-scoped evidence, not current requirements.
- Notion development journal: chronological summaries of verified work.

Update only the sources materially affected by the task:

- Record agreed future work in the roadmap (candidate vs. planned). When a
  substantial implementation starts, create/link a narrow milestone and branch;
  update its status and the roadmap when validated. Track follow-ups there.
- Update an existing decision when a durable rule changes; prefer revising an
  appropriate document over creating a duplicate Markdown file.
- Update the relevant wiki page when implemented player-visible behavior,
  architecture, core rules, status, or a meaningful limitation changes.
- Update the relevant spec for changed algorithms/order/invariants, and the
  relevant dataset for changed documented content values. Do not invent
  unmeasured Threat Ratings to fill a catalog.
- Incidental refactors, small fixes, and documentation-only edits do not
  automatically require changes across every documentation layer.
- For a genuinely new wiki system, follow `docs/wiki/README.md` and its TOML
  front matter. Wiki/Notion synchronization follows Git changes on `main`;
  do not treat manual Notion body edits as authoritative.

Keep each document focused and link to its authoritative detail instead of
repeating long explanations in multiple places.

## Safe Changes and Git

- Inspect relevant dependencies, current branch, and uncommitted work first.
  Preserve existing behavior unless the requested work calls for change.
- Prefer small, reversible edits. Explain significant architectural changes,
  affected systems, and risks before implementing.
- Without explicit permission, do not delete existing files, overwrite unrelated
  work, change files outside this project, or perform broad renames/moves.
- Never discard work with `git reset --hard`, `git clean -fd`, forced pushes,
  history rewriting, or destructive worktree operations. Unfamiliar changes and
  untracked files may be someone's active work.
- Use dedicated branches/worktrees for substantial implementation:
  `chat/<topic>`, `codex/<topic>`, or `feature/<topic>`.
  Avoid overlapping edits by agents in the same checkout.
- Inspect diff, validate, stage only intended files, commit coherently, and push
  the task branch for substantial work; report the branch, commit, and limits.
  Never commit or push directly to `main`, or merge without explicit instruction.

## Engineering and Gameplay

- Prefer Godot-native APIs compatible with the project version and GDScript.
  Add C# or external dependencies only with a concrete technical justification.
- Favor modular responsibilities, composition, reusable scenes/Resources,
  data-driven content, and separation of simulation, presentation, input, and UI.
  Avoid oversized managers, unnecessary autoloads, premature frameworks, and
  gameplay exceptions where reusable capabilities/effects suffice.
- Preserve causal reasons for significant AI/system behavior. Let players perceive
  and sometimes act on those reasons through behavior, logs, inspection, dialogue,
  or environmental evidence. See
  `docs/decisions/explainable_systemic_behavior.md`.
- Prototype to validate an idea before polishing it; keep experiments legible,
  removable, and separate from decisions about final architecture.
- Verify original sources and licenses before adding outside code or assets.
  Record incorporated material in `THIRD_PARTY.md` and research-only references
  in `docs/REFERENCES.md`; retain required attribution and notices.

## Validation and Handoff

- After code/scene changes, check parsing/references and run
  `bash tools/check_godot.sh` when the local engine is available. Add focused
  regression tests when practical; disclose manual/in-editor checks not performed.
- For documentation-only changes, use focused link/metadata checks and
  `git diff --check`; full gameplay tests are not mandatory without code impact.
- Never report unexecuted tests as passing. For meaningful work, summarize
  what changed, why, what was validated, remaining limits, and any relevant
  documentation/status updates.
