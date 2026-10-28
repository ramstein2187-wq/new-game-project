extends SceneTree
var checks := 0
var failures: Array[String] = []

func check(ok: bool, message: String) -> void:
	checks += 1
	if not ok: failures.append(message)

func _init() -> void:
	var m := HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(42))
	var canonical := m.canonical()
	var g := HistoryPlayableGame.new(); g.exploration_enabled = true
	check(g.start(m), "Start expanded production world")
	check(g.map_width == 96 and g.map_height >= 64, "Actual larger terrain")
	var zone := g.runtime.current_zone
	var prefix := "env:" + zone + ":"
	check(ExplorationAutoplay.operate(g, prefix + "branches", &"recover"), "Real legal collection")
	check(g.runtime.bag("materials") == 4 and g.runtime.offenses.is_empty(), "Finite supply without custody offense")
	check(not ExplorationAutoplay.operate(g, prefix + "branches", &"recover"), "No duplicate gathering")
	check(ExplorationAutoplay.operate(g, prefix + "lookout", &"use"), "Noncombat survey through scheduled use")
	check(g.get_actor(&"player").has_effect(&"route_survey"), "Survey reward uses existing effect model")
	check(ExplorationAutoplay.operate(g, prefix + "bridge", &"repair"), "Noncombat physical crossing repair")
	check(g.runtime.bag("materials") == 2 and g.hazard_at(Vector2i(59, 30)) == 0, "Real material cost removes crossing hazard")
	check(ExplorationInteractions.progress(g).goals == 2 and ExplorationInteractions.progress(g).visited > 30, "Meaningful progress is not zone count")
	check(m.canonical() == canonical, "Current environment does not mint Manifest resources")
	var saved := g.save_json(); var clone := HistoryPlayableGame.new()
	check(clone.load_json(saved) and clone.save_json() == saved, "New state and Actor effects exact save/load: " + clone.load_error)
	check(ExplorationAutoplay.operate(g, prefix + "tool_rack", &"use"), "Actual catalog weapon swap")
	check(g.get_actor(&"player").weapon_id == &"hunting_knife", "Equipped catalog knife")
	check(ExplorationAutoplay.operate(g, prefix + "tool_rack", &"use") and g.get_actor(&"player").weapon_id == &"longsword", "Prior weapon retained, no equipment loss")
	for o in g.initial_world.zones[zone].objects.values():
		if o.kind != "exit": continue
		var barrier := "route:" + zone
		if g.initial_world.zones[zone].objects.has(barrier): check(ExplorationAutoplay.operate(g, barrier, &"clear"), "Legal material opens regional passage")
		check(ExplorationAutoplay.operate(g, o.id, &"travel"), "Distant exit through real movement")
		var next_barrier := "route:" + g.runtime.current_zone
		if g.initial_world.zones[g.runtime.current_zone].objects.has(next_barrier):
			check(ExplorationAutoplay.operate(g, "env:" + g.runtime.current_zone + ":branches", &"recover"), "Legal acquisition after travel")
			check(ExplorationAutoplay.operate(g, next_barrier, &"clear"), "No blocked-return softlock")
		check(ExplorationAutoplay.operate(g, "exit:" + zone, &"travel"), "Return preserves runtime")
		check(g.runtime.object(zone, prefix + "branches").taken and g.runtime.object(zone, prefix + "bridge").used, "No regeneration of cleared objective/reward")
		break
	var stable := g.save_json()
	for mutation in ["schema", "prototype", "progress", "weapon"]:
		var raw: Dictionary = JSON.parse_string(stable)
		match mutation:
			"schema": raw.schema = "history_play_save/99"
			"prototype": raw.actors[zone][0].type = "armored_raider"
			"progress": raw.exploration[zone].visited.append("-1,999")
			"weapon": raw.overrides[zone][prefix + "tool_rack"]["weapon_id"] = "imaginary"
		raw.erase("checksum"); raw.checksum = JSON.stringify(raw, "", true).sha256_text()
		check(not g.load_json(JSON.stringify(raw)) and g.save_json() == stable, "Atomic rejection: " + mutation)
	# Old schema loads its original geometry; v1 outputs/tests remain executable.
	var old := HistoryPlayableGame.new(); old.start(m)
	var old_save := old.save_json()
	check(clone.load_json(old_save) and clone.map_width == 40 and clone.save_json() == old_save, "Explicit old-save compatibility with original realization")
	for id in ExplorationZoneBuilder.encounter_table:
		var definition := CombatContentCatalog.actor(StringName(id))
		check(definition != null, "Encounter resolves authored catalog " + id)
		var a := Actor.new(StringName(id), definition, Vector2i(12, 12))
		a.hp -= 1; a.body.parts[a.body.attack_part].current -= 1
		var raw := WorldActorState.capture(a, 725)
		var restored := WorldActorState.restore(JSON.parse_string(JSON.stringify(raw)))
		check(restored != null and WorldActorState.capture(restored, 725) == raw, "Exact multi-species body/weapon/policy restore " + id)
	_geometry_fixtures(m)
	print("M049 focused: ", checks, " checks / ", failures.size(), " failures")
	for f in failures: push_error(f)
	quit(0 if failures.is_empty() else 1)

func _geometry_fixtures(manifest: RefCounted) -> void:
	# Consumer-only stress fixtures exceed the current generated facility counts.
	# They are not invented Manifest/history records or balance measurements.
	var legacy := HistoryWorldRealization.build(manifest)
	var source: Dictionary = legacy.zones[legacy.selected[0]]
	var original: String = source.facilities.keys()[0]
	for count in [0, 1, 4, 8, 12]:
		var fixture: Dictionary = source.duplicate(true)
		fixture.facilities.clear(); fixture.objects.clear(); fixture.hazards.clear()
		for i in range(count):
			var id := "fixture_site_" + str(i)
			var facility: Dictionary = source.facilities[original].duplicate(true)
			facility.id = id; facility.accessible = true
			fixture.facilities[id] = facility
			for object in source.objects.values():
				if object.facility_id != original: continue
				var o: Dictionary = object.duplicate(true)
				o.id = String(o.id).replace(original, id); o.facility_id = id
				fixture.objects[o.id] = o
		var z := ExplorationZoneBuilder.build(legacy, fixture, 42 + count)
		var occupied := {}; var valid := true
		var seen := ExplorationZoneBuilder._reachable(z)
		for o in z.objects.values():
			var c := HistoryWorldRealization.vector(o.cell)
			if occupied.has(c) or c.x < 1 or c.x >= 95 or c.y < 1 or c.y >= z.height - 1: valid = false
			occupied[c] = true
			if o.reachable and not seen.has(c) and not TimeCostGame.CARDINAL_DIRECTIONS.any(func(d: Vector2i) -> bool: return seen.has(c + d)): valid = false
		check(valid, "Variable facility count: bounds, unique cells and terrain access " + str(count))
		check(z.height == maxi(64, ceili(count / 4.0) * 32), "Height expands for facility count " + str(count))
