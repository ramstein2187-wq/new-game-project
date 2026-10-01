# Player Identity and Action Design

## Decision

Build character and creature differentiation from a small, legible shared action grammar, then let body plan, origin, traits, equipment, learned abilities, and accumulated change modify what those actions mean and which actions are available.

Progression should primarily answer **"what kind of being is this character becoming?"**, not only **"how much larger are its numbers?"**

This is a project-wide design principle. It does not commit the game to a specific level cap, node graph, class system, skill tree, mutation system, or final progression UI.

## 1. Simple Rules, Deep Combinations

Prefer a small number of understandable rules that combine in many ways over many isolated special-case rules.

A rule earns complexity when it can participate in several systems or create new decisions through combination.

Examples of the intended direction:

- one shared action/time model instead of unrelated timing rules for every weapon
- body capabilities affecting movement, weapon use, and action availability through the same underlying state
- reusable traits or effects modifying existing actions rather than duplicating near-identical actions
- equipment and abilities changing tactical possibilities without requiring a separate combat model for each content item

Do not add distinctions merely because they are physically plausible. Add them when they create meaningful gameplay, expression, authoring leverage, or useful systemic interaction.

The target is:

```text
few stable rules
+ meaningful modifiers
+ situational interaction
= many readable outcomes
```

This complements [Explainable Systemic Behavior](explainable_systemic_behavior.md): combinations should create observable differences rather than invisible simulation complexity.

## 2. Stable Basic Actions, Meaningful Unique Actions

The game should have a dependable set of broadly reusable basic actions.

Examples include concepts such as:

- attack
- move / approach
- reposition
- hold / defend
- interact
- wait

These are a shared grammar, not a promise that every actor exposes every action in the same way.

Content variety should not come primarily from producing large numbers of numerically similar actions. Prefer unique skills, mutations, equipment actions, traits, and contextual abilities that change decisions, relationships between systems, positioning, costs, risks, or available responses.

A new action is most valuable when it does at least one of the following:

- creates a new tactical decision
- changes how an existing rule is used
- interacts with body, terrain, status, equipment, faction, or another system
- expresses something specific about the actor
- enables a play style that is not reproduced by a small numeric adjustment

A long list of mechanically interchangeable attacks is lower priority than a smaller set of actions with distinct consequences.

## 3. Actions Should Reflect What an Actor Is

Body plan, origin, composition, traits, and other identity-bearing properties should affect action capability when they are materially relevant.

These properties should not exist only as taxonomy labels or lore metadata.

Conceptually:

```text
body / origin / traits / equipment / learned abilities
                         ↓
                 capabilities
                         ↓
               available actions
                         ↓
            how actions are executed
```

Examples of the intended relationship:

- losing or damaging a functional body part can remove or degrade actions that depend on it
- a many-limbed creature may gain options that a human body cannot support
- a swarm, machine, altered humanoid, or unusual body plan should not automatically reduce to the same action set with different stats
- origin or traits may grant modifiers, alternate costs, additional effects, or unique actions when that distinction is meaningful
- equipment requirements should follow capabilities rather than actor-name exceptions

Do not force every taxonomy field to produce a mechanic. The principle is that **when identity matters mechanically, it should flow through reusable capability and action systems rather than ad hoc species checks whenever practical.**

## 4. Progression Is Becoming, Not Only Scaling

Character growth should communicate a change in identity, capability, and way of interacting with the world.

Raw numerical improvement can remain part of progression, but it should not be the sole or dominant expression of long-term growth.

Useful progression can include:

- gaining a genuinely new action
- changing how an existing action behaves
- acquiring a trait that creates new synergies or constraints
- modifying the body or its capabilities
- gaining access to new equipment use patterns
- developing knowledge, relationships, faction status, or other world-facing capabilities
- accepting tradeoffs that make the character more distinct rather than universally stronger

The desired player question is not only:

> How do I maximize my statistics?

It should also become:

> What kind of character am I making, and what can this character now do that they could not do before?

This supports the broader thematic direction of surviving a strange world while gradually determining **what kind of being the player becomes through that survival**.

## Progression Structure Remains Open

This decision deliberately does **not** settle:

- whether conventional character levels remain
- a final level cap
- whether advancement uses nodes, trees, packages, free-form purchases, or a hybrid
- XP pacing
- respec rules
- attribute growth rates
- the exact relationship between skills, traits, mutations, body changes, equipment, and narrative development

Those are implementation and progression-model decisions to be tested separately.

Whatever model is selected should be evaluated against the principles in this document rather than treated as a goal in itself.

## Content Design Consequences

When adding a new weapon, monster, mutation, trait, skill, or body type, ask:

1. Does it create a new decision or meaningful interaction?
2. Can it reuse the shared action/capability model?
3. Does its mechanical behavior express what this content is supposed to be?
4. Would a modifier to an existing action communicate the idea better than another near-duplicate action?
5. Can the player perceive the resulting difference?
6. Does it contribute to a distinct way of becoming or playing rather than only vertical stat growth?

Not every answer must be yes, but content that repeatedly answers no is a candidate for simplification.

## Architectural Consequences

Favor architectures where:

1. shared basic actions expose reusable semantic and tactical properties
2. actions depend on capabilities rather than actor-name checks
3. bodies, traits, equipment, statuses, and learned abilities can grant, restrict, or modify capabilities
4. unique content can extend the shared action path without rewriting central combat or AI policy
5. AI can reason about new actions through shared meaning where practical
6. progression systems can grant or transform capabilities without depending on one fixed level model
7. presentation can communicate the visible consequences of these changes

Avoid prematurely building a universal ability framework before concrete content requires it. Extend the common model only when actual actions, traits, bodies, or progression choices demonstrate the need.

## Non-goals

This principle does not require:

- every creature to have a unique action
- every body part or origin tag to alter gameplay
- simulation of every physically possible interaction
- eliminating numerical progression
- removing levels
- maximizing build complexity
- exposing all internal mechanics or numeric modifiers directly to the player

The goal is **coherent differentiation with controlled complexity**, not maximal variation.

## Relationship to Existing Decisions

- [Combat/body phase 1 boundary](combat_body_phase1.md) already establishes that body condition produces capabilities and can affect movement and action availability.
- [Common Actor Model](common_actor_model.md) establishes shared player/NPC actor and action foundations.
- [Explainable Systemic Behavior](explainable_systemic_behavior.md) requires meaningful internal distinctions to reach the player's experience.
- [Turn Model — Action-Cost Time](turn_time_model.md) provides the shared temporal grammar through which actions consume time.
- [Primary Attribute Semantics](primary_attribute_semantics.md) defines the default meaning of STR/DEX/CON/PER/INT/WIL and permits build-defining content to reinterpret which single primary attribute governs a particular action.

This document generalizes those implementation decisions into a durable content, action, and progression philosophy.
