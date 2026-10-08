extends SceneTree

func bump(counts:Dictionary,key:String,amount:int=1)->void:
	counts[key]=int(counts.get(key,0))+amount

func _init()->void:
	var count:=5000
	var path:="res://docs/reviews/history_v5/statistics_round1.json"
	for arg:String in OS.get_cmdline_user_args():
		if arg.is_valid_int():count=int(arg)
		elif arg.ends_with(".json"):path=arg
	var content:=HistoryV5Catalog.archaeology_content()
	var report:Dictionary={"generation_version":5,"authored_revision":HistoryV5Catalog.new().data.revision,"archaeology_revision":content.revision,"seed_range":[1,count],"worlds":count,"hard_failures":{},"examples":[],"families":{},"formation_distribution":{},"operations":{},"episodes":{},"project_types":{},"scar_types":{},"trace_categories":{},"question_classifications":{},"interaction_types":{},"action_types":{},"content_reachability":{"traces":{},"questions":{},"interactions":{}},"causal_edges":{"project":0,"scar":0,"topology":0,"cross_episode":0,"other":0},"totals":{"events":0,"events_with_causes":0,"non_project_scar_events":0,"non_project_scar_events_with_causes":0,"traces":0,"major_questions":0,"minor_discoveries":0,"interactions":0,"consequences":0,"shared_question_traces":0,"evidence_links":0,"contexts":0,"question_source_diversity":0,"question_context_diversity":0},"question_budget_distribution":{},"faction_count_distribution":{},"structural_signature_count":0,"implemented_world_action_count":0,"consumer_contract_only":true}
	var signatures:Dictionary={}
	report.causal_density={"project_internal_edges":0,"scar_internal_edges":0,"topology_edges":0,"cross_episode_edges":0,"prerequisite_boundary_edges":0,"other_internal_edges":0}
	report.gameplay_metrics={"traces_multiple_possible_uses":0,"questions_with_consequences":0,"documentary_only_questions":0,"passive_reading_only_questions":0,"interaction_families_per_question":{},"engine_bound_question_count":0,"implemented_action_executions":0}
	var generator:=HistoryGenerator.new()
	var begin:=Time.get_ticks_msec()
	for seed in range(1,count+1):
		var result:=generator.generate(seed)
		for issue:String in result.validation_report.errors:
			bump(report.hard_failures,issue.split(":")[0])
			if report.examples.size()<20:report.examples.append({"seed":seed,"issue":issue})
		var replay:=generator.generate(seed)
		if result.canonical_output()!=replay.canonical_output():bump(report.hard_failures,"replay")
		var family:String=result.configuration.topology_family
		if not report.families.has(family):report.families[family]={"worlds":0,"faction_count_distribution":{},"formation_distribution":{},"operations":{},"lineage_depth_distribution":{},"direct_heirs":0,"newcomers":0,"active_factions":0}
		var local:Dictionary=report.families[family]
		bump(local,"worlds")
		bump(local.faction_count_distribution,str(result.present.active_factions.size()))
		bump(report.faction_count_distribution,str(result.present.active_factions.size()))
		var operation_sequence:Array[String]=[]
		for faction:Dictionary in result.present.active_factions:
			bump(local,"active_factions")
			bump(local.formation_distribution,faction.formation_origin)
			bump(report.formation_distribution,faction.formation_origin)
			bump(local.lineage_depth_distribution,str(depth(result,faction.id)))
			if faction.political_continuity:bump(local,"direct_heirs")
			if faction.formation_origin=="newcomer_formation":bump(local,"newcomers")
		var events:Dictionary={}
		for event in result.objective_timeline:events[event.id]=event
		for event in result.objective_timeline:
			bump(report.totals,"events")
			if not event.cause_event_ids.is_empty():bump(report.totals,"events_with_causes")
			var category:=edge_category(event)
			if category not in ["project","scar"]:
				bump(report.totals,"non_project_scar_events")
				if not event.cause_event_ids.is_empty():bump(report.totals,"non_project_scar_events_with_causes")
			for source:String in event.cause_event_ids:
				bump(report.causal_edges,category)
				var target_scope:=causal_scope(event)
				var source_scope:=causal_scope(events[source])
				if category=="topology":bump(report.causal_density,"topology_edges")
				elif target_scope==source_scope:
					bump(report.causal_density,"scar_internal_edges" if target_scope.begins_with("scar/") else "project_internal_edges" if target_scope.begins_with("project/") else "other_internal_edges")
				elif boundary_prerequisite(event,events[source]):bump(report.causal_density,"prerequisite_boundary_edges")
				else:bump(report.causal_density,"cross_episode_edges")
				if event.id.begins_with("v4_episode") and events.has(source) and source.begins_with("v4_episode") and source.get_slice("_",2)!=event.id.get_slice("_",2):bump(report.causal_edges,"cross_episode")
			if event.id.begins_with("t_"):
				bump(local.operations,event.type_name())
				bump(report.operations,event.type_name())
				operation_sequence.append(event.type_name())
		for episode:String in result.configuration.regional_episodes:bump(report.episodes,episode)
		for project:Dictionary in result.present.civilizational_projects:bump(report.project_types,project.archetype)
		for scar:Dictionary in result.present.civilizational_scars:bump(report.scar_types,scar.record_id)
		var archetype_seen:Dictionary={"traces":{},"questions":{},"interactions":{}}
		var trace_map:Dictionary={}
		for trace:Dictionary in result.archaeology.traces:
			bump(report.trace_categories,trace.category)
			trace_map[trace.id]=trace
			archetype_seen.traces[trace.archetype_id]=true
			if trace.question_ids.size()>1:bump(report.totals,"shared_question_traces")
			if trace.interaction_families.size()>1:bump(report.gameplay_metrics,"traces_multiple_possible_uses")
		for question:Dictionary in result.archaeology.questions:
			bump(report.question_classifications,question.classification)
			archetype_seen.questions[question.archetype_id]=true
			bump(report.totals,"evidence_links",question.evidence_trace_ids.size())
			var sources:Dictionary={}
			var contexts:Dictionary={}
			for id:String in question.evidence_trace_ids:
				for source:String in trace_map[id].source_event_ids:sources[source]=true
				for context:String in trace_map[id].context_ids:contexts[context]=true
			bump(report.totals,"question_source_diversity",sources.size())
			bump(report.totals,"question_context_diversity",contexts.size())
			var interaction_families:Dictionary={}
			var reading_only:=true
			for hook:Dictionary in result.archaeology.interactions:
				if question.id not in hook.question_ids:continue
				interaction_families[hook.interaction_type]=true
				if hook.archetype_id not in ["read_telemetry","read_guidance_log"]:reading_only=false
			bump(report.gameplay_metrics.interaction_families_per_question,str(interaction_families.size()))
			if reading_only:bump(report.gameplay_metrics,"passive_reading_only_questions")
			if question.evidence_trace_ids.all(func(id:String)->bool:return trace_map[id].category=="documentary"):bump(report.gameplay_metrics,"documentary_only_questions")
			if result.archaeology.consequences.any(func(row:Dictionary)->bool:return row.question_id==question.id):bump(report.gameplay_metrics,"questions_with_consequences")
		for hook:Dictionary in result.archaeology.interactions:
			bump(report.interaction_types,hook.interaction_type)
			archetype_seen.interactions[hook.archetype_id]=true
		for action:Dictionary in result.archaeology.consequences:bump(report.action_types,action.action_type)
		for collection:String in archetype_seen:
			for key:String in archetype_seen[collection]:bump(report.content_reachability[collection],key)
		for pair:Array in [["traces","traces"],["major_questions","questions"],["interactions","interactions"],["consequences","consequences"],["contexts","contexts"]]:bump(report.totals,pair[0],result.archaeology[pair[1]].size())
		bump(report.totals,"minor_discoveries",result.archaeology.minor_discovery_count)
		bump(report.question_budget_distribution,str(result.archaeology.questions.size()))
		signatures[JSON.stringify([family,operation_sequence,result.configuration.regional_episodes,result.present.civilizational_projects.map(func(row:Dictionary)->String:return row.archetype),result.present.civilizational_scars.map(func(row:Dictionary)->String:return row.record_id)])]=true
		if seed%100==0:print("v5 corpus %d/%d; elapsed%.1fs; failure categories%d" % [seed,count,(Time.get_ticks_msec()-begin)/1000.0,report.hard_failures.size()])
	report.structural_signature_count=signatures.size()
	report.elapsed_seconds=(Time.get_ticks_msec()-begin)/1000.0
	report.explanation_coverage=float(report.totals.events_with_causes)/maxi(1,report.totals.events)
	report.non_project_scar_explanation_coverage=float(report.totals.non_project_scar_events_with_causes)/maxi(1,report.totals.non_project_scar_events)
	report.gameplay_metrics.passive_reading_only_contract_percentage=100.0*report.gameplay_metrics.passive_reading_only_questions/maxi(1,report.totals.major_questions)
	report.gameplay_metrics.documentary_only_question_percentage=100.0*report.gameplay_metrics.documentary_only_questions/maxi(1,report.totals.major_questions)
	report.unreachable={}
	for collection:String in ["traces","questions","interactions"]:
		report.unreachable[collection]=content[collection].map(func(row:Dictionary)->String:return row.id).filter(func(id:String)->bool:return not report.content_reachability[collection].has(id))
	var file:=FileAccess.open(path,FileAccess.WRITE)
	file.store_string(JSON.stringify(report,"\t")+"\n")
	print("Saved "+path+"; hard failures "+str(report.hard_failures))
	quit(0 if report.hard_failures.is_empty() else 1)

func edge_category(event:HistoricalEvent)->String:
	if event.id.begins_with("v4_project"):return "project"
	if event.id.begins_with("v4_scar"):return "scar"
	if event.id.begins_with("t_"):return "topology"
	return "other"

func depth(result:HistoryResult,id:String)->int:
	var entity:=result.entity(id)
	if entity==null or entity.parent_ids.is_empty():return 0
	var value:=0
	for parent:String in entity.parent_ids:value=maxi(value,depth(result,parent)+1)
	return value

func causal_scope(event:HistoricalEvent)->String:
	var key:String=event.narrative_key
	if "__" in key:
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.reference_id.ends_with("_facility"):return "scar/"+effect.reference_id
	if event.id.begins_with("v4_project"):
		return "project/"+event.id.get_slice("_",2)
	if event.id.begins_with("v4_scar"):return "scar/independent"
	if event.id.begins_with("v4_episode"):return "regional/"+event.id.get_slice("_",2)
	if event.id.begins_with("s_"):return "social/"+event.id.get_slice("_",1)
	if event.id.begins_with("t_"):return "topology"
	if event.id in ["h_found","h_body"]:return "founding"
	return event.id

func boundary_prerequisite(target:HistoricalEvent,source:HistoricalEvent)->bool:
	# These edges prove recorded population/institution/site availability, not
	# motives, lifestyles or a continuous regional explanatory history.
	if source.id.begins_with("t_") and (target.id.begins_with("s_") or target.id.begins_with("v4_")):return true
	if source.id=="v4_planning_context" and target.id.begins_with("v4_project"):return true
	if source.id=="h_found" and target.id.begins_with("v4_"):return true
	if source.id=="h_collapse" and target.narrative_key=="site_reuse":return true
	return false
