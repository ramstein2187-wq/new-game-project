class_name HistoryCivilizationContent
extends RefCounted
## Authored capabilities and boundaries; no prescribed sequence of event stages.

const VERSION := "phase_b_1"
class ProjectDefinition extends RefCounted:
	var kind: String
	var function: String
	var goal: String
	var cost: int
	var minimum_years: int
	func _init(k: String, f: String, g: String, c: int, years: int) -> void:
		kind = k; function = f; goal = g; cost = c; minimum_years = years

static func definitions() -> Array[ProjectDefinition]:
	return [ProjectDefinition.new("genome_archive", "archive", "preserve_samples_and_records", 3, 25),
		ProjectDefinition.new("deep_descent", "survey", "limited_entry_and_return", 4, 35),
		ProjectDefinition.new("ark", "launch", "construct_and_attempt_launch", 6, 55)]

static func project(kind: String) -> ProjectDefinition:
	for definition in definitions():
		if definition.kind == kind: return definition
	return null
