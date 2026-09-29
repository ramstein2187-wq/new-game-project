class_name ArmorDefinition
extends Resource

# Compatibility aliases for current built-in profiles. The valid profile set lives
# in ArmorProfileCatalog and can grow without changing ArmorDefinition.
const SOFT: StringName = ArmorProfileCatalog.SOFT
const MAIL: StringName = ArmorProfileCatalog.MAIL
const RIGID: StringName = ArmorProfileCatalog.RIGID

@export var profile: StringName = ArmorProfileCatalog.SOFT
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
	return id != &"" and not display_name.is_empty() and armor >= 0 and not coverage.is_empty() \
		and ArmorProfileCatalog.has_profile(profile)
