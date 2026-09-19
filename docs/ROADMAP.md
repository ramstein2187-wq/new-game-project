# Roadmap

This is the lightweight inventory of future, unfinished, and exploratory work. It is not a claim that a discussed feature has already been implemented. Keep this page short and update it as implementation is verified.

## Status key

- **Complete**: implemented and validated on the branch named in the entry.
- **In progress**: work has started; link the active branch or milestone; remaining checks may still be pending.
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
| Turn model | Action-cost time and player-priority ready-time turns; manual feel check | In progress | M011 in `docs/milestones/M011_time_cost_scheduler.md`; automated validation recorded on `chat/time-cost-scheduler` and included in `chat/tactical-ai-prototype`, not `main`. M010 remains the paused Micro-AP comparison baseline. |
| Feedback / logs | Structured observer-aware combat log; manual UI/readability check | In progress | M012 in `docs/milestones/M012_structured_combat_log.md`; automated validation recorded on `chat/structured-combat-log` and included in `chat/tactical-ai-prototype`, not `main`. |
| Action / turn system | Independent actor scheduling and shared player/NPC action execution; manual gameplay checks | In progress | M013–M014 in `docs/MILESTONES.md`; automated validation recorded on `chat/independent-time-scheduler` and `chat/common-action-system`, included in `chat/tactical-ai-prototype`, not `main`. |
| Tactical AI | Candidate-based rat decisions, dynamic aggression/injury response and observable retreat cue; manual play check | In progress | M015 in `docs/milestones/M015_tactical_ai_prototype.md`; automated validation recorded on `chat/tactical-ai-prototype`, not `main`. |
| Procedural map / combat | Integrate M011–M015 grid-based combat, AI, and logs into a separate playable generated-map scene | In progress | M016 automated validation passes on `chat/procgen-time-combat`; manual UI/pacing check pending. Original continuous-movement playground and fixed-room combat experiment remain intact. |
| Tactical AI / presentation | Visibly animate NPC movement and other action sequences instead of only applying results atomically | Planned | Follow-up from M015; the rat currently performs one tile per scheduled action without tweened animation. No implementation milestone assigned. |
| Tactical AI / world | Generalize beyond one rat: other NPCs, faction-dependent preferences, perception and broader goals | Candidate | M015 explicitly defers these systems; decide scope and register a new milestone before implementation. |
| Feedback / explainability | Extend observable reasons to additional NPC behaviors, dialogue/barks and contextual feedback | Candidate | The M012 log and M015 retreat cue are prototypes, not full player-facing coverage. See `docs/decisions/explainable_systemic_behavior.md`. |
| World generation | Expansion beyond the current playable generated map (regions, landmarks and tuning informed by playtests) | Candidate | Do not assume the current prototype already supports a full world. |

## Maintenance rules

1. Record an agreed unfinished feature here as **Planned**; mark tentative ideas **Candidate**. Do not infer implementation status from a conversation alone.
2. Before starting substantial work, review this page, `docs/MILESTONES.md`, and only the directly relevant detailed milestone/decision documents.
3. When implementation begins, link the task branch and create or select a narrowly scoped milestone in `docs/MILESTONES.md` and `docs/milestones/`. Do not invent a new milestone number until one is actually registered.
4. Record goal, completion criteria, key progress and validation in the active milestone; retain lasting architectural decisions in `docs/decisions/`.
5. After validation, update the milestone index and this roadmap together. Mark **Complete** only with an explicit branch/validation basis; close or replace outdated next-step entries instead of leaving them as pending.
6. At handoff or merge, check whether work introduced new unfinished features or follow-ups and record them here without expanding completed milestone histories.
7. The roadmap is a planning snapshot, not a substitute for checking the actual branch, code, and tests. When branches differ, record the branch and use **Needs verification** where appropriate.
