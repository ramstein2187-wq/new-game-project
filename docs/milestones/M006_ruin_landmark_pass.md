# M006 — Ruin Landmark Placement Pass

Status: Complete

## Goal

Add the first deterministic landmark pass on top of the existing forest and path generator without breaking path connectivity.

## Completed Scope

- Added `R` as a ruin wall cell type.
- Added one 5×5 handcrafted ruin stamp with 16 wall cells.
- Added a dedicated landmark RNG stream derived from the world seed.
- Finds valid ruin origins instead of stamping at an arbitrary coordinate.
- Ruins must stay at least 3 cells from the map edge.
- Ruins never overlap the guaranteed north-south path.
- Ruins are placed 3–8 Manhattan cells from the path.
- Current 40×30 prototype places one ruin for tested seeds.
- Visual preview renders ruin walls separately from terrain and path.
- ASCII preview legend now includes ruins.

## Current Generation Pipeline

```text
world seed
  ↓
FastNoiseLite terrain
  ↓
forest / ground
  ↓
guaranteed north-south path
  ↓
landmark candidate scan
  ↓
deterministic ruin selection
  ↓
5×5 ruin stamp
  ↓
validation
  ↓
preview
```

The landmark pass treats generated terrain as input and applies placement constraints. This keeps natural terrain generation, traversal rules, and authored landmarks as separate responsibilities.

## Seed Streams

The prototype currently derives independent behavior from one world seed:

- terrain: the 64-bit world seed is folded into a signed 32-bit value for `FastNoiseLite`
- path: world seed XOR `PATH_SEED_SALT`
- landmark selection: world seed XOR `LANDMARK_SEED_SALT`

The explicit terrain folding avoids relying on an implicit narrowing conversion when a large 64-bit world seed is passed to FastNoiseLite. A future world-seed utility can replace these simple derivations with stronger hashing if more subsystems are added.

## Validation

Validated with Godot 4.7.2 Mono:

- same seed still reproduces the same complete map
- different seeds still produce different maps
- seed `1234` contains exactly one ruin stamp with 16 ruin wall cells
- seeds `1`, `2`, `42`, `9999`, `4294967297`, and `9223372036854775806` also produce the expected ruin stamp
- the north-south path remains four-directionally connected after landmark placement
- visual preview scene still loads and generates correctly
- existing interaction test still passes

Standard validation command:

```bash
bash tools/check_godot.sh
```

## Relevant Files

- `procgen/simple_map_generator.gd`
- `procgen/procedural_map_preview.gd`
- `tests/test_simple_map_generator.gd`
- `tools/print_procedural_map.gd`

## Next Useful Step

Generalize the single ruin into landmark definitions with different stamps and placement rules, or keep the generator small and add a player marker / movement prototype to test whether the generated map is actually useful as navigable game space.
