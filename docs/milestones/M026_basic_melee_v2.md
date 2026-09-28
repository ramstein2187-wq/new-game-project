# M026 — Basic Melee v2

Status: **Implemented and automatically validated on `codex/basic-melee-v2`**; not merged into main. Manual gameplay review remains pending.

Base: `origin/chat/believable-tactical-ai` at `9264723`. M025 remains the separate `chat/m025-threat-calibration` work.

## Goal and scope

Implement believable tactical AI Phase A through the existing TacticalChoice, TacticalPlanner and production Actions. Attack, Approach, Hold, Reposition, Retreat, Interact and fallback Wait compete using bounded local knowledge. RatTactics, combat rules, scheduler and routing are preserved.

## Implemented

- `MeleeContext`: own condition/capability/aggression/fear, coarse target health, legal local moves, occupancy and existing BFS route; no retained game/Actor references in scoring.
- `BasicMeleeTactics`: small candidate helpers and deterministic utility comparison. Other actors imply congestion, never faction or ally confidence. Exposure covers only the current target's geometric reach.
- Two defensive actions at most between executed attacks against the same target. Per-Actor state updates after successful production execution; selection queries and failed actions cannot change it.
- `basic_melee` remains the routing identifier. `BasicMeleeTactics.POLICY_REVISION` and CombatEvent `ai_policy_revision` identify `basic_melee_v2`.
- Existing player log filtering and retreat cue retained. Hold and fallback Wait have distinct goals/reasons.

## Validation and behavior review

2026-09-28, Godot 4.7.2:

- `bash tools/check_godot.sh`: editor import/parse, headless main startup, **23/23 scripts passed**, no ERROR/WARNING/FAIL in the final log.
- New test: **12 scenario groups, 213 assertions**. A–H all pass; extra coverage includes actual Reposition selection, information invariance, doors, lost capabilities, fallback, per-Actor memory/reset and deterministic multi-NPC replay.
- Controlled low-aggression stationary-target combat terminates in 9 NPC actions; wounded variant in 17. Both-cautious actors and three independent v2 NPCs also terminate controlled combats. These are bounded test scenarios, not a universal termination proof.
- Production paired smoke: 3 matchups, 20 paired seeds each, **120 encounters, 0 errors, 0 stalls**. Rules and content definitions unchanged. Observed smoke runtime 1.138 s; not a large-scale performance benchmark.
- Wiki and knowledge `--check` validators passed offline. No external Notion writes performed.
- Code/trace behavior review complete: information boundary, existing execution path, deferred target/faction logic and bounded hesitation checked. No win-rate tuning performed.
- Manual GUI/gameplay, readability and fun review **not performed**.

[Detailed results, files and risks](../reviews/2026-09-28-m026-validation.md). [Resumable work log](../basic-melee-v2-work-log.md).

## Limitations and handoff

- Phase A only: no perception, target switching, archetype framework, formations, ally support or multi-enemy threat inference.
- Existing shortest-step BFS remains; no cost-aware routing. Congestion relief is one local step and cannot solve persistent corridor queues.
- Repeated short retreat/re-engage patterns remain possible between attacks. Two-action resolve deliberately overrides indefinite cautious refusal.
- Lost attack capability, permanently blocked routes or zero-damage fights may still stall. Existing simulation caps remain necessary.
- TR datasets/calibration results were not modified. M025's separate branch already declares `POLICY_REVISION = basic_melee_v1`; integration must retain v2 and rerun calibration with the changed policy.
- Default generated-map RatTactics behavior is unchanged. New hostile prototypes using basic_melee adopt v2.

## Next work

Manual play review, larger-roster profiling, true perception/relationship data and M025 recalibration are recorded separately in ROADMAP. No main merge is authorized by this milestone.
