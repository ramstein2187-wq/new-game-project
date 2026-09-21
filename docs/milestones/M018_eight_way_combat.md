# M018 — Eight-way combat movement

Status: Implemented on `chat/eight-way-combat`, based on the unmerged M017 task branch. Automated checks passed; user manual play and eventual integration pending. Not implemented on `main`.

## Scope and decisions

- Both M017 combat scenes accept the four cardinal directions using existing WASD/arrows and all eight directions via numeric keypad 1–9 (excluding 5). Numpad diagonal bump into the rat uses the existing AttackAction.
- One diagonal step costs the same as one cardinal step. Injury-dependent movement cost, attack cost, existing scheduler and RNG rules remain unchanged.
- A diagonal move requires its target and both orthogonally adjacent corner cells to be traversable. A diagonal attack must also have an unobstructed corner; no hitting through a closed-door/wall corner. Door interaction remains cardinal-only.
- Rat approach pathfinding and retreat search use eight directions. Retreat maximizes squared geometric distance so a sidestep can still count as moving away when already diagonally adjacent; adjacency for attack uses Chebyshev distance.
- The fixed-room door remains an interactable route step only when approached cardinally; generated-map terrain rules continue to be shared by player and NPC actions.
- The procedural *map's connected-spawn validation* still uses four-way connectivity, intentionally conservative; full eight-way worldgen topology is outside this change. The paused M010 micro-AP comparison room is unchanged.

## Validation and handoff

- `bash tools/check_godot.sh`: 16/16 automated test scripts passed, Godot editor parse and generated-map default startup passed. New `tests/test_eight_way_combat.gd` exercises all four diagonals, diagonal bump melee/time cost, blocked-corner attack and movement, and invalid long move; existing combat/body, generated map, AI, scheduler and input tests pass.
- Manual F5/F6 checks required: keypad movement with Num Lock, diagonal attack, corner blocking, rat approach/retreat, HUD readability. No user manual approval or merge performed.
- This is a separate M017-dependent implementation; integrate M017 first and review M018 independently. Preserve unrelated source-checkout untracked files.
