# Exploration atlas — M049

`exploration.png` is the actual runtime atlas: 108 named 16×16 RGBA tiles, 16 columns. Godot uses nearest filtering; normal play uses integer zoom 1–4 (default 2). Only the optional overview fits the complete map.

Run `python tools/build_exploration_atlas.py` from the repository; `--check` compares the exact PNG and metadata bytes. Pillow is an offline build dependency, not a game dependency. No image API, downloaded output, or runtime procedural texture generation is required.

`atlas.json` is the index/provenance contract: tile name, linear index, source, palette, input SHA-256 and PNG SHA-256. Source tiles are cropped from EverRogue 1.0 Packed Alpha and recolored by three luminance bands. The six reused silhouettes are control, record, resource, lookout, scar and player; each entry records its exact source coordinate. Preserve the original sheet and its [CC0 notice](../ever_rogue/LICENSE.md). All other pixels are original geometric pixel drawings; this does not change the project's license for original work.

Terrain uses quiet green ground, blue water, ochre paths, four floor variants and 4-bit N/E/S/W border masks for water/path/wall. Eight ground variations avoid uniform repetition. Props have dark silhouettes and restricted highlights; foliage uses clustered canopy shapes. Draw order is terrain → actual active hazard → cell-sized objects → corpses → living Actors → player/facing marker. Managed objects have amber feet; unowned environment objects cyan feet; living enemies red feet. Player outline and facing marker remain above objects. Trees occupy their blocking cell and do not conceal adjacent Actors.

Art remains compact static pixel art: no animation set or fog-of-war is claimed. The last three humanoid/ape icons are atlas capacity only; encounter selection uses the eight documented fauna prototypes and does not create hostile populations.

The actual GPU captures and visual revision record are in [M049 review](../../../docs/reviews/m049/report.md).
