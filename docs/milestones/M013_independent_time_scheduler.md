# M013 — Independent Time Scheduler

Status: Automated validation complete; manual gameplay feel check pending.

## Goal

Build on the selected M011 action-cost model without pulling combat rules or AI into the scheduler. Keep M010 as an untouched AP comparison.

## Scope

- Added `time_cost/time_scheduler.gd` (`TimeScheduler`), a non-Node rules object owning one world clock, per-actor ready times, and stable registration order.
- Register/remove actors; reject invalid IDs, duplicate registrations, and nonpositive action costs.
- Select the NPC with the earliest ready time strictly **before** the player's next-ready time. Player wins exact ties; NPC ties use registration order. A tie does not consume or discard the NPC's action.
- Adapted the M011 test-room model to delegate time calculation to the scheduler while retaining the existing rat's movement, AI, combat and M012 event logging.
- Defeated rat is removed from scheduling; resetting the room resets the clock and actors.
- Preserved `world_time`, `player_next_ready_time` and `rat_next_ready_time` as read-only views for the current test-room UI and existing tests.

## Automated validation

Run `bash tools/check_godot.sh`. New `tests/test_time_scheduler.gd` exercises three competing NPCs with different ready times, NPC tie ordering, player tie priority without dropping pending actions, invalid costs, registration and removal, reset, and the existing room's timing and defeated-rat behavior. Existing time-cost, combat-log, micro-AP and procedural-map tests must continue passing.

## Boundary and deferred work

The scheduler can choose among multiple NPC IDs, but the current playable test room still contains **one rat** and one NPC action handler. Multi-NPC gameplay, reusable actions, richer AI decision-making, status effects and animation remain follow-up work. Each caller must execute the selected actor's action and advance its ready time by a positive cost before selecting again; the scheduler does not execute actions itself.

The cost values remain experimental. A manual Godot F6 playthrough of `time_cost/time_cost_test_room.tscn` is still required to judge pacing and the UI feel.
