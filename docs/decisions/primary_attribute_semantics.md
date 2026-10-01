# Primary Attribute Semantics

## Decision

The six primary attributes are **STR, DEX, CON, PER, INT, WIL**. They define the ordinary meaning of a character's capabilities, not a closed mapping from every action to exactly one permanent statistic.

The default semantic roles are:

| Attribute | Semantic role | Ordinary meaning |
| --- | --- | --- |
| STR | Force | Applying physical force |
| DEX | Execution | Precise bodily control and execution |
| CON | Endurance | Enduring physical harm and bodily stress |
| PER | Awareness | Detecting and observing information in the environment |
| INT | Understanding | Understanding, reasoning about, and interpreting information |
| WIL | Control | Maintaining intention and self-control under pressure |

These meanings are the default grammar for content design. A particular trait, ability, weapon action, mutation, body feature, or other build-defining rule may deliberately change which attribute powers an action when that creates a meaningful play style.

> **Attributes define the ordinary meaning of a capability; builds may reinterpret which attribute powers a particular action.**

## One Primary Attribute per Check

Prefer one primary attribute for one check or action resolution.

Do not make combined primary-attribute formulas such as DEX + PER or CON + WIL the normal solution to overlapping real-world causes. Instead, identify what the actor is actually doing and select the attribute whose semantic role best matches that action.

Examples:

- noticing a hidden target -> PER
- executing a precise attack -> DEX
- understanding an unfamiliar mechanism -> INT
- manipulating that mechanism precisely -> DEX
- resisting poison or bodily shock -> CON
- resisting fear or mental compulsion -> WIL

This keeps attributes legible, avoids hidden multi-stat tax, and preserves room for distinct builds.

Situational modifiers, proficiency, equipment, body capability, effects, and other systems may still modify the same check through their existing mechanisms. The rule is specifically against routine addition of multiple **primary attributes** to the same resolution.

## Default Roles Are Not Build Restrictions

An attribute's ordinary role does not imply that only one archetype can use it as a main stat.

Content may replace the default governing attribute when the replacement expresses the identity of the build or action. For example:

- a perception-focused marksman ability may use PER for a specific aimed attack that would ordinarily use DEX
- a mutation may use CON to power a bodily attack
- a technical or psionic ability may choose INT or WIL according to what the action fictionally and mechanically represents

Prefer expressing these substitutions through authored action, trait, ability, or capability data rather than actor-name checks or scattered special-case code.

A substitution should create a distinct decision or play style, not merely move the same bonus from one attribute to another without changing anything the player can perceive.

## Attribute Boundaries

### STR — Force

STR governs the ability to apply physical force.

Typical uses include strength-based attacks, forcing or moving objects, overpowering another body, and other actions whose central problem is force production.

STR does not ordinarily grant general defense, movement speed, or mental resistance.

### DEX — Execution

DEX governs precise bodily control, coordination, and physical execution.

Typical uses include finesse attacks, precise manipulation, manual dexterity, balance, and physical evasion where execution rather than awareness is the limiting factor.

DEX does **not** globally reduce Action Cost. The action-cost model remains separately authored and resolved. This preserves the distinction between being precise and acting faster in the scheduler.

### CON — Endurance

CON governs bodily endurance and resistance to physical stress.

Typical uses include surviving bodily strain and resisting poison, disease, shock, or similar physical conditions.

For Max HP, the v1 rule is:

**Max HP = Base HP × (1 + 0.05 × (Resolved CON - 10))**

- CON 10 is the neutral baseline.
- Each point of resolved CON above or below 10 changes Base HP by 5%.
- Max HP uses the resolved raw CON value, not the D&D-style ability modifier. This avoids odd-score dead zones such as CON 11/13/15 providing no HP change.
- Apply the percentage to Base HP and round once at the final Max HP boundary.
- Base HP represents the underlying body's/species' inherent durability; CON scales how well that body endures rather than replacing body size or species durability.
- The default human Base HP is **30**.
- The existing authored `ActorDefinition.max_hp` is retained as the implementation field for Base HP; runtime `Actor.max_hp` is the CON-derived value.
- Runtime Max HP has a minimum of 1 so extreme negative CON effects cannot produce a zero/negative denominator or invalid living state.
- When resolved CON changes at runtime, Max HP updates immediately while preserving damage already taken. Increasing Max HP therefore keeps an undamaged actor full; decreasing it can reduce current HP and may be lethal if existing damage exceeds the new maximum. A dead actor is not revived by later Max-HP increases.

Human examples:

| Base HP | CON | Max HP before final rounding |
| ---: | ---: | ---: |
| 30 | 10 | 30.0 |
| 30 | 12 | 33.0 |
| 30 | 14 | 36.0 |
| 30 | 16 | 39.0 |

CON does not ordinarily increase armor value or replace the Body system's authority over local body-part condition. Physical-condition resistance beyond Max HP remains a separate implementation step.

### PER — Awareness

PER governs acquisition of information from the environment.

Typical uses include detecting hidden actors or objects, noticing traps and traces, resisting ambush through awareness, observing body or equipment state, and gaining more precise information about a target or situation.

PER does **not** automatically grant general Accuracy. Specific perception-oriented actions or builds may use PER as their governing attribute when deliberately authored to do so.

### INT — Understanding

INT governs understanding, reasoning, interpretation, and the complexity of information an actor can meaningfully process.

Typical uses include technical understanding, analysis, research, interpreting unfamiliar systems, and complex communication or concepts.

A separate general-purpose Cognition attribute or taxonomy is not required. General cognitive capability belongs to INT. Special cognitive architectures such as machine minds, hive minds, distributed cognition, telepathy, or unusual communication structures should be represented through traits, capabilities, or other content rules when they create meaningful behavior.

INT does not automatically make combat AI tactically superior. AI policy and available actions remain separate systems.

### WIL — Control

WIL governs maintaining intention and self-control under internal or external pressure.

Typical uses include resisting fear, panic, compulsion, mental intrusion, loss of concentration, or other effects that threaten control of one's own behavior.

High WIL does not imply that an actor never retreats or changes plans. Strategic decisions remain distinct from involuntary loss of control.

## Complexity Boundary

Do not add mechanics to an attribute merely to make every attribute influence every subsystem.

An attribute earns a new gameplay connection when that connection:

1. matches its semantic role,
2. creates a meaningful player-facing difference,
3. does not duplicate an existing system's authority,
4. avoids unnecessary multi-stat dependency, and
5. can be explained through the normal action/effect/capability grammar.

A stat may be primarily valuable through world interaction, information, resistance, or build-specific actions rather than through a universal combat bonus.

## Relationship to Existing Decisions

- [Attributes and effects foundation](attributes_effects.md) remains authoritative for score storage, modifiers, effect resolution, action-cost resolution, and current runtime wiring.
- [Player Identity and Action Design](player_identity_and_action_design.md) remains authoritative for the broader principle that traits, equipment, bodies, origins, learned abilities, and accumulated change should create differentiation through reusable capabilities and actions.
- [Physical combat, weapon actions and functional hands](physical_combat_weapon_actions.md) remains authoritative for current physical attack data and weapon-action behavior.
- This decision defines **semantic boundaries and future content guidance**. CON-to-Max-HP runtime wiring and the Human Base HP 30 baseline are implemented together with this decision. Other combat formulas, detection, status resistance, AI, progression, and authored content remain unchanged until explicitly implemented.
