class_name CombatRules
extends RefCounted

# Armor profile balance is content data in ArmorProfileCatalog. Combat resolution
# only asks for a multiplier; unknown/omitted damage-type entries are neutral.
static func armor_profile_multiplier(profile: StringName, damage_type: StringName) -> float:
	return ArmorProfileCatalog.multiplier_for(profile, damage_type)

# Reusable for combat and noncombat; no RNG or game dependencies.
static func check(d20: int, ability_mod: int, proficiency: int, situation: int, difficulty: int) -> Dictionary:
	var total := d20 + ability_mod + proficiency + situation
	return {"d20": d20, "ability_mod": ability_mod, "proficiency": proficiency,
		"situation": situation, "dv": difficulty, "total": total, "hit": total >= difficulty}

static func hit_probability(ability_mod: int, proficiency: int, situation: int, difficulty: int) -> float:
	return clampf((21 + ability_mod + proficiency + situation - difficulty) / 20.0, 0.0, 1.0)


static func damage_total(rolls: Array, ability_modifier: int) -> int:
	var total := ability_modifier
	for roll in rolls:
		total += int(roll)
	return maxi(0, total)

static func armor_probabilities(armor: float, penetration: float) -> Dictionary:
	var effective := clampf(armor - penetration, 0, 200)
	var full := minf(effective / 2, 100)
	var partial := minf(effective / 2, 100 - full)
	return {"effective": effective, "full": full, "partial": partial, "bypass": 100 - full - partial}

# roll is [0,100), supplied only when the selected part wears armor.
static func armor_result(armor: float, penetration: float, roll: float, damage: int, damage_type: StringName, profile: StringName = &"") -> Dictionary:
	var multiplier := armor_profile_multiplier(profile, damage_type)
	var adjusted := roundi(armor * multiplier)
	var probabilities := armor_probabilities(adjusted, penetration)
	var outcome := &"bypass"
	if roll < probabilities.full:
		outcome = &"full"
		damage = 0
	elif roll < probabilities.full + probabilities.partial:
		outcome = &"partial"
		damage = ceili(maxi(0, damage) / 2.0)
		damage_type = AttackDefinition.DAMAGE_BLUNT
	return {"base_armor": armor, "armor_profile": profile, "profile_multiplier": multiplier,
		"profile_adjusted_armor": adjusted, "effective_armor": probabilities.effective, "effective": probabilities.effective, "armor_roll": roll, "armor_result": outcome,
		"damage": damage, "damage_type": damage_type}
