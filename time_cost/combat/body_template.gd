class_name BodyTemplate
extends Resource

@export var id: StringName = &"human"
@export var parts: Array[Dictionary] = []

static func create(quadruped: bool) -> BodyTemplate:
	return quadruped_canine() if quadruped else human()

static func human() -> BodyTemplate:
	var template := _new(&"human")
	template.parts.append(_part(&"torso", &"torso", "Torso", &"", 40, 45, []))
	template.parts.append(_part(&"head", &"head", "Head", &"torso", 20, 15, []))
	for side in ["left", "right"]:
		template.parts.append(_part(StringName(side + "_arm"), &"arm", side.capitalize() + " arm", &"torso", 20, 10, [&"weapon_manipulation"]))
	for side in ["left", "right"]:
		template.parts.append(_part(StringName(side + "_leg"), &"leg", side.capitalize() + " leg", &"torso", 25, 10, [&"locomotion"]))
	return template

static func quadruped_canine() -> BodyTemplate:
	return _quadruped(&"quadruped_canine", [&"bite"])

static func quadruped() -> BodyTemplate:
	return _quadruped(&"quadruped", [&"bite", &"tusk"])

static func beetle() -> BodyTemplate:
	var template := _new(&"beetle")
	template.parts.append(_part(&"thorax", &"torso", "Thorax", &"", 18, 35, []))
	template.parts.append(_part(&"head", &"head", "Head", &"thorax", 10, 15, [&"mandible"]))
	template.parts.append(_part(&"abdomen", &"abdomen", "Abdomen", &"thorax", 16, 20, []))
	for index in range(1, 7):
		template.parts.append(_part(StringName("leg_%d" % index), &"leg", "Leg %d" % index, &"thorax", 5, 5, [&"locomotion"]))
	return template

static func lizard() -> BodyTemplate:
	var template := _new(&"lizard")
	template.parts.append(_part(&"torso", &"torso", "Torso", &"", 18, 40, []))
	template.parts.append(_part(&"head", &"head", "Head", &"torso", 10, 15, [&"bite"]))
	for side in ["left", "right"]:
		template.parts.append(_part(StringName(side + "_foreleg"), &"leg", side.capitalize() + " foreleg", &"torso", 7, 10, [&"locomotion"]))
		template.parts.append(_part(StringName(side + "_hindleg"), &"leg", side.capitalize() + " hindleg", &"torso", 8, 10, [&"locomotion"]))
	template.parts.append(_part(&"tail", &"tail", "Tail", &"torso", 8, 5, []))
	return template

static func spider() -> BodyTemplate:
	var template := _new(&"spider")
	template.parts.append(_part(&"cephalothorax", &"torso", "Cephalothorax", &"", 12, 40, [&"bite"]))
	template.parts.append(_part(&"abdomen", &"abdomen", "Abdomen", &"cephalothorax", 12, 20, []))
	for index in range(1, 9):
		template.parts.append(_part(StringName("leg_%d" % index), &"leg", "Leg %d" % index, &"cephalothorax", 4, 5, [&"locomotion"]))
	return template

static func crab() -> BodyTemplate:
	var template := _new(&"crab")
	template.parts.append(_part(&"body", &"torso", "Body", &"", 22, 50, []))
	template.parts.append(_part(&"left_claw", &"claw", "Left claw", &"body", 12, 10, [&"claw"]))
	template.parts.append(_part(&"right_claw", &"claw", "Right claw", &"body", 12, 10, [&"claw"]))
	for index in range(1, 7):
		template.parts.append(_part(StringName("leg_%d" % index), &"leg", "Leg %d" % index, &"body", 6, 5, [&"locomotion"]))
	return template

static func _quadruped(template_id: StringName, head_functions: Array) -> BodyTemplate:
	var template := _new(template_id)
	template.parts.append(_part(&"torso", &"torso", "Torso", &"", 16, 45, []))
	template.parts.append(_part(&"head", &"head", "Head", &"torso", 8, 15, head_functions))
	for side in ["left", "right"]:
		template.parts.append(_part(StringName(side + "_foreleg"), &"leg", side.capitalize() + " foreleg", &"torso", 6, 10, [&"locomotion"]))
	for side in ["left", "right"]:
		template.parts.append(_part(StringName(side + "_hindleg"), &"leg", side.capitalize() + " hindleg", &"torso", 8, 10, [&"locomotion"]))
	template.parts.append(_part(&"tail", &"tail", "Tail", &"torso", 4, 0, []))
	return template

static func _new(template_id: StringName) -> BodyTemplate:
	var template := BodyTemplate.new()
	template.id = template_id
	return template

static func _part(part_id: StringName, type: StringName, label: String, parent: StringName, integrity: int, weight: int, functions: Array) -> Dictionary:
	return {"id": part_id, "type": type, "name": label, "parent": parent,
		"maximum": integrity, "weight": weight, "functions": functions,
		"armor": -1, "armor_id": &""}
