extends SceneTree
## Reproducible corpus; review selection is fixed before generation, not cherry-picked.
var report := {"worlds":0,"regions":0,"incidents":0,"placed":0,"erased":0,"no_safe_space":0,
	"families":{},"categories":{},"severity":{},"ages":{},"environments":{},"evidence":{},
	"linked":0,"independent":0,"interactable_scenes":0,"accessible_scenes":0,"signatures":{},
	"definitions":{},"outcomes":{},"environment_severity":{},"region_density":{},"scene_evidence_counts":{},"layouts":{},"failures":[],"timing_ms":{"macro":0.0,"realization":0.0,"validation":0.0,"save":0.0,"load":0.0},"save_bytes":0,"save_samples":0}
var reviews: Array[String]=["# 무작위 20지역 미시사 검토", "선정은 생성 전에 고정된 독립 RNG로 수행한다. 좋은 장면만 고르지 않는다. 객관적 사실은 개발자 보고에만 표시한다."]
var ko: Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://content/history/microhistory_v7_ko_review.json"))
func bump(d: Dictionary,k: String) -> void: d[k]=int(d.get(k,0))+1
func canonical(value: Variant) -> String: return JSON.stringify(JSON.parse_string(JSON.stringify(value)),"",true)
func _init() -> void: call_deferred("run")
func run() -> void:
	var count:=500
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count=int(arg.trim_prefix("--count="))
	var sample_rng:=RandomNumberGenerator.new(); sample_rng.seed=7304921
	var selected: Array[int]=[]
	while selected.size()<mini(20,count*3):
		var n:=sample_rng.randi_range(0,count*3-1)
		if n not in selected: selected.append(n)
	selected.sort()
	var reverse: Array=MicrohistoryPlanner.catalog.definitions.duplicate(); reverse.reverse()
	for index in range(count):
		var seed:=posmod(SeedDeriver.derive(490007,["microhistory_corpus",str(index)]),2147483647)
		var started:=Time.get_ticks_usec()
		var result:=HistoryEngine.new().generate_civilization(seed)
		var manifest:=HistoryWorldManifest.build(result)
		report.timing_ms.macro+=(Time.get_ticks_usec()-started)/1000.0
		if not result.errors.is_empty() or not manifest.errors.is_empty(): report.failures.append([seed,"macro",result.errors,manifest.errors]); continue
		var original:=manifest.canonical()
		started=Time.get_ticks_usec()
		var world:=HistoryWorldRealization.build(manifest,-1,true,true)
		report.timing_ms.realization+=(Time.get_ticks_usec()-started)/1000.0
		report.worlds+=1
		started=Time.get_ticks_usec()
		for zi in range(world.selected.size()):
			var z: Dictionary=world.zones[world.selected[zi]]
			report.regions+=1
			bump(report.region_density,str(z.microhistory.size()))
			var spatial:=MicrohistoryRealization.validate(z)
			if not spatial.is_empty(): report.failures.append([seed,z.id,"spatial",spatial])
			var base:=MicrohistoryPlanner.generate(world.manifest,z)
			if canonical(base)!=canonical(MicrohistoryPlanner.generate(world.manifest,z,reverse)): report.failures.append([seed,z.id,"catalog_order"])
			var reachable:=MicrohistoryRealization.reach(z)
			for incident: Dictionary in z.microhistory:
				report.incidents+=1; bump(report,incident.placement)
				for pair in [["families","family"],["categories","category"],["severity","severity"],["ages","age_band"],["definitions","definition_id"]]: bump(report[pair[0]],str(incident[pair[1]]))
				bump(report.outcomes,incident.definition_id+"/"+incident.outcome_id)
				bump(report.environments,incident.context.environment)
				bump(report.environment_severity,incident.context.environment+"/"+str(int(incident.severity)))
				bump(report.layouts,incident.layout)
				if incident.placement=="placed": bump(report.scene_evidence_counts,str(incident.evidence.size()))
				report.independent+=int(incident.context.facility_id.is_empty()); report.linked+=int(not incident.context.facility_id.is_empty())
				var errors:=MicrohistoryPlanner.validate(incident,world.manifest)
				if not errors.is_empty(): report.failures.append([seed,z.id,incident.id,errors])
				var signature: Array[String]=[]; var accessible: bool=incident.placement=="placed"; var interactive:=false
				for e: Dictionary in incident.evidence:
					if incident.placement=="placed":
						bump(report.evidence,e.kind)
						var cell:=HistoryWorldRealization.vector(z.objects[e.id].cell)
						accessible=accessible and TimeCostGame.CARDINAL_DIRECTIONS.any(func(d: Vector2i)->bool:return reachable.has(cell+d))
						interactive=interactive or e.verb!="passive"
					signature.append(e.kind+"/"+e.verb+"/"+str(e.active))
				signature.sort()
				bump(report.signatures,incident.layout+":"+",".join(signature))
				report.accessible_scenes+=int(accessible); report.interactable_scenes+=int(interactive)
			if index*3+zi in selected: review(seed,z)
		if original!=manifest.canonical(): report.failures.append([seed,"Manifest mutation"])
		report.timing_ms.validation+=(Time.get_ticks_usec()-started)/1000.0
		if index%25==0:
			var g:=HistoryPlayableGame.new(); g.microhistory_enabled=true; g.start(manifest)
			started=Time.get_ticks_usec(); var saved:=g.save_json()
			report.timing_ms.save+=(Time.get_ticks_usec()-started)/1000.0
			report.save_bytes+=saved.to_utf8_buffer().size(); report.save_samples+=1
			var restored:=HistoryPlayableGame.new(); started=Time.get_ticks_usec()
			if not restored.load_json(saved) or restored.save_json()!=saved: report.failures.append([seed,"persistence",restored.load_error])
			report.timing_ms.load+=(Time.get_ticks_usec()-started)/1000.0
		if (index+1)%25==0: print("Microhistory corpus ",index+1,"/",count,"; failures ",report.failures.size())
		await process_frame
	report["review_selection"]=selected
	report["seed_protocol"]="SeedDeriver(490007, microhistory_corpus, index) mod 2147483647, 0-based"
	report["signature_repeat_fraction"]=1.0-float(report.signatures.size())/maxi(1,report.incidents)
	report["density"]=float(report.incidents)/maxi(1,report.regions)
	DirAccess.make_dir_recursive_absolute("res://docs/reviews/microhistory_v7")
	FileAccess.open("res://docs/reviews/microhistory_v7/corpus_"+str(count)+".json",FileAccess.WRITE).store_string(JSON.stringify(report,"\t",true)+"\n")
	FileAccess.open("res://docs/reviews/microhistory_v7/random_regions_"+str(count)+".md",FileAccess.WRITE).store_string("\n\n".join(reviews)+"\n")
	print("CORPUS ",report.worlds," worlds, ",report.regions," regions, ",report.incidents," incidents, ",report.placed," placed, ",report.failures.size()," failures")
	for error in report.failures.slice(0,10): print(error)
	quit(0 if report.failures.is_empty() else 1)

func review(seed: int,z: Dictionary) -> void:
	reviews.append("## Seed %d / %s\n환경: %s, 현재 인구 %d, 위험 %d. 사건 %d개." % [seed,z.id,z.locality.terrain,z.locality.population,z.locality.hazard,z.microhistory.size()])
	for incident: Dictionary in z.microhistory:
		var d: Dictionary=MicrohistoryPlanner.catalog.definitions.filter(func(v: Dictionary)->bool:return v.id==incident.definition_id)[0]
		var outcome: Dictionary=d.outcomes.filter(func(v: Dictionary)->bool:return v.id==incident.outcome_id)[0]
		var observations: Array[String]=[]
		for e in incident.evidence:
			var label: String=ko[MicrohistoryPlanner.catalog.evidence[e.kind].observation_key]
			if e.kind=="snare" and not e.active: label=ko["micro.inactive_trap"]
			observations.append(label+" ("+str({"fresh":"최근 흔적","weathered":"풍화","fragmentary":"파편"}[e.condition])+")")
		var line: String="### %s / %s\n1. 객관적 사건: %s\n2. 적합성: %s 조건; 근거 시설 %s; 임시 방문자의 사건으로 현재 인구를 소급 변경하지 않음.\n3. 남은 증거: %s. %d년 경과, 배치 %s %s.\n4. 플레이어 발견: 위의 물질과 배치만 보임. 조사도 의도·신원 전체를 설명하지 않음.\n5. 숨은 사실: 위 1번의 전체 경위. 미확정: %s.\n6. 검토점: 같은 공간 양식 `%s`는 재사용됨. 이름을 제외한 증거/행동 조합으로 반복을 측정. %s" % [ko[d.title_key],incident.id,ko[outcome.fact_key],d.context,incident.context.facility_id if not incident.context.facility_id.is_empty() else "없음 (독립 공존)",", ".join(observations) if not observations.is_empty() else "소멸",incident.age,incident.placement,str(incident.anchor),str(incident.unknown),incident.layout,"안전한 공간이 없어 미배치된 증거를 보고에 보존함." if incident.placement=="no_safe_space" else ""]
		reviews.append(line.strip_edges())
