class_name BodyInstance
extends RefCounted

var parts: Dictionary = {}
# Compatibility snapshot for UI/older fixtures. Resolution queries capability.
var attack_part: StringName = &""

func _init(template: BodyTemplate, preferred_capability: StringName = &"") -> void:
	for definition in template.parts:
		var part: Dictionary = definition.duplicate(true)
		part["current"] = part.maximum
		parts[part.id] = part
	if preferred_capability != &"":
		var candidates := functional_parts(preferred_capability, false)
		if not candidates.is_empty():
			attack_part = candidates[candidates.size() - 1]

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

func functional_parts(capability_id: StringName, functional_only: bool = true) -> Array[StringName]:
	var result: Array[StringName] = []
	for id: StringName in parts:
		if parts[id].functions.has(capability_id) and (not functional_only or efficiency(id) > 0):
			result.append(id)
	return result

func functional_count(capability_id: StringName) -> int:
	return functional_parts(capability_id).size()

func best_efficiency(capability_id: StringName) -> float:
	var best := 0.0
	for id in functional_parts(capability_id):
		best = maxf(best, efficiency(id))
	return best

func selected_functional_parts(capability_id: StringName, required_count: int = 1) -> Array[StringName]:
	var candidates := functional_parts(capability_id)
	candidates.sort_custom(func(a: StringName, b: StringName) -> bool:
		var a_efficiency := efficiency(a)
		var b_efficiency := efficiency(b)
		return a_efficiency > b_efficiency if not is_equal_approx(a_efficiency, b_efficiency) else String(a) < String(b)
	)
	if candidates.size() > required_count:
		candidates.resize(required_count)
	return candidates

func capability(capability_id: StringName) -> float:
	var candidates := functional_parts(capability_id, false)
	if candidates.is_empty():
		return 0.0
	var total := 0.0
	for id in candidates:
		total += efficiency(id)
	return total / candidates.size()

func attack_efficiency(capability_id: StringName, required_count: int = 1) -> float:
	var selected := selected_functional_parts(capability_id, required_count)
	if selected.size() < required_count:
		return 0.0
	var result := 1.0
	for id in selected:
		result = minf(result, efficiency(id))
	attack_part = selected[0]
	return result

func apply_natural_armor(value: int, profile: StringName = ArmorDefinition.SOFT) -> void:
	if value <= 0:
		return
	for part: Dictionary in parts.values():
		part.armor = value
		part.armor_id = &"natural_armor"
		part.armor_profile = profile

func equip_armor(definition: ArmorDefinition) -> void:
	if definition == null or not definition.is_valid():
		return
	for part: Dictionary in parts.values():
		if definition.coverage.has(part.type):
			part.armor = definition.armor
			part.armor_id = definition.id
			part.armor_profile = definition.profile

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

# Read-only expected raw armor using exactly select_part's nonnegative weights.
# Disabled parts are still hittable; -1 is the existing unarmored sentinel.
func average_armor_breakdown() -> Dictionary:
	var total_weight := 0.0
	for part: Dictionary in parts.values():
		total_weight += maxf(0.0, part.weight)
	var rows: Array[Dictionary] = []
	var average := 0.0
	for part: Dictionary in parts.values():
		var weight := maxf(0.0, part.weight)
		var probability := weight / total_weight if total_weight > 0.0 else 0.0
		var armor := maxf(0.0, part.armor)
		var contribution := probability * armor
		average += contribution
		rows.append({"id": part.id, "name": part.name, "weight": weight,
			"probability": probability, "armor": armor, "armor_id": part.get("armor_id", &""),
			"contribution": contribution})
	return {"value": average, "total_weight": total_weight, "parts": rows}

func apply_damage(id: StringName, amount: int) -> Dictionary:
	var before: int = parts[id].current
	var previous := state(id)
	parts[id].current = maxi(0, before - maxi(0, amount))
	return {"part_before": before, "part_after": parts[id].current,
		"state_before": previous, "state_after": state(id)}
