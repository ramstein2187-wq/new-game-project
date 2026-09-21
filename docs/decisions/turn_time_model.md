# Turn Model — Action-Cost Time

## Decision

Use the M011 action-cost / next-ready-time model as the game's baseline turn system instead of M010's alternating 3-AP activations. Preserve M010 as a comparison prototype.

- Player experience: one intentional action per input, then process world responses until the player's next decision.
- Simulation: one clock; every scheduled actor has a next-ready time.
- Different actions may have different positive time costs.
- If an NPC and the player are ready at exactly the same time, offer the player the next decision first. The NPC's pending action is **not** discarded.
- NPCs tied with one another are resolved in stable registration order for deterministic behavior.

Initial cost numbers (500/750/1000/1250) are prototype values, not final balance. Quickness and a generalized Action system remain separate decisions.

## Implementation Boundary

`TimeScheduler` owns actor registration, ready times, the clock, and selection order. It does not move units, choose AI actions, resolve attacks, or format logs. Callers must execute the selected action, then advance that actor by a strictly positive cost.

See `docs/milestones/M013_independent_time_scheduler.md` for the first extracted implementation and validation.

## M018 movement cost extension

The selected M018 follow-up uses 1.4× diagonal movement base cost: player 1400 vs cardinal 1000, rat 1050 vs cardinal 750. Apply the M017 locomotion efficiency to the direction-specific base and round up once. A damaged human leg gives 1334/1867; one damaged rat leg gives 858/1200. Diagonal melee remains a normal attack (1250/1000), not a move plus an attack. Blocked corners and unavailable body functions reject the action without time or RNG consumption.

Movement, melee reach, AI approach selection and visible striking-range feedback share the same blocked-corner rule. Changing direction costs does not change scheduler ownership or player-priority ties. Route search still minimizes steps rather than elapsed time; cost-aware route planning is a separate follow-up, not an implicit scheduler change.
