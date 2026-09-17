# M007 — Namespaced Seed Derivation

Status: Complete

## Goal

Replace ad-hoc seed salts with one deterministic seed-derivation utility so procedural subsystems can share a world seed without sharing one RNG stream.

## Completed Scope

- Added `SeedDeriver` as a small standalone procedural-generation utility.
- Derives stable non-negative sub-seeds from a world seed plus ordered string namespaces.
- Uses an explicit project-owned algorithm instead of Godot's generic `hash()`.
- Added `ALGORITHM_VERSION = 1` and golden-value tests to detect accidental compatibility changes.
- Terrain now uses `derive(world_seed, ["terrain"])` before folding to the 32-bit `FastNoiseLite` seed.
- Path generation now uses `derive(world_seed, ["path"])`.
- Ruin placement now uses `derive(world_seed, ["landmark", "ruin"])`.
- Added focused automated tests for determinism, namespace separation, namespace ordering, large world seeds, and version-1 golden values.

## Current Seed Shape

```text
World Seed
  ├─ ["terrain"]
  ├─ ["path"]
  └─ ["landmark", "ruin"]
```

Future region-aware generation can extend the namespace rather than introduce new hard-coded salts, for example:

```text
["region", region_id, "terrain"]
["region", region_id, "landmark", landmark_id]
```

## Compatibility Rule

Changing the `SeedDeriver` algorithm changes generated worlds. Treat the derivation algorithm as save/world-generation compatibility data. If it must change later, increment the algorithm version and decide explicitly whether old worlds remain supported.

## Validation

Validated with Godot 4.7.2 Mono through `bash tools/check_godot.sh`.

Relevant tests:

- `tests/test_seed_deriver.gd`
- `tests/test_simple_map_generator.gd`
- `tests/test_procedural_map_preview.gd`

## Relevant Files

- `procgen/seed_deriver.gd`
- `procgen/simple_map_generator.gd`
- `tests/test_seed_deriver.gd`

## Next Useful Step

Use namespaced derivation when the prototype gains region/site identity, rather than allowing individual generators to invent their own seed-salt conventions.
