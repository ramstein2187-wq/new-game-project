# M018 — Eight-way combat movement

Status: Implemented on `chat/eight-way-combat`; validated diagonal-cost follow-up on `chat/diagonal-movement-cost`, based on M018 and unmerged M017. User manual play and eventual integration pending. Not implemented on `main`.

## Scope and decisions

- Both M017 combat scenes accept the four cardinal directions using existing WASD/arrows and all eight directions via numeric keypad 1–9 (excluding 5). Numpad diagonal bump into the rat uses the existing AttackAction.
- Diagonal steps cost 1.4× the actor's cardinal movement base cost: player 1400 vs 1000, rat 1050 vs 750. Apply the existing injury movement efficiency afterward and round up; attack costs, scheduler and RNG rules remain unchanged.
- A diagonal move requires its target and both orthogonally adjacent corner cells to be traversable. A diagonal attack must also have an unobstructed corner; no hitting through a closed-door/wall corner. Door interaction remains cardinal-only.
- Rat approach pathfinding and retreat search use eight directions. Retreat maximizes squared geometric distance so a sidestep can still count as moving away when already diagonally adjacent; adjacency for attack uses Chebyshev distance.
- The fixed-room door remains an interactable route step only when approached cardinally; generated-map terrain rules continue to be shared by player and NPC actions.
- The procedural *map's connected-spawn validation* still uses four-way connectivity, intentionally conservative; full eight-way worldgen topology is outside this change. The paused M010 micro-AP comparison room is unchanged.

## Validation and handoff

- Follow-up branch: `bash tools/check_godot.sh` passed 16/16 automated test scripts, Godot editor parse and generated-map default startup. Tests cover diagonal 1400/1050 costs, injured diagonal costs (player 1867, rat 1200), existing diagonal melee and corner collision, tactical retreat, scheduler and combat regressions. Manual visual play has not been performed.
- Manual F5/F6 checks required: keypad movement with Num Lock, diagonal attack, corner blocking, rat approach/retreat, HUD readability. No user manual approval or merge performed.
- This is a separate M017-dependent implementation; integrate M017 first and review M018 independently. Preserve unrelated source-checkout untracked files.
