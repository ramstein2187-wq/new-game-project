class_name HistoryValidator
extends RefCounted

const MIN_SCAR_RATIO := 0.75
var _populations: SocialPopulationCatalog
var _incidents: SocialIncidentCatalog

func _init(populations: SocialPopulationCatalog = null, incidents: SocialIncidentCatalog = null) -> void:
	_populations = populations if populations != null else SocialPopulationCatalog.new()
	_incidents = incidents if incidents != null else SocialIncidentCatalog.new()

# Optional replay supplied by caller: never recursively invokes generation.
func validate(result: HistoryResult, replay: HistoryResult = null) -> Dictionary:
	if result != null and result.generation_version == 4:
		return HistoryV4Validator.new(_populations, _incidents).validate(result, replay)
	var report := {"errors": [], "warnings": [], "determinism": "not_checked", "scars": {}}
	var errors: Array = report.errors
	if result == null:
		errors.append("Missing result")
		return report
	if result.generation_version not in [2, 3]:
		errors.append("Unknown history generation version")
	if result.architecture_version != HistoryGenerator.architecture_version_for_generation(result.generation_version):
		errors.append("Unknown history architecture version")
	errors.append_array(HistoryMotifs.config_errors(result.configuration, result.generation_version))
	if result.generation_version == 3 and result.configuration.get("population_catalog_id") != _populations.id:
		errors.append("Population catalog identity mismatch")
	if result.generation_version == 3 and (result.configuration.get("social_content_id") != _incidents.content_id or result.configuration.get("social_revision") != _incidents.revision):
		errors.append("Social incident content identity/revision mismatch")
	if result.canon != CanonPolicy.snapshot():
		errors.append("LOCKED/RESERVED Canon policy was changed")
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
		for tag in entity.knowledge_tags:
			if tag not in CanonPolicy.KNOWLEDGE_TAGS:
				errors.append("Unknown knowledge tag: " + tag)
		if entity.kind == "precursor_state" and entity.political_form not in HistoryMotifs.PRECURSORS:
			errors.append("Invalid precursor political form")
		if result.generation_version == 3 and entity.kind in ["faction", "precursor_state"]:
			if entity.formation_origin not in HistoryMotifs.FORMATIONS or entity.ancestry_kind not in HistoryMotifs.ANCESTRY_KINDS:
				errors.append("Unknown formation/ancestry: " + entity.id)
			errors.append_array(_profile_errors(entity.population_origin_profile))
			for role in entity.regional_roles:
				if role not in HistoryMotifs.REGIONAL_ROLES:
					errors.append("Unknown regional role")
		if entity.generated_name != null:
			var renderer := NameRenderer.new()
			# Custom naming catalogs may have different displays; canonical shipping shape remains checked in naming tests.
			if entity.generated_name.culture_id != entity.naming_culture_id:
				errors.append("Canonical naming culture disagrees with lineage context")
			if not renderer.validation_errors(entity.generated_name).is_empty():
				report.warnings.append("Canonical name uses non-shipping naming content: " + entity.id)
		else:
			report.warnings.append("No canonical name (custom label or bounded naming fallback): " + entity.id)
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
		if event.event_type == HistoricalEvent.Type.SOCIAL_INCIDENT:
			if result.generation_version != 3 or _incidents.definition(event.narrative_key).is_empty() or event.cause_domain != "human" or event.scope != "local":
				errors.append("Forbidden social incident narrative/domain: " + event.id)
		elif not CanonPolicy.NARRATIVES.has(event.narrative_key) or CanonPolicy.NARRATIVES[event.narrative_key][0] != event.type_name():
			errors.append("Forbidden objective narrative/type: " + event.id)
		elif event.cause_domain != CanonPolicy.NARRATIVES[event.narrative_key][2]:
			errors.append("Objective narrative/domain mismatch: " + event.id)
		if event.scope not in ["local", "regional"] or event.cause_domain not in CanonPolicy.DOMAINS:
			errors.append("Invalid event scope/domain: " + event.id)
		for effect in event.effects:
			for message in CanonPolicy.effect_errors(effect, result.generation_version):
				errors.append(event.id + ": " + message)
	# Schema gate: subsequent reference checks can safely index effect fields.
	if not errors.is_empty():
		return report
	for entity in result.entities:
		if entity.parent_ids.size() != _unique(entity.parent_ids).size():
			errors.append("Duplicate political parent: " + entity.id)
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
			if result.generation_version == 3 and entity.kind == "faction" and entities.has(parent) and entities[parent].kind not in ["faction", "precursor_state"]:
				errors.append("Political parent must be a historical polity")
	for event in result.objective_timeline:
		if event.actor_ids.size() != _unique(event.actor_ids).size():
			errors.append("Duplicate historical actor: " + event.id)
		for id: String in event.actor_ids + event.location_ids + event.entity_ids:
			if not entities.has(id):
				errors.append("Invalid entity reference: " + event.id + "/" + id)
		for cause in event.cause_event_ids:
			if not events.has(cause) or order.get(cause, 999999) >= order[event.id]:
				errors.append("Missing, future or cyclic cause: " + event.id + "/" + cause)
		for effect in event.effects:
			for field: String in ["entity_id", "owner_id", "settlement_id", "location_id", "reference_id", "a", "b"]:
				if effect.has(field) and not entities.has(effect[field]):
					errors.append("Invalid effect entity reference: " + event.id + "/" + field)
			for source: String in effect.get("source_ids", []) + effect.get("successor_ids", []):
				if not entities.has(source):
					errors.append("Missing population source: " + source)
	if not errors.is_empty():
		return report
	_lifecycle(result, entities, errors)
	if result.generation_version == 3:
		errors.append_array(SocialIncidentValidator.new(_incidents).errors(result))
	if not errors.is_empty():
		return report
	var projected := HistoryProjector.new().project(result.entities, result.objective_timeline)
	if result.present == null or projected.to_dict() != result.present.to_dict():
		errors.append("Present state differs from objective-history projection")
	var kinds := {"region": 0, "precursor_state": 0}
	for entity in result.entities:
		if kinds.has(entity.kind):
			kinds[entity.kind] += 1
	if kinds.region != 1 or kinds.precursor_state != 1 or (result.generation_version == 2 and projected.active_factions.size() != 3):
		errors.append("Expected one region, one precursor and version-specific current factions")
	var max_events := 24 if result.generation_version == 2 else 64
	var max_ruins := 5 if result.generation_version == 2 else 24
	if result.objective_timeline.size() < 14 or result.objective_timeline.size() > max_events or projected.ruins.size() < 3 or projected.ruins.size() > max_ruins or projected.settlements.size() < 3:
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
		if not has_precursor and result.generation_version == 2:
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
	if result.generation_version == 2:
		_v2_boundaries(result, events, errors)
	else:
		_v3_boundaries(result, projected, events, errors)
	if replay != null and errors.is_empty():
		report.determinism = "pass" if result.canonical_output() == replay.canonical_output() else "fail"
		if report.determinism == "fail":
			errors.append("Same-seed/version/content replay differs")
	return report

func _lifecycle(result: HistoryResult, entities: Dictionary, errors: Array) -> void:
	var born := {}
	var active := {}
	var ended := {}
	var scars := {}
	var sites := {}
	var discoveries := {}
	var traces := {}
	var profiles := {}
	for event in result.objective_timeline:
		for actor in event.actor_ids:
			if not active.has(actor):
				errors.append("Actor is not alive before event: " + event.id + "/" + actor)
		var allowed := {
			"FOUNDING": ["activate", "settlement", "relationship"], "SPLIT": ["activate", "relationship", "ruin"],
			"SCHISM": ["activate", "relationship", "ruin"], "MERGE": ["activate", "retire"],
			"WAR": ["relationship", "ruin"], "MIGRATION": ["activate", "retire", "settlement", "relationship", "ruin"],
			"DISASTER": ["ruin", "system_trace"], "COLLAPSE": ["retire", "ruin"],
			"RUIN_REOCCUPIED": ["activate", "settlement", "reoccupy"], "ANOMALOUS_DISCOVERY": ["discovery"],
		}
		if result.generation_version == 3:
			allowed.SOCIAL_INCIDENT = ["social_record", "activate", "retire", "settlement", "ruin"]
			for type in ["FOUNDING", "SPLIT", "SCHISM", "MERGE", "MIGRATION", "RUIN_REOCCUPIED"]:
				allowed[type].append_array(["population", "site_owner"])
			allowed.SPLIT.append_array(["retire", "settlement"])
			allowed.MERGE.append("settlement")
			allowed.NEWCOMER = ["activate", "population", "settlement"]
			allowed.REORGANIZATION = ["activate", "population", "settlement", "site_owner", "retire"]
			allowed.EXTINCTION = ["retire", "ruin"]
			for type in ["SPLIT", "MERGE", "REORGANIZATION", "EXTINCTION", "COLLAPSE"]:
				allowed[type].append("population_fate")
		var activated: Array[String] = []
		var retired: Array[String] = []
		for effect in event.effects:
			if not allowed.has(event.type_name()) or effect.kind not in allowed[event.type_name()]:
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
				"site_owner":
					if not sites.has(effect.entity_id) or not active.has(effect.entity_id):
						errors.append("Transfer requires an active historical site")
					elif sites[effect.entity_id] not in event.actor_ids:
						errors.append("Site transfer requires the existing owner's participation")
					_check_faction(effect.owner_id, active, entities, errors)
					sites[effect.entity_id] = effect.owner_id
				"population":
					_population_effect(effect, event, profiles, entities, active, errors)
				"ruin":
					if scars.has(effect.id) or entities.has(effect.id) or discoveries.has(effect.id) or traces.has(effect.id):
						errors.append("Duplicate ruin/object ID: " + effect.id)
					scars[effect.id] = true
					if result.generation_version == 3:
						if {"site_type": effect.site_type, "hazard": effect.hazard} != HistorySites.description(effect.ruin_kind):
							errors.append("Site hazard/type disagrees with reviewed damage")
						scars[effect.id] = effect.duplicate(true)
				"relationship":
					_check_faction(effect.a, active, entities, errors)
					_check_faction(effect.b, active, entities, errors)
					if effect.a == effect.b:
						errors.append("Self relationship: " + event.id)
				"reoccupy":
					if not scars.has(effect.ruin_id) or not sites.has(effect.settlement_id) or sites.get(effect.settlement_id) != effect.owner_id:
						errors.append("Reoccupation requires existing ruin and owned settlement: " + event.id)
					_check_faction(effect.owner_id, active, entities, errors)
					if result.generation_version == 3 and scars.has(effect.ruin_id) and not HistorySites.compatible(scars[effect.ruin_id], entities[effect.owner_id], effect.purpose):
						errors.append("Incompatible hazardous site reuse")
				"discovery":
					if discoveries.has(effect.id) or entities.has(effect.id) or scars.has(effect.id) or traces.has(effect.id):
						errors.append("Duplicate discovery/object ID: " + effect.id)
					discoveries[effect.id] = true
					var expected := HistoryMotifs.DISCOVERY_OBSERVATIONS
					if effect.observation != expected.get(event.narrative_key, ""):
						errors.append("Discovery observation disagrees with narrative: " + event.id)
				"system_trace":
					if traces.has(effect.id) or entities.has(effect.id) or scars.has(effect.id) or discoveries.has(effect.id):
						errors.append("Duplicate system/object ID: " + effect.id)
					traces[effect.id] = true
					if not HistoryMotifs.SYSTEMS.has(event.narrative_key) or effect != HistoryMotifs.system_effect(event.narrative_key, effect.id):
						errors.append("Unbounded/unreviewed system mechanism or domain mismatch: " + event.id)
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
		if result.generation_version == 3:
			_formation_semantics(event, activated, retired, entities, errors)
			_population_retirement(event, retired, entities, profiles, errors)
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
		if result.generation_version == 3 and entity.kind in ["faction", "precursor_state"] and not profiles.has(entity.id):
			errors.append("Historical polity lacks its population formation event")
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
	var evidence_keys := {}
	var claimants: Array[String] = []
	for claim in result.historical_claims:
		if claim == null:
			report.errors.append("Null claim")
			continue
		if claim.claimant_entity_id not in current:
			report.errors.append("Claimant must be a current faction")
		else:
			var lower := claim.interpretation.to_lower()
			if ("observer" in lower or "관찰자" in lower) and "observer_scholarly_term" not in result.entity(claim.claimant_entity_id).knowledge_tags:
				report.errors.append("Observer terminology requires scholarly knowledge: " + claim.claimant_entity_id)
		if claim.claimant_entity_id not in claimants:
			claimants.append(claim.claimant_entity_id)
		if result.generation_version == 3:
			_claim_evidence(claim, present, events, report.errors)
			var key := JSON.stringify([claim.claimant_entity_id, claim.reference_scope, claim.referenced_event_id, claim.claim_type, claim.evidence])
			if evidence_keys.has(key):
				report.errors.append("Duplicate Claim evidence")
			evidence_keys[key] = true
		elif claim.referenced_event_id.is_empty() == claim.topic.is_empty():
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
	if result.historical_claims.size() < 5 or claimants.size() != current.size():
		report.errors.append("Need at least five claims representing every current faction")
	var different := false
	for key in interpretations:
		different = different or interpretations[key].size() >= 2
	if not different:
		report.warnings.append("No event has differing perceived interpretations")

func _v2_boundaries(result: HistoryResult, events: Dictionary, errors: Array) -> void:
	var seen_names := {}
	for entity in result.entities:
		var label := entity.name.strip_edges().to_lower()
		if seen_names.has(label):
			errors.append("Colliding history entity labels: " + entity.id)
		seen_names[label] = true
	var config := result.configuration
	var expected := {"h_found": config.precursor_form, "h_pressure": config.pressure_motif,
		"h_response": config.response_motif, "h_failure": config.collapse_pattern,
		"h_c_formed": config.faction_c_formation, "h_middle": config.middle_motif,
		"h_recent": config.recent_motif, "h_discovery": config.discovery_motif}
	for id in expected:
		if not events.has(id) or events[id].narrative_key != expected[id]:
			errors.append("Configuration does not explain objective event: " + id)
	for id in {"precursor": config.precursor_form, "faction_a": config.successor_a_form,
		"faction_b": config.successor_b_form, "faction_c": config.faction_c_formation}:
		var entity := result.entity(id)
		var form: String = config.precursor_form if id == "precursor" else config.successor_a_form if id == "faction_a" else config.successor_b_form if id == "faction_b" else config.faction_c_formation
		if entity == null or (entity.political_form if id == "precursor" else entity.way_of_life) != form:
			errors.append("Configuration does not explain polity/community form: " + id)
	var legacy_counts := {"observer_legacy": 0, "core_intervention": 0}
	var recent_count := 0
	for event in result.objective_timeline:
		if event.year >= -100:
			recent_count += 1
		if event.cause_domain in legacy_counts:
			legacy_counts[event.cause_domain] += 1
			var traces := 0
			for effect in event.effects:
				traces += int(effect.kind == "system_trace")
			if traces != 1 or event.scope != "local" or not event.cause_event_ids.is_empty():
				errors.append("Legacy event needs one bounded local trace and no invented activation cause")
		elif event.effects.any(func(effect: Dictionary) -> bool: return effect.kind == "system_trace"):
			errors.append("System trace outside its reviewed objective provenance")
	if legacy_counts.observer_legacy > 1 or legacy_counts.core_intervention > 1:
		errors.append("Regional legacy budget exceeded; assets cannot act without bounds")
	if recent_count < 3:
		errors.append("Recent history is too sparse")
	for suffix: String in ["core", "orbital"]:
		var key: String = config["extra_" + suffix]
		var id := "h_legacy_" + suffix
		if (key.is_empty() and events.has(id)) or (not key.is_empty() and (not events.has(id) or events[id].narrative_key != key)):
			errors.append("Independent legacy budget/configuration mismatch: " + suffix)

func _profile_errors(profile: Dictionary) -> Array[String]:
	return _populations.profile_errors(profile)

func _unique(values: Array) -> Dictionary:
	var found := {}
	for value in values:
		found[value] = true
	return found

func _population_effect(effect: Dictionary, event: HistoricalEvent, profiles: Dictionary, entities: Dictionary, active: Dictionary, errors: Array) -> void:
	var id: String = effect.entity_id
	var profile: Dictionary = effect.profile
	var issues := _populations.profile_errors(profile, effect.mode == "arrival" and event.type_name() == "NEWCOMER")
	errors.append_array(issues)
	if not issues.is_empty():
		return
	if not active.has(id) or entities[id].kind not in ["faction", "precursor_state", "group"]:
		errors.append("Population operation requires a living population holder")
	var sources: Array = effect.source_ids
	var stocks: Array = []
	var seen := {}
	for source: String in sources:
		if seen.has(source) or not profiles.has(source):
			errors.append("Missing, duplicate or future population source: " + source)
			return
		seen[source] = true
		stocks.append(profiles[source])
	var initial := not profiles.has(id)
	if initial and entities[id].kind in ["faction", "precursor_state"] and profile != entities[id].population_origin_profile:
		errors.append("Founding population metadata differs from founding effect: " + id)
	if initial != (entities[id].created_event_id == event.id):
		errors.append("Population initialization must occur at formation")
	if not initial and effect.mode != "join":
		errors.append("Population change requires an explained join event")
	match effect.mode:
		"seed", "arrival":
			if not initial or not sources.is_empty():
				errors.append("Initial population stock cannot claim inherited sources")
		"inherit":
			if stocks.size() != 1 or profile != stocks[0]:
				errors.append("Inherited population profile must match its source")
		"subset":
			var parent_lineages: Dictionary = PopulationOrigins.lineages(stocks[0]) if stocks.size() == 1 else {}
			for row: Dictionary in profile.strata:
				if parent_lineages.get(row.template_id) != row.origins:
					errors.append("Split population cannot invent Origin or lineage")
			if stocks.size() != 1:
				errors.append("Subset population requires one donor")
		"co_residence":
			if stocks.size() < 2 or profile != PopulationOrigins.combine(stocks):
				errors.append("Co-residence must preserve donor strata without hybrid fusion")
		"join":
			if initial or sources.size() < 2 or sources[0] != id or profile != PopulationOrigins.combine(stocks, true):
				errors.append("Population join must preserve residents and arrival strata")
	profiles[id] = profile.duplicate(true)

func _population_retirement(event: HistoricalEvent, retired: Array[String], entities: Dictionary, profiles: Dictionary, errors: Array) -> void:
	var dispositions := {}
	for effect in event.effects:
		if effect.kind != "population_fate":
			continue
		var id: String = effect.entity_id
		if id not in retired or entities[id].kind not in ["faction", "precursor_state"] or dispositions.has(id):
			errors.append("Population fate requires one actually retired polity")
		dispositions[id] = true
		if (effect.disposition == "absorbed") != (not effect.successor_ids.is_empty()) or effect.successor_ids.size() != _unique(effect.successor_ids).size():
			errors.append("Population disposition differs from recorded successors")
		var stocks: Array = []
		for successor: String in effect.successor_ids:
			var explained := false
			for population in event.effects:
				if population.kind == "population" and population.entity_id == successor and id in population.source_ids:
					explained = true
			if not explained or not profiles.has(successor):
				errors.append("Population absorption needs an actual recorded donor contribution")
			else:
				stocks.append(profiles[successor])
		if not profiles.has(id) or effect.untracked_template_ids != PopulationOrigins.untracked_templates(profiles[id], stocks):
			errors.append("Population disposition must record every untracked donor lineage")
	for id in retired:
		if entities[id].kind in ["faction", "precursor_state"] and not dispositions.has(id):
			errors.append("Retired political faction must explain its population disposition")

func _formation_semantics(event: HistoricalEvent, activated: Array[String], retired: Array[String], entities: Dictionary, errors: Array) -> void:
	var children: Array[String] = []
	for id in activated:
		if entities[id].kind != "faction":
			continue
		children.append(id)
		var entity: HistoricalEntity = entities[id]
		var has_population := false
		var has_home := false
		for effect in event.effects:
			has_population = has_population or (effect.kind == "population" and effect.entity_id == id)
			has_home = has_home or (effect.kind == "settlement" and effect.owner_id == id)
		if not has_population or not has_home:
			errors.append("Faction formation requires population and a recorded home: " + id)
		if entity.formation_origin in ["direct_successor", "fragmentation", "merger", "migration_settlement"] and entity.parent_ids.is_empty():
			errors.append("Inherited political formation needs parents")
		if event.type_name() in ["SPLIT", "MERGE", "REORGANIZATION", "MIGRATION"]:
			if entity.parent_ids != event.actor_ids:
				errors.append("Political parents disagree with transformation participants")
		var expected: Dictionary = {
			"SPLIT": ["fragmentation", "split_descendant"], "MERGE": ["merger", "merge_descendant"],
			"REORGANIZATION": ["reorganization", "reorganized_descendant"],
			"MIGRATION": ["migration_settlement", "split_descendant"], "NEWCOMER": ["newcomer_formation", "newcomer"]}
		if expected.has(event.type_name()) and [entity.formation_origin, entity.ancestry_kind] != expected[event.type_name()]:
			errors.append("Formation/ancestry semantics disagree with event type")
		if event.type_name() == "NEWCOMER" and (not entity.parent_ids.is_empty() or entity.political_continuity):
			errors.append("Newcomer cannot invent local political inheritance")
		if event.type_name() in ["MERGE", "REORGANIZATION"]:
			for parent: String in entity.parent_ids:
				if parent not in retired:
					errors.append("Consolidation must dissolve its political participants")
		if event.type_name() == "REORGANIZATION" and entity.political_continuity:
			errors.append("Reorganized offices are not direct institutional heirs")
	if event.narrative_key == "political_split" and (children.size() < 2 or event.actor_ids.size() != 1):
		errors.append("Split must create at least two children from one living parent")
	if event.type_name() == "MERGE" and (children.size() != 1 or event.actor_ids.size() < 2):
		errors.append("Merge requires one multi-parent successor")
	if event.type_name() == "EXTINCTION" and (event.actor_ids.size() != 1 or event.actor_ids[0] not in retired or not children.is_empty()):
		errors.append("Extinction must end its actor without a political successor")

func _claim_evidence(claim: HistoricalClaim, present: HistoryState, events: Dictionary, errors: Array) -> void:
	if not claim.topic.is_empty() or claim.reference_scope not in ["event", "present"]:
		errors.append("Unknown v3 claim reference scope")
		return
	if claim.reference_scope == "event":
		if not events.has(claim.referenced_event_id):
			errors.append("Event claim requires an actual historical event")
			return
		if claim.evidence.is_empty():
			return
		var valid := false
		for effect in events[claim.referenced_event_id].effects:
			if effect.kind == "relationship" and claim.evidence == {"a": effect.a, "b": effect.b, "delta": effect.delta} and claim.claimant_entity_id in [effect.a, effect.b]:
				valid = true
		if not valid:
			errors.append("Relation event claim differs from its event-specific effect")
	else:
		if not claim.referenced_event_id.is_empty():
			errors.append("Present relation claim must not masquerade as a past event")
		var valid := false
		for row in present.relationships:
			if claim.evidence == {"a": row.a, "b": row.b, "score": row.score} and claim.claimant_entity_id in [row.a, row.b]:
				valid = true
		if not valid:
			errors.append("Present relation claim differs from accumulated state")

func _v3_boundaries(result: HistoryResult, projected: HistoryState, events: Dictionary, errors: Array) -> void:
	var band: Array = HistoryTopology.BANDS[result.configuration.topology_family]
	if projected.active_factions.size() < 4 or projected.active_factions.size() > 8 or projected.active_factions.size() < band[0] or projected.active_factions.size() > band[1]:
		errors.append("Active faction count must satisfy global 4..8 and its family band")
	if projected.relationships.size() >= projected.active_factions.size() * (projected.active_factions.size() - 1) / 2:
		errors.append("Present relation graph must be sparse")
	var names := {}
	for entity in result.entities:
		var key := entity.name.to_lower().strip_edges()
		if names.has(key):
			errors.append("Colliding history entity labels")
		names[key] = true
	var expected := {"h_found": "precursor_form", "h_pressure": "pressure_motif", "h_response": "response_motif", "h_failure": "collapse_pattern"}
	for id in expected:
		if not events.has(id) or events[id].narrative_key != result.configuration[expected[id]]:
			errors.append("Configuration disagrees with canonical local history")
	if not events.has("h_collapse"):
		errors.append("Missing regional collapse event")
		return
	var rare := {"observer_legacy": 0, "core_intervention": 0}
	var recent := 0
	for event in result.objective_timeline:
		recent += int(event.year >= -100)
		var traces := 0
		for effect in event.effects:
			traces += int(effect.kind == "system_trace")
		if event.cause_domain in rare:
			rare[event.cause_domain] += 1
			if traces != 1 or event.scope != "local" or not event.cause_event_ids.is_empty():
				errors.append("Legacy event requires one local trace and unknown activation cause")
		elif traces > 0:
			errors.append("System trace lacks reviewed provenance")
	if recent < 3 or rare.observer_legacy > 1 or rare.core_intervention > 1:
		errors.append("Recent/rare event budgets violated")
	for suffix: String in ["core", "orbital"]:
		var key: String = result.configuration["extra_" + suffix]
		var id := "h_legacy_" + suffix
		if (key.is_empty() and events.has(id)) or (not key.is_empty() and (not events.has(id) or events[id].narrative_key != key)):
			errors.append("Independent legacy configuration mismatch")
	var family: String = result.configuration.topology_family
	var planned: Array[HistoricalEvent] = []
	for event in result.objective_timeline:
		if event.id.begins_with("t_step_"):
			planned.append(event)
	var minimum_steps := 4 if family == "late_fragmentation" else 5
	var maximum_steps := 8 if family == "late_fragmentation" else 11
	if planned.size() < minimum_steps or planned.size() > maximum_steps:
		errors.append("Topology needs bounded meaningful transformation complexity")
	if family == "late_fragmentation" and (planned.is_empty() or planned[0].type_name() != "SPLIT" or planned[0].year < -100):
		errors.append("Late Fragmentation requires a recent successor split")
	if family == "layered_migration" and planned.filter(func(event: HistoricalEvent) -> bool: return event.type_name() == "NEWCOMER").size() < 2:
		errors.append("Layered Migration requires two external population layers")
	if family == "no_direct_heir" and projected.active_factions.any(func(row: Dictionary) -> bool: return row.political_continuity):
		errors.append("No Direct Heir retained institutional heirs")
	if family == "enclave_continuity" and not projected.active_factions.any(func(row: Dictionary) -> bool: return row.formation_origin == "enclave_continuity" and row.formation_year < events.h_collapse.year):
		errors.append("Enclave Continuity lost its older independent community")
	if family == "consolidation_resplit":
		var resplit := false
		for event in result.objective_timeline:
			if event.type_name() == "SPLIT":
				for actor in event.actor_ids:
					resplit = resplit or result.entity(actor).formation_origin == "merger"
		if not resplit:
			errors.append("Consolidation family needs a recorded merge then resplit")
