class_name HistoryArchaeology
extends RefCounted

var _content:Dictionary

func _init(content:Dictionary={}) -> void:
	_content=content if not content.is_empty() else HistoryV5Catalog.archaeology_content()

func derive(result:HistoryResult)->Dictionary:
	var output:Dictionary={"revision":_content.revision,"traces":[],"questions":[],"interactions":[],"consequences":[],"contexts":[],"minor_discovery_count":0}
	var definitions:Dictionary={}
	for row:Dictionary in _content.traces:definitions[row.id]=row
	var contexts:Dictionary={}
	var seen:Dictionary={}
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind!="history_record" or not effect.data.has("observed_materials"):continue
			for archetype:String in effect.data.observed_materials:
				if not definitions.has(archetype):continue
				var id:String="trace/"+event.id+"/"+archetype
				if seen.has(id):continue
				seen[id]=true
				var definition:Dictionary=definitions[archetype]
				var subject:String=effect.data.get("recorded_subject_id",effect.reference_id)
				var place:String=effect.entity_id if event.narrative_key=="history_custody" else subject
				var owner:String=effect.entity_id if _current(result,effect.entity_id) else "unassigned"
				var context_id:String=place+"/"+definition.category
				contexts[context_id]={"id":context_id,"source_entity_id":effect.reference_id,"bound_subject_id":place,"context_type":definition.category,"placement":"consumer_must_bind_map_or_contact","current_owner":owner}
				var records:Array[String]=[]
				for source:Dictionary in event.effects:
					if source.kind in ["history_record","social_record"] and not source.get("data",{}).has("observed_materials"):records.append(source.record_id)
				if event.id.begins_with("t_"):records.append("@topology")
				if event.narrative_key in ["newcomer_entry","population_join","population_migration"]:records.append("@arrival")
				if event.narrative_key=="site_reuse":records.append("@reuse")
				if event.narrative_key in ["trade_reopening","local_alliance"]:records.append("@trade")
				output.traces.append({"id":id,"archetype_id":archetype,"display_name":definition.display_name,"category":definition.category,"theme":effect.data.get("material_theme",definition.theme),"source_event_ids":[event.id],"source_entity_id":effect.reference_id,"subject_id":subject,"custodian_id":owner,"context_ids":[context_id],"assertions":_assertions(event,definition),"anchor_record_ids":records,"source_year":event.year,"salience":3 if event.id.begins_with("v4_scar") else 2 if event.id.begins_with("v4_project") else 1 if event.event_type==HistoricalEvent.Type.SOCIAL_INCIDENT else 0,"tags":definition.tags.duplicate(),"interaction_families":definition.interaction_families.duplicate(),"historical_state":"recorded_surviving_evidence","current_operation":"unverified","question_ids":[]})
	var ids:Array=contexts.keys()
	ids.sort()
	for id:String in ids:output.contexts.append(contexts[id])
	output.traces.sort_custom(func(a:Dictionary,b:Dictionary)->bool:return a.id<b.id)
	var candidates:Array=[]
	var question_definitions:Array=_content.questions.duplicate()
	question_definitions.sort_custom(func(a:Dictionary,b:Dictionary)->bool:return a.id<b.id)
	for definition:Dictionary in question_definitions:
		var matching:Array=output.traces.filter(func(trace:Dictionary)->bool:return trace.theme==definition.theme or trace.theme=="custody" or trace.theme in definition.get("support_themes",[]))
		var subjects:Dictionary={}
		for trace:Dictionary in matching:
			if trace.theme==definition.theme and _anchor(trace,definition):subjects["region" if definition.scope=="regional_comparison" else trace.subject_id]=true
		var subject_ids:Array=subjects.keys()
		subject_ids.sort()
		for subject:String in subject_ids:
			var scoped:Array=matching.filter(func(trace:Dictionary)->bool:return (subject=="region" and trace.theme==definition.theme) or trace.subject_id==subject)
			var sources:Dictionary={}
			var places:Dictionary={}
			var salience:=0
			for trace:Dictionary in scoped:
				sources[trace.source_event_ids[0]]=true
				places[trace.context_ids[0]]=true
				salience=maxi(salience,trace.salience)
			if scoped.size()>=3 and sources.size()>=2 and places.size()>=2:candidates.append({"id":definition.id+"/"+subject,"definition":definition,"subject_id":subject,"traces":scoped,"salience":salience})
	candidates.sort_custom(func(a:Dictionary,b:Dictionary)->bool:return a.id<b.id)
	var budget:=HistoryV5Catalog.stream(result.seed,"archaeology/questions/budget").randi_range(3,6)
	var used_subjects:Dictionary={}
	var used_themes:Dictionary={}
	for slot in range(mini(budget,candidates.size())):
		var fresh:Array=candidates.filter(func(row:Dictionary)->bool:return not used_subjects.has(row.definition.theme+"/"+row.subject_id))
		if fresh.is_empty():fresh=candidates
		var highest:=0
		for row:Dictionary in fresh:highest=maxi(highest,row.salience)
		var pool:Array=fresh.filter(func(row:Dictionary)->bool:return row.salience==highest)
		var different:Array=pool.filter(func(row:Dictionary)->bool:return not used_themes.has(row.definition.theme))
		if not different.is_empty():pool=different
		var selected:Dictionary=pool[HistoryV5Catalog.stream(result.seed,"archaeology/questions/%d" % slot).randi_range(0,pool.size()-1)]
		candidates.erase(selected)
		var definition:Dictionary=selected.definition
		used_subjects[definition.theme+"/"+selected.subject_id]=true
		used_themes[definition.theme]=true
		var remaining:Array=selected.traces.duplicate()
		var evidence:Array[String]=[]
		var sources:Dictionary={}
		var places:Dictionary={}
		var count:=mini(remaining.size(),HistoryV5Catalog.stream(result.seed,"archaeology/evidence/"+selected.id).randi_range(3,5))
		while evidence.size()<count:
			remaining.sort_custom(func(a:Dictionary,b:Dictionary)->bool:
				var rank_a:=int(_anchor(a,definition) and evidence.is_empty())*100+int(not sources.has(a.source_event_ids[0]))*4+int(not places.has(a.context_ids[0]))*8
				var rank_b:=int(_anchor(b,definition) and evidence.is_empty())*100+int(not sources.has(b.source_event_ids[0]))*4+int(not places.has(b.context_ids[0]))*8
				return rank_a>rank_b or (rank_a==rank_b and (a.source_year>b.source_year or (a.source_year==b.source_year and a.id<b.id))))
			var trace:Dictionary=remaining.pop_front()
			evidence.append(trace.id)
			sources[trace.source_event_ids[0]]=true
			places[trace.context_ids[0]]=true
			trace.question_ids.append("question/"+selected.id)
		var stakeholders:Array[String]=_stakeholders(result,selected.subject_id,selected.traces)
		var question:Dictionary={"id":"question/"+selected.id,"archetype_id":definition.id,"text":definition.text,"theme":definition.theme,"classification":definition.classification,"subject_id":selected.subject_id,"scope":definition.scope,"anchor_record_ids":definition.required_anchor_records.duplicate(),"evidence_trace_ids":evidence,"required_evidence_count":3,"required_source_count":2,"required_context_count":2,"stakeholder_ids":stakeholders,"remaining_uncertainty":definition.remaining_uncertainty,"ethical_answer":null,"truth_policy":"recorded_source_assertions_only"}
		question.anchor_trace_ids=selected.traces.filter(func(trace:Dictionary)->bool:return trace.id in evidence and _anchor(trace,definition)).map(func(trace:Dictionary)->String:return trace.id)
		question.current_stakes=_current_stakes(result,stakeholders)
		output.questions.append(question)
		for action:String in _actions(definition.theme,definition.classification):
			output.consequences.append({"id":question.id+"/"+action,"question_id":question.id,"action_type":action,"subject_id":question.subject_id,"stakeholder_ids":stakeholders.duplicate(),"current_issue":{"decision":action,"recorded_subject_id":question.subject_id,"current_participant_ids":stakeholders.duplicate(),"present_need":_decision(action),"current_claims_are_interpretations":true,"unrecorded_motives":"unknown"},"execution_requirements":_requirements(action),"anchor_trace_ids":question.anchor_trace_ids.duplicate(),"evidence_trace_ids":evidence.duplicate(),"required_evidence_count":3,"required_source_count":2,"required_context_count":2,"permission_state":"locked_until_corroborated","world_mutation":"consumer_proposal_only","historical_truth_mutation":false})
			output.consequences[-1].current_issue.stakes=question.current_stakes.duplicate(true)
	var hooks:Array=_content.interactions.duplicate()
	hooks.sort_custom(func(a:Dictionary,b:Dictionary)->bool:return a.id<b.id)
	for trace:Dictionary in output.traces:
		var available:Array=hooks.filter(func(row:Dictionary)->bool:return hook_eligible(row,trace))
		var count:=mini(available.size(),HistoryV5Catalog.stream(result.seed,"archaeology/hooks/budget/"+trace.id).randi_range(2,4))
		for slot in range(count):
			var index:=HistoryV5Catalog.stream(result.seed,"archaeology/hooks/"+trace.id+"/%d" % slot).randi_range(0,available.size()-1)
			var hook:Dictionary=available[index].duplicate(true)
			available.remove_at(index)
			hook.archetype_id=hook.id
			hook.id="interaction/"+trace.id+"/"+hook.id
			hook.target_trace_ids=[trace.id]
			hook.question_ids=trace.question_ids.duplicate()
			hook.required_context_ids=trace.context_ids.duplicate()
			hook.evidence_gain_trace_ids=[trace.id]
			hook.implementation_status="consumer_hook"
			output.interactions.append(hook)
	output.minor_discovery_count=output.traces.filter(func(trace:Dictionary)->bool:return trace.question_ids.is_empty()).size()
	return output

static func hook_eligible(hook:Dictionary,trace:Dictionary)->bool:
	return trace.category in hook.eligible_categories and (hook.eligible_archetypes.is_empty() or trace.archetype_id in hook.eligible_archetypes)

func _anchor(trace:Dictionary,definition:Dictionary)->bool:
	return definition.required_anchor_records.any(func(id:String)->bool:
		if id.begins_with("@"):return id in trace.anchor_record_ids
		return trace.assertions.any(func(assertion:Dictionary)->bool:return assertion.get("source_record_id","")==id))

func _assertions(event:HistoricalEvent,definition:Dictionary)->Array:
	var assertions:Array=[]
	var types:Array={"physical":["site","observation","site_history"],"documentary":["observation","population","practice","cohort","bodily_change"],"institutional":["institution","project","scar","machine_contact"],"living":["population","cohort","bodily_change","observation"]}[definition.category]
	for i in range(event.effects.size()):
		var source:Dictionary=event.effects[i]
		if source.get("data",{}).has("observed_materials"):continue
		var kind:String=source.kind
		if kind in ["history_record","social_record"]:
			if source.record_type not in types:continue
			var values:Dictionary=source.get("data",{}) if kind=="history_record" else {"record_id":source.record_id,"operation":source.operation,"content_id":source.content_id,"reference_id":source.reference_id}
			for field:String in values:assertions.append({"id":event.id+"/effect/%d/%s" % [i,field],"source_event_id":event.id,"source_effect_index":i,"source_record_id":source.record_id,"field":field,"value":values[field]})
		elif (definition.category=="physical" and kind in ["ruin","settlement","reoccupy","discovery"]) or (definition.category=="documentary" and kind in ["population","activate","retire"]) or (definition.category=="institutional" and kind in ["relationship","reoccupy"]):
			for field:String in source:assertions.append({"id":event.id+"/effect/%d/%s" % [i,field],"source_event_id":event.id,"source_effect_index":i,"source_record_id":"","field":field,"value":source[field]})
	if assertions.is_empty():assertions.append({"id":event.id+"/recorded_event/"+definition.category,"source_event_id":event.id,"field":"recorded_event","value":event.narrative_key})
	# A consumer may annotate/format the learned dossier. Nested population and
	# measurement values must not alias authoritative objective effect data.
	return assertions.duplicate(true)

func _current(result:HistoryResult,id:String)->bool:
	return result.present.active_factions.any(func(row:Dictionary)->bool:return row.id==id)

func _stakeholders(result:HistoryResult,subject:String,traces:Array)->Array[String]:
	var ids:Array[String]=[]
	for trace:Dictionary in traces:
		if trace.custodian_id!="unassigned" and trace.custodian_id not in ids:ids.append(trace.custodian_id)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind in ["history_record","social_record"] and effect.get("reference_id","")==subject and _current(result,effect.entity_id) and effect.entity_id not in ids:ids.append(effect.entity_id)
	ids.sort()
	return ids

func _decision(action:String)->String:
	return {"transfer_archive":"choose a recipient among recorded custodians or a consumer-verified new recipient","expose_responsibility":"decide whether to disclose the recorded responsible authority and protect affected people","technical_procedure":"request expert verification of the recorded procedure before any present application","facility_activation":"choose a bounded local test only after a current equipment and safety check","keep_information_secret":"decide whether to withhold this corroborated dossier","alter_access_rights":"negotiate who can inspect the recorded subject under present authority","safer_route":"compare the recorded route with a current hazard survey before travel","destroy_evidence":"choose irreversible disposal only with current custody authority"}.get(action,"choose present access or handling of this subject's corroborated evidence")

func _current_stakes(result:HistoryResult,stakeholders:Array[String])->Dictionary:
	var positions:Array=[]
	var preferences:Dictionary={"infrastructure_guild":"inspect for bounded service use","religious_authority":"retain custodial control over access","village_union":"protect inhabited sites before reopening","trading_house":"negotiate access and protected copies","exchange_commune":"exchange records under shared access","modified_human_community":"require affected residents' consent","frontier_settlement_league":"survey routes before reopening","military_remnant":"control secure access","kinship_clan":"protect household records"}
	for faction:Dictionary in result.present.active_factions:
		if faction.id not in stakeholders:continue
		positions.append({"faction_id":faction.id,"present_role":faction.way_of_life,"candidate_position":preferences.get(faction.way_of_life,"negotiate custody and access"),"status":"current_issue_candidate_requires_dialogue_confirmation","historical_motive_inferred":false})
	var relationships:Array=result.present.relationships.filter(func(row:Dictionary)->bool:return row.a in stakeholders and row.b in stakeholders).duplicate(true)
	return {"positions":positions,"recorded_present_relationships":relationships,"history_explaining_these_positions":"not_generated","consumer_must_confirm_current_needs":true}

func _requirements(action:String)->Array[String]:
	var requirements:Array[String]=["current_context_bound","current_access_valid","consumer_execution_required"]
	if action in ["technical_procedure","material_recipient"]:requirements.append_array(["approved_current_protocol","current_consent","qualified_operator","recorded_procedure_verified"])
	if action in ["machine_bypass","facility_activation","facility_shutdown","usable_machinery"]:requirements.append_array(["verified_current_equipment","safe_isolation","approved_local_procedure"])
	if action in ["safer_route","hazard_prediction","reopen_site","seal_site"]:requirements.append("current_hazard_survey")
	if action in ["transfer_archive","alter_access_rights","destroy_evidence","reveal_custody"]:requirements.append("current_custody_authority")
	return requirements

func _actions(theme:String,classification:String)->Array[String]:
	var actions:Array[String]=["new_location_access","preserve_evidence","keep_information_secret"]
	if theme in ["ark","deep","meridian","habitat","residence","trade","orbit"]:actions.append_array(["safer_route","hazard_prediction","reopen_site","seal_site"])
	if theme in ["mind","autonomy","machine","cortical","infrastructure","sky","assimilation"]:actions.append_array(["machine_bypass","facility_activation","facility_shutdown","dialogue_evidence","usable_machinery"])
	if theme in ["genome","simplification","chosen","imposed","alteration","clone","reproduction"]:actions.append_array(["technical_procedure","material_recipient","destroy_evidence"])
	if theme in ["politics","migration","homeland","severance","reuse","clone"] or classification=="contested_interpretation":actions.append_array(["challenge_claim","support_claim","reveal_custody","transfer_archive","alter_access_rights"])
	if theme in ["extermination","imposed"]:actions.append("expose_responsibility")
	return actions
