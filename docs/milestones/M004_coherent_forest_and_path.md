# M004 — Coherent Forest and Guaranteed Path

Status: Complete

## Goal

Extend the deterministic ASCII map prototype so terrain forms spatially coherent forest regions and every generated map contains a guaranteed north-to-south traversable path.

## Completed Scope

- Replaced independent per-cell tree probability with `FastNoiseLite` terrain sampling.
- Uses smooth simplex noise with FBM fractal detail to create clustered forest regions.
- Added a separate path-generation pass that carves `#` cells after terrain generation.
- Path generation uses a deterministic RNG derived from the world seed.
- Guarantees at least one path cell on both north and south map edges.
- Guarantees four-directional path connectivity from north to south.
- Updated ASCII preview legend.
- Extended automated tests to validate path connectivity across several seeds.

## Current Generation Pipeline

```text
seed
  ↓
FastNoiseLite
  ↓
base terrain (. / T)
  ↓
deterministic path pass
  ↓
path cells (#)
  ↓
validation
  ↓
ASCII preview
```

The important architectural change is that terrain generation and gameplay constraints are separate passes. Natural-looking terrain can change later without giving up guaranteed traversability.

## Cell Legend

- `.` — ground
- `T` — tree
- `#` — path

## Validation

Validated with Godot 4.7.2 Mono:

- same seed reproduces the same full map
- different seeds produce different maps
- map remains 40×30
- output contains only `.`, `T`, and `#`
- generated maps contain trees, ground, and path cells
- north and south edge exits exist
- a four-directional path connects north to south
- connectivity validation passes for seeds `1`, `2`, `42`, `1234`, and `9999`

Standard validation command:

```bash
bash tools/check_godot.sh
```

## Relevant Files

- `procgen/simple_map_generator.gd`
- `tools/print_procedural_map.gd`
- `tests/test_simple_map_generator.gd`

## Next Useful Step

Move from ASCII-only data toward a minimal visual representation, ideally by rendering the generated cell data through Godot without making `TileMapLayer` the authoritative game-state store. A second option is to add another generation pass first, such as a landmark or small ruin stamp, to continue proving the multi-pass generator design.
