class_name HistoryV4Validator
extends RefCounted

var _populations: SocialPopulationCatalog
var _incidents: SocialIncidentCatalog
var _catalog: HistoryV4Catalog

func _init(populations: SocialPopulationCatalog = null, incidents: SocialIncidentCatalog = null, catalog: HistoryV4Catalog = null) -> void:
	_populations = populations if populations != null else SocialPopulationCatalog.new()
	_incidents = incidents if incidents != null else SocialIncidentCatalog.new()
	_catalog = catalog if catalog != null else HistoryV4Catalog.new()

func validate(result: HistoryResult, replay: HistoryResult = null) -> Dictionary:
	var report := {"errors": [], "warnings": [], "determinism": "not_checked", "scars": {}}
	var issues: Array = report.errors
	if result.generation_version != 4 or result.architecture_version != 2 or result.canon != HistoryV4Compatibility.canon():
		issues.append("version: v4 Canon/version mismatch")
	if result.configuration.get("v4_revision") != _catalog.data.revision:
		issues.append("version: v4 authored revision mismatch")
	_compatibility(result,issues)
	# Explicit decoding validates the unchanged political/population/social schema.
	# Added v4 records are validated below, never silently treated as legacy facts.
	var view := HistoryV4Compatibility.legacy_view(result)
	view.historical_claims = HistoryClaimBuilder.new().build(view)
	var base := HistoryValidator.new(_populations, _incidents).validate(view)
	issues.append_array(base.errors)
	report.warnings.append_array(base.warnings)
	var entities := {}
	for entity in result.entities:
		if entities.has(entity.id):
			issues.append("provenance: duplicate entity")
		entities[entity.id] = entity
		if entity.id.begins_with("v4_") and (entity.kind != "group" or not entity.parent_ids.is_empty() or not entity.population_origin_profile.is_empty()):
			issues.append("population: facility/cohort cannot invent a political lineage or species")
	var events := {}
	var active := {}
	var facts := {}
	var project_stages := {}
	var scar_count := 0
	for event in result.objective_timeline:
		if events.has(event.id):
			issues.append("chronology: duplicate event ID")
		if not events.is_empty() and event.year < int(events.values()[-1].year):
			issues.append("chronology: unsorted timeline")
		if event.year < -600 or event.year >= 0:
			issues.append("chronology: outside history window")
		for cause: String in event.cause_event_ids:
			if not events.has(cause) or events[cause].year > event.year:
				issues.append("chronology: missing, future or cyclic causal source " + event.id)
		for actor: String in event.actor_ids:
			if not active.has(actor):
				issues.append("provenance: actor not active " + event.id)
		var definition := _catalog.definition(event.narrative_key)
		if definition.is_empty() and event.cause_domain == "preservator_intervention":
			definition = _catalog.definition("v4_" + event.narrative_key)
		if event.event_type == HistoricalEvent.Type.HISTORY_RECORD and definition.is_empty() and event.narrative_key != "history_custody":
			issues.append("evidence: unknown v4 narrative")
		if not definition.is_empty():
			if not HistoryV4Catalog.gate_open(definition.gate,_populations,_incidents) or event.cause_domain != definition.domain:
				issues.append("population: gated content/domain mismatch")
			for required: String in definition.requires:
				var sources: Array = facts.get(event.actor_ids[0], {}).get(required, []) if not event.actor_ids.is_empty() else []
				if sources.is_empty() or not sources.any(func(source: String) -> bool: return source in event.cause_event_ids):
					issues.append("prerequisite: " + event.id + "/" + required)
			if definition.category == "scar":
				scar_count += 1
		var observed: Array = []
		for effect in event.effects:
			if event.event_type == HistoricalEvent.Type.HISTORY_RECORD and effect.kind not in ["activate","history_record"]:
				issues.append("evidence: unauthored v4 physical effect")
			if effect.kind == "activate":
				if active.has(effect.entity_id) or not entities.has(effect.entity_id) or entities[effect.entity_id].created_event_id != event.id:
					issues.append("provenance: invalid facility creation")
				active[effect.entity_id] = event.id
			elif effect.kind == "retire":
				active.erase(effect.entity_id)
			if effect.kind != "history_record":
				continue
			if not _record_schema(effect):
				issues.append("evidence: invalid history_record schema")
				continue
			if effect.entity_id not in event.actor_ids or not active.has(effect.reference_id):
				issues.append("provenance: observation lacks actual participant/reference")
			if effect.record_type == "project":
				var project := _catalog.project(effect.record_id)
				if project.is_empty() or effect.project_id != effect.record_id or effect.data.get("stage") != event.narrative_key:
					issues.append("project: unauthored archetype/stage")
				if not entities.has(effect.reference_id) or entities[effect.reference_id].kind!="group" or not effect.reference_id.ends_with("_facility"):
					issues.append("provenance: project lacks its actual facility")
				if effect.data.keys().size()!=4 or not ["stage","status","start_year","selection"].all(func(key:String)->bool:return effect.data.has(key)) or effect.data.get("selection") not in HistoryV4Catalog.SELECTIONS:
					issues.append("evidence: unauthored project metadata")
				if not project.is_empty() and effect.data.get("selection") not in project.selection_policies:
					issues.append("population: selection policy is incompatible with the actual Project")
				var project_key: String = effect.reference_id
				if not project_stages.has(project_key):
					project_stages[project_key] = []
				project_stages[project_key].append({"key": event.narrative_key, "event": event.id, "year": event.year, "data": effect.data})
			elif event.narrative_key == "history_custody":
				if effect.record_type != "institution" or effect.record_id not in ["project_remains_custody", "scar_memory_register"] or effect.data.get("biological_descent") != false:
					issues.append("evidence: invalid remains custody")
			else:
				observed.append(effect)
			# Record facts become available only after this event was checked.
			if not facts.has(effect.entity_id):
				facts[effect.entity_id] = {}
			if not facts[effect.entity_id].has(effect.record_id):
				facts[effect.entity_id][effect.record_id] = []
			facts[effect.entity_id][effect.record_id].append(event.id)
		if not definition.is_empty():
			_authored_records(event, definition, observed, entities, issues)
			if definition.category=="scar":
				_scar_chain(event,definition,events,issues)
		if event.id == "h_discovery":
			if definition.is_empty() or definition.category != "discovery" or event.effects[0].get("origin") != "unknown" or event.effects[0].get("observation") != result.configuration.discovery_motif:
				issues.append("mystery: generic discovery provenance/origin mismatch")
		events[event.id] = event
	if scar_count > 2 or scar_count != result.present.civilizational_scars.size() or project_stages.size() != int(result.configuration.project_budget):
		issues.append("budget: project/scar bounds mismatch")
	if result.objective_timeline.size()>110 or project_stages.size()>2:
		issues.append("budget: bounded history slice exceeded")
	for reference: String in project_stages:
		_project_chain(project_stages[reference], events, issues)
	for entity in result.entities:
		if not events.has(entity.created_event_id):
			issues.append("provenance: entity lacks construction/creation event")
	var projected := HistoryProjector.new().project(result.entities, result.objective_timeline)
	if result.present.to_dict() != projected.to_dict():
		issues.append("projection: Present differs from authoritative effects")
	var direct := projected.direct_scar_event_ids()
	report.scars = {"important_events": result.objective_timeline.size(), "direct_count": direct.size(), "causal_ratio": float(direct.size()) / maxi(1,result.objective_timeline.size())}
	_claims(result, events, issues)
	_canonical_ids(result, issues)
	if replay != null:
		report.determinism = "pass" if result.canonical_output() == replay.canonical_output() else "fail"
		if report.determinism == "fail":
			issues.append("determinism: same-seed replay differs")
	return report

func _record_schema(effect: Dictionary) -> bool:
	var fields := ["kind", "record_type", "record_id", "entity_id", "reference_id", "project_id", "data"]
	return effect.size() == fields.size() and fields.all(func(key: String) -> bool: return effect.has(key)) and effect.data is Dictionary and fields.slice(0,6).all(func(key: String) -> bool: return effect[key] is String and (key == "project_id" or not effect[key].is_empty()))

func _compatibility(result:HistoryResult,issues:Array)->void:
	var pressure:Dictionary={}
	var response:Dictionary={}
	for row:Dictionary in _catalog.data.pressures:
		if row.id==result.configuration.get("signature_pressure"):
			pressure=row
	for row:Dictionary in _catalog.data.responses:
		if row.id==result.configuration.get("signature_response"):
			response=row
	if pressure.is_empty() or response.is_empty() or response.id not in pressure.responses or result.configuration.get("signature_collapse") not in response.collapses:
		issues.append("prerequisite: incompatible authored pressure/response/collapse")
	var expected:Dictionary={"v4_pressure":"v4_"+str(result.configuration.get("signature_pressure")),"v4_response":"response_"+str(result.configuration.get("signature_response")),"v4_consequence":"collapse_"+str(result.configuration.get("signature_collapse"))}
	for id:String in expected:
		if not result.objective_timeline.any(func(event:HistoricalEvent)->bool:return event.id==id and event.narrative_key==expected[id]):
			issues.append("prerequisite: configuration differs from generated compatibility chain")

func _authored_records(event: HistoricalEvent, definition: Dictionary, observed: Array, entities: Dictionary, issues: Array) -> void:
	if observed.size() != definition.records.size():
		issues.append("evidence: missing/extra authored observations " + event.id)
		return
	for i in range(observed.size()):
		var effect: Dictionary = observed[i]
		var authored: Dictionary = definition.records[i]
		if effect.record_type != authored.record_type or effect.record_id != authored.record_id or effect.data.keys() != authored.facts.keys():
			issues.append("evidence: unauthored observation " + event.id)
			continue
		for field: String in authored.facts:
			var expected: Variant = authored.facts[field]
			var actual: Variant = effect.data[field]
			if expected is String and expected == "variable":
				if field == "policy" and actual not in HistoryV4Catalog.SELECTIONS:
					issues.append("population: unsupported selection")
				elif field == "physical_launch" and not actual is bool:
					issues.append("evidence: launch observation must record actual liftoff")
				elif field == "target_reference" and (not entities.has(actual) or entities[actual].kind != "group"):
					issues.append("population: nonexistent target")
				elif field == "target_reference" and entities[actual].created_event_id not in event.cause_event_ids:
					issues.append("provenance: target lacks its actual population registration source")
				elif field == "content_reference" and not _incidents.authorized(str(actual), "personhood_contact"):
					issues.append("population: unauthorized contact")
				elif field == "state" and actual not in ["orbital_containment", "wreck_or_launch_memorial"]:
					issues.append("evidence: unauthored ark remains")
			elif expected is String and expected == "participant":
				if actual != effect.entity_id:
					issues.append("provenance: perpetrator lacks actual reference")
			elif typeof(actual) != typeof(expected) or actual != expected:
				issues.append("mystery: authored physical observation changed " + event.id + "/" + field)
		if authored.target == "participant" and effect.reference_id != effect.entity_id:
			issues.append("provenance: invalid participant evidence")
		if authored.target == "cohort" and not effect.reference_id.ends_with("_cohort"):
			issues.append("population: missing actual cohort")
		if event.event_type==HistoricalEvent.Type.HISTORY_RECORD and authored.target=="facility" and effect.reference_id not in event.entity_ids:
			issues.append("provenance: missing actual site reference")

func _project_chain(stages: Array, events: Dictionary, issues: Array) -> void:
	var first: Dictionary = stages[0]
	var last: Dictionary = stages[-1]
	var archetype: String = ""
	for effect in events[first.event].effects:
		if effect.kind == "history_record" and effect.record_type == "project":
			archetype = effect.record_id
	var project := _catalog.project(archetype)
	if project.is_empty():
		return
	var keys: Array = stages.map(func(row: Dictionary) -> String: return row.key)
	var valid := false
	for ending: Array in project.outcomes:
		valid = valid or keys == ["project_authorization", "resource_concentration"] + project.stages + ending
	if not valid or last.year-first.year < 30 or last.data.get("status") not in HistoryV4Catalog.OUTCOMES or first.data.get("start_year") != first.year:
		issues.append("project: missing long-duration phase/outcome chain")
	var final_definition := _catalog.definition(last.key)
	var expected_status := "unknown_outcome"
	if str(last.key).ends_with("partial_success"):
		expected_status="partial_success"
	elif str(last.key).ends_with("bounded_success") or last.key in ["array_continues","deep_bounded_return"]:
		expected_status="success"
	elif str(last.key).ends_with("abandonment") or last.key=="array_silence":
		expected_status="abandonment"
	elif final_definition.get("category")=="scar":
		expected_status="catastrophe"
	if last.data.get("status")!=expected_status or project.get("success_policy")!="bounded_technical_success":
		issues.append("lore: project terminal status exceeds authored bounded result")
	for i in range(1,stages.size()):
		if stages[i-1].event not in events[stages[i].event].cause_event_ids:
			issues.append("prerequisite: disconnected project chain")
	for i in range(stages.size()-1):
		if stages[i].data.get("status")!="in_progress":
			issues.append("project: terminal status before consequence")

func _scar_chain(event:HistoricalEvent,definition:Dictionary,events:Dictionary,issues:Array)->void:
	var scar := _catalog.scar(definition.records[0].record_id)
	var variant: Dictionary = {}
	for row:Dictionary in scar.get("variants",[]):
		if row.stages[-1]==event.narrative_key:
			variant=row
	if variant.is_empty():
		issues.append("lore: unauthored Scar cause")
		return
	var sources := {}
	var pending: Array = event.cause_event_ids.duplicate()
	while not pending.is_empty():
		var id: String = pending.pop_back()
		if sources.has(id) or not events.has(id):
			continue
		sources[id]=events[id]
		pending.append_array(events[id].cause_event_ids)
	var previous: HistoricalEvent = null
	var cohort: String = ""
	for effect:Dictionary in event.effects:
		if effect.kind=="history_record" and effect.record_type=="population":
			cohort=effect.reference_id
	for key:String in variant.stages:
		var found: HistoricalEvent = event if key==event.narrative_key else null
		for source:HistoricalEvent in sources.values():
			if source.narrative_key==key and source.actor_ids==event.actor_ids:
				if key==variant.stages[0] and not source.effects.any(func(effect:Dictionary)->bool:return effect.kind=="history_record" and effect.reference_id==cohort):
					continue
				found=source
		if found==null:
			issues.append("prerequisite: Scar lacks actual independent source "+key)
			continue
		if previous!=null and previous.id not in found.cause_event_ids:
			issues.append("prerequisite: Scar source chain disconnected")
		if key==variant.stages[0] and event.year-found.year<int(scar.min_years):
			issues.append("chronology: Scar lacks long-term or generational observations")
		if str(key).ends_with("_stabilization") and previous!=null:
			if found.year-previous.year<54:
				issues.append("chronology: biological stabilization lacks generations after enforcement")
		if scar.id=="chosen_cognitive_regression" and str(key).ends_with("_measurement") and previous!=null:
			if found.year-previous.year<48:
				issues.append("chronology: chosen reduction is not measured across generations")
		for effect:Dictionary in found.effects:
			if effect.kind=="history_record" and effect.data.has("target_reference") and effect.data.target_reference!=cohort:
				issues.append("population: Scar policy/intervention targets a different cohort")
		previous=found

func _claims(result: HistoryResult, events: Dictionary, issues: Array) -> void:
	var current: Array = result.present.active_factions.map(func(row: Dictionary) -> String: return row.id)
	for claim in result.historical_claims:
		if claim.claimant_entity_id not in current or not events.has(claim.referenced_event_id) or claim.evidence != {"source_event_ids":[claim.referenced_event_id]} or claim.reference_scope != "event":
			issues.append("claims: missing physical provenance " + claim.referenced_event_id + " current=" + str(claim.claimant_entity_id in current) + " event=" + str(events.has(claim.referenced_event_id)) + " evidence=" + str(claim.evidence == {"source_event_ids":[claim.referenced_event_id]}))
		var lower := claim.interpretation.to_lower()
		for term in ["observer", "preservator", "planetary regulation network"]:
			if term in lower and "observer_scholarly_term" not in result.entity(claim.claimant_entity_id).knowledge_tags:
				issues.append("knowledge: scholarly terminology leaked")
		if not is_finite(claim.confidence) or claim.confidence < 0 or claim.confidence > 1:
			issues.append("claims: invalid confidence")

func _canonical_ids(result: HistoryResult, issues: Array) -> void:
	var serialized := result.to_dict()
	serialized.erase("validation_report")
	_scan_ids(serialized, issues)

func _scan_ids(value: Variant, issues: Array) -> void:
	if value is Dictionary:
		for key in value:
			_scan_ids(key,issues)
			_scan_ids(value[key],issues)
	elif value is Array:
		for item in value:
			_scan_ids(item,issues)
	elif value is String:
		for part in value.split(":"):
			if HistoryV4Compatibility.IDS.has(part) or part in HistoryV4Catalog.REMOVED_IDS or HistoryV4Catalog.REMOVED_IDS.any(func(id:String)->bool:return part.begins_with(id+"_")):
				issues.append("terminology: legacy canonical ID " + part)
