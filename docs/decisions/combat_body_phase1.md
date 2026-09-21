# Combat/body phase 1 boundary

Implemented on `codex/m017-combat-body-phase1`; user manual verification confirmed 2026-09-21. Combined M017/M018 delivery: [PR #4](https://github.com/ramstein2187-wq/new-game-project/pull/4). Specification: [combat/body design](../CRPG_combat_body_phase1_design.md); validation and handoff: [M017](../milestones/M017_combat_body_phase1.md).

- Abilities, reusable pure D20 checks, body templates, per-instance integrity, armor resolution, and HP are separate concerns. Probability queries consume no random state.
- `CombatSpecies` and `BodyTemplate` are Resource definitions; `BodyInstance` deep-copies part dictionaries and functionality arrays. No instance wounds mutate template state. Definitions are currently constructed by small factories; external content files can follow when there is actual authoring demand.
- Attack binding references a capability-bearing instance part, not a species/part-name conditional. The last eligible slot is the prototype's default binding (current human right arm). No automatic fallback or equipment UI.
- Body condition yields capabilities. Damaged attack function contributes -2 situation modifier. Locomotion averages its contributors (1/.5/0); positive movement costs are rounded up. This affects the same MoveAction used by player, approach and retreat.
- Zero integrity disables function and gates descendants without applying secondary injury. Only global HP zero is death; part damage is not later summed into HP. Physical zero-integrity parts remain targetable. This explicitly chooses one of the specification's open vital-part rules and avoids duplicate death ownership.
- Invalid actions remain free and unlogged; successful execution includes misses and full blocks and pays one normal cost. The existing scheduler/tie rules and AI planner remain owners of time and decisions.
- Temporary HP 50/30 and damage 5 make the specified integrity ranges testable. HP-fraction fear preserves prior AI thresholds. These are tunable validation values, not finalized balance. Full encounter samples show that existing retreat often ends adjacency before severe player arm injury; do not silently change the AI to force injuries.
- One dedicated seeded RNG per combat game. World generation RNG and probability/UI queries cannot change its state. Full game reset restarts combat RNG; allocation reset resets scores only.

No design principle was removed. Added limbs, severing, offhand switching, wound subtypes, healing, persistence and advanced injury tactics remain outside phase 1.
