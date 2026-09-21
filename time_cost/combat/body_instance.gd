class_name BodyInstance
extends RefCounted

var parts: Dictionary = {}
var attack_part: StringName = &""

func _init(template: BodyTemplate, attack_capability: StringName) -> void:
	for definition in template.parts:
		var part: Dictionary = definition.duplicate(true)
		part["current"] = part.maximum
		parts[part.id] = part
		if part.functions.has(attack_capability):
			attack_part = part.id

func state(id: StringName) -> StringName:
	if not parts.has(id) or parts[id].current <= 0:
		return &"disabled"
	return &"damaged" if parts[id].current <= parts[id].maximum * 0.5 else &"healthy"

func efficiency(id: StringName) -> float:
	var cursor := id
	var visited: Array[StringName] = []
	while cursor != &"":
		if visited.has(cursor) or not parts.has(cursor) or parts[cursor].current <= 0:
			return 0.0
		visited.append(cursor)
		cursor = parts[cursor].parent
	return 0.5 if state(id) == &"damaged" else 1.0

func capability(capability_id: StringName) -> float:
	var count := 0
	var total := 0.0
	for id: StringName in parts:
		if parts[id].functions.has(capability_id):
			count += 1
			total += efficiency(id)
	return total / count if count > 0 else 0.0

func attack_efficiency(capability_id: StringName) -> float:
	if not parts.has(attack_part) or not parts[attack_part].functions.has(capability_id):
		return 0.0
	return efficiency(attack_part)

# Disabled parts remain physically present and hittable; zero-weight parts do not.
func select_part(unit_roll: float) -> StringName:
	var total := 0.0
	for part: Dictionary in parts.values():
		total += maxf(0, part.weight)
	if total <= 0:
		return &""
	var threshold := clampf(unit_roll, 0.0, 0.999999999) * total
	for id: StringName in parts:
		threshold -= maxf(0, parts[id].weight)
		if threshold < 0:
			return id
	return &""

func apply_damage(id: StringName, amount: int) -> Dictionary:
	var before: int = parts[id].current
	var previous := state(id)
	parts[id].current = maxi(0, before - maxi(0, amount))
	return {"part_before": before, "part_after": parts[id].current,
		"state_before": previous, "state_after": state(id)}
