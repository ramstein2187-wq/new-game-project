# Physical combat, weapon actions and functional hands

Status: Implemented on `codex/m027-physical-combat-weapon-actions`, based on main e232b28. Main integration is separate.

## Damage and defense

`AttackDefinition` owns StringName constants Cut, Puncture and Blunt. Types do not create status effects. Existing dice, penetration and base armor values are preserved.

Each armor has one value, coverage and SOFT/MAIL/RIGID profile. The only runtime balance table is `CombatRules.ARMOR_PROFILE_MODIFIERS`:

| Profile | Cut | Puncture | Blunt |
| --- | ---: | ---: | ---: |
| SOFT | 0 | -10 | +10 |
| MAIL | +20 | 0 | -20 |
| RIGID | +20 | +10 | -10 |

`effective = clamp(base armor + profile modifier - penetration, 0, 200)`.
Full chance is `min(effective / 2, 100)`; partial chance is `min(effective / 2, 100 - full)`; bypass is the remainder. Full damage is zero. Partial damage rounds up after halving and the final type is Blunt for all three physical inputs. Bypass preserves damage/type. Profiles apply only to a covering armor layer; a legacy/debug body part without a profile is neutral.

Gambeson/Leather Vest use SOFT; Chain Shirt MAIL; Scrap Plate/Iron Helmet RIGID. Beetle, spider and crab exoskeletons use RIGID; other natural armor uses SOFT (including cave-lizard hide). Natural armor zero creates no armor layer. `ActorDefinition -> BodyInstance.apply_natural_armor()` carries value/profile together. Equipment still replaces the layer on its covered parts; armor layering is not introduced.

RNG contract remains D20, then on hit location, damage dice, and armor roll only for a present layer. Profile lookup and Weapon Action modifiers consume no random values.

## Weapon Actions and time

Basic attacks always use `AttackAction.BASE_COST = 1000`. Special cost is `max(1, roundi(BASE_COST * cost_multiplier))`, centralized in AttackAction. The positive floor prevents a positive fractional multiplier from producing a free action; current content yields 750/1250/1500/1750 exactly. No weapon speed or Actor speed system is added.

`WeaponActionDefinition` owns ID/name, multiplier, optional damage type, penetration modifier, flat damage modifier and situation modifier. An execution makes a temporary deep copy of the actor's base attack and applies sparse modifiers; no copied full attacks are stored as content. Flat damage is added before the existing zero clamp and armor. No hand override is offered.

| Weapon | Hands | Basic | Special | Cost | Change from basic |
| --- | ---: | --- | --- | ---: | --- |
| Hunting Knife | 1 | 1d4 Cut, Pen 20 | Quick Stab | 750 | Puncture, damage -1 |
| Handaxe | 1 | 1d6 Cut, Pen 20 | None | 1000 basic | Basic only |
| Longsword | 1 | 1d8 Cut, Pen 30 | Thrust | 1250 | Puncture, penetration +10 |
| Warhammer | 1 | 1d8 Blunt, Pen 40 | Crushing Blow | 1500 | Penetration +20 |
| Maul | 2 | 2d6 Blunt, Pen 50 | Overhead Smash | 1750 | Penetration +20 |

Damage retains the existing ability modifier. Quick Stab's single -1 tradeoff prevents strict domination of basic slash; Maul gets penetration only, without another die or hand-derived damage bonus. These are prototype choices, not calibrated optimal choices against every profile.

Actors own deep copies of weapon/action/attack resources. Any Actor can execute `AttackAction(target, weapon_action_id)` through `perform_action`; IDs not offered by its current weapon are rejected before cost/RNG/events. AI still chooses basic attacks. Future M026 AI integration should use `available_weapon_actions()` and the same Action path without duplicating armor or hand rules.

## Hands are use conditions

`WeaponDefinition.required_hands` is authoritative. Authoring validation rejects nonpositive counts or a base attack whose capability is not weapon_manipulation or whose count disagrees. Runtime Actor capability/count accessors derive weapon use directly from required_hands. Natural attacks use their own AttackDefinition capability/count.

BodyInstance selects the required best functional parts and uses their minimum efficiency. Healthy plus damaged arms give Maul 0.5 and the existing -2 situation penalty; one disabled arm makes Maul unavailable but preserves a one-handed attack. Both disabled arms prevent all current human weapon attacks. Parent-disabled parts remain nonfunctional under existing body rules.

Positive counts above two are supported: BodyInstance is capability-based and can select three or more limbs. The test suite includes a synthetic three-manipulator body. Current human weapon content uses only 1 or 2.

This implements Can Use, not Can Equip. An injured Actor keeps its equipped weapon. Rejected actions consume no time/RNG/events. Normal feedback names the weapon and missing functional limbs; F3/hover shows requirement, available count and efficiency.

## Deferred boundaries

No versatile stance, dual wielding, shield, offhand attack, swapping cost, hand-slot UI, grip strength, automatic two-hand damage bonus, speed/weight/durability/layering, targeted body part, lunge/knockback or critical systems. No bleeding/fracture/stun or nonphysical damage. Future status effects and nonphysical types require independent design; no automatic effect derives from a physical type. Tactical special-action selection and Threat Rating recalibration remain separate follow-ups.
