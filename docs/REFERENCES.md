# External References

This file records external projects that materially informed research or design.
Being listed here does **not** mean their source code is included in this repository.

Use `THIRD_PARTY.md` for material actually copied, adapted, vendored, or redistributed.

## Procedural generation / roguelike code references

### Dozed12/df-style-worldgen

- Repository: https://github.com/Dozed12/df-style-worldgen
- Upstream license: MIT
- Use in this project: architecture/algorithm study for global world generation.
- Current provenance: the retained M020/M021 worldgen-v2 work was designed as a
  Godot implementation inspired by ideas from this project and Dwarf Fortress-style
  world generation; project documentation explicitly states that the Python source
  was not copied verbatim.
- If code is later ported directly, preserve the upstream MIT notice in
  `THIRD_PARTY.md` and identify the upstream commit/file.

### statico/godot-roguelike-example

- Repository: https://github.com/statico/godot-roguelike-example
- Upstream code license: MIT; upstream art/fonts have separate licenses.
- Use in this project: surveyed as a Godot 4 roguelike implementation reference.
- Current provenance: no known source files from this repository are vendored in
  `main`.

### GDQuest Godot 4 PCG Basic Dungeon

- Repository: https://github.com/gdquest-demos/godot-4-pcg-basic-dungeon
- Upstream code license: MIT.
- Use in this project: procedural-generation implementation reference.
- Current provenance: no known source files from this repository are vendored in
  `main`.

### Astral-Sheep/WaveFunctionCollapse

- Repository: https://github.com/Astral-Sheep/WaveFunctionCollapse
- Upstream license: MIT.
- Use in this project: Wave Function Collapse research/reference for possible future
  map-generation experiments.
- Current provenance: WFC is not currently integrated into `main`; no known source
  files from this repository are vendored.

## Design references that are not code dependencies

The project also studies games and public technical material such as Caves of Qud,
Dwarf Fortress, RimWorld, and D20/SRD-style mechanics. These are design references,
not bundled code dependencies. Their names in design documents do not imply that
their proprietary code or assets are included.

## Recording future references

When adopting external material, record:

1. exact upstream repository/source URL
2. commit, tag, release, or download date when practical
3. upstream author/copyright holder
4. license/SPDX identifier
5. files or ideas used locally
6. whether material was copied, translated/ported, or only studied
7. local modifications

For copied or substantially adapted code, also satisfy the upstream license's notice
requirements in `THIRD_PARTY.md` and retain any required license text.
