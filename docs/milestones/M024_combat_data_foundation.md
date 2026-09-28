# M024 — Combat Data Foundation and Prototype Content

Status: **Complete on main** at `e79ddb1` via [PR #19](https://github.com/ramstein2187-wq/new-game-project/pull/19).

## Goal

Replace the global fixed-damage prototype with reusable runtime combat data while preserving the production Action, scheduler, body, event and M023 simulation paths.

## Implemented scope

- `DamageDice`, `AttackDefinition`, `WeaponDefinition` and `ArmorDefinition` Resources.
- `CombatContentCatalog` for five weapons, five armor pieces, Rat plus ten new hostile definitions.
- One shared normal-melee Action cost of 1000; weapons have no time/speed field.
- Damage = dice + selected STR/DEX modifier. Proficiency affects hit only.
- Finesse chooses the higher STR/DEX modifier without adding a selection UI.
- Capability-count validation with one-hand fallback, two-hand Maul requirement and redundant natural Claw/Bite support.
- Single-layer equipment or natural armor applied to covered body-part types.
- `basic_melee` AI for new hostiles; existing `RatTactics` remains intact.
- Structured event data for attack identity, weapon, roll inputs, damage rolls, armor and body/HP results.
- M023 metrics now count consumed damage-die rolls.

## Deterministic combat RNG contract

1. D20 attack roll.
2. On hit, hit-location roll.
3. Damage-die rolls.
4. Armor roll only when the selected part has armor.
5. Damage application.

Damage dice are consumed before the armor roll even when the later result is Full Block. Critical hits and natural-1/20 exceptions are not implemented.

## Content

- Weapons: Hunting Knife, Handaxe, Longsword, Warhammer, Maul.
- Armor: Gambeson, Leather Vest, Chain Shirt, Scrap Plate, Iron Helmet.
- New hostiles: Feral Dog, Wolf, Boar, Giant Beetle, Cave Lizard, Giant Spider, Giant Crab, Feral Ape, Raider, Armored Raider.
- Reused body families: human, quadruped_canine, quadruped, beetle, lizard, spider and crab.

## Validation

- `bash tools/check_godot.sh`: passed on 2026-09-28 on the task branch, including editor import/parse, main-scene startup and all 22 test scripts.
- User manual Godot play validation reported no issues before main integration.
- After PR #19 merged, the exact main merge commit `e79ddb1` was validated again with `bash tools/check_godot.sh`; editor parse/import, main-scene startup and all 22 project test scripts passed.
- Focused M024 coverage validates 1d4/1d8/2d6 determinism, ability modifier damage, proficiency separation, shared cost, Finesse, one-/two-hand capabilities, natural attacks, armor outcomes and coverage, all ten ActorDefinitions, combat RNG order and production matchups.
- M023 `side_swap_v1` smoke: 20 paired seeds (`24000..24019`) per matchup, 40 encounters each; all 120 encounters completed with zero simulation errors and zero stalls. See `docs/reviews/2026-09-28-m024-validation.md`.

## Explicitly deferred

Critical hits, natural-1/20 rules, extra physical subtypes, bleeding, poison, organs, severing, prosthetics, layered/durable armor, inventory/loot UI, random loadouts, ranged combat, multiattack, dual wielding, versatile weapons, alternate attack Actions, final Speed formula, scaling, final Threat Rating, encounter budgets and final balance tuning.

## Handoff risks

- The default Human attack changes from fixed 5/cost 1250 to Longsword 1d8 + STR/cost 1000; the versioned deterministic replay fixture intentionally changed.
- Prototype torso armor 100 was removed. Current defense comes only from Actor natural armor or equipped armor coverage.
- M024 smoke results show expected large prototype strength differences; these are not final balance conclusions.
- Manual Godot play validation was completed before integration and the user reported no issues. Detailed balance calibration remains separate work.
