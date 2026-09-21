# Roadmap

This is the lightweight inventory of future, unfinished, and exploratory work. It is not a claim that a discussed feature has already been implemented. Keep this page short and update it as implementation is verified.

## Status key

- **Complete**: implemented and validated on the branch named in the entry.
- **In progress**: work has started; link the active branch or milestone; remaining checks may still be pending.
- **Planned**: agreed future work, not yet completed.
- **Candidate**: discussed idea whose scope, priority, or implementation is undecided.
- **Needs verification**: discussed or attempted work whose current code/branch/validation status has not been checked.

## Verified baseline

- **Complete** — M001: basic player movement, collision, camera and interaction; see `docs/milestones/M001_foundation.md`.
- **Complete** — M003–M009: deterministic procedural-map prototype through a playable generated map; see `docs/MILESTONES.md`.

- **Complete** — M011–M015 on `main` at `19ce6d1`: 13 automated scripts pass; user confirmed manual validation on 2026-09-21 and merged via [PR #2](https://github.com/ramstein2187-wq/new-game-project/pull/2). M010 remains paused. See `docs/reviews/2026-09-21-m015-merge.md`.
- **Complete** — M016 generated-map combat integration on `main` at `9b92d80`: 14 combined automated test scripts passed on the integration branch; user confirmed M016 manual play verification on 2026-09-21, then [PR #3](https://github.com/ramstein2187-wq/new-game-project/pull/3) was merged. See `docs/milestones/M016_generated_map_combat.md`.

## Unfinished and future work

- **In progress — manual gate** — M017 combat/body phase 1 implemented on `codex/m017-combat-body-phase1`, 15 automated tests passed: [milestone/results/manual procedure](milestones/M017_combat_body_phase1.md), [specification](CRPG_combat_body_phase1_design.md). User-prioritized ahead of other expansion; manual play and main integration pending.
- M017 local-play follow-up: the procedural-map combat scene is now the task branch's default F5 entry point, per user request. The fixed room remains an optional F6 diagnostic scene.
- **In progress — manual gate; requires M017** — M018 eight-way movement and diagonal melee implemented on `chat/eight-way-combat`, with validated 1.4× diagonal movement-cost follow-up on `chat/diagonal-movement-cost` (player 1400, rat 1050 before injury modifiers); 16 automated scripts passed on the follow-up, user manual validation and integration pending. See [M018](milestones/M018_eight_way_combat.md). Four cardinal directions remain supported, and door interaction remains cardinal.

Snapshot: 2026-09-21. A (M011–M015) and B (M016 generated-map combat integration) are complete on `main`; C denotes separate expansion that has not been implemented. Historical integration evidence: `docs/reviews/2026-09-21-m015-integration.md`, `docs/reviews/2026-09-21-m015-merge.md`, and `docs/reviews/2026-09-21-m016-integration.md`.

| Area | Feature or next step | Status | Reference / note |
| --- | --- | --- | --- |
| Combat/body | Manual play M017 and approve integration after visual/input/combat checks | Planned | Task branch only; [M017](milestones/M017_combat_body_phase1.md). No automatic main merge. |
| Combat balance | Evaluate severe player-arm-injury frequency, rat retreat/encounter pacing and species/weapon values | Planned | M017 500-seed adjacency sample often ends in retreat before severe arm injury; functional changes verified by controlled real attacks. Do not confuse this with full-game win rates. |
| Combat presentation | Responsive layout for smaller windows; content-authoring Resources when needed | Candidate | M017 uses fixed 1152×648 prototype layout and Resource factories; manual readability verification pending. |
| Body expansion | Body modifiers/new templates, severing/prosthetics, offhand/multiple weapons, targeting, wound types/healing, layered armor and persistence | Candidate | Explicitly outside M017; [design follow-ups](CRPG_combat_body_phase1_design.md#11-후속-설계확장-목록). Scope separate milestones before implementation. |
| Interaction (C) | Reusable interactive objects with state, starting with a door, then chest state | Planned | Resume M002; prototype room door and print-only chest do not complete it. Create its detailed milestone when work starts; later persistence stores object state. |
| Map quality | Play several seeds and record concrete layout issues before more complex generation/tuning | Planned | Follow-up from M009; no new implementation milestone assigned. |
| Actor model (C) | Common Actor state and multiple NPC gameplay | Planned | Separate narrowly scoped milestone after M016; scheduler already supports multiple IDs, game state and action dispatch still target player/rat. Do not add to M013–M015 acceptance. |
| Tactical AI / presentation | Visibly animate NPC movement and other action sequences instead of only applying results atomically | Planned | Follow-up from M015; the rat currently performs one tile per scheduled action without tweened animation. No implementation milestone assigned. |
| Tactical AI / world (C) | Factions, sight/hearing, broader goals and new abilities | Candidate | M015 explicitly defers these systems; full-room observation is the current prototype policy. Register separate scope before implementation. |
| Feedback / explainability | Extend observable reasons to additional NPC behaviors, dialogue/barks and contextual feedback | Candidate | The M012 log and M015 retreat cue are prototypes, not full player-facing coverage. See `docs/decisions/explainable_systemic_behavior.md`. |
| World generation | Expansion beyond the current playable generated map (regions, landmarks and tuning informed by playtests) | Candidate | Do not assume the current prototype already supports a full world. |
| World persistence (C) | Three-Zone minimum: village/wilderness/ruin, freeze/restore, stateful object, renewable resource, significant enemy and save/load without duplicate ownership/rewards | Planned | `docs/decisions/world_persistence.md` imported unchanged from `chat/world-persistence-design`; design only, no persistence implementation. Build on M002 state contracts; choose clock, transition and save contracts before assigning implementation milestone. |
| World simulation | Shared world clock integration, lazy regrowth/replenishment, and consequential cross-zone scheduled events after initial persistence tests | Candidate | See `docs/decisions/world_persistence.md`; no background world simulation implementation or clock-unit decision yet. |
| RPG content (C) | Broader abilities, equipment, quests and social/faction content after the minimal gameplay and persistence loops | Candidate | No new implementation milestone assigned; outside M016. |
| Generation follow-up | Seed-version compatibility and reachable ruins when ruins become playable destinations | Planned | Prior local review reported 31-bit seed folding and disconnected ruin entrances; not introduced by this integration. Reproduce before changing generation semantics; preserve existing seed decision/golden values. |

Suggested sequence after completed M016: common Actor/multiple NPCs -> action animation -> reusable stateful objects (M002) -> three-Zone persistence -> RPG content. Numbers after M016 remain unassigned until scoped work starts. These extensions do not reopen M011–M016 acceptance.

## Maintenance rules

1. Record an agreed unfinished feature here as **Planned**; mark tentative ideas **Candidate**. Do not infer implementation status from a conversation alone.
2. Before starting substantial work, review this page, `docs/MILESTONES.md`, and only the directly relevant detailed milestone/decision documents.
3. When implementation begins, link the task branch and create or select a narrowly scoped milestone in `docs/MILESTONES.md` and `docs/milestones/`. Do not invent a new milestone number until one is actually registered.
4. Record goal, completion criteria, key progress and validation in the active milestone; retain lasting architectural decisions in `docs/decisions/`.
5. After validation, update the milestone index and this roadmap together. Mark **Complete** only with an explicit branch/validation basis; close or replace outdated next-step entries instead of leaving them as pending.
6. At handoff or merge, check whether work introduced new unfinished features or follow-ups and record them here without expanding completed milestone histories.
7. The roadmap is a planning snapshot, not a substitute for checking the actual branch, code, and tests. When branches differ, record the branch and use **Needs verification** where appropriate.
