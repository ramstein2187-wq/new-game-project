# M033 — Primary Attribute Runtime Contract

Status: **Complete on task branch `chat/m033-primary-attribute-runtime`; main integration pending**.
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

Validated on 2026-10-02 KST in an isolated DevSpace worktree using Godot
4.7.2.stable.mono. `bash tools/check_godot.sh` passed editor parse/import, main-scene
startup, all 29 project test scripts, and the generated combat dataset check.
`test_attributes_effects.gd` passed 422 assertions; Character Overview query/tone/screen
suites passed 281/53/284 assertions. M027 single-actor replay and normalized M024 mechanics
also passed, confirming no-Effect combat/RNG preservation.

The first full run exposed two non-gameplay maintenance issues: new defense telemetry fields
changed the replay event schema, so they were removed while retaining resolved DEX difficulty;
and the generated combat manifest source hashes were refreshed. A second complete
`tools/check_godot.sh` run then passed without errors.
