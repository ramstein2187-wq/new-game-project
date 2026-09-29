class_name WeaponActionDefinition
extends Resource

# Sparse overrides, applied to the actor's base attack only for this execution.
@export var id: StringName
@export var display_name := ""
@export var cost_multiplier := 1.0
@export var damage_type_override: StringName = &""
@export var penetration_modifier := 0.0
@export var damage_modifier := 0
@export var situation_modifier := 0

static func create(action_id: StringName, label: String, multiplier: float,
		type: StringName = &"", pen: float = 0.0, damage: int = 0, situation: int = 0) -> WeaponActionDefinition:
	var action := WeaponActionDefinition.new()
	action.id = action_id
	action.display_name = label
	action.cost_multiplier = multiplier
	action.damage_type_override = type
	action.penetration_modifier = pen
	action.damage_modifier = damage
	action.situation_modifier = situation
	return action

func is_valid() -> bool:
	return id != &"" and not display_name.is_empty() and is_finite(cost_multiplier) and cost_multiplier > 0.0 \
		and is_finite(penetration_modifier) and (damage_type_override == &"" or AttackDefinition.is_physical_damage_type(damage_type_override))

func modified_attack(base: AttackDefinition) -> AttackDefinition:
	var attack: AttackDefinition = base.duplicate(true)
	attack.id = id
	attack.display_name = display_name
	if damage_type_override != &"":
		attack.damage_type = damage_type_override
	attack.penetration = maxf(0.0, base.penetration + penetration_modifier)
	return attack
