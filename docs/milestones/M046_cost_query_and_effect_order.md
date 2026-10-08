# M046 — Cost queries and effect ID order

Status: **Complete on main** at `572cb33` via PR #47.
Integration base: `origin/main` `bc2b49f` (PR #46), 2026-10-08 KST.
Source implementation: `codex/cost-query-and-effect-order` commit `48da660`; reintegrated as `chat/m046-cost-query-integration` commit `e9c1616`.

## Scope and completion criteria

- Keep one authoritative action-cost/stat arithmetic path while allowing numeric-only queries to omit explanation construction.
- Reuse deterministic lexical effect-ID ordering between reads without leaking mutable live collections.
- Preserve costs, Body, scheduler, AI behavior, RNG, events, logs, replay compatibility and content values.
- Validate on the latest main after M034 CON-derived HP, M035 Procedural Naming, Player Experience First and M010 retirement.
- Keep detailed breakdown APIs unchanged for Inspector/debug callers.
- Update current specs/wiki and generated content source fingerprints.

## Integrated design

- `TimeAction.get_cost()` calls the shared resolver with `include_steps=false`; `cost_breakdown()` remains detailed by default.
- `ActionCostResolver`, `Actor`, `StatResolver` and `EffectStore` propagate the optional detail flag. Arithmetic, validation, tag filtering, phase order, ceil/minimum and failure reasons stay shared.
- `EffectStore` caches only sorted scalar effect IDs. Successful add/remove/clear marks the cache dirty; the next read rebuilds lexical `String(id)` order and exposes only a read-only internal array. Public snapshots remain deep copies.
- Numeric action-cost resolution does not build cost-specific explanation arrays or modifier-step dictionaries. Unrelated derived-stat queries retain their existing behavior.
- M035 remains Procedural Naming. This optimization is numbered M046 to avoid the historical task-branch collision.

## Validation

Fresh validation on latest main integration worktree:

- Godot 4.7.2 editor import/parse: PASS.
- Main-scene startup: PASS.
- Full `bash tools/check_godot.sh`: PASS.
- All **30 project test scripts**: PASS.
- Attributes/effects suite: **748 assertions** PASS, including numeric/detailed parity, invalid paths, mutation visibility and order-cache reuse.
- CON/HP 121, Character Overview 281, Inspector tone 53, Character Screen 284 and M028 64 focused assertions: PASS.
- Production batch, body/combat, replay and generated combat dataset checks: PASS.
- Dataset outputs/content values unchanged; only source fingerprints for the five touched runtime files changed.

The source branch's 2026-10-04 benchmark recorded lower local numeric-query timings and zero cost-specific explanation creation/order rebuilds after warm-up. The benchmark was not re-run on this 2026-10-08 integration because the local runner invocation was blocked by the tool security layer; no fresh timing claim is made.

Manual F5/F6 feel/readability, exported-package validation and live Notion sync are not integration blockers for this behavior-preserving performance change.
