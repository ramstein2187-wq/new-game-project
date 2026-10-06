class_name FactionCultureCatalog
extends RefCounted

const PATH := "res://content/culture/faction_culture_v1.json"
var revision: String
var _traits: Array = []
var _doctrines: Array = []

func _init(content: Dictionary = {}) -> void:
	var data: Dictionary = content if not content.is_empty() else JSON.parse_string(FileAccess.get_file_as_string(PATH))
	revision = data.revision
	_traits = data.society_traits.duplicate(true)
	_doctrines = data.doctrines.duplicate(true)
	assert(errors().is_empty(), str(errors()))

func traits() -> Array:
	return _traits.duplicate(true)

func doctrines() -> Array:
	return _doctrines.duplicate(true)

func definition(id: String, kind: String) -> Dictionary:
	for row: Dictionary in (_traits if kind == "society_trait" else _doctrines):
		if row.id == id:
			return row.duplicate(true)
	return {}

func errors() -> Array[String]:
	var issues: Array[String] = []
	var doctrine_ids := {}
	for row: Dictionary in _doctrines:
		doctrine_ids[row.get("id", "")] = true
	for collection: Array in [_traits, _doctrines]:
		var ids := {}
		for row: Dictionary in collection:
			for field in ["id", "display_name", "category", "explanation"]:
				if not row.get(field) is String or row.get(field, "").is_empty():
					issues.append("Missing culture text field: " + field)
			if ids.has(row.get("id")):
				issues.append("Duplicate catalog ID")
			ids[row.get("id")] = true
			for field in ["requires_all", "requires_any", "prefers", "forbids"]:
				if not row.get(field) is Array:
					issues.append("Rule must use arrays: " + field)
				else:
					for tag in row[field]:
						if not tag is String or ":" not in tag:
							issues.append("Evidence tag must have a namespace")
			if row.get("requires_all", []).is_empty() and row.get("requires_any", []).is_empty():
				issues.append("Culture content must require evidence")
			if not (row.get("base_weight") is int or row.get("base_weight") is float) or row.get("base_weight", 0) <= 0 or int(row.get("base_weight", 0)) != row.get("base_weight"):
				issues.append("Weight must be a positive integer")
	for row: Dictionary in _traits:
		for field in ["value_tags", "tension_tags"]:
			_check_tags(row, field, issues)
	for row: Dictionary in _doctrines:
		for field in ["values", "taboos", "desires", "fears", "allowed_intensities", "conflicts", "goal_candidates"]:
			if not row.get(field) is Array:
				issues.append("Doctrine field must be an array: " + field)
		for field in ["values", "taboos", "desires", "fears"]:
			_check_tags(row, field, issues)
		if row.get("allowed_intensities", []).is_empty() or "custom" not in row.get("allowed_intensities", []):
			issues.append("Doctrine needs a custom intensity")
		for level in row.get("allowed_intensities", []):
			if level not in CultureRules.INTENSITIES:
				issues.append("Unknown intensity")
		for conflict: Dictionary in row.get("conflicts", []):
			if not doctrine_ids.has(conflict.get("id")) or conflict.get("id") == row.id or conflict.get("min_intensity") not in CultureRules.INTENSITIES or conflict.get("other_min_intensity") not in CultureRules.INTENSITIES:
				issues.append("Invalid conflict contract")
		for goal: Dictionary in row.get("goal_candidates", []):
			if not goal.get("id") is String or goal.get("id", "").is_empty() or goal.get("desire") not in row.desires:
				issues.append("Goal requires a doctrine desire")
		if not row.get("intensity_rules") is Dictionary:
			issues.append("Intensity rules required")
		else:
			for level in row.intensity_rules:
				var rule: Dictionary = row.intensity_rules[level]
				if level not in ["doctrine", "orthodoxy"] or level not in row.allowed_intensities:
					issues.append("Invalid reinforcement level")
				if rule.get("requires_all", []).is_empty() and rule.get("requires_any", []).is_empty():
					issues.append("Reinforcement requires evidence")
				if level == "orthodoxy" and (int(rule.get("min_tags", 0)) < 3 or int(rule.get("min_events", 0)) < 2):
					issues.append("Orthodoxy must require >=3 tags and >=2 objective events")
	return issues

func _check_tags(row: Dictionary, field: String, issues: Array[String]) -> void:
	if not row.get(field) is Array:
		issues.append("Semantic field must be an array: " + field)
		return
	var seen := {}
	for tag in row[field]:
		if not tag is String or tag.is_empty() or seen.has(tag):
			issues.append("Semantic tags must be unique nonempty strings")
		seen[tag] = true
