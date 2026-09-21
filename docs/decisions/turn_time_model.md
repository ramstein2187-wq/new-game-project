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
