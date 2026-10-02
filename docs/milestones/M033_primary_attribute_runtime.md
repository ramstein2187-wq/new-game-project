# M033 — Primary Attribute Runtime Contract

Status: **In progress on `chat/m033-primary-attribute-runtime`**.
Base: `main` at `10f6f31`, 2026-10-02 KST.

## Goal

Make the six primary attributes semantically stable and route gameplay checks through
resolved primary stats instead of mixing raw AbilityScores and resolved UI values.

## Scope

- STR/DEX/CON/PER/INT/WIL domains: Force/Execution/Endurance/Awareness/Understanding/Control.
- Shared one-primary check; one explicit alternate at most; primary wins ties.
- Existing best_str_dex becomes STR primary + explicit DEX alternate.
- Attack/damage and defender DEX difficulty use resolved primary stats.
- movement_speed stays independent from DEX.
- Character Overview explanations match runtime truth.

## Out of scope

No Accuracy/Dodge stat, CON-MaxHP, initiative, global Quickness, progression, new balance
values, new production Effects, or save-schema changes.

## Completion criteria

Primary domains are queryable; non-primary checks reject; primary Effects feed matching
combat modifiers; explicit alternates choose rather than sum; DEX Effects do not change
Move Time; no-Effect production behavior/RNG order stay unchanged; focused/full Godot
validation passes.

## Validation

Implementation is prepared on the task branch. DevSpace was unavailable at task start, so
local Godot validation remains required before marking M033 complete.
