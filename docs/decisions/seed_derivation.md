# Seed Derivation

## Decision

Use one world seed as the root identity for procedural generation, but give each subsystem and future world location an independent deterministic sub-seed through `SeedDeriver`.

Examples:

```text
["terrain"]
["path"]
["landmark", "ruin"]
["region", region_id, "terrain"]
```

Do not share one mutable RNG stream across unrelated generation systems.

## Why

This keeps a world reproducible while preventing an extra RNG call in one subsystem from shifting unrelated procedural results.

Initial generated state should come from seeds. Player-caused/runtime changes belong in save-state data rather than being reconstructed only from the seed.

## Compatibility

The current derivation algorithm is version 1. Changing it changes generated worlds. Preserve the algorithm for existing world compatibility, or introduce an explicit version migration if it must change.
