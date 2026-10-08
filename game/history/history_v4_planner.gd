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
	var context: String = _result.configuration.pressure_domain
	_event("v4_planning_context",_year_of("h_found")+2,"planning_context_"+context,"precursor","region","region","",["h_found"],{})
	var roll := _rng(seed, "project/budget").randi_range(0, 99)
	var budget := 0 if roll < 40 else 1 if roll < 90 else 2
	_result.configuration.project_budget = budget
	_result.configuration.scar_budget = 2
	var pool := _catalog.sorted_rows("projects")
	for slot in range(budget):
		var selected: Dictionary = _context_pick(pool,"project/choice/%d" % slot)
		pool.erase(selected)
		_project(selected, slot)
	if _scar_count < 2 and _rng(seed, "scar/budget").randi_range(0, 99) < 65:
		var existing: Array[String] = []
		for event in _result.objective_timeline:
			for effect in event.effects:
				if effect.kind=="history_record" and effect.record_type=="scar":
					existing.append(effect.record_id)
		var pool_scars: Array = _catalog.sorted_rows("scars").filter(func(row:Dictionary)->bool:return row.id not in existing)
		_scar(_context_pick(pool_scars,"scar/choice"))
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
	var start := -472 + slot * 6 + _rng(_result.seed, "project/dates/%d" % slot).randi_range(0, 5)
	var lifetime: int = _year_of(_result.entity("precursor").retired_event_id)-_year_of("h_found")
	var alternatives: Array = definition.outcomes.filter(func(ending:Array)->bool:return _chain_dates(["project_authorization","resource_concentration"]+definition.stages+ending,0)[-1] < lifetime-16)
	var outcome_index := _rng(_result.seed, "project/outcome/" + definition.id).randi_range(0, alternatives.size() - 1)
	var ending: Array = alternatives[outcome_index]
	var chain: Array = ["project_authorization", "resource_concentration"] + definition.stages + ending
	var duration: int = _chain_dates(chain,0)[-1]
	start=mini(start,_year_of(_result.entity("precursor").retired_event_id)-duration-8)
	start=maxi(start,_year_of("h_found")+3)
	var status := "unknown_outcome"
	var last: String = ending[-1]
	if last.ends_with("partial_success"):
		status = "partial_success"
	elif last.ends_with("bounded_success") or last in ["array_continues", "deep_bounded_return"]:
		status = "success"
	elif last.ends_with("abandonment") or last == "array_silence":
		status = "abandonment"
	elif _catalog.definition(last).category == "scar":
		status = "catastrophe"
	var previous := "v4_planning_context"
	var dates := _chain_dates(chain,start)
	for i in range(chain.size()):
		var year: int = dates[i]
		var key: String = chain[i]
		var id := prefix + "_%02d" % i
		var data := {"policy": definition.selection_policies[_rng(_result.seed, "project/selection/" + definition.id).randi_range(0, definition.selection_policies.size()-1)],
			"target_reference": cohort,
			"physical_launch": "ark_silent_denial" not in ending}
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

func _scar(definition: Dictionary) -> void:
	var selected: Dictionary = _context_pick(definition.variants,"scar/cause/"+definition.id)
	var chain: Array = selected.stages
	var facility := "v4_scar_facility"
	var cohort := "v4_scar_cohort"
	_group(facility)
	_group(cohort)
	var duration: int = _chain_dates(chain,0)[-1]
	var candidates: Array[HistoricalEntity] = []
	for entity in _result.entities:
		if entity.kind not in ["precursor_state","faction"]:
			continue
		var birth: int = _year_of(entity.created_event_id)
		var death: int = _year_of(entity.retired_event_id) if not entity.retired_event_id.is_empty() else -20
		if death-birth > duration+15:
			candidates.append(entity)
	# The actor is selected only from an actual polity with enough recorded life
	# for the full generational chain. A Scar may occur in early or later history.
	candidates.sort_custom(func(a:HistoricalEntity,b:HistoricalEntity)->bool:return a.id<b.id)
	var actor: HistoricalEntity = candidates[_rng(_result.seed,"scar/actor").randi_range(0,candidates.size()-1)]
	var earliest: int = _year_of(actor.created_event_id)+3
	var latest: int = (_year_of(actor.retired_event_id) if not actor.retired_event_id.is_empty() else -20)-duration-3
	var start: int = _rng(_result.seed,"scar/date").randi_range(earliest,latest)
	var dates := _chain_dates(chain,start)
	var previous: String = actor.created_event_id
	for i in range(chain.size()):
		var extras: Array[Dictionary] = []
		if i == 0:
			extras = [{"kind": "activate", "entity_id": facility}, {"kind": "activate", "entity_id": cohort}]
		var id := "v4_scar_%02d" % i
		_event(id, dates[i], chain[i], actor.id, facility, cohort, "", [previous],{"target_reference":cohort,"physical_launch":true}, extras)
		previous = id
	var participant: String = _current_ids()[0]
	_aftermath("v4_scar_memory", -14, participant, previous, [{"kind": "history_record", "record_type": "institution", "record_id": "scar_memory_register",
		"entity_id": participant, "reference_id": facility, "project_id": "", "data": {"register": "surviving_records", "biological_descent": false}}])

func _pressure_response() -> void:
	var possible := _catalog.sorted_rows("pressures").filter(func(row: Dictionary) -> bool: return _generator._incidents.gate_open(row.gate) and _satisfied(row.requires))
	var specialized: Array = possible.filter(func(row: Dictionary) -> bool: return not row.requires.is_empty())
	if not specialized.is_empty() and _rng(_result.seed, "pressure/context").randi_range(0,99) < 65:
		possible = specialized
	var pressure: Dictionary = possible[_rng(_result.seed, "pressure").randi_range(0, possible.size()-1)]
	var responses := _catalog.sorted_rows("responses").filter(func(row: Dictionary) -> bool: return row.id in pressure.responses and _satisfied(row.requires))
	var specialized_responses: Array = responses.filter(func(row: Dictionary) -> bool: return not row.requires.is_empty())
	if not specialized_responses.is_empty() and _rng(_result.seed, "response/context").randi_range(0,99) < 65:
		responses = specialized_responses
	if responses.is_empty():
		return
	var response: Dictionary = responses[_rng(_result.seed, "response").randi_range(0, responses.size()-1)]
	var outcomes: Array = response.collapses.filter(func(key: String) -> bool: return not _catalog.definition("collapse_" + key).is_empty() and _satisfied(_catalog.definition("collapse_" + key).requires))
	if outcomes.is_empty():
		outcomes = ["administrative_breakdown"]
	var collapse: String = outcomes[_rng(_result.seed, "collapse").randi_range(0, outcomes.size()-1)]
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
	var key: String = items[_rng(_result.seed, "discovery").randi_range(0, items.size()-1)]
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
	return required.all(func(key: String) -> bool: return not _source("precursor",key,-388).is_empty())

func _source(actor:String,key:String,year:int)->String:
	var found: String = ""
	var latest: int = -601
	for row: Dictionary in _facts.get(actor+"/"+key,[]):
		if row.year<=year and row.year>=latest:
			found=row.id
			latest=row.year
	return found

func _year_of(id:String)->int:
	for event in _result.objective_timeline:
		if event.id==id:
			return event.year
	return 0

func _context_pick(rows:Array,namespace_id:String)->Dictionary:
	rows=rows.duplicate(true)
	rows.sort_custom(func(a:Dictionary,b:Dictionary)->bool:return a.id<b.id)
	var domain: String = _result.configuration.pressure_domain
	var total := 0
	var weights: Array[int] = []
	for row:Dictionary in rows:
		var weight: int = int(row.get("weight",1))
		weight += int(row.get("context_weights",{}).get(domain,0))
		if row.has("domain") and row.domain==domain:
			weight*=2
		if row.has("variants"):
			for variant:Dictionary in row.variants:
				if variant.domain==domain:
					weight+=int(variant.weight)
		weights.append(weight)
		total+=weight
	var draw := _rng(_result.seed,namespace_id).randi_range(1,total)
	for i in range(rows.size()):
		draw-=weights[i]
		if draw<=0:
			return rows[i]
	return rows[-1]

func _chain_dates(chain:Array,start:int)->Array[int]:
	var dates: Array[int] = []
	var year := start
	var scar_start := -1
	var activation := start
	for i in range(chain.size()):
		var definition := _catalog.definition(chain[i])
		if str(chain[i]).ends_with("_population"):
			scar_start=i
		if chain[i]=="array_activation":
			activation=year
		if chain[i]=="signal_fixation":
			year=maxi(year,activation+24)
		if chain[i]=="adaptive_simplification_program_generational_program":
			year=maxi(year,start+72)
		if scar_start>=0 and str(chain[i]).begins_with("imposed_cognitive_regression__") and str(chain[i]).ends_with("_stabilization"):
			year=maxi(year,dates[scar_start]+84)
		if scar_start>=0 and str(chain[i]).begins_with("chosen_cognitive_regression__") and str(chain[i]).ends_with("_measurement"):
			year=maxi(year,dates[scar_start]+60)
		if definition.category=="scar":
			var scar := _catalog.scar(definition.records[0].record_id)
			if scar_start>=0:
				year=maxi(year,dates[scar_start]+int(scar.min_years))
		dates.append(year)
		year+=6
	return dates

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
		var source := _source(participant,requirement,year)
		if not source.is_empty() and source not in event.cause_event_ids:
			event.cause_event_ids.append(source)
	if _result.entity(cohort)!=null and not _result.entity(cohort).created_event_id.is_empty() and _result.entity(cohort).created_event_id not in event.cause_event_ids:
		event.cause_event_ids.append(_result.entity(cohort).created_event_id)
	event.effects = extras.duplicate(true)
	event.effects.append_array(_catalog.records(definition, participant, facility, cohort, project_id, substitutions))
	for effect in event.effects:
		for field in ["entity_id", "reference_id"]:
			if effect.has(field) and effect[field] not in event.entity_ids:
				event.entity_ids.append(effect[field])
		if effect.kind == "activate":
			_result.entity(effect.entity_id).created_event_id = event.id
		elif effect.kind == "history_record":
			var fact_key: String = participant+"/"+effect.record_id
			if not _facts.has(fact_key):
				_facts[fact_key]=[]
			_facts[fact_key].append({"id":event.id,"year":event.year})
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

func _rng(seed:int,namespace_id:String)->RandomNumberGenerator:
	return HistoryV4Catalog.rng(seed,namespace_id)
