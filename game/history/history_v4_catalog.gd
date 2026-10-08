class_name HistoryV4Catalog
extends RefCounted

const PATH := "res://content/history/history_v4.json"
const SELECTIONS := ["lottery", "specialist_priority", "children_priority", "genome_only", "political_elite_capture", "religious_selection"]
const OUTCOMES := ["success", "partial_success", "abandonment", "unknown_outcome", "catastrophe"]
static var _shipping: Dictionary = {}
var data: Dictionary
var _definitions := {}

const REMOVED_IDS := HistoryV4Compatibility.REMOVED_V4_IDS

func _init(content: Dictionary = {}) -> void:
	if _shipping.is_empty():
		_shipping = JSON.parse_string(FileAccess.get_file_as_string(PATH))
	data = (content if not content.is_empty() else _shipping).duplicate(true)
	for row: Dictionary in data.events:
		_definitions[row.id] = row
	assert(errors().is_empty(), str(errors()))

func definition(id: String) -> Dictionary:
	return _definitions.get(id, {}).duplicate(true)

func project(id: String) -> Dictionary:
	for row: Dictionary in data.projects:
		if row.id == id:
			return row.duplicate(true)
	return {}

func scar(id:String)->Dictionary:
	for row:Dictionary in data.scars:
		if row.id==id:
			return row.duplicate(true)
	return {}

static func regression_reference(populations: SocialPopulationCatalog, incidents: SocialIncidentCatalog) -> String:
	for row: Dictionary in incidents._content.contacts:
		var template := populations.template(str(row.get("population_template_id", "")))
		if row.get("cognitive_regression_authorized",false) and not template.is_empty() and template.get("random_generation_allowed",false) and template.get("faction_membership_allowed",false):
			return row.id
	return ""

static func gate_open(gate: String, populations: SocialPopulationCatalog, incidents: SocialIncidentCatalog) -> bool:
	return not regression_reference(populations,incidents).is_empty() if gate == "regression_population" else incidents.gate_open(gate)

func sorted_rows(collection: String) -> Array:
	var rows: Array = data[collection].duplicate(true)
	rows.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	return rows

func errors() -> Array[String]:
	var issues: Array[String] = []
	var seen := {}
	for row: Dictionary in data.events:
		if seen.has(row.id) or row.narrative.is_empty() or row.domain not in ["human", "natural", "unknown", "preservator_intervention","observer_legacy"] or row.category not in ["phase", "scar", "pressure", "discovery"]:
			issues.append("Invalid v4 authored event: " + row.id)
		seen[row.id] = true
		for record: Dictionary in row.records:
			if record.target not in ["facility", "participant", "cohort"] or not record.facts is Dictionary:
				issues.append("Invalid v4 authored observation: " + row.id)
			for field:String in record.facts:
				var value: Variant = record.facts[field]
				if field in ["new_species","new_origin","new_lineage","confirmed_escape","deep_conquest","stable_deep_civilization","stable_orbital_civilization","outerworld_settlement","observer_equivalence","machine_civilization","boundary_conquest"] and value==true:
					issues.append("Forbidden authored boundary conquest/population fact: "+row.id)
				if field in ["machine_consciousness","one_consciousness","individual_survival","emergent_consciousness","same_person","supernatural_cause","external_intelligence"] and value!="unknown":
					issues.append("Unresolved Canon field cannot be answered: "+row.id)
	for row: Dictionary in data.projects:
		if row.stages.size() < 4 or row.outcomes.is_empty() or row.get("success_policy")!="bounded_technical_success" or row.id in REMOVED_IDS:
			issues.append("Project requires stages and outcomes")
		for chain: Array in [row.stages] + row.outcomes:
			for key: String in chain:
				if not _definitions.has(key):
					issues.append("Missing authored project stage: " + key)
	for row:Dictionary in data.scars:
		for variant:Dictionary in row.variants:
			if variant.stages.size()<3 or not _definitions.has(variant.stages[-1]) or definition(variant.stages[-1]).category!="scar":
				issues.append("Scar lacks its independent objective precursor/aftermath chain")
	return issues

# Runtime substitutions are bounded and independently validated. Names/prose
# cannot add facts. Selection never invents hereditary or clone populations.
func records(definition_row: Dictionary, participant: String, facility: String, cohort: String, project_id: String, substitutions: Dictionary) -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for authored: Dictionary in definition_row.records:
		var target: String = {"facility": facility, "participant": participant, "cohort": cohort}[authored.target]
		var facts: Dictionary = authored.facts.duplicate(true)
		for field: String in facts:
			if facts[field] is String and facts[field] == "variable":
				facts[field] = substitutions.get(field, "unknown")
			elif facts[field] is String and facts[field] == "participant":
				facts[field] = participant
		result.append({"kind": "history_record", "record_type": authored.record_type, "record_id": authored.record_id,
			"entity_id": participant, "reference_id": target, "project_id": project_id, "data": facts})
	return result

static func rng(seed: int, namespace_id: String) -> RandomNumberGenerator:
	var value := RandomNumberGenerator.new()
	value.seed = SeedDeriver.derive(seed, ["history", "v4", namespace_id])
	return value
