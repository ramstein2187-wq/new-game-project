class_name HistoryValidator
extends RefCounted

const MIN_SCAR_RATIO := 0.75

# Optional replay supplied by caller: never recursively invokes generation.
func validate(result: HistoryResult, replay: HistoryResult = null) -> Dictionary:
	var report := {"errors": [], "warnings": [], "determinism": "not_checked", "scars": {}}
	var errors: Array = report.errors
	if result == null:
		errors.append("Missing result")
		return report
	if result.generation_version != HistoryGenerator.VERSION:
		errors.append("Unknown history generation version")
	if result.canon != CanonPolicy.snapshot():
		errors.append("LOCKED/RESERVED Canon policy was changed")
	if replay != null:
		report.determinism = "pass" if result.canonical_output() == replay.canonical_output() else "fail"
		if report.determinism == "fail":
			errors.append("Same-seed replay differs")
	var entities := {}
	var events := {}
	var order := {}
	for entity in result.entities:
		if entity == null or entity.id.is_empty():
			errors.append("Null entity or empty entity ID")
			continue
		if entities.has(entity.id):
			errors.append("Duplicate entity ID: " + entity.id)
		entities[entity.id] = entity
		if entity.kind not in CanonPolicy.ENTITY_KINDS or entity.way_of_life not in CanonPolicy.WAYS_OF_LIFE or entity.name.strip_edges().is_empty():
			errors.append("Invalid entity definition: " + entity.id)
	for i in range(result.objective_timeline.size()):
		var event := result.objective_timeline[i]
		if event == null or event.id.is_empty():
			errors.append("Null event or empty event ID")
			continue
		if events.has(event.id):
			errors.append("Duplicate event ID: " + event.id)
		events[event.id] = event
		order[event.id] = i
		if event.year < -600 or event.year >= 0:
			errors.append("Event outside recent-history window: " + event.id)
		if i > 0 and result.objective_timeline[i - 1] != null and event.year < result.objective_timeline[i - 1].year:
			errors.append("Timeline is not chronological: " + event.id)
		if event.importance < 0 or event.importance > 2:
			errors.append("Invalid importance: " + event.id)
		if not CanonPolicy.NARRATIVES.has(event.narrative_key) or CanonPolicy.NARRATIVES[event.narrative_key][0] != event.type_name():
			errors.append("Forbidden objective narrative/type: " + event.id)
		for effect in event.effects:
			for message in CanonPolicy.effect_errors(effect):
				errors.append(event.id + ": " + message)
	# Schema gate: subsequent reference checks can safely index effect fields.
	if not errors.is_empty():
		return report
	for entity in result.entities:
		if not events.has(entity.created_event_id):
			errors.append("Entity missing founding event: " + entity.id)
		if not entity.retired_event_id.is_empty() and not events.has(entity.retired_event_id):
			errors.append("Entity missing retirement event: " + entity.id)
		for parent in entity.parent_ids:
			if parent == entity.id or not entities.has(parent):
				errors.append("Invalid successor parent: " + entity.id)
			elif events.has(entity.created_event_id) and events.has(entities[parent].created_event_id):
				if order[entities[parent].created_event_id] >= order[entity.created_event_id]:
					errors.append("Successor parent must precede child: " + entity.id)
	for event in result.objective_timeline:
		for id: String in event.actor_ids + event.location_ids + event.entity_ids:
			if not entities.has(id):
				errors.append("Invalid entity reference: " + event.id + "/" + id)
		for cause in event.cause_event_ids:
			if not events.has(cause) or order.get(cause, 999999) >= order[event.id]:
				errors.append("Missing, future or cyclic cause: " + event.id + "/" + cause)
		for effect in event.effects:
			for field: String in ["entity_id", "owner_id", "settlement_id", "location_id", "a", "b"]:
				if effect.has(field) and not entities.has(effect[field]):
					errors.append("Invalid effect entity reference: " + event.id + "/" + field)
	if not errors.is_empty():
		return report
	_lifecycle(result, entities, errors)
	if not errors.is_empty():
		return report
	var projected := HistoryProjector.new().project(result.entities, result.objective_timeline)
	if result.present == null or projected.to_dict() != result.present.to_dict():
		errors.append("Present state differs from objective-history projection")
	var kinds := {"region": 0, "precursor_state": 0}
	for entity in result.entities:
		if kinds.has(entity.kind):
			kinds[entity.kind] += 1
	if kinds.region != 1 or kinds.precursor_state != 1 or projected.active_factions.size() != 3:
		errors.append("Expected one region, one precursor and three current factions")
	if result.objective_timeline.size() < 10 or result.objective_timeline.size() > 20 or projected.ruins.size() < 3 or projected.ruins.size() > 5 or projected.settlements.size() < 3:
		errors.append("History slice exceeds its size contract")
	var collapses := 0
	for event in result.objective_timeline:
		if event.event_type == HistoricalEvent.Type.COLLAPSE:
			collapses += 1
			var contributors: Array = [event.id]
			_cause_closure(event.id, events, contributors)
			var pressures := 1
			for cause: String in contributors:
				if cause != event.id and events[cause].event_type != HistoricalEvent.Type.FOUNDING:
					pressures += 1
			if pressures < 2 or pressures > 5:
				errors.append("Collapse needs a bounded 2..5 event local cause chain")
	if collapses != 1:
		errors.append("Expected one regional collapse")
	for ancestry in projected.faction_ancestry:
		var has_precursor := false
		for ancestor: String in ancestry.ancestor_ids:
			has_precursor = has_precursor or entities[ancestor].kind == "precursor_state"
		if not has_precursor:
			errors.append("Current faction cannot trace precursor ancestry: " + ancestry.faction_id)
	var direct := projected.direct_scar_event_ids()
	var causal := direct.duplicate()
	for id in direct:
		_cause_closure(id, events, causal)
	var important := 0
	var direct_count := 0
	var causal_count := 0
	for event in result.objective_timeline:
		if event.importance >= 2:
			important += 1
			direct_count += int(event.id in direct)
			causal_count += int(event.id in causal)
	var ratio := float(causal_count) / maxi(1, important)
	report.scars = {"important_events": important, "direct_count": direct_count, "causal_count": causal_count,
		"causal_ratio": ratio, "direct_event_ids": direct, "causal_event_ids": causal}
	if important == 0 or ratio < MIN_SCAR_RATIO:
		errors.append("Important events lack surviving present-day scars")
	if float(direct_count) / maxi(1, important) < MIN_SCAR_RATIO:
		report.warnings.append("Some important events survive only through causal provenance")
	_claims(result, projected, events, report)
	return report

func _lifecycle(result: HistoryResult, entities: Dictionary, errors: Array) -> void:
	var born := {}
	var active := {}
	var ended := {}
	var scars := {}
	var sites := {}
	var discoveries := {}
	for event in result.objective_timeline:
		for actor in event.actor_ids:
			if not active.has(actor):
				errors.append("Actor is not alive before event: " + event.id + "/" + actor)
		var allowed := {
			"FOUNDING": ["activate", "settlement"], "SPLIT": ["activate", "relationship"],
			"SCHISM": ["activate", "relationship"], "MERGE": ["activate", "retire"],
			"WAR": ["relationship", "ruin"], "MIGRATION": ["activate", "retire", "settlement", "relationship", "ruin"],
			"DISASTER": ["ruin"], "COLLAPSE": ["retire", "ruin"],
			"RUIN_REOCCUPIED": ["activate", "settlement", "reoccupy"], "ANOMALOUS_DISCOVERY": ["discovery"],
		}
		var activated: Array[String] = []
		var retired: Array[String] = []
		for effect in event.effects:
			if effect.kind not in allowed[event.type_name()]:
				errors.append("Effect forbidden for event type: " + event.id)
			match effect.kind:
				"activate":
					var id: String = effect.entity_id
					if born.has(id) or entities[id].created_event_id != event.id:
						errors.append("Duplicate creation/resurrection or founding metadata mismatch: " + id)
					born[id] = event.id
					active[id] = true
					activated.append(id)
				"retire":
					var id: String = effect.entity_id
					if not active.has(id) or entities[id].retired_event_id != event.id:
						errors.append("Invalid retirement or metadata mismatch: " + id)
					active.erase(id)
					ended[id] = event.id
					retired.append(id)
				"settlement":
					if sites.has(effect.entity_id) or entities[effect.entity_id].kind != "settlement" or not active.has(effect.entity_id):
						errors.append("Invalid settlement creation: " + event.id)
					_check_faction(effect.owner_id, active, entities, errors)
					sites[effect.entity_id] = effect.owner_id
				"ruin":
					if scars.has(effect.id) or entities.has(effect.id) or discoveries.has(effect.id):
						errors.append("Duplicate ruin/object ID: " + effect.id)
					scars[effect.id] = true
				"relationship":
					_check_faction(effect.a, active, entities, errors)
					_check_faction(effect.b, active, entities, errors)
					if effect.a == effect.b:
						errors.append("Self relationship: " + event.id)
				"reoccupy":
					if not scars.has(effect.ruin_id) or not sites.has(effect.settlement_id) or sites.get(effect.settlement_id) != effect.owner_id:
						errors.append("Reoccupation requires existing ruin and owned settlement: " + event.id)
					_check_faction(effect.owner_id, active, entities, errors)
				"discovery":
					if discoveries.has(effect.id) or entities.has(effect.id) or scars.has(effect.id):
						errors.append("Duplicate discovery/object ID: " + effect.id)
					discoveries[effect.id] = true
					var expected := {"crater": "machine_in_coastal_crater", "salt": "machine_in_salt_deposit", "manufacture": "unfamiliar_manufacturing"}
					if effect.observation != expected.get(event.narrative_key, ""):
						errors.append("Discovery observation disagrees with narrative: " + event.id)
			if effect.has("location_id") and (entities[effect.location_id].kind != "region" or not active.has(effect.location_id)):
				errors.append("Invalid/inactive effect location: " + event.id)
		for id in event.location_ids:
			if entities[id].kind != "region" or not active.has(id):
				errors.append("Invalid/inactive event location: " + event.id)
		for id in event.entity_ids:
			if not born.has(id):
				errors.append("Referenced entity not yet created: " + event.id + "/" + id)
		if event.event_type in [HistoricalEvent.Type.SPLIT, HistoricalEvent.Type.SCHISM, HistoricalEvent.Type.MERGE]:
			if activated.is_empty() or event.actor_ids.is_empty():
				errors.append("Split/schism/merge must create a successor from actors: " + event.id)
			for id in activated:
				for parent: String in entities[id].parent_ids:
					if parent not in event.actor_ids:
						errors.append("Successor parent is not a source actor: " + event.id)
		if event.event_type == HistoricalEvent.Type.MERGE and (retired.size() < 2 or event.actor_ids.size() < 2):
			errors.append("Merge must retire at least two source groups: " + event.id)
		if event.event_type == HistoricalEvent.Type.COLLAPSE:
			var precursor_retired := false
			for id in retired:
				precursor_retired = precursor_retired or entities[id].kind == "precursor_state"
			if event.cause_event_ids.is_empty() or not precursor_retired:
				errors.append("Collapse must have causes and retire a polity")
		if event.effects.is_empty():
			errors.append("Event has no objective effects: " + event.id)
	for entity in result.entities:
		if born.get(entity.id, "") != entity.created_event_id or ended.get(entity.id, "") != entity.retired_event_id:
			errors.append("Lifecycle metadata is not explained by effects: " + entity.id)
		if entity.kind == "precursor_state" and active.has(entity.id):
			errors.append("Great precursor state survived into fragmented present")
	for site_id in sites:
		if active.has(site_id) and not active.has(sites[site_id]):
			errors.append("Present settlement owner is retired: " + site_id)

func _check_faction(id: String, active: Dictionary, entities: Dictionary, errors: Array) -> void:
	if entities[id].kind != "faction" or not active.has(id):
		errors.append("Effect requires an active faction: " + id)

func _cause_closure(id: String, events: Dictionary, found: Array) -> void:
	for cause: String in events[id].cause_event_ids:
		if cause not in found:
			found.append(cause)
			_cause_closure(cause, events, found)

func _claims(result: HistoryResult, present: HistoryState, events: Dictionary, report: Dictionary) -> void:
	var current: Array[String] = []
	for faction in present.active_factions:
		current.append(faction.id)
	var interpretations := {}
	var claimants: Array[String] = []
	for claim in result.historical_claims:
		if claim == null:
			report.errors.append("Null claim")
			continue
		if claim.claimant_entity_id not in current:
			report.errors.append("Claimant must be a current faction")
		if claim.claimant_entity_id not in claimants:
			claimants.append(claim.claimant_entity_id)
		if claim.referenced_event_id.is_empty() == claim.topic.is_empty():
			report.errors.append("Claim needs exactly one event reference or belief topic")
		if not claim.referenced_event_id.is_empty() and not events.has(claim.referenced_event_id):
			report.errors.append("Claim references missing event")
		if not claim.topic.is_empty() and claim.topic not in CanonPolicy.RESERVED and claim.topic not in CanonPolicy.BELIEF_ONLY:
			report.errors.append("Unknown belief topic")
		if not is_finite(claim.confidence) or claim.confidence < 0 or claim.confidence > 1 or claim.interpretation.strip_edges().is_empty() or claim.claim_type not in ["belief", "interpretation", "legitimacy"]:
			report.errors.append("Invalid historical claim")
		var key := claim.referenced_event_id
		if not key.is_empty():
			if not interpretations.has(key):
				interpretations[key] = []
			if claim.interpretation not in interpretations[key]:
				interpretations[key].append(claim.interpretation)
	if result.historical_claims.size() < 5 or claimants.size() < 3:
		report.errors.append("Need at least five claims representing every current faction")
	var different := false
	for key in interpretations:
		different = different or interpretations[key].size() >= 2
	if not different:
		report.warnings.append("No event has differing perceived interpretations")
