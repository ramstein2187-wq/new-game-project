class_name FactionCultureResolver
extends RefCounted

var _catalog: FactionCultureCatalog
var _rules := CultureRules.new()

func _init(catalog: FactionCultureCatalog = null) -> void:
	_catalog = catalog if catalog != null else FactionCultureCatalog.new()

func resolve(result: HistoryResult, faction_id: String) -> Dictionary:
	assert(result.present.active_factions.any(func(row: Dictionary) -> bool: return row.id == faction_id), "Culture requires a current faction")
	var identity := FactionIdentityResolver.new().resolve(result, faction_id)
	var evidence := CultureEvidence.new().build(result, faction_id, identity)
	return _profile(result.seed, faction_id, identity, evidence)

# Explicit test/authoring boundary, never called by ordinary HistoryGenerator.
# Source records in fixtures must be marked synthetic. Does not author Canon.
func resolve_fixture(seed: int, faction_id: String, evidence: Dictionary, identity: Dictionary = {}) -> Dictionary:
	for records: Array in evidence.values():
		assert(not records.is_empty())
		for record: Dictionary in records:
			assert(record.get("scope") == "synthetic", "Fixture evidence must be labelled synthetic")
	var profile := _profile(seed, faction_id, identity, evidence.duplicate(true))
	profile["synthetic"] = true
	return profile

func _profile(seed: int, faction_id: String, identity: Dictionary, evidence: Dictionary) -> Dictionary:
	var trait_pool := _rules.eligible(_catalog.traits(), evidence)
	var doctrine_pool := _rules.eligible(_catalog.doctrines(), evidence)
	var trait_target := _rules.rng(seed, faction_id, "traits/count").randi_range(2, 4)
	var roll := _rules.rng(seed, faction_id, "doctrines/count").randi_range(0, 99)
	var doctrine_target := 0 if roll < 20 else 1 if roll < 85 else 2
	var traits := _rules.select(trait_pool, trait_target, seed, faction_id, "traits", evidence)
	var doctrines := _rules.select(doctrine_pool, doctrine_target, seed, faction_id, "doctrines", evidence)
	var profile := {"faction_id": faction_id, "culture_revision": _catalog.revision,
		"identity_profile": identity.duplicate(true), "society_traits": [], "doctrines": [],
		"doctrine_intensities": {}, "value_tags": [], "taboo_tags": [], "desire_tags": [], "fear_tags": [], "tension_tags": [],
		"provenance": [], "evidence": evidence.duplicate(true),
		"eligible_traits": _ids(trait_pool), "eligible_doctrines": _ids(doctrine_pool),
		"selection_targets": {"society_traits": trait_target, "doctrines": doctrine_target}}
	for selected in traits:
		var row := _entry(selected, "society_trait", evidence, trait_target)
		profile.society_traits.append(row)
		profile.provenance.append(row.provenance.duplicate(true))
		_union(profile.value_tags, row.value_tags)
		_union(profile.tension_tags, row.tension_tags)
	for selected in doctrines:
		var row := _entry(selected, "doctrine", evidence, doctrine_target)
		profile.doctrines.append(row)
		profile.doctrine_intensities[row.id] = row.intensity.level
		profile.provenance.append(row.provenance.duplicate(true))
		for pair: Array in [["values", "value_tags"], ["taboos", "taboo_tags"], ["desires", "desire_tags"], ["fears", "fear_tags"]]:
			_union(profile[pair[1]], row[pair[0]])
	return profile

func _entry(selected: Dictionary, kind: String, evidence: Dictionary, target: int) -> Dictionary:
	var definition: Dictionary = selected.definition
	var row := {"id": definition.id, "display_name": definition.display_name, "category": definition.category}
	var support: Array = selected.evaluation.support_tags.duplicate()
	if kind == "doctrine":
		row["intensity"] = selected.intensity.duplicate(true)
		_union(support, selected.intensity.support_tags)
		for field in ["values", "taboos", "desires", "fears", "goal_candidates"]:
			row[field] = definition[field].duplicate(true)
	else:
		row["value_tags"] = definition.value_tags.duplicate()
		row["tension_tags"] = definition.tension_tags.duplicate()
	var sources := {}
	for tag in support:
		sources[tag] = evidence[tag].duplicate(true)
	row["provenance"] = {"kind": kind, "id": definition.id, "explanation": definition.explanation,
		"matched_required": selected.evaluation.matched_required.duplicate(),
		"matched_preferences": selected.evaluation.matched_preferences.duplicate(),
		"support": sources, "selection": {"weight": selected.evaluation.weight,
			"target": target, "method": "Evidence-gated weighted choice in independent culture namespace"}}
	return row

func errors(result: HistoryResult, faction_id: String, profile: Dictionary) -> Array[String]:
	var issues: Array[String] = []
	if result.generation_version != 3 or result.architecture_version != 2:
		return ["version: Culture requires generation3/architecture2"]
	if profile.get("faction_id") != faction_id or profile.has("synthetic"):
		issues.append("provenance: Wrong faction or synthetic profile in shipping query")
	var evidence := CultureEvidence.new().build(result, faction_id, FactionIdentityResolver.new().resolve(result, faction_id))
	var event_ids := {}
	for event in result.objective_timeline:
		event_ids[event.id] = true
	if profile.get("society_traits", []).size() not in [2, 3, 4] or profile.get("doctrines", []).size() > 2:
		issues.append("bounds: Invalid culture selection counts")
	for kind: String in ["society_trait", "doctrine"]:
		var seen := {}
		var collection: Array = profile.get("society_traits" if kind == "society_trait" else "doctrines", [])
		for row: Dictionary in collection:
			var definition := _catalog.definition(row.get("id", ""), kind)
			if definition.is_empty() or not _rules.evaluate(definition, evidence).eligible:
				issues.append("unsupported: " + str(row.get("id")))
			if seen.has(row.get("id")):
				issues.append("duplicate: " + str(row.get("id")))
			seen[row.get("id")] = true
			var provenance: Dictionary = row.get("provenance", {})
			if provenance.get("support", {}).is_empty():
				issues.append("provenance: Missing support")
			for tag in provenance.get("support", {}):
				if not evidence.has(tag) or evidence[tag] != provenance.support[tag]:
					issues.append("provenance: Unsupported evidence record")
				for record: Dictionary in provenance.support[tag]:
					if record.get("source_event_ids", []).is_empty():
						issues.append("provenance: No objective event")
					for id in record.get("source_event_ids", []):
						if not event_ids.has(id):
							issues.append("provenance: Missing objective event")
	var doctrines: Array = profile.get("doctrines", [])
	for i in range(doctrines.size()):
		var definition := _catalog.definition(doctrines[i].id, "doctrine")
		if definition.is_empty():
			continue
		if doctrines[i].get("intensity") != _rules.intensity(definition, evidence, result.seed, faction_id):
			issues.append("intensity: Unjustified intensity")
		for j in range(i + 1, doctrines.size()):
			var other := _catalog.definition(doctrines[j].id, "doctrine")
			if not other.is_empty() and _rules.conflicts(definition, doctrines[i].intensity.level, other, doctrines[j].intensity.level):
				issues.append("conflict: Incompatible doctrines")
	if profile != resolve(result, faction_id):
		issues.append("recomputation: Profile differs from authoritative query")
	return issues

func _ids(rows: Array[Dictionary]) -> Array:
	var ids: Array = []
	for row in rows:
		ids.append(row.definition.id)
	return ids

func _union(destination: Array, values: Array) -> void:
	for value in values:
		if value not in destination:
			destination.append(value)
	destination.sort()
