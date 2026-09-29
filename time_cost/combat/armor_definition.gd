class_name ArmorDefinition
extends Resource

const SOFT: StringName = &"SOFT"
const MAIL: StringName = &"MAIL"
const RIGID: StringName = &"RIGID"

@export_enum("SOFT", "MAIL", "RIGID") var profile: String = "SOFT"
@export var id: StringName
@export var display_name := ""
@export var armor := 0
@export var coverage: Array[StringName] = []


static func create(
	armor_id: StringName,
	label: String,
	value: int,
	covered_part_types: Array[StringName],
	armor_profile: StringName = SOFT
) -> ArmorDefinition:
	var definition := ArmorDefinition.new()
	definition.id = armor_id
	definition.display_name = label
	definition.armor = value
	definition.profile = armor_profile
	definition.coverage = covered_part_types.duplicate()
	return definition


func is_valid() -> bool:
	return id != &"" and not display_name.is_empty() and armor >= 0 and not coverage.is_empty() and is_valid_profile(profile)


static func is_valid_profile(value: StringName) -> bool:
	return value in [SOFT, MAIL, RIGID]
