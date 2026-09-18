# Explainable Systemic Behavior

## Decision

Important AI decisions and systemic state changes should preserve their meaningful causes as data, and those causes should be capable of reaching the player through appropriate in-world or interface feedback.

The project should not treat "the correct action happened" as sufficient if the system internally distinguishes different motives, relationships, perceptions, or pressures.

## Core Principle

A system is most valuable when the player can perceive that its internal distinctions matter.

For example, these may all resolve to the same immediate action:

- an innately aggressive creature attacks
- a normally cautious creature attacks because the player's faction is hostile
- a neutral creature attacks in revenge for a harmed ally
- a frightened creature attacks because its escape route is blocked
- a subordinate attacks because it is following an order

If all five are only presented as "the creature attacks," much of the systemic distinction is lost from the player's experience.

The implementation should therefore preserve enough causal information for the game to communicate why these situations differ.

## AI Decision Shape

Future tactical AI should prefer a result shaped conceptually like:

```text
Decision
├─ action
├─ target
├─ goal
├─ reasons
└─ evaluation/context
```

The exact data structure is not fixed yet. The durable requirement is that meaningful reasons are not thrown away after utility evaluation.

Examples of reasons:

- faction hostility
- personal opinion
- ally harmed
- direct provocation
- fear
- low health
- blocked escape
- loyalty or allegiance
- received order
- environmental danger
- nearby allies increasing confidence

A reason may contribute to goal selection, action utility, or a state transition.

## Player-Facing Expression

Reasons should not automatically expose raw simulation numbers.

Instead, the same underlying cause may be expressed through one or more channels:

- movement and positioning
- animation or pose
- dialogue or combat barks
- action/combat log
- inspection UI
- relationship or faction information
- environmental reactions
- visible goal or intent hints when appropriate

Example:

```text
Internal:
faction_hostility + ally_harmed -> hostile attack

Possible player-facing output:
"The guard recognizes your faction's insignia and reaches for his weapon."
"He sees his wounded companion and charges you."
```

Exact wording and information availability can depend on what the player character can reasonably observe or has learned.

## Information Is Part of Gameplay

Explainability does not mean omniscience.

Some motives can be obvious, some can be inferred, and some can require observation, conversation, skills, prior knowledge, or investigation.

A useful progression could be:

```text
visible behavior
→ broad emotional/state cue
→ contextual inference
→ explicit learned reason
```

This allows perception, social, investigative, or faction systems to reveal deeper causes without requiring the AI to become opaque.

## Reasons Should Be Actionable When Appropriate

Understanding a cause should sometimes give the player a different response.

Examples:

- faction hostility -> disguise, reputation, credentials, diplomacy
- fear -> back away, lower a weapon, intimidate further
- revenge -> apology, compensation, persuasion, escalation
- allegiance/order -> influence the leader, break command, change loyalty
- environmental danger -> manipulate the environment
- low confidence -> isolate allies or create pressure

This is preferable to reasons existing only as flavor text.

## Dynamic Personality and Social Context

AI behavior may combine relatively stable traits with dynamic modifiers.

Conceptually:

```text
base personality
+ faction relationship
+ personal opinion
+ allegiance
+ current emotion/state
+ perceived tactical context
→ current goal and action preference
```

The same outward action can therefore have different causes, and changing the cause can later change behavior.

This supports the intended direction of characters feeling like situated entities rather than interchangeable combat agents.

## Developer Explainability

The same reason data should support debugging.

A development-only view may expose details such as:

```text
Chosen: Move toward player
Utility: 72

Contributors:
+ target hostility
+ ally support
+ aggressive personality
- fire hazard
```

Player-facing presentation may be much less explicit, but both should derive from the same underlying causal data where practical.

This makes unexpected behavior easier to diagnose and reduces divergence between AI logic and narrative presentation.

## Constraint Against Invisible Complexity

Do not add elaborate internal personality, relationship, emotion, or tactical systems merely because they are plausible simulations.

Complexity should earn its cost by changing at least one of:

- player-observable behavior
- meaningful decisions
- available responses
- world consequences
- narrative interpretation
- debugging or content-authoring leverage

If two elaborate internal states reliably produce the same player experience and cannot be meaningfully acted upon, consider simplifying them.

## Architectural Consequence

When the tactical AI architecture is implemented, favor systems that allow:

1. actions to expose their AI-relevant meaning without central AI code knowing every concrete action
2. personality and social context to modify preferences dynamically
3. decisions and state transitions to retain causal reasons
4. presentation systems to consume those reasons without owning AI logic
5. AI to re-observe and reconsider after individual actions
6. new actions, factions, relationships, and behavioral causes to be added without rewriting the whole decision system

This document defines a project-wide design principle, not a commitment to a specific utility formula or AI implementation.
