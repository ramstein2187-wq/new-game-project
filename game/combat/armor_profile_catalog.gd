class_name ArmorProfileCatalog
extends RefCounted

# Current physical profiles. Add new profiles here without changing combat resolution.
# Missing damage-type entries are neutral (x1.0), so future damage types do not
# require every existing armor profile to be rewritten immediately.
const SOFT: StringName = &"SOFT"
const MAIL: StringName = &"MAIL"
const RIGID: StringName = &"RIGID"

const PROFILE_MULTIPLIERS := {
	SOFT: {
		AttackDefinition.DAMAGE_PUNCTURE: 0.8,
		AttackDefinition.DAMAGE_BLUNT: 1.2,
	},
	MAIL: {
		AttackDefinition.DAMAGE_CUT: 1.2,
		AttackDefinition.DAMAGE_BLUNT: 0.8,
	},
	RIGID: {
		AttackDefinition.DAMAGE_CUT: 1.2,
		AttackDefinition.DAMAGE_PUNCTURE: 1.2,
		AttackDefinition.DAMAGE_BLUNT: 0.8,
	},
}

static func has_profile(profile_id: StringName) -> bool:
	return PROFILE_MULTIPLIERS.has(profile_id)

static func multiplier_for(profile_id: StringName, damage_type: StringName) -> float:
	if profile_id == &"":
		return 1.0
	var profile: Dictionary = PROFILE_MULTIPLIERS.get(profile_id, {})
	return float(profile.get(damage_type, 1.0))

static func is_valid() -> bool:
	for profile_id in PROFILE_MULTIPLIERS:
		if profile_id == &"":
			return false
		var multipliers: Dictionary = PROFILE_MULTIPLIERS[profile_id]
		for damage_type in multipliers:
			var value := float(multipliers[damage_type])
			if damage_type == &"" or not is_finite(value) or value <= 0.0:
				return false
	return true
