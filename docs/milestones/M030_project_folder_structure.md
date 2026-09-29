# M030 — Project folders by gameplay responsibility

Status: Complete (automated validation) on `codex/project-folder-structure`.
Base: freshly fetched main `92d0a4f` (2026-09-29).

## Goal and scope

Make the existing architecture legible through file locations. Change paths only:
no gameplay algorithms, tuning, APIs, inheritance, scene hierarchy or content formats.
M029 single-source content is a separate unmerged branch; do not import it here.

## Selected structure

- `game/{actions,actors,ai,combat,simulation,time}`: existing shared runtime systems.
- `game/time_cost_game.gd`: gameplay-state/action/turn orchestrator, retained class/API.
- `game/generated_map_combat_game.gd`: generated-terrain/spawn runtime adapter.
- `worldgen/`: generation algorithms, settings Resource and seed derivation.
- `scenes/debug/`: combat rooms, generated combat playground, generation previews
  and their scene-only controllers; CombatDebugPanel belongs here.
- `prototypes/exploration/`: original main scene, continuous-movement Player and
  print-only Chest; the procedural walking viewer still explicitly reuses Player.
- `prototypes/micro_ap/`: preserved AP comparison prototype and controller/model.
- `content/`: intended future authoritative gameplay data boundary, not created empty.

All script `.uid` sidecars move with their owners. Class names, scene node names,
resource UIDs, public methods and values are retained. Historical milestone/review
records remain unchanged; current README/spec/wiki/dataset source links follow moves.

## Acceptance

- Baseline Godot 4.7.2 import/startup and all 24 scripts passed.
- 99 existing files moved using a prevalidated, collision-free mapping.
- Baseline and relocated working-tree full checks passed all 24 scripts, including scheduler/actions/combat/body/armor/equipment/AI/multiple-NPC/procgen/generated-map/scene/replay tests. None were deleted or skipped.
- A staged-file export with no pre-existing `.godot` cache passed fresh editor import/parse, main startup and the same 24 scripts. This rules out relying on old cached resource paths.
- Headless layout audit passed in both worktree and fresh export: 86 resources checked, 79 current script UIDs resolved uniquely (78 preserved plus the new audit script), all 6 scenes instantiated, configured main loaded.
- Git-base audit passed: 302 existing files have no changes beyond the explicit path map (LF-normalized for Git checkout portability); 99 moves, all 78 pre-existing script UIDs and all 24 test scripts preserved. README/roadmap/index prose additions are explicitly separate from this comparison.
- Notion knowledge `--check` (9 specs, 6 datasets) and wiki `--check` (13 pages) passed. No live Notion writes.
- Final staged diff: 99 renames; no deleted baseline files. Gameplay algorithms/data, class APIs, scene node properties and replay fixtures are preserved.
- Do not merge main. Manual visual/play acceptance is not implied by headless checks.

See [work record](../reviews/2026-09-29-folder-structure.md) and
[exact move map](../reviews/2026-09-29-folder-moves.json).

## Follow-ups (not implemented here)

- M029 single-source work exists on `codex/combat-content-single-source` at `bce4614`, not main. Integrating it later requires reconciling its old paths using the move map; its authoritative resources should use top-level `content/`, with exporter/CI inventories updated together. This branch changes only existing dataset source paths, not generation/sync behavior.
- The original exploration Player remains a dependency of the procedural walking viewer; neither it nor micro_ap is safe to remove without a separate prototype-retirement decision and test/dependency updates.
- TimeCostGame still combines shared orchestration with fixed-room defaults/legacy names. Separation or renaming is a separate candidate, not silently included here.

## Reproducible checks

```sh
bash tools/check_godot.sh
godot --headless --path . --script res://tools/check_project_layout.gd
python tools/check_folder_migration.py --base 92d0a4f
python tools/sync_notion_knowledge.py --check
python tools/sync_notion_wiki.py --check
```

The existing check script selects the installed Godot binary through `GODOT_BIN`.
For the Python audit from WSL against a Windows-created worktree, supply
`--git-dir /mnt/c/GameDev/새-게임-프로젝트/.git` to use the shared Git object database.
Logs and the cache-free staged export are local under `.godot/folder-refactor/`.
