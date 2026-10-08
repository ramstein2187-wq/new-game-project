class_name SocialIncidentCatalog
extends RefCounted

const PATH := "res://content/history/social_incidents_v1.json"
const CONTACT_PATH := "res://content/history/social_contacts_v1.json"
# Immutable authored content cache only; no generated facts or resolved cultures.
static var _shipping: Dictionary = {}
var revision: String
var content_id: String
var synthetic: bool = false
var _events: Dictionary = {}
var _families: Array = []
var _content: Dictionary

func _init(data: Dictionary = {}, content: Dictionary = {}) -> void:
	if _shipping.is_empty():
		_shipping = JSON.parse_string(FileAccess.get_file_as_string(PATH))
	var source: Dictionary = _shipping if data.is_empty() else data
	revision = source.revision
	_families = source.families.duplicate(true)
	_families.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	for row: Dictionary in source.events:
		_events[row.id] = row.duplicate(true)
	_content = content.duplicate(true) if not content.is_empty() else JSON.parse_string(FileAccess.get_file_as_string(CONTACT_PATH))
	for collection: Array in [_content.lineages, _content.contacts]:
		collection.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	content_id = _content.id
	synthetic = bool(_content.get("test_synthetic_only", false))
	assert(errors().is_empty(), str(errors()))

func definition(id: String) -> Dictionary:
	return _events.get(id, {}).duplicate(true)

func definitions() -> Array:
	var rows := _events.values().duplicate(true)
	rows.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	return rows

func families() -> Array:
	return _families.duplicate(true)

func gate_open(gate: String) -> bool:
	return gate == "none" or (gate == "lineages" and _content.lineages.size() >= 2) or (gate == "adapted_lineages" and not adapted_ids().is_empty()) or (gate == "contacts" and not _content.contacts.is_empty())

func content_reference(gate: String) -> String:
	return str(_content.contacts[0].id) if gate == "contacts" else str(_content.lineages[0].id) if gate == "lineages" else ""

func lineage_ids() -> Array:
	return _content.lineages.map(func(row: Dictionary) -> String: return row.id)

func adapted_ids() -> Array:
	return _content.lineages.filter(func(row: Dictionary) -> bool: return row.get("adaptation_authorized", false)).map(func(row: Dictionary) -> String: return row.id)

func content_ids(gate: String) -> Array:
	return lineage_ids() if gate == "lineages" else adapted_ids() if gate == "adapted_lineages" else []

func authorized(id: String, kind: String) -> bool:
	return (_content.lineages if kind == "lineage_contact" else _content.contacts).any(func(row: Dictionary) -> bool: return row.id == id)

func errors() -> Array[String]:
	var issues: Array[String] = []
	var families_seen := {}
	for row: Dictionary in _families:
		if families_seen.has(row.id) or int(row.weight) <= 0 or row.gate not in ["none", "lineages", "contacts"]:
			issues.append("Invalid social incident family")
		families_seen[row.id] = true
	for row: Dictionary in _events.values():
		if not families_seen.has(row.family) or row.role not in ["primary", "support", "followup"] or row.gate not in ["none", "lineages", "contacts", "adapted_lineages"] or row.narrative.is_empty():
			issues.append("Invalid social incident definition")
		if row.role != "support" and int(row.weight) <= 0:
			issues.append("Selectable incidents need positive weights")
		for record: Dictionary in row.records:
			if record.record_type not in ["capability", "institution", "cohort", "scar", "practice", "machine_contact", "bodily_change", "site_history", "lineage_contact", "personhood_contact"] or record.operation not in ["establish", "observe", "abolish"]:
				issues.append("Invalid authored social record")
	for row: Dictionary in _content.lineages:
		if row.get("origin") != "human_derived" or row.get("id", "").is_empty() or not row.get("author_approved", false):
			issues.append("Lineage must be explicitly approved and human-derived")
	for row: Dictionary in _content.contacts:
		if row.get("id", "").is_empty() or not row.get("author_approved", false) or not row.get("historical_contact", false):
			issues.append("Contact requires explicit historical authorization")
	return issues

static func record_errors(effect: Dictionary) -> Array[String]:
	var issues: Array[String] = []
	var fields := ["kind", "entity_id", "record_type", "record_id", "reference_id", "content_id", "operation"]
	for field in fields:
		if not effect.get(field) is String or (field != "content_id" and str(effect.get(field, "")).is_empty()):
			issues.append("Invalid social record field: " + field)
	for field in effect:
		if field not in fields:
			issues.append("Forbidden social record field: " + str(field))
	if effect.get("operation") not in ["establish", "observe", "abolish"]:
		issues.append("Unknown social record operation")
	return issues
