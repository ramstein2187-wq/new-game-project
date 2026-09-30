# M031 — Attributes and Effects Foundation

Status: **Complete on main** at `0b859aa` via [PR #34](https://github.com/ramstein2187-wq/new-game-project/pull/34).
Implementation branch: `codex/m031-attributes-effects-foundation`, based on main `e375455` (2026-09-30 KST).
Original workspace: `C:/GameDev/m031-attributes-effects-foundation`.

Post-merge verification on a fresh `origin/main` worktree completed after a headless editor import: the M031 405-assertion suite, M027 physical combat/weapon actions, M028 melee AI, single-source combat content, deterministic combat batch runner and generated combat dataset `--check` all passed. The initial pre-import test attempt could not resolve global script classes in the fresh worktree; importing registered the 96 script classes and the same tests then passed.

## Scope and decisions

- Six primary attributes STR/DEX/CON/PER/INT/WIL; unchanged modifier/allocation.
- ActorDefinition movement_speed replaces directly authored movement costs.
  Interact/Wait standard costs now belong to their Action classes.
- Unified FLAT/PERCENT via independent ModifierOperation.Kind. Stat:
  **Base × (1 + Σ Percent) + Σ Flat**. Action Cost:
  **Adjusted Base × (1 + Σ Percent) + Σ Flat**; intrinsic Weapon Action deltas
  share the external Percent pool. Textual effect IDs lexical in each phase,
  authored modifier order, one final cost ceil and minimum 1, no percent caps.
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

## M031 follow-up — resolution copy boundary

Historical follow-up `5fde601`; its borrowed-reference helper is superseded by
the final ownership hardening below.

- Based on M031 commit `b5eced0a83595780f5da0186fbccc6d0f0b142b5`, on the same
  branch; a separate follow-up commit preserves the original history. No main merge.
- Insertion and public `active_effects()` still deep-copy Resources. The internal
  `_ordered_effect_refs()` explicitly sorts IDs and returns a read-only array of
  borrowed refs. GDScript Resources are mutable; only internal read-only consumers
  use these underscored helpers. Normal mutation remains add/remove/recreation.
- Move collects effects once, sharing that view with stat and ADD/MULTIPLY cost
  phases. Stat queries use the same zero-copy path. No cache or new Effect feature.
- Existing 224 assertions retained; 16 added regression assertions pass (240 total),
  including spy checks for no public snapshot calls/one collection, deep snapshot
  isolation, stable Resource refs, insertion/authored order, repeat queries,
  immediate add/remove and query time/RNG/event preservation.
- Captured mixed-Effect stat/cost traces before runtime edits: healthy, damaged and
  disabled leg, all four Action types, fractional Weapon Action and effect removals.
  Before/after 33,120-byte output is identical, SHA-256
  `22e1a215b0c217a4c9df42dbbaace239f3c0704eff5dd32b256f9f8a3cef34c0`.
  This hash is frozen in the regression test; old movement/paired fixtures untouched.
- Local follow-up logs: `C:/GameDev/m031-followup-{before,after,focused,full-check}.log`.
- `bash tools/check_godot.sh` passed editor import, startup, all 26 test scripts
  (including 240 M031 assertions, old 96 movement costs, 160 paired encounter hashes,
  rejection/scheduler and unchanged 3-seed replay) and exact exporter `--check`.
  Fingerprint and offline knowledge validation passed; no ERROR/FAIL lines.
- Exporter regenerated only three source fingerprints in the manifest; equipment
  and monster output bytes/hashes are unchanged. Old golden/replay fixtures,
  Scheduler, Body and AI files are unchanged. Import hash audits preserved all
  12 untracked files in both the worktree and original checkout; none staged.
- Final diff/whitespace audit passed. Only the three runtime files, focused test,
  these two documents and generated manifest belong to the follow-up commit.
  Delivery commit/push results are retained in Git and `C:/GameDev/m031-work-record.md`.

## M031 follow-up — final ownership hardening

Historical validation at `86fd3e5`; stat-only formula changes below supersede its
mixed-stat trace hash. Ownership/provenance remain current.

- Starts at follow-up HEAD `5fde601d510bcc1af1f5f118ad59064c6c4c6cc9`, same branch.
  Separate new commit; no rewrite/amend, squash, main checkout or merge.
- Final ownership: **Actor → EffectStore → ActiveEffect → GameplayEffectDefinition**.
  Definition is static authored Resource data; ActiveEffect is an actor-specific
  applied instance with definition and opaque StringName source_id only. No timers,
  stacks, charges or triggers. EffectStore owns instances/mutation/snapshots and
  deterministic stat/external cost calculation; Actor delegates public APIs.
- StatCatalog owns exactly STR/DEX/CON/PER/INT/WIL/MOVEMENT_SPEED IDs. StatModifier
  validates against the catalog; AbilityScores still owns primary values/allocation.
- Definition deep-copy once at insertion isolates callers and actors. The previous
  raw-reference helper is removed. Public active_effects() keeps safe Definition
  snapshots; active_effect_instances() adds safe ActiveEffect/provenance snapshots.
  Resolver iteration reads live refs only inside Store, returning scalar/value data.
  No per-resolution Resource copying or resolved/ordering cache. GDScript private
  fields are a convention; no supported API exposes internal storage/live refs.
- source_id defaults to system; explicit empty origin rejects. Breakdown keeps
  modifier source and definition effect_id, adding ActiveEffect source_id such as
  skill:rapid_strike. One instance per **definition ID**, even with different sources;
  duplicates reject, original origin survives, removal permits another-origin reapply.
- Focused **299 assertions** pass: original 240 logical regressions retained with
  raw-view tests replaced by safe-boundary equivalents, plus 59 catalog/ownership/
  provenance assertions. Source/snapshot/nested modifier/breakdown mutation isolation,
  two-actor separation, no snapshot calls during resolution and immediate add/remove/
  clear are covered. Existing allocation, numerical values and ordering stay intact.
- 96 movement golden costs and all 160 paired encounter metrics hashes unchanged.
  Existing Rat/Rat 32 stalls preserved, zero simulation errors. M027 replay and
  normalized M024 replay (3 seeds) pass against untouched fixtures.
- Independent before/after audit: removing only 72 new source_id metadata fields
  reproduces all 33,120 legacy breakdown bytes, SHA-256
  `22e1a215b0c217a4c9df42dbbaace239f3c0704eff5dd32b256f9f8a3cef34c0`.
  New metadata-inclusive trace SHA-256:
  `265e607a13e7ad0df1d9735684b573551f17cc1f8fa1aa7d5cf643c946807b9f`.
- Full `bash tools/check_godot.sh`: editor import, startup, **26 scripts**, rejection/
  scheduler/replays and exporter --check pass; no ERROR/FAIL. Offline dataset,
  knowledge (10 specs/6 datasets) and wiki (14 pages) checks pass.
- Equipment/monsters JSON, original golden/replays, Body/AI/Scheduler/CombatRules
  remain byte-identical to 5fde601. Exporter/consumer schemas unchanged; generated
  manifest only adds 3 new source fingerprints and updates 6 changed source hashes.
- Decision/wiki/action cost spec and matching diagram updated. New classes have
  Godot UID sidecars. Logs: `C:/GameDev/m031-hardening-{before,after,focused,export,
  full-check,layout}.log`; independent audit: `C:/GameDev/m031-hardening-audit.py`.
  Durable continuation/delivery record: `C:/GameDev/m031-work-record.md`.
- Both checkouts' 12 pre-existing EverRogue imports are hash-unchanged and excluded
  from staging. Only reviewed follow-up files are staged/committed/pushed.
  Existing gameplay/action cost/Body/RNG/event/AI balance is unchanged. Duration,
  stacking, triggers, future stat wiring, Skill/Trait/Thought/Status, equipment
  integration, Character Sheet, Save/Load and M032 remain deferred.

## M031 follow-up — base-only stat multiplication

Historical formula at `69cd608`; superseded by the unified model below.

- Starts at `86fd3e5d475cd0c1bee8baead51e00b1bfeed34e`, same branch; separate
  follow-up commit/push, no main merge or previous commit rewrite/amend.
- New formula: **Resolved Stat = Base × Product(MULTIPLY) + Sum(ADD)**.
  STR base 10, ADD +4, MULTIPLY ×1.5 resolves to 19. movement_speed uses the same
  rule. Stat breakdown: BASE → each MULTIPLY → each ADD; final is top-level value.
  No FINAL step is added; no-effect stat traces remain identical.
- Runtime diff is confined to EffectStore.resolve_stat(): multiply phase first,
  then add phase; explicitly compare textual IDs for lexical order in each phase.
  Native StringName ordering differs for prefixed IDs (e.g. cost_a/cost_z), so
  regression includes these IDs. Authored order within each effect is preserved.
- Action Cost retains its existing ordering and formula; intrinsic/external
  multipliers compose and external ADD is still multiplied. Store ownership,
  ActiveEffect/provenance, StatCatalog, Body, Scheduler, AI and combat rules unchanged.
- Focused **335 assertions** (299 retained/updated + 36 new) pass. Covers simple
  example, multiple positive/negative ADD and MULTIPLY across all seven stats,
  lexical/authored order, reverse insertion trace, Move consumption and cost
  `(1000 × intrinsic 1.5 - 100) × .5 × 1.25 = 875` with existing intermediate order.
- Whole `bash tools/check_godot.sh` passes import/startup/**26 scripts**/exporter.
  Existing **96 movement golden**, **160 paired metrics hashes**, M027 and normalized
  M024 **3-seed replay** fixtures are unchanged; rejection/scheduler tests pass.
- Pre-change Attack/fractional Attack/Interact/Wait cost breakdown hash remains
  `26f0451a96470bd21cd84e7a61d8dce7a927b2f803a4d259b298110bb933f652`.
  Mixed stat/Move trace intentionally changes to
  `1758f7a64a1d79876693c4c4e0999e9f6f46c365fa93f70ef4a34a194846c7a8`.
  Independent before/after audit verifies new stat formula and unchanged Body/cost
  factors; after removing ADD/all effects, entire traces are unchanged.
- All other production game files, dataset/golden/replay bytes and exporter schema
  are unchanged. Generated manifest updates only EffectStore's source fingerprint.
  Offline dataset/knowledge/wiki checks pass. EverRogue imports (12 per checkout)
  are hash-unchanged, untouched and excluded from staging.
- Logs: `C:/GameDev/m031-stat-{baseline,before,after,focused,full-check,export}.log`.
  Audit: `C:/GameDev/m031-stat-audit.py`; continuation/delivery record:
  `C:/GameDev/m031-work-record.md`. Deferred features and manual limits unchanged.

## M031 follow-up — unified FLAT/PERCENT

- Starts at HEAD `69cd608f6ae668b35eec4b327156b31f0ad1cafa`, same branch; separate
  new commit/push. No prior commit amend/rewrite, squash or main merge.
- Replaces the historical stat product and intrinsic/external compounded cost
  arithmetic with **Stat = Base × (1 + Σ Percent) + Σ Flat** and
  **Action Cost = Adjusted Base × (1 + Σ Percent) + Σ Flat**.
  PERCENT stores deltas, e.g. +0.20/-0.25. Percent adds instead of compounding and
  never amplifies Flat. A shared independent ModifierOperation.Kind defines only
  FLAT/PERCENT. Modifier Resources have no legacy operation/apply-multiplier API.
- Move retains standard base / resolved movement_speed / authoritative Body
  locomotion, then percent/flat. Weapon Action cost_percent joins the same action
  pool as external Percent; origin remains explicit in breakdown. Final integer
  boundary noise handling, one ceil, minimum1 and rejection invariants remain.
- Ownership Actor → Store → ActiveEffect → Definition, seven StatCatalog IDs,
  AbilityScores allocation and zero-copy uncached queries remain. Percent and Flat
  phases use textual effect-ID lexical order with authored order within effects;
  reverse effect insertion yields identical canonical traces.
- Migrated four authored Weapon Actions: knife 0.75→-0.25, longsword 1.25→+0.25,
  warhammer 1.50→+0.50, maul 1.75→+0.75. Standalone costs remain 750/1250/1500/1750.
  Test fixtures/create calls/exporter/offline mirror/debug action labels migrated.
  Historical CombatEvent cost_multiplier is derived as 1+cost_percent solely for
  replay telemetry compatibility; cost calculation does not consume that field.
- Breakdowns expose base, adjusted_base (cost), percent_total, flat_total, unrounded,
  rounded/final cost, and ordered BASE/DIVIDE/PERCENT/FLAT/CEIL/MAX steps. External
  steps preserve effect_id/source_id/modifier source; intrinsic identifies
  weapon_action:id. Running totals make shared percent pooling visible.
- **405 focused assertions = previous335 migrated + new70**, all pass. Includes
  signed Flats/Percent, +20%/+30%→+50%, mixed examples, intrinsic -25% + external
  -20%→550, -20% + flat100→900, Move1000/1.25/.8 then -20%+50→850, reverse
  insertion/authored permutations, nonfinite validation, uncached ownership and
  -100%-or-lower reductions versus nonpositive movement-speed rejection.
- Full `bash tools/check_godot.sh` passes editor import/startup/**26 scripts** and
  exporter --check; no ERROR/FAIL. Original **96 movement golden**/**160 paired
  metrics hashes** preserved, including Rat/Rat32 existing stalls and zero errors.
  Existing M027 and normalized M024 **3-seed replay hashes** pass unchanged.
- New independently checked semantic golden:
  `f87f2cc98c4c72839d326e789820427f12abbe47a9d08841941ff35fabeef043`, frozen in
  tests/fixtures/m031_flat_percent_breakdown.sha256. Legacy mixed modifier traces
  intentionally change vocabulary/schema and stacked arithmetic; old production
  movement/paired/replay fixtures remain untouched.
- Independent audit verifies formulas/totals/physical stages/provenance/order/ceil/
  minimum across all golden records. equipment.json changes only action metadata
  schema to cost_percent; all other values and standalone timing preserved.
  monsters.json byte-identical; exporter/source fingerprint manifest regenerated.
- Resource/UID/scene audit passes **134 resources /96 script UIDs /6 scenes**;
  offline dataset fingerprints, knowledge10 specs/6 datasets and wiki14 pages pass.
  First full run caught an old debug-panel property access; fixed that consumer
  without changing gameplay. Final suite passes; automated UI checks are headless.
- Percent/discount caps, diminishing returns, priority, duration, stacking engines,
  triggers and new consumer/gameplay systems remain deferred. Rare/legible/strong
  action-time manipulation is design space, not ordinary growth or new content.
- Logs: `C:/GameDev/m031-percent-{baseline,import,focused,full-check,export,layout,
  probe}.log`; independent audit `C:/GameDev/m031-percent-audit.py`; continuation
  record `C:/GameDev/m031-work-record.md`. Both checkouts' 12 EverRogue imports
  remain hash-unchanged/unstaged; only intended migration files are committed.

## Manual verification (unperformed)

1. Open this worktree in Godot 4.7.2; F5 generated playground and F6 fixed room.
2. Confirm six ability rows PER/WIL and unchanged point allocation/refund.
3. Inspect each actor .tres movement_speed; healthy movement follows the table.
4. Damage a leg in the existing debug playground and confirm the previous slowdown;
   disable all locomotion and confirm rejected movement consumes no time.
5. In debugger/script create a test GameplayEffectDefinition with a MOVE-only
   ActionCostModifier PERCENT -0.20 or MELEE PERCENT -0.50, call actor.add_effect, inspect
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
