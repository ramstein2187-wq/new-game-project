class_name ArmorDefinition
extends Resource

@export var id: StringName
@export var display_name := ""
@export var armor := 0
@export var coverage: Array[StringName] = []


static func create(
	armor_id: StringName,
	label: String,
	value: int,
	covered_part_types: Array[StringName]
) -> ArmorDefinition:
	var definition := ArmorDefinition.new()
	definition.id = armor_id
	definition.display_name = label
	definition.armor = value
	definition.coverage = covered_part_types.duplicate()
	return definition


func is_valid() -> bool:
	return id != &"" and not display_name.is_empty() and armor >= 0 and not coverage.is_empty()
