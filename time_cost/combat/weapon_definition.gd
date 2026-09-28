class_name WeaponDefinition
extends Resource

@export var id: StringName
@export var display_name := ""
@export var attack_definition: AttackDefinition
@export var required_hands := 1
@export var properties: Array[StringName] = []


static func create(
	weapon_id: StringName,
	label: String,
	attack: AttackDefinition,
	hands: int,
	weapon_properties: Array[StringName] = []
) -> WeaponDefinition:
	var weapon := WeaponDefinition.new()
	weapon.id = weapon_id
	weapon.display_name = label
	weapon.attack_definition = attack
	weapon.required_hands = hands
	weapon.properties = weapon_properties.duplicate()
	return weapon


func is_valid() -> bool:
	return id != &"" and not display_name.is_empty() and attack_definition != null \
		and attack_definition.is_valid() and required_hands > 0
