extends SceneTree

var assertions := 0
var failures := 0
var examples := {}
var independent := {}
var project_examples := {}
var generator := HistoryGenerator.new()
var catalog := HistoryV4Catalog.new()

func expect(value:bool,message:String)->void:
	assertions+=1
	if not value:
		failures+=1
		push_error(message)

func _init()->void:
	_legacy_replays()
	_shipping()
	_negative()
	_isolation()
	_claim_evidence()
	print("%s: History v4 redesign (%d assertions)" % ["PASS" if failures==0 else "FAIL",assertions])
	quit(0 if failures==0 else 1)

func _legacy_replays()->void:
	var baseline:Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m043_legacy.json"))
	for version in [2,3]:
		for seed:String in baseline.versions[str(version)]:
			var result:=HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,version).generate(int(seed))
			expect(result.canonical_output().sha256_text()==baseline.versions[str(version)][seed],"Exact frozen v%d seed%s" % [version,seed])

func _shipping()->void:
	for seed in range(1,801):
		var result:=generator.generate(seed)
		expect(result.validation_report.errors.is_empty(),"Valid v4 seed%d %s" % [seed,result.validation_report.errors])
		expect(result.generation_version==4 and result.architecture_version==2,"Version contract")
		expect(result.present.civilizational_projects.size()<=2 and result.present.civilizational_scars.size()<=2,"Spectacle budget")
		expect(result.present.to_dict()==HistoryProjector.new().project(result.entities,result.objective_timeline).to_dict(),"Authoritative replay")
		for project in result.present.civilizational_projects:
			project_examples[project.archetype]=seed
			expect(project.success_policy=="bounded_technical_success","No boundary conquest")
			if project.archetype=="ark_project":
				expect(project.status!="success","Unresolved Ark departure is not success")
			if project.archetype=="adaptive_simplification_program":
				expect(project.display_name=="Adaptive Simplification Program" and project.later_historical_name=="The Great Degeneration","Official/later name distinction")
		for scar in result.present.civilizational_scars:
			if not examples.has(scar.record_id): examples[scar.record_id]=seed
			if result.present.civilizational_projects.is_empty(): independent[scar.record_id]=seed
			expect(scar.data.long_term and not scar.data.new_species and not scar.data.new_origin and not scar.data.new_lineage,"Persistent human-only Scar")
		for polity in result.present.historical_factions:
			for stratum:Dictionary in polity.population_origin_profile.strata:
				expect(stratum.template_id=="human_baseline" and stratum.origins==["human_derived"],"No fabricated population rights")
		if seed<=25:
			var before:=result.canonical_output()
			for faction in result.present.active_factions:
				var profile:=FactionCultureResolver.new().resolve(result,faction.id)
				expect(FactionCultureResolver.new().errors(result,faction.id,profile).is_empty(),"Culture uses actual canonical evidence")
			expect(before==result.canonical_output(),"Subjective lenses do not mutate history")
			expect(result.canonical_output()==generator.generate(seed).canonical_output(),"Canonical determinism")
	for row:Dictionary in catalog.data.projects:
		expect(project_examples.has(row.id),"Shipping Project reachable "+row.id)
	for row:Dictionary in catalog.data.scars:
		expect(examples.has(row.id),"Shipping Scar reachable "+row.id)
		expect(independent.has(row.id),"Scar occurs without any Project "+row.id)

func _claim_evidence()->void:
	for seed in [5,12,2,212]:
		var result:=generator.generate(seed)
		for scar in result.present.civilizational_scars:
			for claim in result.historical_claims:
				if claim.referenced_event_id!=scar.source_event_ids[0]: continue
				if scar.record_id=="failed_exodus" and scar.data.cause!="interception":
					expect(not "hardware" in claim.interpretation and not "denied" in claim.interpretation,"Physical loss cannot invent hardware intervention")
					if scar.data.cause=="launch_failure": expect("engineering failure records" in claim.interpretation,"Claim retains known engineering evidence")
				if scar.record_id=="mechanogenic_assimilation":
					expect("irreversible" in claim.interpretation and not "replacement" in claim.interpretation,"Irreversible coupling does not invent tissue replacement")
				if scar.record_id=="autonomous_systems_crisis" and scar.data.cause=="unknown":
					expect(not "command failure" in claim.interpretation,"Unknown autonomous behavior cannot invent command failure")

func _event(result:HistoryResult,key:String)->HistoricalEvent:
	for event in result.objective_timeline:
		if event.narrative_key==key: return event
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.record_type=="scar" and effect.record_id==key: return event
	return null

func _reject(result:HistoryResult,message:String)->void:
	expect(not HistoryValidator.new().validate(result).errors.is_empty(),message)

func _negative()->void:
	for key:String in examples:
		var result:=generator.generate(examples[key])
		_event(result,key).cause_event_ids.clear()
		_reject(result,"Scar cannot lose its own causal chain "+key)
		result=generator.generate(examples[key])
		_event(result,key).year=-590
		result.objective_timeline.sort_custom(func(a:HistoricalEvent,b:HistoricalEvent)->bool:return a.year<b.year)
		_reject(result,"Future prerequisites rejected "+key)
	for key in ["imposed_cognitive_regression","chosen_cognitive_regression","orbital_fall"]:
		var baseline:=generator.generate(independent[key])
		var scar_event:=_event(baseline,key)
		var variant:=catalog.definition(scar_event.narrative_key)
		var chain:Array=[]
		for row:Dictionary in catalog.scar(key).variants:
			if row.stages[-1]==scar_event.narrative_key: chain=row.stages
		for stage:String in chain.slice(0,chain.size()-1):
			var result:=generator.generate(independent[key])
			var missing:=_event(result,stage)
			missing.effects=missing.effects.filter(func(effect:Dictionary)->bool:return effect.kind!="history_record")
			_reject(result,"Actual chain evidence required "+stage)
	var result:=generator.generate(independent.imposed_cognitive_regression)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind!="history_record": continue
			if effect.record_id=="diminution_intervention": effect.data.biological_intervention=false
	_reject(result,"Schooling/literacy/cultural/technology decline cannot substitute for biological intervention")
	result=generator.generate(independent.imposed_cognitive_regression)
	_event(result,"imposed_cognitive_regression").cause_domain="preservator_intervention"
	_reject(result,"Preservator correlation cannot replace recorded human responsibility")
	result=generator.generate(independent.imposed_cognitive_regression)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.data.has("target_reference"): effect.data.target_reference="regional_assembly"
	_reject(result,"Unrelated existing group cannot replace actual human target")
	for key in ["orbital_fall","last_descent","collective_mind_fracture","mechanogenic_assimilation","silent_depopulation"]:
		result=generator.generate(examples[key])
		for effect:Dictionary in _event(result,key).effects:
			if effect.kind=="history_record" and effect.record_type=="scar":
				for field:String in effect.data:
					if effect.data[field] is String and effect.data[field]=="unknown": effect.data[field]="resolved_by_preservator"
		_reject(result,"Unknown cannot gain perpetrator/intention/personhood "+key)
	result=generator.generate(project_examples.meridian_project)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.record_id=="coordinate_discrepancy": effect.data.supernatural_cause="proven"
	_reject(result,"Map discrepancy is not a supernatural answer")
	for removed:String in HistoryV4Catalog.REMOVED_IDS:
		result=generator.generate(42)
		result.configuration["injected"]=removed
		_reject(result,"Removed current ID rejected "+removed)
	for forbidden in ["stable_orbital_civilization","outerworld_settlement","unrestricted_escape","deep_conquest","machine_consciousness","new_species","new_origin","new_lineage"]:
		result=generator.generate(42)
		result.present.history_records[0].data[forbidden]=true
		_reject(result,"Unsupported lore/projection fact rejected "+forbidden)
	result=generator.generate(project_examples.ark_project)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.record_type=="project" and effect.data.status!="in_progress": effect.data.status="success"
	_reject(result,"Ark success status rejected even with intact physical chain")
	for field in ["artificial_objects","tracked_reentry","orbital_material_match"]:
		result=generator.generate(independent.orbital_fall)
		for event in result.objective_timeline:
			for effect:Dictionary in event.effects:
				if effect.kind=="history_record" and effect.data.has(field): effect.data[field]=false
		_reject(result,"Meteor/unrelated crater/building collapse/orbital observation lacks actual orbital chain "+field)
	result=generator.generate(project_examples.deep_descent_project)
	for event in result.objective_timeline:
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.data.has("deep_conquest"): effect.data.deep_conquest=true
	_reject(result,"Deep engineering cannot become stable Innerworld conquest")
	result=generator.generate(42)
	result.entity("precursor").population_origin_profile.strata[0].template_id="invented_lineage"
	_reject(result,"Invented lineage rejected")

func _isolation()->void:
	var reordered:=catalog.data.duplicate(true)
	for key in ["projects","scars","events","pressures","responses","discoveries"]: reordered[key].reverse()
	for row:Dictionary in reordered.scars: row.variants.reverse()
	var normal:=generator.generate(42)
	var changed:=HistoryV4Planner.new(HistoryV4Catalog.new(reordered)).generate(42,generator)
	expect(normal.canonical_output()==changed.canonical_output(),"Catalog/variant reordering isolation")
	for seed:int in independent.values():
		normal=generator.generate(seed)
		changed=HistoryV4Planner.new(HistoryV4Catalog.new(reordered)).generate(seed,generator)
		expect(normal.canonical_output()==changed.canonical_output(),"Each independent Scar preserves variant reordering isolation")
	normal=generator.generate(42)
	var names:=HistoryNameSource.new(func(_seed:int,id:String,_kind:String)->String:return "label_"+id)
	expect(normal.structural_output()==HistoryGenerator.new(names).generate(42).structural_output(),"Name/locale isolation")
	var content:=catalog.data.duplicate(true)
	content.discoveries.erase("crater_machine")
	changed=HistoryV4Planner.new(HistoryV4Catalog.new(content)).generate(42,generator)
	expect(normal.present.civilizational_projects==changed.present.civilizational_projects and normal.present.active_factions==changed.present.active_factions,"Discovery pool isolation")
