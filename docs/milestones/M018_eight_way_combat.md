# M018 — Eight-way combat movement

Status: **Complete — user confirmed manual verification of latest M018 on 2026-09-21.** Selected sources: `chat/eight-way-combat` at `980f05f` plus `chat/diagonal-movement-cost` at `03c13ef`, both based on M017 `9418443`. Combined integration branch: `codex/integrate-m017-m018`, delivered through [PR #4](https://github.com/ramstein2187-wq/new-game-project/pull/4). The competing equal-cost `chat/eight-direction-combat` branch is not part of this integration.

## Scope and decisions

- Both M017 combat scenes accept the four cardinal directions using existing WASD/arrows and all eight directions via numeric keypad 1–9 (excluding 5). Numpad diagonal bump into the rat uses the existing AttackAction.
- Diagonal steps cost 1.4× the actor's cardinal movement base cost: player 1400 vs 1000, rat 1050 vs 750. Apply the existing injury movement efficiency afterward and round up; attack costs, scheduler and RNG rules remain unchanged.
- A diagonal move requires its target and both orthogonally adjacent corner cells to be traversable. A diagonal attack must also have an unobstructed corner; no hitting through a closed-door/wall corner. Door interaction remains cardinal-only.
- Rat approach pathfinding and retreat search use eight directions. Retreat maximizes squared geometric distance so a sidestep can still count as moving away when already diagonally adjacent. Attack, approach selection and striking-range feedback share corner-aware melee reach; adjacent across a blocked corner means route around, not wait indefinitely.
- The fixed-room door remains an interactable route step only when approached cardinally; generated-map terrain rules continue to be shared by player and NPC actions.
- The procedural *map's connected-spawn validation* still uses four-way connectivity, intentionally conservative; full eight-way worldgen topology is outside this change. The paused M010 micro-AP comparison room is unchanged.

## Validation and handoff

- Selected source passed 16/16 automated scripts. Integration passed **17/17**, editor parse/import and generated-map default startup. The added regression reproduced and fixes corner-stalled AI and false reach logs; also checks all eight keypad directions in both scenes, generated terrain, exactly-once injured diagonal costs, arm/bite function restrictions and panel separation.
- User explicitly confirmed both M017 and this latest M018 version passed manual checks. The agent did not perform a native GUI playthrough. Additional integration corrections were automatically tested; no extra user sign-off is fabricated.
- Body panel exposes straight/diagonal costs. Movement stays 1000/1400 for healthy player and 750/1050 for healthy rat; injured examples are 1334/1867 and 858/1200. Attack costs remain 1250/1000, door interaction cardinal-only. Map-generator connectivity and combat RNG rules are unchanged.
- [Integration evidence and source selection](../reviews/2026-09-21-m017-m018-integration.md). Cost-aware routing, alternative keyboard mappings and eight-way encounter balance are separate roadmap follow-ups; preserve unrelated untracked files.
