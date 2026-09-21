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

Snapshot: 2026-09-21, `codex/integrate-m011-m015`; `main` remains at M009 (`3df96cb`). M011–M015 automated checks pass on this candidate; manual checks and main merge are pending. A = required before this merge, B = generated-map integration (M016), C = separate expansion. Detailed evidence and handoff: `docs/reviews/2026-09-21-m015-integration.md`.

| Area | Feature or next step | Status | Reference / note |
| --- | --- | --- | --- |
| Interaction (C) | Reusable interactive objects with state, starting with a door, then chest state | Planned | Resume M002; prototype room door and print-only chest do not complete it. Create its detailed milestone when work starts; later persistence stores object state. |
| Map quality | Play several seeds and record concrete layout issues before more complex generation/tuning | Planned | Follow-up from M009; no new implementation milestone assigned. |
| Turn model (A) | Manual timing check: 500/1000/1250 costs, fast rat responses, player-priority ties | In progress | M011; automated checks pass on integration candidate. Keep M010 paused as comparison; no new timing features required. |
| Feedback / logs (A) | Check player log readability, room overlap and L/F3 presentation | In progress | M012; observer filtering, hidden-reason suppression, bounded history and input toggles pass automatically. Native GUI play pending. |
| Action / turn system (A) | Check movement, bump attack, door, wait, defeat and reset in actual play | In progress | M013–M014; shared actions, rejected-action costs, scheduling and scene input pass automatically. Multi-actor scheduler tests do not imply multi-NPC gameplay. |
| Tactical AI (A) | Observe normal chase, injured retreat and matching visible cue in play | In progress | M015; deterministic choice, invalid candidate rejection and private debug reasons pass automatically. Balance and animation expansion are separate. |
| Procedural map / combat (B) | Continue existing M016: one player and one rat using shared actions, terrain collision and logs on generated map | In progress | `chat/procgen-time-combat` at `8b5c2a6`; see `docs/milestones/M016_generated_map_combat.md`. Code excluded here; revalidate reset contract, several seeds, encounter loop and UI before subsequent integration. |
| Actor model (C) | Common Actor state and multiple NPC gameplay | Planned | Separate narrowly scoped milestone after M016; scheduler already supports multiple IDs, game state and action dispatch still target player/rat. Do not add to M013–M015 acceptance. |
| Tactical AI / presentation | Visibly animate NPC movement and other action sequences instead of only applying results atomically | Planned | Follow-up from M015; the rat currently performs one tile per scheduled action without tweened animation. No implementation milestone assigned. |
| Tactical AI / world (C) | Factions, sight/hearing, broader goals and new abilities | Candidate | M015 explicitly defers these systems; full-room observation is the current prototype policy. Register separate scope before implementation. |
| Feedback / explainability | Extend observable reasons to additional NPC behaviors, dialogue/barks and contextual feedback | Candidate | The M012 log and M015 retreat cue are prototypes, not full player-facing coverage. See `docs/decisions/explainable_systemic_behavior.md`. |
| World generation | Expansion beyond the current playable generated map (regions, landmarks and tuning informed by playtests) | Candidate | Do not assume the current prototype already supports a full world. |
| World persistence (C) | Three-Zone minimum: village/wilderness/ruin, freeze/restore, stateful object, renewable resource, significant enemy and save/load without duplicate ownership/rewards | Planned | `docs/decisions/world_persistence.md` imported unchanged from `chat/world-persistence-design`; design only, no persistence implementation. Build on M002 state contracts; choose clock, transition and save contracts before assigning implementation milestone. |
| World simulation | Shared world clock integration, lazy regrowth/replenishment, and consequential cross-zone scheduled events after initial persistence tests | Candidate | See `docs/decisions/world_persistence.md`; no background world simulation implementation or clock-unit decision yet. |
| RPG content (C) | Broader abilities, equipment, quests and social/faction content after the minimal gameplay and persistence loops | Candidate | No new implementation milestone assigned; outside M016. |
| Generation follow-up | Seed-version compatibility and reachable ruins when ruins become playable destinations | Planned | Prior local review reported 31-bit seed folding and disconnected ruin entrances; not introduced by this integration. Reproduce before changing generation semantics; preserve existing seed decision/golden values. |

Suggested sequence: M016 verification/integration -> common Actor/multiple NPCs -> action animation -> reusable stateful objects (M002) -> three-Zone persistence -> RPG content. Numbers after M016 remain unassigned until scoped work starts. None of these extensions reopens M011–M015 acceptance.

## Maintenance rules

1. Record an agreed unfinished feature here as **Planned**; mark tentative ideas **Candidate**. Do not infer implementation status from a conversation alone.
2. Before starting substantial work, review this page, `docs/MILESTONES.md`, and only the directly relevant detailed milestone/decision documents.
3. When implementation begins, link the task branch and create or select a narrowly scoped milestone in `docs/MILESTONES.md` and `docs/milestones/`. Do not invent a new milestone number until one is actually registered.
4. Record goal, completion criteria, key progress and validation in the active milestone; retain lasting architectural decisions in `docs/decisions/`.
5. After validation, update the milestone index and this roadmap together. Mark **Complete** only with an explicit branch/validation basis; close or replace outdated next-step entries instead of leaving them as pending.
6. At handoff or merge, check whether work introduced new unfinished features or follow-ups and record them here without expanding completed milestone histories.
7. The roadmap is a planning snapshot, not a substitute for checking the actual branch, code, and tests. When branches differ, record the branch and use **Needs verification** where appropriate.
