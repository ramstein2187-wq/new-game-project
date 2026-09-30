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
base data plus effects without caching. `StatCatalog` owns exactly seven valid IDs:
STR/DEX/CON/PER/INT/WIL and MOVEMENT_SPEED (serialized as `movement_speed`).
StatModifier validation depends on this catalog, not AbilityScores. AbilityScores
retains primary values/allocation; its NAMES uses the catalog's PRIMARY list.
Adding a valid ID extends the catalog; defining its base value/gameplay wiring is
a separate explicit change. Only movement_speed is connected to gameplay in
M031; CombatRules still uses the existing ability-score/modifier path. HP, accuracy,
dodge and attribute-derived combat changes require a later explicit migration.

## Ownership and small data model

```text
Actor -> EffectStore -> ActiveEffect -> GameplayEffectDefinition
```

- StatModifier: source_id, target_stat, operation ADD/MULTIPLY, finite value.
- ActionCostModifier: source_id, required_tags, operation ADD/MULTIPLY, finite value.
- GameplayEffectDefinition Resource: authored static id and modifier arrays.
- ActiveEffect: actor-specific applied instance, definition and opaque source_id.
- EffectStore: sole active-instance ownership, add/remove/clear/has, deterministic
  stat/cost calculation and external snapshot boundary.
- Actor: delegates add_effect/remove_effect/has_effect/clear_effects, stat queries
  and external cost calculation. Callers need no store implementation knowledge.
- StatCatalog: valid IDs; AbilityScores: primary values and allocation rules.

Multipliers must be positive. Empty/unknown tag selectors, missing source IDs,
unknown stats, nonfinite values and empty definitions reject insertion. ADD can
be negative. Resolved nonpositive movement speed rejects Move at cost validation;
it does not create an infinite scheduler loop. Overflow/nonfinite costs reject.

Definitions are deep-copied once on insertion (including external Resources),
then attached to a new store-owned ActiveEffect. Resolvers never mutate definitions.
Opaque StringName provenance needs no copy because it is a scalar value. Caller
Resource edits/source reassignment cannot affect siblings or already-applied state.
One instance per **definition ID**, even for different sources; duplicate insertion
rejects without replacing the original provenance. Removing then reapplying with
another source is allowed. No source-specific duplication/stacking is implemented.
Removing/clearing applies immediately; Actor recreation starts with an empty store.
No duration, periodic ticks, triggers, conditions, cooldowns, auras, immunity or
nested effects are implemented. Duration/stack/charge/trigger runtime fields can
later belong to ActiveEffect, but none are added now. Skill/Trait/Thought/Status,
equipment integration, Character Sheet and Save/Load remain deferred consumers.

`active_effects()` preserves the existing isolated Definition snapshot API.
`active_effect_instances()` returns isolated ActiveEffect/Definition/modifier
snapshots including source_id. Mutating either snapshot cannot alter live state.
EffectStore's snapshot APIs enforce the same boundary for direct consumers.
StatResolver delegates to store resolution; ActionCostResolver requests only value
breakdowns via Actor. Live instance/Resource references never leave store resolution.
The previous `_ordered_effect_refs()` helper is removed. Its replacement sorts only
scalar IDs; references are read inside the store. No resolution-time Resource deep
copies and no resolved-value or ordering cache exist. Add/remove/clear is reflected
at the next query. GDScript does not enforce private fields; underscored storage is
implementation-only, and no supported API exposes it or returns live references.

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
effect_id and add source_id. Here effect_id identifies the definition, source_id
identifies the applied origin (e.g. `skill:rapid_strike`), and legacy source labels
the authored modifier (e.g. `training`). `add_effect(definition, source_id)` defaults
to `system` for existing callers and rejects an explicitly empty provenance.
equipment/skill/trait/thought/status/system can be encoded in the opaque ID without
introducing a taxonomy or those systems. Origins do not change ordering.
The Move speed step embeds its stat breakdown. Final rounding/minimum
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
