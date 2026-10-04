class_name GeneratedName
extends Resource

@export var naming_version: int = 1
@export var culture_id: String = ""
@export var name_type: String = ""
@export var template_id: String = ""
# slot ID -> {kind: "phonetic"/"semantic", tokens: Array[String]}
#         or {kind: "number", value: int}. Never stores display strings.
@export var components: Dictionary = {}

func to_dict() -> Dictionary:
	return {
		"naming_version": naming_version, "culture_id": culture_id,
		"name_type": name_type, "template_id": template_id,
		"components": components.duplicate(true),
	}

func canonical_key() -> String:
	return JSON.stringify(to_dict(), "", true)

# Structural restore only. NameRenderer.validation_errors checks content contracts.
static func from_dict(data: Dictionary) -> GeneratedName:
	if data.size() != 5 or not data.get("culture_id") is String or not data.get("name_type") is String or not data.get("template_id") is String or not data.get("components") is Dictionary:
		return null
	var version: Variant = data.get("naming_version")
	if not _valid_integer(version):
		return null
	var result := GeneratedName.new()
	result.naming_version = int(version)
	result.culture_id = data.culture_id
	result.name_type = data.name_type
	result.template_id = data.template_id
	result.components = data.components.duplicate(true)
	for component in result.components.values():
		if not component is Dictionary:
			return null
		if component.get("kind") == "number":
			if not _valid_integer(component.get("value")):
				return null
			component.value = int(component.value)
	return result

static func _valid_integer(value: Variant) -> bool:
	if value is int:
		return value >= 0 and value <= 2147483646
	return value is float and is_finite(value) and value >= 0 and value <= 2147483646 and value == floor(value)
