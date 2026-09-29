class_name WeaponDefinition
extends Resource

@export var id: StringName
@export var display_name := ""
@export var attack_definition: AttackDefinition
@export var required_hands := 1
@export var actions: Array[WeaponActionDefinition] = []
@export var properties: Array[StringName] = []


static func create(
	weapon_id: StringName,
	label: String,
	attack: AttackDefinition,
	hands: int,
	weapon_properties: Array[StringName] = [],
	weapon_actions: Array[WeaponActionDefinition] = []
) -> WeaponDefinition:
	var weapon := WeaponDefinition.new()
	weapon.id = weapon_id
	weapon.display_name = label
	weapon.attack_definition = attack
	weapon.required_hands = hands
	weapon.properties = weapon_properties.duplicate()
	weapon.actions = weapon_actions.duplicate()
	return weapon


func is_valid() -> bool:
	if id == &"" or display_name.is_empty() or attack_definition == null or not attack_definition.is_valid() or required_hands <= 0:
		return false
	# Authoring mismatch is invalid; runtime requirements still derive from hands.
	if attack_definition.required_capability != &"weapon_manipulation" or attack_definition.required_capability_count != required_hands:
		return false
	var ids: Array[StringName] = []
	for action in actions:
		if action == null or not action.is_valid() or ids.has(action.id) or action.id == attack_definition.id:
			return false
		ids.append(action.id)
	return true

func get_action(action_id: StringName) -> WeaponActionDefinition:
	for action in actions:
		if action != null and action.id == action_id:
			return action
	return null
