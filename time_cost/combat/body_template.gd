class_name BodyTemplate
extends Resource

@export var parts: Array[Dictionary] = []

static func create(quadruped: bool) -> BodyTemplate:
	var template := BodyTemplate.new()
	template.parts.append(_part(&"torso", &"torso", "Torso", &"", 16 if quadruped else 40, 45, [], true))
	template.parts.append(_part(&"head", &"head", "Head", &"torso", 8 if quadruped else 20, 15, [&"bite"] if quadruped else []))
	for side in ["left", "right"]:
		if quadruped:
			template.parts.append(_part(StringName(side + "_foreleg"), &"leg", side.capitalize() + " foreleg", &"torso", 6, 10, [&"locomotion"]))
		else:
			template.parts.append(_part(StringName(side + "_arm"), &"arm", side.capitalize() + " arm", &"torso", 20, 10, [&"weapon_manipulation"]))
	for side in ["left", "right"]:
		var suffix := "_hindleg" if quadruped else "_leg"
		template.parts.append(_part(StringName(side + suffix), &"leg", side.capitalize() + suffix.replace("_", " "), &"torso", 8 if quadruped else 25, 10, [&"locomotion"]))
	if quadruped:
		template.parts.append(_part(&"tail", &"tail", "Tail", &"torso", 4, 0, []))
	return template

static func _part(id: StringName, type: StringName, label: String, parent: StringName, integrity: int, weight: int, functions: Array, armored: bool = false) -> Dictionary:
	return {"id": id, "type": type, "name": label, "parent": parent, "maximum": integrity,
		"weight": weight, "functions": functions, "armor": 100 if armored else -1}
