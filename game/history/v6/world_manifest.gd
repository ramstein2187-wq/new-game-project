class_name HistoryWorldManifest
extends RefCounted
## A pure projection and independent JSON consumer. Does not generate history/loot.
const SCHEMA := "history_world_manifest/1"
var payload: Dictionary = {}
var errors: Array[String] = []

static func build(result: HistoryEngine.Result) -> HistoryWorldManifest:
	var m := HistoryWorldManifest.new()
	var s := result.final_state; var b := s.civilization
	if b == null or not result.errors.is_empty(): m.errors.append("Manifest requires a valid Phase B result"); return m
	m.payload = {"schema": SCHEMA, "content_version": result.content_version, "seed": result.seed,
		"year": s.year, "canon": s.canon.duplicate(true), "localities": [], "facilities": [],
		"factions": [], "populations": [], "objects": [], "projects": [], "scars": [], "events": [],
		"relationships": s.relationships.duplicate(), "source_totals": s.source_totals.duplicate(),
		"source_origins": s.source_origins.duplicate(), "losses": b.losses.duplicate()}
	for id: String in HistoryWorldState.sorted_ids(b.localities):
		var l := b.localities[id]
		m.payload.localities.append({"id": id, "terrain": l.terrain, "neighbors": l.neighbors.duplicate(),
			"capacity": l.capacity, "hazard": l.hazard, "passage_open": l.passage_open,
			"population": b.headcount(s, id), "gatherable_materials": l.available_materials(s.year)})
	for id: String in HistoryWorldState.sorted_ids(b.facilities):
		var f := b.facilities[id]; var physical := s.sites[id]
		var assets: Array = []
		var quantities := [f.materials, f.equipment, f.records, f.samples, f.salvage, f.survey_records]
		for i in range(6):
			var asset_kind: String = ["materials", "equipment", "genomic_records", "samples", "inert_salvage", "survey_records"][i]
			var historical: bool = asset_kind in f.historical_assets or quantities[i] > 0
			assets.append({"kind": asset_kind,
				"historically_existed": historical, "possible_survival": quantities[i] > 0,
				"actual_quantity": quantities[i], "currently_usable": quantities[i] > 0 and b.physical_access(s, id) and b.localities[f.locality_id].hazard == 0})
		var provenance: Array[String] = []
		for prefix in ["facility", "site_owner", "site_condition"]:
			var event_id: String = s.fact_events.get(prefix + ":" + id, "")
			if not event_id.is_empty() and event_id not in provenance: provenance.append(event_id)
		m.payload.facilities.append({"id": id, "locality_id": f.locality_id, "kind": f.kind,
			"owner_id": physical.owner_id, "condition": physical.condition, "accessible": physical.accessible,
			"dependency": f.dependency, "hazard": b.localities[f.locality_id].hazard,
			"technology_observed": physical.technology_observed, "ancient_mechanism_understood": false,
			"ancient_mechanism_operable": false, "local_function": f.function,
			"known_techniques": ["structural_repair"] if f.ancient else ["local_construction", "structural_repair", f.function],
			"function_usable": b.usable(s, id) and b.localities[f.locality_id].hazard == 0,
			"historically_existed": true, "possible_survival": true, "structure_present": physical.condition != "ruined",
			"assets": assets, "provenance": provenance})
	for id: String in HistoryWorldState.sorted_ids(s.factions):
		var f := s.factions[id]
		m.payload.factions.append({"id": id, "active": f.active, "parent_id": f.parent_id,
			"predecessors": b.faction_predecessors.get(id, []).duplicate(), "founded_year": f.founded_year,
			"absorbed_contributors": b.faction_absorptions.get(id, []).duplicate(),
			"current_need": b.need(s, id) if f.active else "retired"})
	for id: String in HistoryWorldState.sorted_ids(s.populations):
		var p := s.populations[id]
		m.payload.populations.append({"id": id, "source_id": p.source_id, "origin": s.source_origins[p.source_id],
			"faction_id": p.faction_id, "locality_id": p.site_id, "size": p.size,
			"lineage": b.population_lineage[id].duplicate()})
	for id: String in HistoryWorldState.sorted_ids(s.artifacts):
		var a := s.artifacts[id]
		m.payload.objects.append({"id": id, "site_id": a.site_id, "owner_id": a.owner_id, "origin": a.origin,
			"historically_existed": true, "possible_survival": true, "actually_present": a.status == "held",
			"currently_usable": false, "status": a.status}) # Custody never proves an unknown device works.
	for id: String in HistoryWorldState.sorted_ids(b.projects):
		var p := b.projects[id]
		m.payload.projects.append({"id": id, "kind": p.kind, "initiator": p.initiator, "actor": p.actor,
			"site_id": p.site_id, "goal": p.goal, "status": p.status, "started": p.started, "changed": p.changed,
			"invested_materials": p.invested, "physical_attempt": p.attempted, "outcome": p.outcome,
			"blockers": b.blockers(s, p), "provenance": p.event_ids.duplicate()})
	for id: String in HistoryWorldState.sorted_ids(b.scars):
		var scar := b.scars[id]
		m.payload.scars.append({"id": id, "kind": scar.kind, "locality_id": scar.locality_id,
			"sites": scar.sites.duplicate(), "project_id": scar.project_id, "event_id": scar.event_id,
			"actual_residue": scar.residue, "hazard": scar.hazard, "recovered": scar.recovered,
			"later_events": scar.later_events.duplicate()})
	for event in result.log.events():
		m.payload.events.append({"id": event.id, "year": event.year, "rule_id": event.rule_id,
			"reason": event.reason, "cause_ids": event.cause_ids.duplicate(), "trigger_keys": event.trigger_keys.duplicate(),
			"association_ids": event.association_ids.duplicate()})
	m.errors = validate(m.payload)
	return m

func canonical() -> String: return JSON.stringify(payload, "", true)

static func from_json(json: String) -> HistoryWorldManifest:
	var m := HistoryWorldManifest.new()
	var parsed: Variant = JSON.parse_string(json)
	m.errors = validate(parsed)
	if parsed is Dictionary: m.payload = parsed.duplicate(true)
	return m

static func _strings(value: Variant) -> bool:
	if not value is Array: return false
	for item in value:
		if not item is String: return false
	return true

static func _shape(row: Variant, strings: Array, numbers: Array, booleans: Array, arrays: Array) -> bool:
	if not row is Dictionary or row.size() != strings.size() + numbers.size() + booleans.size() + arrays.size(): return false
	for field in strings:
		if not row.get(field) is String: return false
	for field in numbers:
		if not HistoryV6Event._integer(row.get(field)): return false
	for field in booleans:
		if not row.get(field) is bool: return false
	for field in arrays:
		if not _strings(row.get(field)): return false
	return true

static func validate(raw: Variant) -> Array[String]:
	var out: Array[String] = []
	if not raw is Dictionary or raw.size() != 17 or raw.get("schema") != SCHEMA or not raw.get("content_version") is String or not HistoryV6Event._integer(raw.get("seed")) or not HistoryV6Event._integer(raw.get("year")):
		return ["Invalid Manifest envelope"]
	# JSON converts enum dictionary keys to strings and integers to doubles.
	# Compare normalized values on both sides, without accepting changed Canon.
	if JSON.parse_string(JSON.stringify(raw.get("canon"), "", true)) != JSON.parse_string(JSON.stringify(CanonPolicy.snapshot(), "", true)): return ["Manifest Canon mismatch"]
	for field in ["localities", "facilities", "factions", "populations", "objects", "projects", "scars", "events"]:
		if not raw.get(field) is Array: return ["Manifest collection type: " + field]
	for field in ["relationships", "source_totals", "source_origins", "losses"]:
		if not raw.get(field) is Dictionary: return ["Manifest ledger type: " + field]
	var indexes := {"localities": {}, "facilities": {}, "factions": {}, "populations": {}, "objects": {}, "projects": {}, "scars": {}, "events": {}}
	var global_ids: Dictionary = {}
	for field: String in indexes:
		for row in raw[field]:
			if not row is Dictionary or not row.get("id") is String or row.id.is_empty() or global_ids.has(row.id): return ["Invalid/duplicate Manifest ID"]
			indexes[field][row.id] = row; global_ids[row.id] = true
	for l in raw.localities:
		if not _shape(l, ["id", "terrain"], ["capacity", "hazard", "population", "gatherable_materials"], ["passage_open"], ["neighbors"]): return ["Invalid locality shape"]
		if l.capacity <= 0 or l.hazard < 0 or l.population < 0 or l.terrain not in ["surface", "innerworld_entry"]: out.append("Invalid locality values")
		for n in l.neighbors:
			if not indexes.localities.has(n): out.append("Unknown neighbor")
	for f in raw.factions:
		if not _shape(f, ["id", "parent_id", "current_need"], ["founded_year"], ["active"], ["predecessors", "absorbed_contributors"]): return ["Invalid faction shape"]
		if not f.parent_id.is_empty() and not indexes.factions.has(f.parent_id): out.append("Unknown faction parent")
		for parent in f.predecessors:
			if not indexes.factions.has(parent): out.append("Unknown faction predecessor")
		for contributor in f.absorbed_contributors:
			if not indexes.factions.has(contributor) or contributor == f.id: out.append("Unknown/self absorbed contributor")
	var totals: Dictionary = {}; var residents: Dictionary = {}; var membership: Dictionary = {}
	for p in raw.populations:
		if not _shape(p, ["id", "source_id", "origin", "faction_id", "locality_id"], ["size"], [], ["lineage"]): return ["Invalid population shape"]
		if not indexes.factions.has(p.faction_id) or not indexes.localities.has(p.locality_id) or p.size <= 0 or p.origin != "human_derived": out.append("Invalid population references/origin")
		else:
			if not indexes.factions[p.faction_id].active: out.append("Population has retired membership")
		membership[p.faction_id] = membership.get(p.faction_id, 0) + p.size
		residents[p.locality_id] = residents.get(p.locality_id, 0) + p.size
		totals[p.source_id] = totals.get(p.source_id, 0) + p.size
	for f in raw.facilities:
		# Asset arrays have their own exact shape, so validate the remaining row separately.
		var small: Dictionary = f.duplicate() if f is Dictionary else {}
		var assets: Variant = small.get("assets"); small.erase("assets")
		if not _shape(small, ["id", "locality_id", "kind", "owner_id", "condition", "dependency", "technology_observed", "local_function"], ["hazard"], ["accessible", "ancient_mechanism_understood", "ancient_mechanism_operable", "function_usable", "historically_existed", "possible_survival", "structure_present"], ["provenance", "known_techniques"]) or not assets is Array or assets.size() != 6: return ["Invalid facility shape"]
		if not indexes.localities.has(f.locality_id) or (not f.owner_id.is_empty() and not indexes.factions.has(f.owner_id)) or (not f.dependency.is_empty() and not indexes.facilities.has(f.dependency)): out.append("Unknown facility reference")
		if f.condition not in ["intact", "damaged", "ruined"] or f.technology_observed not in ["unknown", "inert_remains"] or f.ancient_mechanism_understood or f.ancient_mechanism_operable: out.append("Invalid facility fact/technology")
		if f.function_usable and (not f.accessible or f.condition == "ruined" or f.hazard > 0): out.append("Impossible usable facility")
		if f.local_function not in ["shelter", "archive", "survey", "launch", "power", "salvage"] or f.structure_present != (f.condition != "ruined") or not f.historically_existed: out.append("Invalid current facility/function facts")
		if not f.owner_id.is_empty() and indexes.factions.has(f.owner_id) and not indexes.factions[f.owner_id].active: out.append("Facility owner retired")
		for technique in f.known_techniques:
			if technique not in ["structural_repair", "local_construction", "shelter", "archive", "survey", "launch", "power", "salvage"]: out.append("Unsupported known technique")
		if f.condition == "ruined" and f.accessible: out.append("Ruined facility accessible")
		for i in range(assets.size()):
			var a: Variant = assets[i]
			if not _shape(a, ["kind"], ["actual_quantity"], ["historically_existed", "possible_survival", "currently_usable"], []): return ["Invalid asset shape"]
			if a.actual_quantity < 0 or (a.currently_usable and (a.actual_quantity == 0 or not f.accessible or f.condition == "ruined" or f.hazard > 0)) or (a.actual_quantity > 0 and not a.historically_existed): out.append("Impossible current asset")
			if a.kind != ["materials", "equipment", "genomic_records", "samples", "inert_salvage", "survey_records"][i]: out.append("Unsupported or reordered asset kind")
		for event_id in f.provenance:
			if not indexes.events.has(event_id): out.append("Unknown facility provenance")
	for a in raw.objects:
		if not _shape(a, ["id", "site_id", "owner_id", "origin", "status"], [], ["historically_existed", "possible_survival", "actually_present", "currently_usable"], []): return ["Invalid object shape"]
		if not indexes.facilities.has(a.site_id) or a.origin != "unknown" or a.currently_usable or a.status not in ["held", "lost"] or a.actually_present != (a.status == "held"): out.append("Unsupported current object fact")
		if a.status == "held" and (not indexes.factions.has(a.owner_id) or not indexes.factions[a.owner_id].active): out.append("Invalid object custodian")
		if a.status == "lost" and not a.owner_id.is_empty(): out.append("Lost object has custodian")
	for p in raw.projects:
		if not _shape(p, ["id", "kind", "initiator", "actor", "site_id", "goal", "status", "outcome"], ["started", "changed", "invested_materials"], ["physical_attempt"], ["blockers", "provenance"]): return ["Invalid project shape"]
		if not indexes.facilities.has(p.site_id) or not indexes.factions.has(p.actor) or not indexes.factions.has(p.initiator) or p.kind not in ["genome_archive", "deep_descent", "ark"]: out.append("Unknown project reference")
		if p.kind == "ark" and p.outcome not in ["unresolved", "launch_failed", "launch_result_unknown", "abandoned"]: out.append("Manifest confirms forbidden escape")
		if p.status not in ["active", "paused", "completed", "failed", "abandoned", "unknown"] or p.started > p.changed or p.changed > raw.year or p.invested_materials < 0: out.append("Invalid project lifecycle")
		for eid in p.provenance:
			if not indexes.events.has(eid): out.append("Unknown project provenance")
	for scar in raw.scars:
		if not _shape(scar, ["id", "kind", "locality_id", "project_id", "event_id"], ["actual_residue", "hazard"], ["recovered"], ["sites", "later_events"]): return ["Invalid scar shape"]
		if not indexes.localities.has(scar.locality_id) or not indexes.events.has(scar.event_id) or scar.actual_residue < 0 or scar.hazard < 0 or scar.kind not in ["orbital_fall", "infrastructure_cascade", "failed_exodus"]: out.append("Invalid scar facts")
		if not scar.project_id.is_empty() and not indexes.projects.has(scar.project_id): out.append("Unknown scar project")
		for sid in scar.sites:
			if not indexes.facilities.has(sid): out.append("Unknown scar facility")
		for eid in scar.later_events:
			if not indexes.events.has(eid): out.append("Unknown recovery provenance")
	var previous := -1; var seen: Dictionary = {}
	for event in raw.events:
		if not _shape(event, ["id", "rule_id", "reason"], ["year"], [], ["cause_ids", "trigger_keys", "association_ids"]): return ["Invalid event shape"]
		if event.year <= previous or event.year > raw.year: out.append("Manifest event time")
		for associated in event.association_ids:
			if not indexes.projects.has(associated): out.append("Unknown event association")
		for cause in event.cause_ids:
			if not seen.has(cause): out.append("Future/unknown cause")
		previous = event.year; seen[event.id] = true
	# Resolve physical dependencies only after all facility shapes have been validated.
	for f in raw.facilities:
		var chain: Array[String] = [f.id]
		var parent: String = f.dependency
		while not parent.is_empty() and indexes.facilities.has(parent):
			if parent in chain: out.append("Cyclic Manifest dependency"); break
			chain.append(parent); parent = indexes.facilities[parent].dependency
		if f.kind == "unknown_remains" and f.local_function not in ["shelter", "salvage"]: out.append("Unknown ancient mechanism granted a new function")
		if f.function_usable and f.local_function in ["power", "launch"] and f.assets[1].actual_quantity == 0: out.append("Function has no actual equipment")
		if f.function_usable and f.local_function == "survey" and indexes.localities.has(f.locality_id) and not indexes.localities[f.locality_id].passage_open: out.append("Survey function has closed entry")
		if not f.dependency.is_empty() and indexes.facilities.has(f.dependency) and f.function_usable:
			var upstream: Dictionary = indexes.facilities[f.dependency]
			if upstream.condition == "ruined" or not upstream.accessible or upstream.assets[1].actual_quantity == 0 or upstream.local_function != "power": out.append("Usable facility has failed dependency")
	for l in raw.localities:
		for neighbor in l.neighbors:
			if indexes.localities.has(neighbor) and l.id not in indexes.localities[neighbor].neighbors: out.append("Asymmetric geographic edge")
	for f in raw.factions:
		if f.active != (membership.get(f.id, 0) > 0): out.append("Manifest faction lifecycle")
	for l in raw.localities:
		if l.population != residents.get(l.id, 0): out.append("Manifest local population mismatch")
	for source: Variant in raw.source_totals:
		if not source is String or not HistoryV6Event._integer(raw.source_totals[source]) or not HistoryV6Event._integer(raw.losses.get(source)) or raw.losses[source] < 0 or raw.source_origins.get(source) != "human_derived": return ["Manifest source ledger shape"]
		totals[source] = totals.get(source, 0) + raw.losses[source]
	if totals != raw.source_totals or raw.losses.size() != raw.source_totals.size() or raw.source_origins.size() != raw.source_totals.size(): out.append("Manifest population conservation")
	for key: Variant in raw.relationships:
		if not key is String: return ["Relationship key type"]
		var pair: PackedStringArray = key.split("|")
		if pair.size() != 2 or not indexes.factions.has(pair[0]) or not indexes.factions.has(pair[1]) or not HistoryV6Event._integer(raw.relationships[key]) or raw.relationships[key] < -1 or raw.relationships[key] > 1: out.append("Invalid Manifest relationship")
	return out
