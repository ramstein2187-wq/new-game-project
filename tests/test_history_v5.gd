extends SceneTree

var failures:Array[String]=[]
var checks:=0

func check(condition:bool,message:String)->void:
	checks+=1
	if not condition:failures.append(message)

func _init()->void:
	var frozen:Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_v5_legacy.json"))
	for version in [2,3,4]:
		var generator:=HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,version)
		for key:String in frozen.versions[str(version)]:check(generator.generate(int(key)).canonical_output().sha256_text()==frozen.versions[str(version)][key],"frozen generation%d seed%s" % [version,key])
	var generator:=HistoryGenerator.new()
	var families:Dictionary={}
	var operations:Dictionary={}
	for seed in range(1,257):
		var result:=generator.generate(seed)
		check(result.validation_report.errors.is_empty(),"v5 seed%d: %s" % [seed,str(result.validation_report.errors)])
		families[result.configuration.topology_family]=true
		for event in result.objective_timeline:
			if event.id.begins_with("t_"):operations[event.type_name()]=true
		check(result.archaeology.questions.size()>=3 and result.archaeology.questions.size()<=6,"major question budget seed%d" % seed)
		_semantics(result)
		if seed<=8:
			check(result.canonical_output()==generator.generate(seed).canonical_output(),"replay seed%d" % seed)
			var before:=result.canonical_output()
			var renderer:=HistoryV5Renderer.new(["A","B","C"])
			var reverse_renderer:=HistoryV5Renderer.new(["C","B","A"])
			check(renderer.format(result)==reverse_renderer.format(result),"variant ordering affects rendering")
			HistoryV5Renderer.new(["Additional","B"]).format(result)
			var phase_prose:Dictionary=HistoryV5Catalog.archaeology_content().renderer_phase_variants.duplicate(true)
			for key:String in phase_prose:phase_prose[key].reverse()
			check(HistoryV5Renderer.new(["A","B","C"],phase_prose).format(result)==renderer.format(result),"phase prose order changes rendering")
			for key:String in phase_prose:phase_prose[key].append("An additional renderer-only description.")
			HistoryV5Renderer.new(["Additional"],phase_prose).format(result)
			check(before==result.canonical_output(),"renderer changed canonical history")
			_investigation(result)
	check(families.size()==7,"seven topology families reachable")
	check(operations.has("SPLIT") and operations.has("MERGE") and operations.has("REORGANIZATION") and operations.has("NEWCOMER"),"formation operation diversity")
	for seed in range(100):
		var a:=RandomNumberGenerator.new()
		var b:=RandomNumberGenerator.new()
		a.seed=seed;b.seed=seed
		var parameters:Array=[{"operation":"split"},{"operation":"merge"},{"operation":"migration"}]
		var duplicated:=parameters.duplicate(true)
		for i in range(100):duplicated.append({"operation":"split"})
		check(HistoryV5Topology.choose_operation(parameters,{"split":2,"merge":2,"migration":1},a)==HistoryV5Topology.choose_operation(duplicated,{"split":2,"merge":2,"migration":1},b),"parameter multiplicity alters operation draw")
	var altered:=generator.generate(42)
	var reordered:Dictionary=HistoryV5Catalog.new().data.duplicate(true)
	for collection:String in ["events","projects","scars","pressures","responses","discoveries"]:reordered[collection].reverse()
	for scar:Dictionary in reordered.scars:scar.variants.reverse()
	check(HistoryV5Planner.new(HistoryV5Catalog.new(reordered)).generate(42,generator).canonical_output()==altered.canonical_output(),"authored catalog row ordering changes canonical history")
	var archaeology_rows:=HistoryV5Catalog.archaeology_content()
	for collection:String in ["traces","questions","interactions","actions"]:archaeology_rows[collection].reverse()
	check(HistoryArchaeology.new(archaeology_rows).derive(altered)==altered.archaeology,"archaeology catalog ordering changes projection")
	var ancestry_before:=altered.structural_output()
	for faction:Dictionary in altered.present.active_factions:
		var culture:=FactionCultureResolver.new().resolve(altered,faction.id)
		check(FactionCultureResolver.new().errors(altered,faction.id,culture).is_empty(),"v5 culture provenance/schema errors")
	check(ancestry_before==altered.structural_output(),"culture query changed sparse objective history")
	var authoritative_before:String=JSON.stringify(altered.objective_timeline.map(func(event:HistoricalEvent)->Dictionary:return event.to_dict()))
	var nested_mutations:=0
	for trace:Dictionary in altered.archaeology.traces:
		for assertion:Dictionary in trace.assertions:
			if assertion.value is Dictionary:
				assertion.value["consumer_annotation"]="test_only"
				nested_mutations+=1
			elif assertion.value is Array:
				assertion.value.append("test_only_consumer_annotation")
				nested_mutations+=1
	check(nested_mutations>0,"isolation regression lacks a nested factual value")
	check(authoritative_before==JSON.stringify(altered.objective_timeline.map(func(event:HistoricalEvent)->Dictionary:return event.to_dict())),"derived nested evidence mutation changed objective history")
	altered=generator.generate(42)
	altered.archaeology.traces[0].assertions[0].value="fabricated"
	check(not HistoryV5Validator.new().validate(altered).errors.is_empty(),"fabricated Trace accepted")
	altered=generator.generate(42)
	altered.archaeology.questions[0].ethical_answer="the correct moral answer"
	check(not HistoryV5Validator.new().validate(altered).errors.is_empty(),"ethical answer accepted")
	print("History v5 checks: %d; failures: %d" % [checks,failures.size()])
	for failure:String in failures:printerr(failure)
	quit(0 if failures.is_empty() else 1)

func _investigation(result:HistoryResult)->void:
	var before:=result.canonical_output()
	var session:=HistoryInvestigation.new(result.archaeology)
	check(session.permissions().is_empty(),"permissions unlocked before investigation")
	check(not session.perform("missing","missing").allowed,"missing interaction accepted")
	var question:Dictionary=result.archaeology.questions[0]
	var collected:=0
	for id:String in question.evidence_trace_ids:
		for hook:Dictionary in result.archaeology.interactions:
			if id not in hook.target_trace_ids:continue
			var tags:Array[String]=[]
			tags.assign(hook.required_runtime_tags)
			check(not session.perform(hook.id,"wrong",tags).allowed,"wrong context accepted")
			if not tags.is_empty():check(not session.perform(hook.id,hook.required_context_ids[0],[]).allowed,"missing runtime tags accepted")
			check(session.perform(hook.id,hook.required_context_ids[0],tags).allowed,"valid interaction denied")
			collected+=1
			if collected==1:check(session.permissions().is_empty(),"single click answered entire question")
			break
	check(not session.permissions().is_empty(),"corroboration did not unlock action")
	if not session.permissions().is_empty():check(session.propose(session.permissions()[0].id).allowed,"unlocked proposal denied")
	check(before==result.canonical_output(),"investigation mutated historical truth")

func _semantics(result:HistoryResult)->void:
	for event in result.objective_timeline:
		var materials:Array=[]
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.data.has("observed_materials"):materials.append_array(effect.data.observed_materials)
		if event.narrative_key in ["cloning_archive_recovery","local_population_decline"]:
			check("clone_register" not in materials and "clone_status_law" not in materials,"cohort/law before clone birth")
		if event.narrative_key in ["automation_oversight_compact","machine_safety_reform","defense_network_hostility","autonomous_machine_conflict","maintenance_accord"]:
			check("maintenance_compact" not in materials,"oversight/hostility/human duties fabricated cooperation")
		if event.narrative_key in ["biotech_workshop_recovery","bodily_adaptation_program"]:
			check("generation_measurements" not in materials,"one-year biological observation fabricated generations")
		if event.narrative_key=="astronomical_survey":check("sky_receiver" not in materials and "signal_log" not in materials,"receiver/activation evidence before array construction")
		if event.narrative_key=="episode_acute_breakdown_0":
			check(not event.effects.any(func(effect:Dictionary)->bool:return "during the recorded regional pressure" in JSON.stringify(effect)),"independent early observation falsely dates itself to later pressure")
		if event.narrative_key=="genome_archive_project_sample_registry":check("preservation_chamber" not in materials,"sample chamber before construction")
		if event.narrative_key=="second_mind_project_simple_emulation":check("repair_unit" not in materials,"repairing prototype before its construction")
		if event.narrative_key.begins_with("orbital_fall__") and event.narrative_key.ends_with("_population"):
			check("impact_belt" not in materials and "reentry_log" not in materials,"impact/descent before actual objects")
		if event.narrative_key in ["mass_morphogenic_event__environmental_exposure","mass_morphogenic_event__unclassified_alteration"]:
			check(not event.effects.any(func(effect:Dictionary)->bool:return effect.get("record_id","")=="population_modification"),"natural/unknown change fabricated modification technology")
	for question:Dictionary in result.archaeology.questions:
		check(not question.anchor_trace_ids.is_empty(),"question lacks actual premise")
		if question.scope=="actual_subject":
			for trace:Dictionary in result.archaeology.traces:
				if trace.id in question.evidence_trace_ids:check(trace.subject_id==question.subject_id,"one subject bundles unrelated sites/cohorts")
	var traces:Dictionary={}
	for trace:Dictionary in result.archaeology.traces:traces[trace.id]=trace
	for hook:Dictionary in result.archaeology.interactions:
		var trace:Dictionary=traces[hook.target_trace_ids[0]]
		if hook.archetype_id=="read_guidance_log":check(trace.archetype_id in ["guidance_log","departure_tracking","reentry_log"],"guidance inspection on civic/genome/homeland records")
		if hook.archetype_id=="extract_guarded_telemetry":check(trace.archetype_id in ["prototype_telemetry","command_telemetry","signal_log","computation_log","guidance_log","departure_tracking","reentry_log"],"telemetry theft on unrelated civic/genome/homeland records")
		if hook.archetype_id in ["enter_restricted_archive","duplicate_record_unnoticed","recover_exposed_register"]:check(trace.category=="documentary","record-specific interaction targets a living community or unrelated structure")
		if hook.archetype_id=="cross_impact_belt":check(trace.archetype_id=="impact_belt","impact traversal without impact material")
		if hook.archetype_id=="challenge_machine_handshake":check(trace.archetype_id in ["repair_unit","occupied_machine_works","maintenance_site"],"machine handshake on human cohort")
