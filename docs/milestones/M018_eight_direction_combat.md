# M018 — Eight-direction movement and melee

Status: **Implemented and automated checks passed on `chat/eight-direction-combat`; manual play and integration pending.** This branch is based on the unmerged M017 branch (`9418443`). Do not claim M018 or M017 is on `main` before their respective integrations.

## Scope and rules

- The player and rat may move in all eight adjacent directions, and attack a diagonally adjacent actor using the existing shared Action pipeline. Numpad 7/9/1/3 and Home/PgUp/End/PgDown input diagonals in both combat scenes; WASD and arrow keys keep four-direction input. The door still uses E and its existing cardinal interaction rule.
- One diagonal step uses the **same base action-time cost** as a cardinal step; locomotion injury modifiers still apply. Successful diagonal bump attacks use the existing attack cost and D20/body/armor/damage/log rules. Invalid steps/attacks remain free and unlogged.
- Both orthogonal side tiles must be open for a diagonal **movement or melee reach**. This prevents movement and attacking through blocked wall/tree/closed-door corners, including in generated terrain. A rat cannot choose an invalid diagonal step.
- The rat's route search uses eight legal neighbors, and its attack selection checks shared melee reach rather than Manhattan distance. Retreat considers all eight legal steps and chooses a step increasing squared distance to the threat (tie/order deterministic), without introducing a new AI framework.
- The generated-map spawn connectivity check remains cardinal, a conservative guarantee that the two initial positions are connected. Map generation/seed rules, scheduler, and unrelated rooms are unchanged.

## Validation and handoff

- `bash tools/check_godot.sh` on Godot 4.7.2: editor parse/import, default generated combat scene startup, and **16/16 automated scripts passed** (15 pre-existing plus `tests/test_eight_direction_combat.gd`). New checks cover player diagonal step/attack, NPC diagonal attack/path/retreat, corner collision, generated-map integration, time/log preservation, and both scenes' keyboard inputs.
- The first new-test run failed because its handmade generated-map fixture omitted the required path marker on its rat spawn row; corrected the fixture and reran successfully. This was a test-data issue, not a production-code failure.
- **Manual gate:** launch this branch in Godot, move/attack diagonally with numpad (with and without Num Lock), check that a tree/wall/door blocks diagonal corner passage and melee, observe rat approach/retreat and logs in generated map, and check that E/other keys still work. Windows keypad/keyboard-layout behavior and presentation have not been manually verified.
- **Integration order:** M017 manual approval and integration first, then review/rebase this branch if M017 changed, and merge M018 separately with explicit authorization. Do not merge this branch directly into an M016-only `main` as though M017 were already approved.
- Follow-up candidates: alternative diagonal time/cost balancing, diagonal-facing interaction rules if desired, and rat encounter pacing/balance under the expanded movement/retreat choices. No changes to M017 balance claims are implied by the old sample.
