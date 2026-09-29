# M030 folder structure work record — 2026-09-29

- Latest fetched origin/main and local main: 92d0a4f1f1037269f98f33669e5a6532858d8c57.
- Main checkout clean before work. Fresh dedicated branch codex/project-folder-structure; workspace C:/GameDev/project-folder-structure.
- App-managed worktree creation returned Not a git repository from C:/GameDev; native git worktree created from actual main checkout. Other checkouts preserved.
- Read AGENTS.md, ROADMAP, MILESTONES and current M028 milestone. No nested AGENTS.md.
- M029 single-source branch bce4614 is unmerged; its implementation is NOT part of this task. Use M030 to avoid reusing its milestone number.
- Current runtime: time_cost contains common gameplay model, actions, actors, AI, combat and scheduler. TimeCostGame is a RefCounted gameplay orchestrator with room defaults, not a presentation controller; GeneratedMapCombatGame supplies terrain/spawn integration. Both belong directly under game/.
- Presentation-only combat room/playground, map preview/walking viewer and CombatDebugPanel belong under scenes/debug/.
- Root main.tscn/player.gd/chest.gd are the early continuous-movement/interaction prototype, still covered by test_basic_interaction; player.gd is also used by the procedural walking viewer. Keep together in prototypes/exploration/, with that explicit debug dependency.
- micro_ap is retained only by its scene/controller/test and historical docs, not the current main scene or runtime. Move intact to prototypes/micro_ap/.
- worldgen receives generation algorithm/settings/seed code and the existing settings resource. No content format migration. Future authoritative combat data belongs at content/ when M029 is integrated.
- Inventory before moves: .godot/folder-refactor/tracked-before.txt and references-before.txt. All .gd.uid files must move byte-identically with their scripts; all existing scene/resource UIDs and node properties must remain unchanged.
- Completed: baseline, 99-file move map, scoped path rewrites, resource/UID/equivalence audits, full tests and cache-free scene/main validation. Commit/push is the final delivery step; no merge.

## Validation evidence

- `.godot/folder-refactor/baseline-check.log`: Godot 4.7.2 import/startup and 24 tests passed before moves.
- `.godot/folder-refactor/first-check.log`: relocated worktree import/startup and the same 24 tests passed, including unchanged replay hashes.
- `.godot/folder-refactor/fresh-check.log`: a staged-file export made by `git checkout-index`, initially with no `.godot` cache, passed import/startup and all 24 tests. No SCRIPT ERROR/ERROR/FAIL messages.
- `tools/check_folder_migration.py --base 92d0a4f --git-dir /mnt/c/GameDev/새-게임-프로젝트/.git`: 302 pre-existing files match after only approved path replacements and LF normalization; all 99 moves and 78 original .gd.uid files preserved, 24 unchanged test scripts. README/roadmap/index are the three documented prose exceptions. The complete base inventory is 305 files; no missing/deleted files.
- `tools/check_project_layout.gd`: passed in both worktree and cache-free export; 86 resources, 79 current script UIDs, 6 loaded/instantiated scenes. Current main is `res://scenes/debug/generated_map_combat_playground.tscn`.
- Python Notion checks: 9 specs; body_templates=7, equipment=10, statuses_traits=4, monsters=11, skills=1, threat_ratings=11; wiki=13. Offline only, no external writes.
- Existing source references updated in project.godot, preload/load literals, scene/resource ext_resource paths, tests/tools, current specs/wiki and dataset authority/source URLs. Notion config files and dataset formats/values unchanged. AGENTS.md contains no broken source paths and is unchanged. Historical milestones/reviews/designs unchanged.
- Staged rename review finds 99 renames and no deleted baseline files. No gameplay/AI/armor/damage/scheduler/generation lines changed except their resource paths; scene property values, UIDs and class/API names retained.
- Automatic approval review rejected a combined command containing empty-directory removal with only `blocked by policy` as the reason. No part of that command executed. Empty old local directories were left alone; staging and cache-free export succeeded in a later command without removals. Empty directories are absent from Git trees.
- Godot generated 12 untracked EverRogue asset import files during baseline import. They are excluded from the commit and left untouched. Manual visual/play and exported-package verification are not claimed.

## Delivery and continuation

- Worktree: C:/GameDev/project-folder-structure; branch: codex/project-folder-structure.
- Main remains 92d0a4f and is not merged. The earlier M029 worktree/branch is untouched.
- Detailed move pairs: `docs/reviews/2026-09-29-folder-moves.json`. README contains the new tree and F5/F6 paths; M030 and roadmap record content integration/prototype retirement/orchestration follow-ups.
- After commit/push, the exact SHA and remote verification are recorded in `.godot/folder-refactor/delivery.md` and the final chat response.
