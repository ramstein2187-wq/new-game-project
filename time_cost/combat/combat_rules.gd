class_name CombatRules
extends RefCounted

# Reusable for combat and noncombat; no RNG or game dependencies.
static func check(d20: int, ability_mod: int, proficiency: int, situation: int, difficulty: int) -> Dictionary:
	var total := d20 + ability_mod + proficiency + situation
	return {"d20": d20, "ability_mod": ability_mod, "proficiency": proficiency,
		"situation": situation, "dv": difficulty, "total": total, "hit": total >= difficulty}

static func hit_probability(ability_mod: int, proficiency: int, situation: int, difficulty: int) -> float:
	return clampf((21 + ability_mod + proficiency + situation - difficulty) / 20.0, 0.0, 1.0)

static func armor_probabilities(armor: float, penetration: float) -> Dictionary:
	var effective := clampf(armor - penetration, 0, 200)
	var full := minf(effective / 2, 100)
	var partial := minf(effective / 2, 100 - full)
	return {"effective": effective, "full": full, "partial": partial, "bypass": 100 - full - partial}

# roll is [0,100), supplied only when the selected part wears armor.
static func armor_result(armor: float, penetration: float, roll: float, damage: int, damage_type: StringName) -> Dictionary:
	var probabilities := armor_probabilities(armor, penetration)
	var outcome := &"bypass"
	if roll < probabilities.full:
		outcome = &"full"
		damage = 0
	elif roll < probabilities.full + probabilities.partial:
		outcome = &"partial"
		damage = ceili(maxi(0, damage) / 2.0)
		if damage_type == &"Sharp":
			damage_type = &"Blunt"
	return {"effective": probabilities.effective, "armor_roll": roll, "armor_result": outcome,
		"damage": damage, "damage_type": damage_type}
