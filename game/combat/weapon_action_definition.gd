class_name WeaponActionDefinition
extends Resource

# Sparse overrides, applied to the actor's base attack only for this execution.
@export var id: StringName
@export var display_name := ""
@export var cost_percent := 0.0
@export var damage_type_override: StringName = &""
@export var ability_rule_override: StringName = &""
@export var penetration_modifier := 0.0
@export var damage_modifier := 0
@export var situation_modifier := 0

static func create(action_id: StringName, label: String, percent: float,
		type: StringName = &"", pen: float = 0.0, damage: int = 0, situation: int = 0,
		ability: StringName = &"") -> WeaponActionDefinition:
	var action := WeaponActionDefinition.new()
	action.id = action_id
	action.display_name = label
	action.cost_percent = percent
	action.damage_type_override = type
	action.ability_rule_override = ability
	action.penetration_modifier = pen
	action.damage_modifier = damage
	action.situation_modifier = situation
	return action

func is_valid() -> bool:
	return id != &"" and not display_name.is_empty() and is_finite(cost_percent) \
		and is_finite(penetration_modifier) and (damage_type_override == &"" or AttackDefinition.is_physical_damage_type(damage_type_override)) \
		and (ability_rule_override == &"" or AttackDefinition.is_valid_ability_rule(ability_rule_override))

func modified_attack(base: AttackDefinition) -> AttackDefinition:
	var attack: AttackDefinition = base.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	attack.id = id
	attack.display_name = display_name
	if damage_type_override != &"":
		attack.damage_type = damage_type_override
	if ability_rule_override != &"":
		attack.ability_rule = ability_rule_override
	attack.penetration = maxf(0.0, base.penetration + penetration_modifier)
	return attack
