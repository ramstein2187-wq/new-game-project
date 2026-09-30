# M031 — Attributes and Effects Foundation

Status: Implementation and automated validation complete on task branch
`codex/m031-attributes-effects-foundation`. **Not merged to main**.
Base: main `e375455` (2026-09-30 KST).
Workspace: `C:/GameDev/m031-attributes-effects-foundation`.

## Scope and decisions

- Six primary attributes STR/DEX/CON/PER/INT/WIL; unchanged modifier/allocation.
- ActorDefinition movement_speed replaces directly authored movement costs.
  Interact/Wait standard costs now belong to their Action classes.
- Query-time StatResolver and shared ActionCostResolver; ADD then MULTIPLY,
  lexical effect IDs, authored modifier order, one final ceil and minimum 1.
- StatModifier, ActionCostModifier and GameplayEffectDefinition Resources; explicit
  Actor addition/removal, isolated copies, unique IDs, small all-required-tag matching.
- Structured stat/cost breakdown includes source, operation, value and results.
- Body, production action execution, AI, combat RNG/event schema and Scheduler
  remain authoritative. Only movement_speed is newly wired to gameplay.
- Native .tres remains authoritative. Exporter regenerates all-six-attribute
  monsters, speed, derived costs and fingerprints. No direct generated JSON edits.

Durable design: [attributes/effects](../decisions/attributes_effects.md).

## Migration golden table

Every production diagonal matched 1.4x before migration; no exceptions corrected.
Speed was authored from `1000.0 / old_cardinal`, with round-trip float precision.

| Actor | Old cardinal / diagonal | movement_speed | New healthy cardinal / diagonal |
| --- | --- | ---: | --- |
| Human (default) | 1000 / 1400 | 1.0 | 1000 / 1400 |
| Rat | 750 / 1050 | 1.3333333333333333 | 750 / 1050 |
| Feral Dog | 900 / 1260 | 1.1111111111111112 | 900 / 1260 |
| Wolf | 850 / 1190 | 1.1764705882352942 | 850 / 1190 |
| Giant Beetle | 1200 / 1680 | 0.8333333333333334 | 1200 / 1680 |
| Boar | 1000 / 1400 | 1.0 | 1000 / 1400 |
| Cave Lizard | 950 / 1330 | 1.0526315789473684 | 950 / 1330 |
| Feral Ape | 1000 / 1400 | 1.0 | 1000 / 1400 |
| Giant Spider | 800 / 1120 | 1.25 | 800 / 1120 |
| Giant Crab | 1200 / 1680 | 0.8333333333333334 | 1200 / 1680 |
| Raider | 1000 / 1400 | 1.0 | 1000 / 1400 |
| Armored Raider | 1100 / 1540 | 0.9090909090909091 | 1100 / 1540 |

## Validation evidence and resume record

- Read AGENTS, ROADMAP, MILESTONES, M027..M030 and relevant action/time/content docs.
- Original checkout had exactly 12 untracked EverRogue imports, no tracked edits.
  It remains untouched. Isolated worktree also generates its own imports; none staged.
- main/origin/main both verified `e375455`. No other task branch merged.
- Before edits: `bash tools/check_godot.sh` passed import, startup, 25 test scripts,
  exact dataset check. Saved production golden fixture **before** changing runtime.
- Golden: Human + all 11 content actors, cardinal/diagonal in healthy, damaged leg,
  disabled leg and all-locomotion-disabled states (96 costs); all preserved.
- 20 seeds 31000..31019, paired swaps in four matchups = 160 encounters. Complete
  batch metrics SHA-256 preserved; no errors. Dog/Wolf wins 4/36, Raider/Beetle
  16/24, Raider/Armored 0/40; Rat/Rat 4/4 and 32 existing stalls, also unchanged.
  This is execution/regression evidence, not balance or Threat calibration.
- M031 focused suite passed 224 assertions: exact attributes/allocation, ADD/MULTIPLY,
  filtering, isolation/removal/reset, rounding, breakdown, invalid data, real action
  execution and rejected time/RNG/events, player/registration ties and golden batches.
- Full Godot check passed 26 scripts, import, default startup and exporter `--check`;
  existing M027 and normalized M024 3-seed replay hashes passed unchanged.
- First focused run had a JSON float/int serialization comparison error in the test
  and a manually killed-but-still-registered NPC fixture. Corrected numeric comparison
  and fixture unregistering; production rules were not relaxed.
- Local logs: `C:/GameDev/m031-{baseline-check,import,focused,export,full-check}.log`.
  Ongoing local continuation record: `C:/GameDev/m031-work-record.md`.
- Final offline knowledge validation passed (10 specs / 6 datasets), wiki validation
  passed (14 pages), fingerprint check passed, and three Notion schema mock tests
  passed (add-only/history preservation, idempotence, wrong-type/refused-update failure).
- Layout audit passed: 130 resources, 92 script UIDs, 6 scenes instantiated.
- Independent base-vs-current dataset audit passed: every pre-existing field of all
  11 monsters preserved, equipment.json byte-identical. Scheduler, BodyInstance,
  CombatRules, both AI policies and old replay fixtures remain byte-identical.
- Final full check passed with no ERROR/FAIL lines. Diff/whitespace audit passed.
  Related SVGs regenerated with `python3 tools/render_doc_diagrams.py --only
  action_pipeline body_injury action_cost_resolution`; unrelated diagrams preserved.
- Git delivery: stage only reviewed M031 source/tests/docs/generated outputs and
  script UID sidecars; exclude all asset imports. Make one coherent commit and push
  this task branch. Commit SHA/push result are recorded in Git and the local work
  record after execution. Original checkout still has main e375455 and only its
  pre-existing 12 untracked imports, no tracked changes.

## Manual verification (unperformed)

1. Open this worktree in Godot 4.7.2; F5 generated playground and F6 fixed room.
2. Confirm six ability rows PER/WIL and unchanged point allocation/refund.
3. Inspect each actor .tres movement_speed; healthy movement follows the table.
4. Damage a leg in the existing debug playground and confirm the previous slowdown;
   disable all locomotion and confirm rejected movement consumes no time.
5. In debugger/script create a test GameplayEffectDefinition with a MOVE-only
   ActionCostModifier x0.8 or MELEE x0.5, call actor.add_effect, inspect
   action.cost_breakdown(game, actor.id), then remove the ID and confirm restoration.
6. Confirm combat readability/feel and Inspector usability. No effect controls or
   character-sheet UI are included. Headless checks do not establish visual acceptance.

Live Notion sync and exported-package testing are unperformed. The sync code adds
missing PER/WIL numeric columns during a future real sync, preserving historical
columns; offline validation cannot establish live permissions or service behavior.

## Deferred

MaxHP/Accuracy/Dodge wiring, attribute-effect combat integration, Thought/Skill/Trait,
finished character sheet, duration/ticks/stacking/trigger/aura/cooldown/immunity,
Quickness/global DEX speed, initiative/reactions, AI changes and TR recalibration.
