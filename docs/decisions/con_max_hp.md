# CON / Endurance → Max HP

Implemented on `codex/con-hp-scaling-integration` over main `78ab715` (M034).
Reintegrates completed branch `codex/con-hp-scaling`, commit `005c7a6`.

## Formula and authority

**Max HP = max(1, round(Base HP × (1 + 0.05 × (Resolved CON − 10))))**.

Keep the original numeric design: CON 10 is neutral; every resolved score point
changes Base HP by 5%; Human Base HP is 30. CON 11 gives 32, CON 12 gives 33,
CON 14 gives 36 and CON 16 gives 39 on that human baseline. Fractional resolved
CON is retained; the ability modifier/int boundary used for checks does not apply.
Round once at the final HP boundary using Godot roundi, then minimum 1.

ActorDefinition.max_hp remains the authored **Base HP** field for content/Resource
compatibility. Actor.max_hp is a read-only runtime query through
Actor.max_hp_breakdown → Actor.stat_breakdown(CON), the same resolver used by
Actor.resolved_stat(CON). It has no writable maximum, raw-CON formula or resolved
cache. Effect Percent values pool additively on base CON, then Flat applies;
HP scaling consumes the result of that existing M031/M033 calculation.

CON/Endurance is a normal downstream derived-stat consumer. Max HP is not a
check and does not call primary_attribute_check. M033 semantic domains and
one-primary-check/explicit-alternate rules remain authoritative in
[attributes_effects](attributes_effects.md) and
[primary_attribute_checks](../specs/primary_attribute_checks.md).
No Accuracy/Dodge, initiative, Quickness, growth, regeneration, general defense,
wound redesign or new Attribute/HP framework is introduced.

## Current HP and lifecycle

Preserve the original **absolute damage taken** policy, not a health ratio:

- Living current HP = max(0, resolved Max HP − damage taken).
- Maximum growth increases current HP by the same amount; a full actor stays full.
- Maximum decrease reduces current HP by the same amount, clamps at zero and can kill.
- Once dead, changes to maximum cannot revive the actor.
- Existing explicit hp assignment handles damage/recovery, clamped to [0, Max HP].
  Assigning positive HP explicitly is distinct from automatic maximum growth;
  no new healing or resurrection mechanic/API is added.

Actor owns damage and death state; current/max queries are pure. Effect add/remove/clear
and AbilityScores.allocate/reset synchronously check lethal maximum changes.
AbilityScores.changed connects the existing debug/compatibility allocation APIs,
so callers do not have to opt into new Actor wrappers. Initial score dictionaries
are authored/copied before runtime allocation; direct Dictionary mutation is not
a supported runtime mutation API. ActorDefinitions remain immutable content prototypes.

Lethal maximum changes notify TimeCostGame, which uses existing damage_actor death
handling: player game_over, NPC unscheduling, retained bodies and no occupancy.
Retained Actors from reset/removal cannot affect a replacement registry. This does
not consume time/RNG or introduce CombatEvents. Ordinary combat event schema/order
and Body damage remain unchanged.

## Presentation, dataset and regression

Overview reads current HP/Max HP and Actor.max_hp_breakdown. Inspector explains Base HP,
CON/Endurance base/Effect steps and provenance, resolved CON, HP percentage and final
maximum. UI owns no formula or state; existing Overview scope is unchanged.

monsters.json.hp is the **fresh Actor resolved maximum** using authored initial CON
without active Effects. Resource max_hp remains Base HP. Current monster CON is 10,
so current monster hp numbers remain unchanged; exporter notes state the meaning.
Regenerate the manifest rather than hand-editing derived values.

The original 30-HP replay fixture from 005c7a6 is retained. Historical 50 Base HP
replay inputs must reproduce M027 exactly and still satisfy the older normalized
M024/M018 fixture guard. Thus intentional human survival/AI outcome changes are
distinguished from unintended attack, event, scheduler or RNG drift.

See [state/formula specification](../specs/con_max_hp.md) and
[M034 validation](../milestones/M034_con_max_hp.md).
