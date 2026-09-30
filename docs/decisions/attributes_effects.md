# Attributes and effects foundation (M031)

Implemented on `codex/m031-attributes-effects-foundation`, based on main `e375455`.
This is an architecture migration, with no intended current-content balance change.

## Primary attributes and base data

`AbilityScores.NAMES` is exactly STR, DEX, CON, PER, INT, WIL. Initial scores remain
10, allocation is 12 refundable points with 10..16 bounds, and the modifier is
`floor((score - 10) / 2)`. Authored NPC values below 10 remain valid. Unknown or
obsolete initial-score keys reject content validation. Historical design documents
retain their original WIS/CHA descriptions; these are not current runtime fields.

ActorDefinition owns base `movement_speed` (finite, positive, default 1.0), rather
than authored cardinal/diagonal/Interact/Wait costs. Runtime allocated abilities
remain Actor-owned. `Actor.stat_breakdown(stat)` and `resolved_stat(stat)` query
base data plus effects without caching. Supported stat targets are the six primary
attributes and movement_speed. Only movement_speed is connected to gameplay in
M031; CombatRules still uses the existing ability-score/modifier path. HP, accuracy,
dodge and attribute-derived combat changes require a later explicit migration.

## Small Resource model

- StatModifier: source_id, target_stat, operation ADD/MULTIPLY, finite value.
- ActionCostModifier: source_id, required_tags, operation ADD/MULTIPLY, finite value.
- GameplayEffectDefinition: id, arrays of stat and action-cost modifiers.
- Actor: add_effect, remove_effect, active_effects (isolated read snapshots).

Multipliers must be positive. Empty/unknown tag selectors, missing source IDs,
unknown stats, nonfinite values and empty definitions reject insertion. ADD can
be negative. Resolved nonpositive movement speed rejects Move at cost validation;
it does not create an infinite scheduler loop. Overflow/nonfinite costs reject.

Effects are deep-copied on insertion, so external-resource edits cannot affect
siblings or active state. One instance per effect ID; duplicate insertion rejects.
Removing an ID removes the entire effect immediately; reset recreates an empty
list. This uniqueness rule is not a stacking engine. No duration, periodic ticks,
triggers, conditions, cooldowns, auras, immunity or nested effects are implemented.

M031 follow-up keeps insertion deep copies and public `active_effects()` deep-copy
snapshots. Resolution uses `_ordered_effect_refs()`: a freshly ID-sorted, read-only
array of borrowed internal Resources. GDScript has no private methods or immutable
Resources; the underscored helpers are resolver-only and must never mutate their
references. Gameplay uses the public snapshots and add/remove APIs. Move collects
one view and shares it with movement stat and both external cost phases; standalone
stat queries also use internal refs. No per-query Resource deep copy or resolved
state cache is added. Operation/source order, rounding and breakdown values stay
identical.

## Deterministic resolution

Within each modifier family, apply all ADD modifiers before all MULTIPLY modifiers.
Within a phase, effects sort lexically by ID; modifiers keep their authored array
order. Insertion order cannot change values or traces. A cost modifier matches
only if the Action contains **all** required tags. Empty selectors are invalid.

| Action | Tags | Standard base cost |
| --- | --- | ---: |
| Move | MOVE, PHYSICAL | cardinal 1000 / diagonal 1400 |
| Normal melee | ATTACK, MELEE, PHYSICAL | 1000 |
| Interact | INTERACT, PHYSICAL | 500 |
| Wait | WAIT | 1000 |

`TimeAction.get_cost` delegates to `cost_breakdown` -> ActionCostResolver:

1. Action-owned base cost.
2. Intrinsic Weapon Action cost_multiplier (unchanged resource).
3. Move divides by resolved movement_speed, then authoritative Body locomotion.
4. Matching external action-cost modifiers, ADD then MULTIPLY.
5. One final ceil (integer-boundary float noise within 8 machine-epsilon units is
   snapped only here), then minimum cost 1. Nonfinite or magnitude > 2^31-1 rejects.
6. Existing perform_action delivers that integer to the unchanged scheduler.

Current authored Weapon Action costs were already integers and remain identical.
New fractional combinations use ceil rather than the old special-attack-only
nearest rounding. No intermediate rounding occurs. The minimum never revives a
Move with unavailable locomotion or invalid speed. DEX has no global-cost role;
no Quickness or weapon attack-speed field is added.

## Explainability and preservation

Stat/cost breakdown dictionaries contain base, valid, value/cost and ordered steps.
Each step retains source, operation, value and result; external steps also keep
effect_id. The Move speed step embeds its stat breakdown. Final rounding/minimum
steps show the delivered cost. Queries consume no RNG, time or events. These are
developer APIs; event schema and visible combat log remain unchanged.

Body capability, damage, disabled limbs and locomotion remain authoritative.
The resolver consumes Body output; it does not duplicate wounds as effects.
Rejected actions preserve time/RNG/events. Scheduler ownership, ties, AI scoring,
HP, hit/damage/armor rules and normal weapon effects are unchanged.

## Content and mirrors

`content/actors/*.tres` owns species movement speed; derived healthy `move` values
in monsters.json are exported through real MoveAction resolution. The exporter
also writes all six attributes and movement_speed, preserving IDs/schema envelopes
and existing consumer cost fields. Do not hand-edit generated JSON. Source
fingerprints include actions and effects; Threat Ratings remain null.

Notion tooling writes PER/WIL instead of WIS/CHA. During a future real sync it
checks numeric attribute columns and adds missing ones using the documented
[Notion data-source property API](https://developers.notion.com/reference/update-data-source-properties).
Historical columns/values are preserved, and wrong existing types fail clearly.
No live Notion operation is performed in M031; offline checks verify the payload
and idempotent schema path, not live credentials, permissions or service behavior.
