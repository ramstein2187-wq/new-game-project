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
- **Complete** — M017 body combat and M018 eight-way movement on `main` at `7276272` via [PR #4](https://github.com/ramstein2187-wq/new-game-project/pull/4): the user confirmed both manual checks; 17 combined automated scripts passed. Merge verified on resume 2026-09-22; [integration record](reviews/2026-09-21-m017-m018-integration.md). Default F5 runs the procedural combat map; fixed-room F6 remains available. Selected diagonal move costs are 1400/1050 before injury efficiency.

## Unfinished and future work

Snapshot: 2026-09-29, M019 is complete on main at `b109ffd`; M022 is complete on main at `542f534` via PR #8; M023 is complete on main at `8d71504` via PR #17; M024 is complete on main at `e79ddb1` via PR #19; M027 is complete on main at `7c49499` via PR #26. M027 passed 23/23 task-branch tests and a post-merge editor parse plus focused regression test. Manual feel/balance evaluation remains a follow-up. Earlier milestone acceptance remains separate.

| Area | Feature or next step | Status | Reference / note |
| --- | --- | --- | --- |
| Physical combat | Cut/Puncture/Blunt, extensible multiplier-based armor profiles, weapon actions and authoritative 1H/2H use requirements | Complete on main | [M027](milestones/M027_physical_combat_weapon_actions.md), main `7c49499` via PR #26. User authorized integration; manual feel/balance remains a follow-up. M025/M026 remain separate branches. |
| Combat follow-up | Profile/Weapon Action balance and Threat recalibration; AI special-action selection; future nonphysical types/status effects | Planned | [M027](milestones/M027_physical_combat_weapon_actions.md). M025/M026 remain separate branches; no final TR or new effects in M027. |
| Combat balance | Evaluate injury frequency, three-rat encounter pacing and species/weapon values under eight-way movement | Planned | The M017 500-seed sample is historical four-direction evidence, not current eight-way balance or full-game win rates. Functional changes remain covered by controlled real attacks. |
| Combat data | Damage dice, shared Attack definitions, five weapons, five armor pieces and ten hostile prototypes | Complete on main | [M024](milestones/M024_combat_data_foundation.md), main `e79ddb1` via PR #19; user manual play validation reported no issues and post-merge 22-test check passed. Final Threat Rating and balance tuning remain planned. |
| Combat simulation | Deterministic headless batch runner using production actions, AI, scheduler, combat rules and events | Complete on main | [M022](milestones/M022_headless_combat_batch.md), main 542f534 via PR #8; final 21/21 scripts and 20-run smoke, plus 100/1000-run integration samples, zero errors. Production rules preserved. |
| Threat measurement | Configurable production matchups, paired side swaps, slot-bias diagnostics and event-derived combat metrics | Complete on main | [M023](milestones/M023_threat_measurement_foundation.md), main `8d71504` via PR #17. Same-seed forward/reverse pairing is integrated and post-merge automated checks passed; final Threat Rating values are intentionally still null. |
| Threat calibration | Benchmark player profiles, pairwise matchup matrix, uncertainty estimates and final TR scale | Planned | Build on M023/M024. The broader prototype dataset and D&D-style damage are available on the M024 task branch, but the three smoke matchups are validation evidence rather than calibrated Threat scores. |
| Simulation follow-up | Exact per-action stepping or alternate symmetric arenas when experiments specifically require them | Candidate | M023 handles the dominant side-slot asymmetry with paired swaps, but M022's scheduling-window action-cap overshoot and fixed arena still exist. AI tuning remains separate scope. |
| Combat presentation | Responsive layout for smaller windows; content-authoring Resources when needed | Candidate | M017/M018 layout had manual acceptance. M019 three-NPC layout has automated capture evidence only; manual acceptance and broader window/roster support remain separate. |
| Tactical routing | Cost-aware routes and alternative keyboard/Num Lock mappings if needed | Candidate | Selected M018 uses deterministic shortest-step routing and keypad directions; weighted movement time is charged correctly. No alternative equal-cost implementation was merged. |
| Body expansion | Body modifiers/new templates, severing/prosthetics, offhand/multiple weapons, targeting, wound types/healing, layered armor and persistence | Candidate | Explicitly outside M017; [design follow-ups](CRPG_combat_body_phase1_design.md#11-후속-설계확장-목록). Scope separate milestones before implementation. |
| Interaction (C) | Reusable interactive objects with state, starting with a door, then chest state | Planned | Resume M002; prototype room door and print-only chest do not complete it. Create its detailed milestone when work starts; later persistence stores object state. |
| Map quality | Play several seeds and record concrete layout issues before more complex generation/tuning | Planned | Follow-up from M009; no new implementation milestone assigned. |
| Actor model (C) | Common Actor state and multiple NPC gameplay | Complete on main | [M019](milestones/M019_common_actor.md), main b109ffd via PR #7; 20/20 integration scripts pass. Three-NPC manual pacing/readability remains unverified. [Record](reviews/2026-09-27-m019-m022-integration.md). |
| Tactical AI / presentation | Visibly animate NPC movement and other action sequences instead of only applying results atomically | Planned | Follow-up from M015; the rat currently performs one tile per scheduled action without tweened animation. No implementation milestone assigned. |
| Tactical AI / world (C) | Factions, companions/controllers, sight/hearing, target memory, broader goals and new abilities | Candidate | M015 explicitly defers these systems; full-room observation is the current prototype policy. Register separate scope before implementation. |
| Feedback / explainability | Extend observable reasons to additional NPC behaviors, dialogue/barks and contextual feedback | Candidate | The M012 log and M015 retreat cue are prototypes, not full player-facing coverage. See `docs/decisions/explainable_systemic_behavior.md`. |
| World generation | Expansion beyond the current playable generated map (regions, landmarks and tuning informed by playtests) | Candidate | Do not assume the current prototype already supports a full world. |
| World persistence (C) | Three-Zone minimum: village/wilderness/ruin, freeze/restore, stateful object, renewable resource, significant enemy and save/load without duplicate ownership/rewards | Planned | `docs/decisions/world_persistence.md` imported unchanged from `chat/world-persistence-design`; design only, no persistence implementation. Build on M002 state contracts; choose clock, transition and save contracts before assigning implementation milestone. |
| World simulation | Shared world clock integration, lazy regrowth/replenishment, and consequential cross-zone scheduled events after initial persistence tests | Candidate | See `docs/decisions/world_persistence.md`; no background world simulation implementation or clock-unit decision yet. |
| RPG content (C) | Broader abilities, inventory/equipment, generic status effects, quests and social content after the minimal gameplay and persistence loops | Candidate | No new implementation milestone assigned; outside M016. |
| Generation follow-up | Seed-version compatibility and reachable ruins when ruins become playable destinations | Planned | Prior local review reported 31-bit seed folding and disconnected ruin entrances; not introduced by this integration. Reproduce before changing generation semantics; preserve existing seed decision/golden values. |

Suggested expansion sequence after M017/M018: common Actor/multiple NPCs -> action animation -> reusable stateful objects (M002) -> three-Zone persistence -> broader RPG content. M019 is complete on main; later extensions remain separate. These extensions do not reopen earlier milestone acceptance.

## Maintenance rules

1. Record an agreed unfinished feature here as **Planned**; mark tentative ideas **Candidate**. Do not infer implementation status from a conversation alone.
2. Before starting substantial work, review this page, `docs/MILESTONES.md`, and only the directly relevant detailed milestone/decision documents.
3. When implementation begins, link the task branch and create or select a narrowly scoped milestone in `docs/MILESTONES.md` and `docs/milestones/`. Do not invent a new milestone number until one is actually registered.
4. Record goal, completion criteria, key progress and validation in the active milestone; retain lasting architectural decisions in `docs/decisions/`.
5. After validation, update the milestone index and this roadmap together. Mark **Complete** only with an explicit branch/validation basis; close or replace outdated next-step entries instead of leaving them as pending.
6. At handoff or merge, check whether work introduced new unfinished features or follow-ups and record them here without expanding completed milestone histories.
7. The roadmap is a planning snapshot, not a substitute for checking the actual branch, code, and tests. When branches differ, record the branch and use **Needs verification** where appropriate.
