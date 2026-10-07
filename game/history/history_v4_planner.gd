class_name HistoryV4Planner
extends RefCounted

var _catalog: HistoryV4Catalog
var _result: HistoryResult
var _generator: HistoryGenerator
var _facts := {}
var _scar_count := 0

func _init(catalog: HistoryV4Catalog = null) -> void:
	_catalog = catalog if catalog != null else HistoryV4Catalog.new()

func generate(seed: int, generator: HistoryGenerator) -> HistoryResult:
	_generator = generator
	_result = generator._generate_scaffold(seed)
	HistoryV4Compatibility.migrate(_result)
	_regional_pressure()
	_result.configuration.v4_revision = _catalog.data.revision
	_result.configuration.content_revision = _catalog.data.revision
	var roll := HistoryV4Catalog.rng(seed, "project/budget").randi_range(0, 99)
	var budget := 0 if roll < 40 else 1 if roll < 90 else 2
	_result.configuration.project_budget = budget
	_result.configuration.scar_budget = 2
	var pool := _catalog.sorted_rows("projects")
	for slot in range(budget):
		var index := HistoryV4Catalog.rng(seed, "project/choice/%d" % slot).randi_range(0, pool.size() - 1)
		var selected: Dictionary = pool[index]
		pool.remove_at(index)
		_project(selected, slot)
	if _scar_count < 2 and HistoryV4Catalog.rng(seed, "scar/budget").randi_range(0, 99) < 65:
		var scenarios := _catalog.sorted_rows("scenarios").filter(func(row: Dictionary) -> bool: return HistoryV4Catalog.gate_open(row.gate,_generator._populations,_generator._incidents))
		var selected: Dictionary = scenarios[HistoryV4Catalog.rng(seed, "scar/choice").randi_range(0, scenarios.size() - 1)]
		_scenario(selected)
	_pressure_response()
	_discovery()
	_result.objective_timeline.sort_custom(func(a: HistoricalEvent, b: HistoricalEvent) -> bool: return a.year < b.year or (a.year == b.year and a.id < b.id))
	var used := {}
	var definitions := _result.entities.duplicate()
	definitions.sort_custom(func(a: HistoricalEntity, b: HistoricalEntity) -> bool: return a.id < b.id)
	for entity in definitions:
		_generator._names.assign(entity, seed, used, 4)
	_result.present = HistoryProjector.new().project(_result.entities, _result.objective_timeline)
	_result.historical_claims = HistoryV4Claims.new().build(_result)
	_result.validation_report = HistoryV4Validator.new(_generator._populations, _generator._incidents, _catalog).validate(_result)
	return _result

func _project(definition: Dictionary, slot: int) -> void:
	var prefix := "v4_project_%d" % slot
	var facility := prefix + "_facility"
	var cohort := prefix + "_cohort"
	_group(facility)
	_group(cohort)
	var start := -472 + slot * 6 + HistoryV4Catalog.rng(_result.seed, "project/dates/%d" % slot).randi_range(0, 5)
	var alternatives: Array = definition.outcomes
	var outcome_index := HistoryV4Catalog.rng(_result.seed, "project/outcome/" + definition.id).randi_range(0, alternatives.size() - 1)
	var ending: Array = alternatives[outcome_index]
	var chain: Array = ["project_authorization", "resource_concentration"] + definition.stages + ending
	var status := "unknown_outcome"
	var last: String = ending[-1]
	if last.ends_with("partial_success") or last == "mechanogenic_assimilation":
		status = "partial_success"
	elif last.ends_with("_success") or last in ["array_continues", "deep_survey_success"]:
		status = "success"
	elif last.ends_with("abandonment") or last == "array_silence":
		status = "abandonment"
	elif _catalog.definition(last).category == "scar" and last != "continuity_transfer":
		status = "catastrophe"
	var previous := "h_found"
	for i in range(chain.size()):
		var year := start + i * 6
		# Outcome records must allow the actual long observation/program interval.
		if i >= 2 + definition.stages.size() and definition.id == "transmutation_complex":
			year += 24
		elif i >= 2 + definition.stages.size() and "signal_fixation" in ending:
			year += 18
		var key: String = chain[i]
		var id := prefix + "_%02d" % i
		var data := {"policy": HistoryV4Catalog.SELECTIONS[HistoryV4Catalog.rng(_result.seed, "project/selection/" + definition.id).randi_range(0, HistoryV4Catalog.SELECTIONS.size()-1)],
			"state": "orbital_containment" if "orbital_interdiction_orbital_containment" in ending else "wreck_or_launch_memorial", "target_reference": cohort,
			"physical_launch": "orbital_interdiction_silent_denial" not in ending}
		var extras: Array[Dictionary] = []
		if i == 0:
			extras = [{"kind": "activate", "entity_id": facility}, {"kind": "activate", "entity_id": cohort}]
		var event := _event(id, year, key, "precursor", facility, cohort, definition.id, [previous], data, extras)
		event.effects.append({"kind": "history_record", "record_type": "project", "record_id": definition.id,
			"entity_id": "precursor", "reference_id": facility, "project_id": definition.id,
			"data": {"stage": key, "status": status if i == chain.size()-1 else "in_progress", "start_year": start, "selection": data.policy}})
		previous = id
	# Custody is current political/archival provenance, not biological descent.
	var current := _current_ids()
	for n in range(mini(2, current.size())):
		var participant: String = current[n]
		var effects: Array[Dictionary] = [{"kind": "history_record", "record_type": "institution", "record_id": "project_remains_custody",
			"entity_id": participant, "reference_id": facility, "project_id": definition.id, "data": {"custody": "records_and_access", "biological_descent": false}}]
		_aftermath(prefix + "_custody_%d" % n, -17+n, participant, previous, effects)

func _scenario(definition: Dictionary) -> void:
	var facility := "v4_scenario_facility"
	var cohort := "v4_scenario_cohort"
	_group(facility)
	_group(cohort)
	var previous := "h_found"
	for i in range(definition.stages.size()):
		var extras: Array[Dictionary] = []
		if i == 0:
			extras = [{"kind": "activate", "entity_id": facility}, {"kind": "activate", "entity_id": cohort}]
		var id := "v4_scenario_%02d" % i
		_event(id, -432 + i * 6, definition.stages[i], "precursor", facility, cohort, "", [previous],
			{"target_reference": cohort, "content_reference": HistoryV4Catalog.regression_reference(_generator._populations,_generator._incidents) if definition.gate == "regression_population" else _generator._incidents.content_reference(definition.gate)}, extras)
		previous = id
	var participant: String = _current_ids()[0]
	_aftermath("v4_scenario_memory", -14, participant, previous, [{"kind": "history_record", "record_type": "institution", "record_id": "scar_memory_register",
		"entity_id": participant, "reference_id": facility, "project_id": "", "data": {"register": "surviving_records", "biological_descent": false}}])

func _pressure_response() -> void:
	var possible := _catalog.sorted_rows("pressures").filter(func(row: Dictionary) -> bool: return _generator._incidents.gate_open(row.gate) and _satisfied(row.requires))
	var specialized: Array = possible.filter(func(row: Dictionary) -> bool: return not row.requires.is_empty())
	if not specialized.is_empty() and HistoryV4Catalog.rng(_result.seed, "pressure/context").randi_range(0,99) < 65:
		possible = specialized
	var pressure: Dictionary = possible[HistoryV4Catalog.rng(_result.seed, "pressure").randi_range(0, possible.size()-1)]
	var responses := _catalog.sorted_rows("responses").filter(func(row: Dictionary) -> bool: return row.id in pressure.responses and _satisfied(row.requires))
	var specialized_responses: Array = responses.filter(func(row: Dictionary) -> bool: return not row.requires.is_empty())
	if not specialized_responses.is_empty() and HistoryV4Catalog.rng(_result.seed, "response/context").randi_range(0,99) < 65:
		responses = specialized_responses
	if responses.is_empty():
		return
	var response: Dictionary = responses[HistoryV4Catalog.rng(_result.seed, "response").randi_range(0, responses.size()-1)]
	var outcomes: Array = response.collapses.filter(func(key: String) -> bool: return not _catalog.definition("collapse_" + key).is_empty() and _satisfied(_catalog.definition("collapse_" + key).requires))
	if outcomes.is_empty():
		outcomes = ["administrative_breakdown"]
	var collapse: String = outcomes[HistoryV4Catalog.rng(_result.seed, "collapse").randi_range(0, outcomes.size()-1)]
	_result.configuration.signature_pressure = pressure.id
	_result.configuration.signature_response = response.id
	_result.configuration.signature_collapse = collapse
	var facility := "v4_response_facility"
	_group(facility)
	_event("v4_pressure", -388, "v4_" + pressure.id, "precursor", facility, facility, "", ["h_found"], {}, [{"kind": "activate", "entity_id": facility}])
	_event("v4_response", -382, "response_" + response.id, "precursor", facility, facility, "", ["v4_pressure"], {})
	_event("v4_consequence", -376, "collapse_" + collapse, "precursor", facility, facility, "", ["v4_response"], {})

func _regional_pressure() -> void:
	for event in _result.objective_timeline:
		if event.cause_domain != "preservator_intervention":
			continue
		var definition := _catalog.definition("v4_" + event.narrative_key)
		for effect in event.effects:
			if effect.kind == "system_trace":
				effect.operation = event.narrative_key
				var participant := "precursor" if event.id == "h_pressure" else "region"
				event.effects.append_array(_catalog.records(definition,participant,"region","region","",{}))
				if participant not in event.actor_ids:
					event.actor_ids.append(participant)
				break

func _discovery() -> void:
	var items: Array = _catalog.data.discoveries.duplicate()
	items.sort()
	var key: String = items[HistoryV4Catalog.rng(_result.seed, "discovery").randi_range(0, items.size()-1)]
	_result.configuration.discovery_motif = key
	if not _result.objective_timeline.any(func(row: HistoricalEvent) -> bool: return row.id == "h_discovery"):
		var event := HistoricalEvent.new()
		event.id = "h_discovery"
		event.year = -19
		event.event_type = HistoricalEvent.Type.ANOMALOUS_DISCOVERY
		event.cause_domain = "unknown"
		event.scope = "local"
		event.actor_ids = [_current_ids()[0]]
		event.location_ids = ["region"]
		event.cause_event_ids = [_result.entity(event.actor_ids[0]).created_event_id]
		event.effects = [{"kind": "discovery", "id": "unknown_object", "location_id": "region", "observation": key, "origin": "unknown"}]
		_result.objective_timeline.append(event)
	for event in _result.objective_timeline:
		if event.id != "h_discovery":
			continue
		event.narrative_key = "discovery_" + key
		event.effects[0].observation = key
		event.effects.append({"kind": "history_record", "record_type": "discovery", "record_id": key,
			"entity_id": event.actor_ids[0], "reference_id": event.actor_ids[0], "project_id": "",
			"data": {"origin": "unknown", "purpose": "unknown", "same_person": "unknown"}})

func _group(id: String) -> void:
	var entity := HistoricalEntity.new()
	entity.id = id
	entity.name = id
	entity.kind = "group"
	_result.entities.append(entity)

func _satisfied(required: Array) -> bool:
	return required.all(func(key: String) -> bool: return _facts.has(key))

func _event(id: String, year: int, key: String, participant: String, facility: String, cohort: String, project_id: String, causes: Array, substitutions: Dictionary, extras: Array[Dictionary] = []) -> HistoricalEvent:
	var definition := _catalog.definition(key)
	var event := HistoricalEvent.new()
	event.id = id
	event.year = year
	event.event_type = HistoricalEvent.Type.HISTORY_RECORD
	event.narrative_key = key
	event.actor_ids = [participant]
	event.location_ids = ["region"]
	event.scope = "regional"
	event.cause_domain = definition.domain
	event.cause_event_ids.assign(causes)
	for requirement: String in definition.requires:
		if _facts.has(requirement) and _facts[requirement] not in event.cause_event_ids:
			event.cause_event_ids.append(_facts[requirement])
	event.effects = extras.duplicate(true)
	event.effects.append_array(_catalog.records(definition, participant, facility, cohort, project_id, substitutions))
	for effect in event.effects:
		for field in ["entity_id", "reference_id"]:
			if effect.has(field) and effect[field] not in event.entity_ids:
				event.entity_ids.append(effect[field])
		if effect.kind == "activate":
			_result.entity(effect.entity_id).created_event_id = event.id
		elif effect.kind == "history_record":
			_facts[effect.record_id] = event.id
	if definition.category == "scar":
		_scar_count += 1
	_result.objective_timeline.append(event)
	return event

func _aftermath(id: String, year: int, participant: String, previous: String, effects: Array[Dictionary]) -> void:
	var event := HistoricalEvent.new()
	event.id = id
	event.year = year
	event.event_type = HistoricalEvent.Type.HISTORY_RECORD
	event.narrative_key = "history_custody"
	event.actor_ids = [participant]
	event.entity_ids = [participant, effects[0].reference_id]
	event.location_ids = ["region"]
	event.cause_event_ids = [previous, _result.entity(participant).created_event_id]
	event.effects = effects
	_result.objective_timeline.append(event)

func _current_ids() -> Array[String]:
	var ids: Array[String] = []
	for entity in _result.entities:
		if entity.kind == "faction" and entity.retired_event_id.is_empty():
			ids.append(entity.id)
	ids.sort()
	return ids
