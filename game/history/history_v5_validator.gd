class_name HistoryV5Validator
extends HistoryV4Validator

func _init(populations:SocialPopulationCatalog=null,incidents:SocialIncidentCatalog=null,catalog:HistoryV4Catalog=null)->void:
	super(populations,incidents,catalog if catalog!=null else HistoryV5Catalog.new())

func validate(result: HistoryResult, replay: HistoryResult = null) -> Dictionary:
	var report := {"errors": [], "warnings": [], "determinism": "not_checked", "scars": {}}
	var issues: Array = report.errors
	if result.generation_version != 5 or result.architecture_version != 3 or result.canon != HistoryV4Compatibility.canon():
		issues.append("version: v5 Canon/version mismatch")
	if result.configuration.get("v5_revision") != _catalog.data.revision:
		issues.append("version: v5 authored revision mismatch")
	# Lifecycle and population provenance are checked independently of the old
	# density rule. Missing motives and unused causal links are valid here.
	var view := HistoryV4Compatibility.legacy_view(result)
	var legacy_entities := {}
	for entity in view.entities:legacy_entities[entity.id]=entity
	var base_validator := HistoryValidator.new(_populations,_incidents)
	base_validator._lifecycle(view,legacy_entities,issues,true)
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
		var active_before:Dictionary=active.duplicate()
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
			var valid_reference:bool=active.has(effect.reference_id) or (effect.data.has("observed_materials") and active_before.has(effect.reference_id))
			if effect.entity_id not in event.actor_ids or not valid_reference:
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
				if effect.data.has("observed_materials"):
					if effect!=HistoryV5Materials.manifest_for(event,HistoryV5Catalog.archaeology_content()):issues.append("evidence: fabricated custody material manifest")
				elif effect.record_type != "institution" or effect.record_id not in ["project_remains_custody", "scar_memory_register"] or effect.data.get("biological_descent") != false:
					issues.append("evidence: invalid remains custody")
			else:
				# Plain topology/social events carry separately authorized manifests.
				if definition.is_empty() and effect.data.has("observed_materials"):
					if effect!=HistoryV5Materials.manifest_for(event,HistoryV5Catalog.archaeology_content()):issues.append("evidence: fabricated ordinary material manifest")
				else:observed.append(effect)
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
	if result.objective_timeline.size()>140 or project_stages.size()>2:
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
	report.scars = {"important_events": result.objective_timeline.size(), "direct_count": direct.size(), "projection_coverage": float(direct.size()) / maxi(1,result.objective_timeline.size())}
	_archaeology(result,events,issues)
	_claims(result, events, issues)
	_canonical_ids(result, issues)
	if replay != null:
		report.determinism = "pass" if result.canonical_output() == replay.canonical_output() else "fail"
		if report.determinism == "fail":
			issues.append("determinism: same-seed replay differs")
	return report

func _archaeology(result:HistoryResult,events:Dictionary,issues:Array)->void:
	if result.archaeology!=HistoryArchaeology.new().derive(result):
		issues.append("evidence: archaeology differs from objective observations")
	for association:Dictionary in result.historical_associations:
		if association.get("relationship")!="historical_association" or not events.has(association.get("from_event")) or not events.has(association.get("to_event")):
			issues.append("provenance: invalid historical association")
	var content:=HistoryV5Catalog.archaeology_content()
	var action_ids:Array=content.actions.map(func(row:Dictionary)->String:return row.id)
	var traces:Dictionary={}
	for trace:Dictionary in result.archaeology.traces:
		if traces.has(trace.id):issues.append("evidence: duplicate Trace")
		traces[trace.id]=trace
		if trace.source_event_ids.is_empty() or not trace.source_event_ids.all(func(id:String)->bool:return events.has(id)) or result.entity(trace.source_entity_id)==null:
			issues.append("provenance: Trace source missing")
	var questions:Dictionary={}
	for question:Dictionary in result.archaeology.questions:
		questions[question.id]=question
		var sources:Dictionary={}
		var contexts:Dictionary={}
		for id:String in question.evidence_trace_ids:
			if not traces.has(id):issues.append("evidence: Question references missing Trace");continue
			for source:String in traces[id].source_event_ids:sources[source]=true
			for context:String in traces[id].context_ids:contexts[context]=true
		if question.evidence_trace_ids.size()<3 or question.evidence_trace_ids.size()>5 or sources.size()<2 or contexts.size()<2:issues.append("evidence: Question lacks distributed corroboration")
		if question.anchor_trace_ids.is_empty() or not question.anchor_trace_ids.all(func(id:String)->bool:return id in question.evidence_trace_ids):issues.append("evidence: Question lacks semantic anchor")
		if question.scope=="actual_subject" and not question.evidence_trace_ids.all(func(id:String)->bool:return traces.has(id) and traces[id].subject_id==question.subject_id):issues.append("evidence: Question bundles unrelated subjects")
		if not question.stakeholder_ids.all(func(id:String)->bool:return result.present.active_factions.any(func(row:Dictionary)->bool:return row.id==id)):issues.append("provenance: retired or invented current stakeholder")
		if question.ethical_answer!=null or question.truth_policy!="recorded_source_assertions_only":issues.append("mystery: Question assigns unsupported truth")
	for hook:Dictionary in result.archaeology.interactions:
		if not hook.target_trace_ids.all(func(id:String)->bool:return traces.has(id)) or hook.information_gain!="source_assertions_only" or hook.ethical_answer!=null:issues.append("evidence: unsupported interaction")
		elif not hook.target_trace_ids.all(func(id:String)->bool:return HistoryArchaeology.hook_eligible(hook,traces[id])):issues.append("evidence: interaction lacks material affordance")
		if hook.get("historical_condition_asserted",true):issues.append("evidence: runtime condition asserted as history")
	for consequence:Dictionary in result.archaeology.consequences:
		if not questions.has(consequence.question_id) or consequence.action_type not in action_ids or consequence.historical_truth_mutation or consequence.world_mutation!="consumer_proposal_only":issues.append("mystery: unsupported actionable consequence")
		elif consequence.subject_id!=questions[consequence.question_id].subject_id or consequence.anchor_trace_ids!=questions[consequence.question_id].anchor_trace_ids or consequence.execution_requirements.is_empty():issues.append("evidence: consequence loses subject, anchor or current execution checks")

func _canonical_ids(result:HistoryResult,issues:Array)->void:
	# Archaeology is derived and compared exactly above. Scan the authoritative
	# fields once rather than recursing through hundreds of copies of source facts.
	var serialized:=result.to_dict()
	serialized.erase("validation_report")
	serialized.erase("archaeology")
	_scan_ids(serialized,issues)
