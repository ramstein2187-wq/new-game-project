# M003 — Deterministic Procedural Map Prototype

Status: Complete

## Goal

Build the smallest procedural-generation prototype that proves a fixed seed can reproducibly generate the same map data without involving rendering or TileMap code.

## Completed Scope

- Added a standalone `SimpleMapGenerator` data generator.
- Generates a 40×30 ASCII map from a numeric seed.
- Uses `.` for ground and `T` for trees.
- Tree placement currently uses a simple independent probability per cell.
- Added a command-line preview script using seed `1234`.
- Added automated validation for determinism, dimensions, valid cell contents, and variation between seeds.

## Current Generation Pipeline

```text
seed
  ↓
RandomNumberGenerator
  ↓
40×30 cell data
  ↓
. / T
  ↓
ASCII preview
```

This deliberately does not use rendering, `TileMapLayer`, noise, roads, landmarks, or entity spawning yet.

## Validation

Validated with Godot 4.7.2 Mono:

- seed `1234` reproduces the exact same map on repeated generation
- seed `1235` produces a different map
- output dimensions are 40×30
- generated cells contain only ground and tree values

Preview command:

```bash
Godot.exe --headless --path <project> --script res://tools/print_procedural_map.gd
```

Standard project validation remains:

```bash
bash tools/check_godot.sh
```

## Relevant Files

- `procgen/simple_map_generator.gd`
- `tools/print_procedural_map.gd`
- `tests/test_simple_map_generator.gd`

## Next Useful Step

Replace independent per-cell tree placement with coherent noise or another clustering rule so generated forests form spatial regions while preserving deterministic seed behavior.
