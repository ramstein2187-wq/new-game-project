# M019 — Common Actor and multiple NPCs

Status: in progress on `codex/m019-common-actor`, based on main `b232dce`.
Specification: [user supplied implementation requirements](../designs/M019_common_actor_spec.md).

## Goal and constraints

Move runtime ownership into Actor, use a stable registry and arbitrary NPC IDs throughout Actions/AI, and run player + three independent rats on the generated map. Preserve M011–M018 rules, fixed-room single-rat behavior, deterministic combat, terrain generation and scheduler priority. No main merge; manual play verification remains a separate gate.

## Checkpoints / resumption

- 2026-09-22: verified clean tracked main at b232dce; preserved unrelated untracked imports and review files. Read AGENTS, roadmap, milestones M013–M018, combat/time/explainability decisions and supplied requirements.
- Existing ownership is split across positions/HP and abilities/species/bodies dictionaries; scheduler already supports arbitrary IDs. Actions/AI/UI still assume one rat. Refactor ownership and callers, retain forwarding compatibility accessors for existing tests, and stage generated spawn validation before committing configuration.
- Phase A: ActorDefinition, Actor, ActorRegistry and isolation/lifecycle tests.
- Phase B: generic game/actions/AI with single-NPC regression checks.
- Phase C: deterministic generated NPC placement and registry-driven UI/logs.
- Phase D: full automated checks, review final diff, update docs and commit/push task branch.
- Checkpoint: ActorDefinition/Actor/Registry, shared Action costs and generic NPC dispatch implemented. Registry-driven scene drawing, per-NPC status and captured event names implemented. Generated placement uses deterministic cardinal BFS with unchanged first spawns and explicit single-NPC test fixtures.
- Targeted `test_common_actor.gd` and `test_multiple_npcs.gd` pass. The 3-seed replay checksum captured from b232dce matches after refactor. Existing 17 scripts passed before adding the final multi-NPC suite. Final all-suite run and presentation check pending.

## Validation

Pending implementation. Prior manual acceptance applies only to M017/M018, not M019.

## Follow-ups

Inventory/equipment, factions/controllers, statuses, world persistence, perception/memory, species content and action animation remain separate roadmap work.
