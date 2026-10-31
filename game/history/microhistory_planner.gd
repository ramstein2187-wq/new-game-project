class_name MicrohistoryPlanner
extends RefCounted
## Local objective records; never writes Manifest, EventLog, population or Scar.
const REVISION := "microhistory/1"
static var catalog: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://content/history/microhistory_v7.json"))
const AGES := ["recent", "weathered", "old", "ancient"]

static func rng(seed: int, region: String, parts: Array) -> RandomNumberGenerator:
	var r := RandomNumberGenerator.new()
	var namespace_parts: Array[String] = [REVISION, region]
	for part in parts: namespace_parts.append(str(part))
	r.seed = SeedDeriver.derive(seed, namespace_parts)
	return r

static func contexts(manifest: Dictionary, zone: Dictionary) -> Dictionary:
	var sites: Array = zone.facilities.values().duplicate()
	sites.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	var ruined := sites.any(func(f: Dictionary) -> bool: return f.condition == "ruined")
	var environment := "ruins" if ruined else ("settlement" if zone.locality.population > 0 and zone.locality.hazard == 0 else "road")
	if zone.locality.hazard >= 2: environment = "danger"
	return {"region_id": zone.id, "year": int(manifest.year), "terrain": zone.locality.terrain,
		"population": zone.locality.population, "hazard": zone.locality.hazard, "environment": environment,
		"sites": sites, "wet": zone.locality.terrain in ["wetland", "river", "coast", "marsh"] or "~" in "".join(zone.rows)}

static func site_for(d: Dictionary, c: Dictionary) -> Dictionary:
	for f: Dictionary in c.sites:
		if d.context == "shelter" and f.local_function == "shelter": return f
		if d.context == "workshop" and "local_construction" in f.known_techniques: return f
		if d.context == "archive" and f.local_function == "archive": return f
		if d.context == "ruin" and f.condition == "ruined": return f
	return {}

static func eligible(d: Dictionary, c: Dictionary) -> bool:
	match d.context:
		"any", "road": return true # Ordinary foot travel; transport row explicitly owns a handcart.
		"settled": return c.population > 0
		"wet": return c.wet
		"danger": return c.hazard > 0
		_: return not site_for(d, c).is_empty()

static func generate(manifest: Dictionary, zone: Dictionary, definitions: Array = []) -> Array:
	var seed := int(manifest.seed); var c := contexts(manifest, zone)
	var defs: Array = (catalog.definitions if definitions.is_empty() else definitions).duplicate(true)
	defs.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.id < b.id)
	var result: Array = []; var used := {}
	var count := rng(seed, zone.id, ["density"]).randi_range(4, 7)
	var weights: Dictionary = catalog.category_weights.duplicate()
	var severe_multiplier: float = {"settlement": 0.36, "road": 0.65, "ruins": 1.4, "danger": 2.2}[c.environment]
	weights.tragedy *= severe_multiplier; weights.horror *= severe_multiplier
	for slot in range(count):
		var legal := defs.filter(func(d: Dictionary) -> bool: return not used.has(d.id) and eligible(d, c))
		if legal.is_empty(): break
		var categories: Array = weights.keys(); categories.sort()
		categories = categories.filter(func(k: String) -> bool: return legal.any(func(d: Dictionary) -> bool: return d.category == k))
		var total := 0.0
		for k in categories: total += float(weights[k])
		var draw := rng(seed, zone.id, [slot, "category"]).randf() * total
		var category: String = categories.back()
		for k in categories:
			draw -= float(weights[k])
			if draw <= 0: category = k; break
		legal = legal.filter(func(d: Dictionary) -> bool: return d.category == category)
		var d: Dictionary = legal[rng(seed, zone.id, [slot, "archetype"]).randi_range(0, legal.size() - 1)]
		used[d.id] = true
		var outcome: Dictionary = d.outcomes[rng(seed, zone.id, [slot, d.id, "outcome"]).randi_range(0, d.outcomes.size() - 1)]
		var site := site_for(d, c)
		# A current facility only supports incidents after its last recorded change.
		var earliest := 0
		if not site.is_empty():
			for e in manifest.events:
				if e.id in site.provenance: earliest = maxi(earliest, int(e.year))
		var max_age := maxi(0, c.year - earliest)
		var age_rng := rng(seed, zone.id, [slot, "age"])
		var band := age_rng.randi_range(0, 3)
		var minimum: int = [0, 1, 11, 61][band]
		var maximum: int = [0, 10, 60, maxi(61, max_age)][band]
		var age := mini(max_age, age_rng.randi_range(minimum, maximum))
		band = 0 if age == 0 else (1 if age <= 10 else (2 if age <= 60 else 3))
		var facts: Array = outcome.facts.duplicate()
		var incident := {"id": "%s:%s:%d" % [REVISION, zone.id, slot], "revision": REVISION,
			"region_id": zone.id, "definition_id": d.id, "family": d.family, "category": category,
			"severity": outcome.severity,
			"context": {"environment": c.environment, "terrain": c.terrain, "facility_id": site.get("id", ""), "hazard": c.hazard},
			"actor": {"id": "%s:visitor:%d" % [zone.id, slot], "kind": d.actor_kind, "origin": "human_derived" if d.actor_kind == "human_visitors" else "planetary", "current_presence": false},
			"intent": d.intent, "incident_code": d.id, "outcome_id": outcome.id, "facts": facts,
			"started_year": c.year - age, "outcome_year": c.year - age, "observed_year": c.year,
			"age": age, "age_band": AGES[band], "layout": d.layout, "evidence": [],
			"association": {"facility_id": site.get("id", ""), "event_ids": site.get("provenance", []).duplicate(), "relation": "coexistence"},
			"unknown": ["personal_identity", "ultimate_motive"], "interpretations": [], "visibility": 0.0}
		if outcome.missing_person: incident.unknown.append("missing_person_fate")
		incident["participants"] = [incident.actor.id]
		incident["control_relationship"] = {}
		if "control" in facts:
			incident.participants.append(incident.actor.id + ":captive")
			incident.control_relationship = {"controller": incident.actor.id, "captive": incident.actor.id + ":captive", "coercive": true}
		incident["dead_participants"] = [incident.participants.back()] if "death" in facts else []
		incident["body_status"] = outcome.get("body_status", "buried" if "burial" in facts else ("at_scene" if "death" in facts else "no_death"))
		incident["transport"] = "handcart" if "transport" in facts else "none"
		incident["technique"] = "manual_tools" # No autonomous/ancient operation is inferred.
		incident["v5_material_archetype"] = catalog.v5_reuse.get(d.id, "") # Vocabulary, never a fabricated Trace instance.
		for kind: String in outcome.evidence:
			var material: String = catalog.evidence[kind].material
			var survival := 1.0
			var sheltered: bool = d.layout == "room" and "blocked" in facts
			if band > 0:
				survival = [1.0, 0.78, 0.45, 0.18][band] if material in ["wood", "cloth", "paper", "plant", "soil"] else [1.0, 0.98, 0.86, 0.65][band]
				if c.wet and material in ["wood", "cloth", "paper", "bone"]: survival *= 0.6
				if c.environment == "settlement": survival *= 0.7 # clearing and reuse
			# Fragile traces have hard expiry; probability never preserves fresh tracks for centuries.
			if kind in ["tracks", "loop_tracks", "scuff"] and age > 1: survival = 0.0
			if material == "plant" and age > 3: survival = 0.0
			if material == "paper" and age > 60 and not sheltered: survival = 0.0
			if material in ["wood", "cloth"] and age > 60:
				survival *= 0.15 if not sheltered else 1.5
			if rng(seed, zone.id, [slot, kind, "preservation"]).randf() > survival: continue
			# Recent spring tension is confirmed; an old trap does not magically still work.
			var active := kind == "snare" and band == 0
			var verb: String = catalog.evidence[kind].verb
			if kind == "snare" and not active: verb = "inspect"
			incident.evidence.append({"id": incident.id + ":" + kind, "kind": kind, "material": material,
				"condition": "fresh" if band == 0 else "weathered" if band == 1 else "fragmentary",
				"sheltered": sheltered,
				"verb": verb, "active": active, "quantity": 1 if verb == "recover" else 0})
		incident.visibility = float(incident.evidence.size()) / outcome.evidence.size()
		result.append(incident)
	return result

## v5 consumer adapter: reuse material vocabulary only for genuine supplied Trace IDs.
## No fabricated v5 IDs, no assertion changes and no current-operation inference.
static func compatible_traces(incident: Dictionary, traces: Array) -> Array:
	var archetype: String = catalog.v5_reuse.get(incident.definition_id, "")
	if archetype.is_empty(): return []
	return traces.filter(func(t: Dictionary) -> bool: return t.get("archetype_id") == archetype and t.get("source_year", INF) <= incident.outcome_year).map(func(t: Dictionary) -> Dictionary: return {"trace_id": t.id, "source_event_ids": t.source_event_ids.duplicate(), "relation": "material_analogy", "current_operation": "unverified"})

static func validate(incident: Dictionary, manifest: Dictionary) -> Array[String]:
	var errors: Array[String] = []
	var defs: Array = catalog.definitions.filter(func(d: Dictionary) -> bool: return d.id == incident.definition_id)
	if defs.size() != 1: return ["Unknown incident definition"]
	var d: Dictionary = defs[0]
	var outcomes: Array = d.outcomes.filter(func(o: Dictionary) -> bool: return o.id == incident.outcome_id)
	if outcomes.size() != 1: return ["Unknown outcome"]
	var outcome: Dictionary = outcomes[0]
	if incident.facts != outcome.facts: errors.append("Outcome fact mismatch")
	if incident.started_year > incident.outcome_year or incident.outcome_year > manifest.year or incident.observed_year != manifest.year: errors.append("Temporal contradiction")
	if incident.actor.kind != d.actor_kind or incident.actor.current_presence: errors.append("Unauthorized Actor/current presence")
	if incident.actor.origin != ("human_derived" if d.actor_kind == "human_visitors" else "planetary"): errors.append("Unauthorized origin")
	if incident.intent != d.intent or incident.technique != "manual_tools": errors.append("Impossible capability/intent")
	if "control" in incident.facts and (incident.control_relationship.is_empty() or incident.participants.size()<2): errors.append("Missing control relationship")
	if (not incident.dead_participants.is_empty()) != ("death" in incident.facts): errors.append("Inconsistent death")
	if incident.body_status == "carried_away" and incident.evidence.any(func(e: Dictionary)->bool:return e.kind in ["remains","outside_remains","grave"]): errors.append("Absent body cannot be at scene")
	if "transport" in incident.facts and incident.transport != "handcart": errors.append("Missing transport")
	if incident.severity != outcome.severity: errors.append("Severity differs from actual outcome")
	var facility: String = incident.context.facility_id
	if not facility.is_empty() and not manifest.facilities.any(func(f: Dictionary) -> bool: return f.id == facility and f.locality_id == incident.region_id): errors.append("Invalid facility reference")
	var seen := {}
	for e: Dictionary in incident.evidence:
		if seen.has(e.id): errors.append("Duplicate evidence")
		seen[e.id] = true
		if not catalog.evidence.has(e.kind) or e.kind not in outcome.evidence: errors.append("Evidence absent from outcome"); continue
		var required: String = catalog.evidence[e.kind].requires
		if not required.is_empty() and required not in incident.facts: errors.append("Evidence contradicts outcome")
		if e.active and (e.kind != "snare" or incident.age != 0): errors.append("Unproven operation")
		if e.kind in ["tracks", "loop_tracks", "scuff"] and incident.age > 1: errors.append("Footprints beyond preservation limit")
		if e.material == "plant" and incident.age > 3: errors.append("Plants beyond preservation limit")
		var expected_verb: String = catalog.evidence[e.kind].verb
		if e.kind == "snare" and not e.active: expected_verb = "inspect"
		if e.verb != expected_verb or e.material != catalog.evidence[e.kind].material: errors.append("Invented evidence capability")
		if e.quantity != (1 if e.verb == "recover" else 0): errors.append("Unproven resource")
	return errors
