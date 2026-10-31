extends SceneTree
var failures: Array[String] = []
var checks := 0
func check(ok: bool, reason: String) -> void:
	checks += 1
	if not ok: failures.append(reason)

func _init() -> void:
	var manifest := HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(42))
	var before := manifest.canonical()
	var w := HistoryWorldRealization.build(manifest,-1,true,true)
	check(w.errors.is_empty(),"World builds")
	check(MicrohistoryPlanner.catalog.definitions.size()>=30,"30 substantive archetypes")
	var drowning: Dictionary=MicrohistoryPlanner.catalog.definitions.filter(func(d: Dictionary)->bool:return d.id=="washed_crossing")[0].outcomes[1]
	check("death" in drowning.facts and drowning.body_status=="carried_away" and "remains" not in drowning.evidence,"Death is recorded even when its body left the scene")
	var reversed: Array = MicrohistoryPlanner.catalog.definitions.duplicate(); reversed.reverse()
	var total := 0
	for id in w.selected:
		var z: Dictionary = w.zones[id]
		check(MicrohistoryRealization.validate(z).is_empty(),str(MicrohistoryRealization.validate(z)))
		var initial := MicrohistoryPlanner.generate(w.manifest,z)
		check(initial==MicrohistoryPlanner.generate(w.manifest,z,reversed),"Catalog order independent")
		for incident in z.microhistory:
			check(MicrohistoryPlanner.validate(incident,w.manifest).is_empty(),"Valid outcome "+incident.id)
			if incident.placement=="placed": total+=1
			var invalid: Dictionary = incident.duplicate(true); invalid.outcome_year=manifest.payload.year+1
			check(not MicrohistoryPlanner.validate(invalid,w.manifest).is_empty(),"Reject future evidence")
			invalid=incident.duplicate(true); invalid.actor.kind="invented_species"
			check(not MicrohistoryPlanner.validate(invalid,w.manifest).is_empty(),"Reject species")
			invalid=incident.duplicate(true); invalid.facts=[]
			if not incident.facts.is_empty(): check(not MicrohistoryPlanner.validate(invalid,w.manifest).is_empty(),"Reject contradictory fact")
	check(total>0,"Actual physical scenes")
	check(before==manifest.canonical(),"Macrohistory untouched")
	var g := HistoryPlayableGame.new(); g.microhistory_enabled=true
	check(g.start(manifest),"Production /3 start")
	var acted := {}
	for o in g.initial_world.zones[g.runtime.current_zone].objects.values():
		if o.kind!="micro_evidence" or o.verb=="passive" or acted.has(o.verb): continue
		if o.verb=="repair" and g.runtime.bag("materials")==0:
			check(ExplorationAutoplay.operate(g,"env:"+g.runtime.current_zone+":branches",&"recover"),"Real input material")
		var time := g.world_time
		var success := ExplorationAutoplay.operate(g,o.id,StringName(o.verb))
		check(success,"Scheduled interaction: "+o.id+" "+o.verb)
		if success:
			acted[o.verb]=true
			check(g.world_time>time,"Shared time advances")
			if o.verb in ["recover","clear"]:
				var after := g.world_time
				check(not g.perform_action(&"player",InteractAction.new(HistoryWorldRealization.vector(o.cell),StringName(o.verb))),"Consumed evidence cannot repeat")
				check(g.world_time==after,"Rejected action free")
	var saved := g.save_json(); var clone := HistoryPlayableGame.new()
	check(clone.load_json(saved),"Restore /3 "+clone.load_error)
	check(saved==clone.save_json(),"Exact /3 runtime restoration")
	var bad_save: Dictionary=JSON.parse_string(saved)
	for o in g.initial_world.zones[g.runtime.current_zone].objects.values():
		if o.kind=="micro_evidence" and o.verb=="passive":
			bad_save.overrides[g.runtime.current_zone][o.id]={"taken":true}; break
	bad_save.erase("checksum"); bad_save.checksum=JSON.stringify(bad_save,"",true).sha256_text()
	check(not clone.load_json(JSON.stringify(bad_save)) and clone.save_json()==saved,"Reject unsupported evidence mutation atomically")
	check(JSON.stringify(JSON.parse_string(JSON.stringify(clone.initial_world.zones)), "", true)==JSON.stringify(JSON.parse_string(JSON.stringify(g.initial_world.zones)), "", true),"Deterministic scene restoration")
	check(before==manifest.canonical(),"Actions never rewrite history")
	for profile in [false,true]:
		var old := HistoryPlayableGame.new(); old.exploration_enabled=profile; old.start(manifest)
		var legacy := old.save_json()
		check(clone.load_json(legacy) and clone.save_json()==legacy,"Legacy profile save exact")
	_geometry_and_contracts()
	_persistent_actions()
	print("Microhistory: ",checks," checks; ",failures.size()," failures; ",total," placed scenes; actions ",acted)
	for failure in failures: print("FAIL ",failure)
	quit(0 if failures.is_empty() else 1)

func _geometry_and_contracts() -> void:
	var v5 := HistoryGenerator.new().generate(42)
	var v5_before := JSON.stringify(v5.archaeology)
	var traces: Array = v5.archaeology.traces
	var linked := 0
	for index in range(8):
		var m := HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(100+index))
		var old := HistoryWorldRealization.build(m,-1,true)
		var w := HistoryWorldRealization.build(m,-1,true,true)
		var order: Array = w.selected.duplicate(); order.reverse()
		for id in order:
			var z: Dictionary=w.zones[id]; var baseline: Dictionary=old.zones[id]
			check(MicrohistoryPlanner.generate(w.manifest,z)==MicrohistoryPlanner.generate(w.manifest,baseline),"Spatial layout cannot rewrite local history")
			check(z.npc_spawns==baseline.npc_spawns and z.npc_types==baseline.npc_types,"Original Actor spawns preserved")
			for object_id in baseline.objects: check(z.objects[object_id]==baseline.objects[object_id],"Existing object/custody/quantity preserved")
			var preserved := true
			for y in range(z.height):
				for x in range(z.rows[0].length()):
					if baseline.rows[y][x] in ["#","R",":","~"] and z.rows[y][x]!=baseline.rows[y][x]: preserved=false
			check(preserved,"Major paths, original walls/floors/water preserved")
			for incident: Dictionary in z.microhistory:
				var refs := MicrohistoryPlanner.compatible_traces(incident,traces)
				linked+=refs.size()
				for reference in refs: check(reference.current_operation=="unverified" and traces.any(func(t: Dictionary)->bool:return t.id==reference.trace_id),"Only real v5 trace references")
				var bad: Dictionary=incident.duplicate(true); bad.actor.origin="invented_origin"
				check(not MicrohistoryPlanner.validate(bad,w.manifest).is_empty(),"Reject invented origin")
				bad=incident.duplicate(true); bad.context.facility_id="missing_site"
				check(not MicrohistoryPlanner.validate(bad,w.manifest).is_empty(),"Reject missing site")
				bad=incident.duplicate(true); bad.technique="ancient_machine_consciousness"
				check(not MicrohistoryPlanner.validate(bad,w.manifest).is_empty(),"Reject unlicensed technology")
				if not incident.evidence.is_empty():
					bad=incident.duplicate(true); bad.evidence[0].verb="use"
					check(not MicrohistoryPlanner.validate(bad,w.manifest).is_empty(),"Reject fake usable evidence")
	check(v5_before==JSON.stringify(v5.archaeology),"v5 trace facts unmodified")
	# The production v5 sample may not contain these four material types. Never invent a trace to pass.
	print("Actual v5 compatible trace references in fixtures: ",linked)

func _persistent_actions() -> void:
	var repaired := false; var cleared := false; var travelled := false; var observed := false
	for seed in range(1,16):
		var g := HistoryPlayableGame.new(); g.microhistory_enabled=true
		g.start(HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(seed)))
		var zone := g.runtime.current_zone
		var facts := JSON.stringify(g.initial_world.zones[zone].microhistory)
		for o in g.initial_world.zones[zone].objects.values():
			if o.kind!="micro_evidence": continue
			if o.verb=="repair" and not repaired:
				check(ExplorationAutoplay.operate(g,"env:"+zone+":branches",&"recover"),"Repair has actual gathered material")
				if not ExplorationAutoplay.operate(g,o.id,&"repair"): continue
				repaired=true
				check(g.runtime.object(zone,o.id).used and g.hazard_at(HistoryWorldRealization.vector(o.cell))==0,"Repair changes actual hazard")
				var saved:=g.save_json(); var clone:=HistoryPlayableGame.new()
				check(clone.load_json(saved) and clone.runtime.object(zone,o.id).used,"Repair persists")
				check(clone.hazard_at(HistoryWorldRealization.vector(o.cell))==0,"Repaired hazard stays gone")
			if o.verb=="clear" and not cleared:
				if not ExplorationAutoplay.operate(g,o.id,&"clear"): continue
				cleared=true
				check(not g.is_wall(HistoryWorldRealization.vector(o.cell)),"Clearing changes actual collision")
			if o.verb=="inspect" and not observed:
				if not ExplorationAutoplay.operate(g,o.id,&"inspect"): continue
				observed=true
				check(o.id in g.runtime.knowledge,"Only inspected object learned")
				check(not MicrohistoryText.describe(o,true).contains("outcome"),"Player view has no objective field dump")
		if not travelled and (cleared or repaired):
			var changed: Dictionary=g.runtime.overrides[zone].duplicate(true)
			for object in g.initial_world.zones[zone].objects.values():
				if object.kind!="exit": continue
				var route: String="route:"+zone
				if g.initial_world.zones[zone].objects.has(route) and not g.runtime.object(zone,route).removed:
					if g.runtime.bag("materials")==0: ExplorationAutoplay.operate(g,"env:"+zone+":branches",&"recover")
					if not ExplorationAutoplay.operate(g,route,&"clear"): continue
				if not ExplorationAutoplay.operate(g,object.id,&"travel"): continue
				var next: String=g.runtime.current_zone
				if g.initial_world.zones[next].objects.has("route:"+next):
					ExplorationAutoplay.operate(g,"env:"+next+":branches",&"recover")
					if not ExplorationAutoplay.operate(g,"route:"+next,&"clear"): continue
				if not ExplorationAutoplay.operate(g,"exit:"+zone,&"travel"): continue
				travelled=true
				for key in changed: check(g.runtime.overrides[zone][key]==changed[key],"Revisit preserves changed evidence")
				check(facts==JSON.stringify(g.initial_world.zones[zone].microhistory),"Revisit never changes the past")
				break
		if repaired and cleared and travelled and observed: break
	check(repaired,"At least one natural seed repairs through actual Actions")
	check(cleared,"At least one natural seed removes evidence through actual Actions")
	check(travelled,"Actual movement/travel/return after microhistory intervention")
	check(observed,"Actual on-site investigation")
