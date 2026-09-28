# Normal weapon attacks use a shared base time cost

Status: **Selected design; runtime migration not implemented yet.**

## Decision

Ordinary weapon attacks should not receive distinct base time costs merely because the weapon is a knife, sword, hammer, or other weapon category.

The intended rule is:

- a normal melee attack uses one shared base Action cost
- Actor speed modifies how quickly the Actor performs that Action
- alternate attack Actions such as Quick / Normal / Heavy may carry different costs
- weapon data describes the attack's physical/combat properties rather than owning a default attack-speed ladder

Conceptually:

```text
Weapon
-> damage dice / damage type / penetration / hands / properties

Attack Action
-> base time cost

Actor
-> speed modifier
```

## Rationale

The time system already has two appropriate places to express tempo:

1. Actor speed for differences between performers.
2. Action definitions for differences between attack methods.

Adding a separate large per-weapon time scale would introduce another strongly interacting balance variable on top of hit chance, damage dice, armor penetration, body damage and Actor speed. It would also make later Quick/Heavy Action design overlap with weapon timing.

Keeping the ordinary attack cost shared makes weapon comparisons easier to reason about and preserves clear ownership between Weapon, Action and Actor.

## Future exception policy

This is not a permanent prohibition on every weapon-speed modifier. If playtesting later shows that a particular property genuinely requires it, a small explicit modifier may be considered.

Do not begin with a broad knife=fast / maul=slow numeric ladder.

## Current implementation mismatch

The current M017/M022-era runtime still stores `attack_cost` on `ActorDefinition` and uses prototype values such as Human 1250 and Rat 1000. That is the historical implementation state, not this target weapon-data design.

Do not silently rewrite historical milestone documentation. The runtime migration belongs in the future combat-data/action refactor that introduces the agreed weapon and monster dataset.
