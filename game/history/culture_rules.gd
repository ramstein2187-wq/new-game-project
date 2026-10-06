class_name CultureRules
extends RefCounted

const INTENSITIES := ["moderate", "hardline", "fanatic"]

# Same evaluator for traits, doctrines and reinforcement rules.
func evaluate(definition: Dictionary, evidence: Dictionary) -> Dictionary:
	var missing: Array = []
	var matched: Array = []
	var preferred: Array = []
	var forbidden: Array = []
	for tag in definition.get("requires_all", []):
		if evidence.has(tag):
			matched.append(tag)
		else:
			missing.append(tag)
	var any_found: Array = []
	for tag in definition.get("requires_any", []):
		if evidence.has(tag):
			any_found.append(tag)
			if tag not in matched:
				matched.append(tag)
	for tag in definition.get("prefers", []):
		if evidence.has(tag):
			preferred.append(tag)
	for tag in definition.get("forbids", []):
		if evidence.has(tag):
			forbidden.append(tag)
	var eligible: bool = missing.is_empty() and forbidden.is_empty() and (definition.get("requires_any", []).is_empty() or not any_found.is_empty())
	var support := matched.duplicate()
	for tag in preferred:
		if tag not in support:
			support.append(tag)
	return {"eligible": eligible, "missing_all": missing, "matched_required": matched, "matched_any": any_found,
		"matched_preferences": preferred, "matched_forbidden": forbidden,
		"weight": int(definition.get("base_weight", 1)) + 2 * preferred.size(), "support_tags": support}

func eligible(catalog: Array, evidence: Dictionary) -> Array[Dictionary]:
	var rows: Array[Dictionary] = []
	for definition: Dictionary in catalog:
		var evaluation := evaluate(definition, evidence)
		if evaluation.eligible:
			rows.append({"definition": definition, "evaluation": evaluation})
	rows.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.definition.id < b.definition.id)
	return rows

func intensity(definition: Dictionary, evidence: Dictionary, seed: int, faction_id: String) -> Dictionary:
	var level := "moderate"
	var support: Array = []
	for candidate: String in ["hardline", "fanatic"]:
		if candidate not in definition.allowed_intensities:
			continue
		var rule: Dictionary = definition.intensity_rules.get(candidate, {})
		if rule.is_empty():
			continue
		var evaluation := evaluate(rule, evidence)
		var source_ids := {}
		for tag in evaluation.matched_required:
			for record: Dictionary in evidence[tag]:
				for id in record.source_event_ids:
					source_ids[id] = true
		if not evaluation.eligible or evaluation.matched_required.size() < int(rule.get("min_tags", 1)) or source_ids.size() < int(rule.get("min_events", 1)):
			continue
		# Evidence determines the strongest justified level. No small final lottery.
		level = candidate
		support = evaluation.matched_required
	return {"level": level, "support_tags": support, "explanation": "A clear preference that generally tolerates disagreement or violation" if level == "moderate" else "Important social norm; restriction candidate requires consumer review" if level == "hardline" else "Core uncompromising identity norm; enforcement candidate requires consumer review"}

func conflicts(first: Dictionary, first_level: String, second: Dictionary, second_level: String) -> bool:
	return _conflicts_one(first, first_level, second.id, second_level) or _conflicts_one(second, second_level, first.id, first_level)

func _conflicts_one(first: Dictionary, level: String, other_id: String, other_level: String) -> bool:
	for conflict: Dictionary in first.get("conflicts", []):
		if conflict.id == other_id and INTENSITIES.find(level) >= INTENSITIES.find(conflict.min_intensity) and INTENSITIES.find(other_level) >= INTENSITIES.find(conflict.other_min_intensity):
			return true
	return false

func select(rows: Array[Dictionary], count: int, seed: int, faction_id: String, axis: String, evidence: Dictionary) -> Array[Dictionary]:
	var pool := rows.duplicate(true)
	var chosen: Array[Dictionary] = []
	var random := rng(seed, faction_id, axis + "/selection")
	while not pool.is_empty() and chosen.size() < count:
		var total := 0
		for row in pool:
			total += int(row.evaluation.weight)
		var roll := random.randi_range(0, total - 1)
		var picked := 0
		for i in range(pool.size()):
			roll -= int(pool[i].evaluation.weight)
			if roll < 0:
				picked = i
				break
		var row: Dictionary = pool.pop_at(picked)
		if axis == "doctrines":
			row["intensity"] = intensity(row.definition, evidence, seed, faction_id)
		var valid := true
		for previous in chosen:
			if axis == "doctrines" and conflicts(row.definition, row.intensity.level, previous.definition, previous.intensity.level):
				valid = false
			if axis == "traits" and not str(row.definition.get("family", "")).is_empty() and row.definition.family == previous.definition.get("family"):
				valid = false
		if valid:
			chosen.append(row)
	chosen.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.definition.id < b.definition.id)
	return chosen

func rng(seed: int, faction_id: String, axis: String) -> RandomNumberGenerator:
	var random := RandomNumberGenerator.new()
	random.seed = SeedDeriver.derive(seed, ["history", "3", "culture", "1", faction_id, axis])
	return random
