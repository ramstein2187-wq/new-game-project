# M026 Basic Melee v2 — Manual Play Guide

Scene: `res://time_cost/basic_melee_manual_playground.tscn`

This scene is a manual validation surface only. It reuses the production `TimeCostGame`, scheduler, Actions, combat rules, body rules, routing, combat log, `CombatContentCatalog` hostiles and `BasicMeleeTactics`. It does not replace the normal main scene.

## Controls

- WASD / arrows: cardinal movement
- Numpad 1–9: eight-way movement
- bump an NPC: attack
- Space / Enter: wait and let NPCs act
- E: interact with the door when applicable
- R: reset the current scenario
- L: toggle player-facing log detail
- F3: toggle developer AI trace

The developer trace starts enabled because this room exists to review AI choices and reasons.

## Presets

1. **Aggressive adjacent** — healthy high-aggression Wolf starts adjacent. It should prefer Attack rather than needless hesitation.
2. **Cautious approach** — healthy aggression-0 Wolf starts two cells away. It may Hold, but the two-caution budget must eventually force renewed pressure.
3. **Wounded retreat** — critical low-aggression Wolf starts adjacent with open retreat space. Short Retreat behavior is expected; indefinite retreat-only behavior is not.
4. **Blocked retreat** — critical cautious Wolf is pinned against the outer wall. It must choose another legal action rather than moving through walls or inventing a retreat.
5. **Crowd / reposition** — three low-aggression Raiders share a tight area. Watch for legal Reposition choices, no overlapping occupancy, and no endless crowd dance.
6. **Door / interact** — cautious Wolf is separated by the closed center door. It should eventually use the production Interact/route path rather than stall forever.

## Custom roster

Use the right-side controls to choose any M024 hostile, aggression 0–180, Healthy/Wounded/Critical condition and 1–4 NPCs. **Apply custom** rebuilds the room with those settings.

## Manual acceptance questions

- Can the player understand the visible behavior without seeing hidden utility numbers?
- Do Hold/Retreat/Reposition add readable character without making combat tedious?
- Does the two-action caution cap prevent indefinite refusal to engage?
- Do multiple NPCs remain collision-safe and avoid obvious oscillation or corridor dancing?
- With F3 disabled, does the normal player log avoid exposing hidden AI scores or forbidden information?
- When F3 is enabled, do the chosen goals/reasons and `basic_melee_v2` trace match the visible action?

Record qualitative problems separately from Threat Rating. M025 owns balance/calibration; this room is for behavior, readability and pacing.
