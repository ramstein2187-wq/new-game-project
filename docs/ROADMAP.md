# Roadmap

This is the lightweight inventory of future, unfinished, and exploratory work. It is not a claim that a discussed feature has already been implemented. Keep this page short and update it as implementation is verified.

## Status key

- **Complete**: implemented and validated on the branch named in the entry.
- **In progress**: work has started; link the active branch or milestone.
- **Planned**: agreed future work, not yet completed.
- **Candidate**: discussed idea whose scope, priority, or implementation is undecided.
- **Needs verification**: discussed or attempted work whose current code/branch/validation status has not been checked.

## Verified baseline (`main`)

- **Complete** — M001: basic player movement, collision, camera and interaction; see `docs/milestones/M001_foundation.md`.
- **Complete** — M003–M009: deterministic procedural-map prototype through a playable generated map; see `docs/MILESTONES.md`.

## Unfinished and future work

| Area | Feature or next step | Status | Reference / note |
| --- | --- | --- | --- |
| Interaction | Reusable interactive objects with state, starting with a door | Planned | M002 in `docs/MILESTONES.md`; create its detailed milestone when work starts. |
| Map quality | Play several seeds and record concrete layout issues before more complex generation/tuning | Planned | Follow-up from M009; no new implementation milestone assigned. |
| Action / turn system | Reusable action definitions and unified execution, including turn/time cost rules | Needs verification | Design and implementation discussed; inspect the relevant working branch before assigning completion or a new milestone ID. |
| Tactical AI | Sequential, visible NPC actions; expandable action set; dynamic preferences and faction-dependent behavior | Candidate | Scope and current implementation status require review. |
| Feedback / logs | Expose action outcomes and reasons through combat/action logs or dialogue | Candidate | Exact presentation and implementation milestone to be decided. |
| World generation | Expansion beyond the current playable generated map (regions, landmarks and tuning informed by playtests) | Candidate | Do not assume the current prototype already supports a full world. |

## Maintenance rules

1. Record an agreed unfinished feature here as **Planned**; mark tentative ideas **Candidate**. Do not infer implementation status from a conversation alone.
2. Before starting substantial work, review this page, `docs/MILESTONES.md`, and only the directly relevant detailed milestone/decision documents.
3. When implementation begins, link the task branch and create or select a narrowly scoped milestone in `docs/MILESTONES.md` and `docs/milestones/`. Do not invent a new milestone number until one is actually registered.
4. Record goal, completion criteria, key progress and validation in the active milestone; retain lasting architectural decisions in `docs/decisions/`.
5. After validation, update the milestone index and this roadmap together. Mark **Complete** only with an explicit branch/validation basis; close or replace outdated next-step entries instead of leaving them as pending.
6. At handoff or merge, check whether work introduced new unfinished features or follow-ups and record them here without expanding completed milestone histories.
7. The roadmap is a planning snapshot, not a substitute for checking the actual branch, code, and tests. When branches differ, record the branch and use **Needs verification** where appropriate.
