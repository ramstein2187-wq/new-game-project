extends SceneTree

var generator := HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,4)
var catalog := HistoryV4Catalog.new()
var statistics := {"worlds":0,"factions":0,"faction_count":{},"event_count":{},"scar_count":{},"project_count":{},"project_status":{},
	"pressure_domains":{},"pressures":{},"responses":{},"collapses":{},"projects":{},"scars":{},"discoveries":{},"signatures":{},"event_motifs":{},
	"world_exposure":{},"faction_exposure":{},"safety":{"prerequisite_failures":0,"chronology_failures":0,"fabricated_evidence":0,"invalid_population_content":0,"mystery_resolution_violations":0,"deterministic_replay_failures":0,"v2_compatibility_failures":0,"v3_compatibility_failures":0,"other_validation_failures":0}}
var recipes := {}
var sample_seeds := {}
var sample_topics := {}
var samples: Array[Dictionary] = []

const OUTPUT := "res://docs/reviews/history_v4_redesign/"
var scar_without_project := {}
var scar_without_link := {}
var scar_domains := {}
var scar_causes := {}
var cooccurrence := {}
var linked := {}
var outcomes_by_project := {}
var removed_exposure := {}

func _init() -> void:
	var count := 5000
	for arg in OS.get_cmdline_user_args():
		if arg.is_valid_int():
			count = int(arg)
	var start := Time.get_ticks_msec()
	for seed in range(1,count+1):
		var result := generator.generate(seed)
		var replay := generator.generate(seed)
		statistics.worlds += 1
		var n := result.present.active_factions.size()
		statistics.factions += n
		_inc(statistics.faction_count,str(n))
		_inc(statistics.event_count,str(result.objective_timeline.size()))
		_inc(statistics.scar_count,str(result.present.civilizational_scars.size()))
		_inc(statistics.project_count,str(result.present.civilizational_projects.size()))
		var seen := {}
		var keys: Array = []
		var recipe: Array = []
		for event in result.objective_timeline:
			keys.append(event.narrative_key)
			_inc(statistics.event_motifs,event.narrative_key)
			seen["event:"+event.narrative_key]=true
			if event.id.begins_with("t_"):
				recipe.append(event.narrative_key)
			if event.id == "h_pressure" or event.id == "v4_pressure":
				_inc(statistics.pressure_domains,event.cause_domain)
				var key := event.narrative_key.trim_prefix("v4_")
				_inc(statistics.pressures,key)
				seen["pressure:"+key]=true
		for key: String in ["response_motif","signature_response"]:
			if result.configuration.has(key):
				_inc(statistics.responses,result.configuration[key])
				seen["response:"+result.configuration[key]]=true
		for key: String in ["collapse_pattern","signature_collapse"]:
			if result.configuration.has(key):
				_inc(statistics.collapses,result.configuration[key])
				seen["collapse:"+result.configuration[key]]=true
		for project in result.present.civilizational_projects:
			_inc(outcomes_by_project,project.archetype+":"+project.status)
			_inc(statistics.projects,project.archetype)
			_inc(statistics.project_status,project.status)
			seen["project:"+project.archetype]=true
			_capture(seed,project.archetype)
			if project.status == "success":
				_capture(seed,"project_success_without_catastrophe")
		for scar in result.present.civilizational_scars:
			if result.present.civilizational_projects.is_empty():
				_inc(scar_without_project,scar.record_id)
			if scar.project_id.is_empty():
				_inc(scar_without_link,scar.record_id)
			else:
				_inc(linked,scar.project_id+":"+scar.record_id)
			_inc(scar_domains,scar.record_id+":"+scar.data.causal_domain)
			_inc(scar_causes,scar.record_id+":"+scar.data.cause)
			for project in result.present.civilizational_projects:
				_inc(cooccurrence,project.archetype+":"+scar.record_id)
			_inc(statistics.scars,scar.record_id)
			seen["scar:"+scar.record_id]=true
			if scar.record_id in catalog.data.collapses:
				_inc(statistics.collapses,scar.record_id)
				seen["collapse:"+scar.record_id]=true
			_capture(seed,scar.record_id)
		for event in result.objective_timeline:
			if event.cause_domain == "preservator_intervention":
				seen["preservator_activity"]=true
			for effect in event.effects:
				if effect.kind != "history_record":
					continue
				if effect.record_type == "discovery":
					_inc(statistics.discoveries,effect.record_id)
					seen["discovery:"+effect.record_id]=true
				if effect.record_type == "observation" and effect.record_id in ["memory_convergence","distributed_identity","unclassified_signal","orbital_reaction","signal_fixation","transmission_reversal"]:
					_inc(statistics.signatures,effect.record_id)
					seen["signature:"+effect.record_id]=true
				if effect.record_id in ["memory_lattice","cognitive_echo","cognitive_archive","identity_duplicate","memory_convergence","distributed_identity"]:
					seen["any_cognitive_memory_anomaly"]=true
				if effect.record_id in ["active_regulation_node","cognitive_echo","memory_convergence","distributed_identity","unclassified_signal","orbital_reaction","array_silence","unclassified_intervention","regulation_spasm"]:
					_capture(seed,effect.record_id)
			if event.narrative_key == "orbital_interdiction_orbital_containment":
				_capture(seed,"orbital_containment")
		if not result.present.civilizational_projects.is_empty():
			seen["any_project"]=true
		if not result.present.civilizational_scars.is_empty():
			seen["any_scar"]=true
		else:
			_capture(seed,"no_major_sf_scar")
		if result.present.civilizational_projects.is_empty() and result.present.civilizational_scars.is_empty():
			_capture(seed,"ordinary_political_history")
			seen["no_project_or_major_scar"]=true
		for key in seen:
			_inc(statistics.world_exposure,key)
			_inc(statistics.faction_exposure,key,n)
		var safety: Dictionary = statistics.safety
		var output_text: String = result.canonical_output()
		for removed:String in HistoryV4Catalog.REMOVED_IDS:
			if ('"'+removed+'"') in output_text or ('"'+removed+'_') in output_text:
				_inc(removed_exposure,removed)
		for error: String in result.validation_report.errors:
			var key := "other_validation_failures"
			if error.begins_with("prerequisite:"):key="prerequisite_failures"
			elif error.begins_with("chronology:"):key="chronology_failures"
			elif error.begins_with("evidence:"):key="fabricated_evidence"
			elif error.begins_with("population:"):key="invalid_population_content"
			elif error.begins_with("mystery:"):key="mystery_resolution_violations"
			_inc(safety,key)
		if result.canonical_output() != replay.canonical_output():
			_inc(safety,"deterministic_replay_failures")
		recipes[JSON.stringify(recipe)]=true
		if seed <= 40 or sample_seeds.has(str(seed)):
			_save_sample(result)
		if seed % 250 == 0:
			print("v4 corpus %d/%d safety=%s elapsed=%.1fs" % [seed,count,statistics.safety,float(Time.get_ticks_msec()-start)/1000.0])
	_legacy()
	statistics.topology_diversity=recipes.size()
	statistics.elapsed_seconds=float(Time.get_ticks_msec()-start)/1000.0
	statistics.faction_exposure_definition="Current factions sharing access to regional historical records, not personal biological involvement."
	statistics.gated_content=["lineage_persecution: no approved distinct lineages", "full_machine_civilization: no authorized population/personhood conclusion"]
	statistics.scar_without_any_project=scar_without_project
	statistics.scar_without_project_link=scar_without_link
	statistics.scar_causal_domains=scar_domains
	statistics.scar_causes=scar_causes
	statistics.project_scar_world_cooccurrence=cooccurrence
	statistics.project_linked_scars=linked
	statistics.outcomes_by_project=outcomes_by_project
	statistics.removed_content_exposure=removed_exposure
	statistics.sample_topics=sample_topics
	_write("statistics.json",statistics)
	_write("samples.json",samples)
	var file:=FileAccess.open(OUTPUT+"samples.md",FileAccess.WRITE)
	file.store_string("# M043 raw histories\n\nObjective events → Project/Scar → Projected Present → Faction Identity/Culture → Claims. Corpus samples are raw generated records, not rewritten stories.\n\n")
	for i in range(samples.size()):
		var sample: Dictionary = samples[i]
		file.store_string("## Seed %d\n\n```text\n%s\n```\n" % [sample.seed,sample.formatted])
		if i<samples.size()-1: file.store_string("\n")
	print("v4 corpus complete worlds=%d topology=%d samples=%d safety=%s" % [count,recipes.size(),samples.size(),statistics.safety])
	quit(0 if statistics.safety.values().all(func(value:Variant)->bool:return int(value)==0) and removed_exposure.is_empty() else 1)

func _inc(target:Dictionary,key:String,amount:int=1)->void:
	target[key]=int(target.get(key,0))+amount

func _capture(seed:int,topic:String)->void:
	if not sample_topics.has(topic):
		sample_topics[topic]=seed
		sample_seeds[str(seed)]=true

func _save_sample(result:HistoryResult)->void:
	if samples.any(func(row:Dictionary)->bool:return row.seed==result.seed):return
	var cultures:=[]
	var resolver:=FactionCultureResolver.new()
	for faction in result.present.active_factions:
		var profile:=resolver.resolve(result,faction.id)
		var errors:=resolver.errors(result,faction.id,profile)
		statistics.safety.other_validation_failures+=errors.size()
		cultures.append(profile)
	samples.append({"seed":result.seed,"raw":result.to_dict(),"cultures":cultures,"formatted":HistoryDebugFormatter.new().format(result)})

func _legacy()->void:
	var baseline:Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m043_legacy.json"))
	for version in [2,3]:
		for seed:String in baseline.versions[str(version)]:
			var result:=HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,version).generate(int(seed))
			if result.canonical_output().sha256_text()!=baseline.versions[str(version)][seed]:
				_inc(statistics.safety,"v%d_compatibility_failures" % version)

func _write(name:String,value:Variant)->void:
	var file:=FileAccess.open(OUTPUT+name,FileAccess.WRITE)
	file.store_string(JSON.stringify(value,"\t")+"\n")
