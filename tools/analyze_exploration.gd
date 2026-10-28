extends SceneTree
## Production geometry + material/Actor/ownership contracts, independent BFS audit.
var failures: Array = []

func _init() -> void:
	var count := 100
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count = int(arg.trim_prefix("--count="))
	var stats := {"worlds": count, "zones": 0, "objects": {}, "enemies": {}, "forms": {}, "valid_spawns": 0,
		"sealed_objects": 0, "reachable_objects": 0, "reachable_exits": 0, "deterministic": 0,
		"history_hashes_preserved": 0, "realization_ms": [], "save_ms": [], "load_ms": [], "sizes": {}, "failures": []}
	for seed in range(1, count + 1):
		var m := HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(seed))
		var hash_before := m.canonical().sha256_text()
		var begin := Time.get_ticks_usec()
		var w := HistoryWorldRealization.build(m, -1, true)
		stats.realization_ms.append((Time.get_ticks_usec() - begin) / 1000.0)
		if not w.errors.is_empty(): failures.append([seed, w.errors]); continue
		if w.canonical() == HistoryWorldRealization.build(m, -1, true).canonical(): stats.deterministic += 1
		else: failures.append([seed, "nondeterministic"])
		if m.canonical().sha256_text() == hash_before: stats.history_hashes_preserved += 1
		else: failures.append([seed, "manifest mutation"])
		var runtime := HistoryRuntimeState.new(w)
		for id in w.selected:
			stats.zones += 1
			var z: Dictionary = w.zones[id]
			stats.sizes["%dx%d" % [z.rows[0].length(), z.height]] = true
			var blocked := {}; var occupied := {}
			for o in z.objects.values():
				var c := HistoryWorldRealization.vector(o.cell)
				if occupied.has(c): failures.append([seed, id, "object overlap", o.id, occupied[c]])
				occupied[c] = o.id
				if o.blocks and o.kind not in ["door", "rubble", "stump", "cart", "fence", "boulder"]: blocked[c] = true
			var seen := reachable(z, blocked)
			var safe := reachable(z, blocked, true)
			if runtime.valid_position(id, HistoryWorldRealization.vector(z.spawn)): stats.valid_spawns += 1
			else: failures.append([seed, id, "spawn"])
			for form in z.forms: stats.forms[form] = int(stats.forms.get(form, 0)) + 1
			for i in range(z.npc_spawns.size()):
				var c := HistoryWorldRealization.vector(z.npc_spawns[i]); var type: String = z.npc_types[i]
				stats.enemies[type] = int(stats.enemies.get(type, 0)) + 1
				if not runtime.valid_position(id, c) or occupied.has(c) or not seen.has(c) or c.distance_to(HistoryWorldRealization.vector(z.spawn)) < 12: failures.append([seed, id, "npc placement", type, str(c)])
				occupied[c] = type
			for o in z.objects.values():
				stats.objects[o.kind] = int(stats.objects.get(o.kind, 0)) + 1
				var c := HistoryWorldRealization.vector(o.cell)
				var reached: bool = seen.has(c) or TimeCostGame.CARDINAL_DIRECTIONS.any(func(d: Vector2i) -> bool: return seen.has(c + d))
				if reached: stats.reachable_objects += 1
				elif not o.reachable: stats.sealed_objects += 1
				else: failures.append([seed, id, "unreachable", o.id])
				if o.kind == "exit":
					if safe.has(c) and c.distance_to(HistoryWorldRealization.vector(z.spawn)) >= 50: stats.reachable_exits += 1
					else: failures.append([seed, id, "unsafe/near exit"])
				if o.kind in ["branches", "stone_cache", "lookout", "bridge", "supply_cache"] and not safe.has(c): failures.append([seed, id, "safe objective unreachable", o.id])
		if seed <= 50:
			var g := HistoryPlayableGame.new(); g.exploration_enabled = true; g.start(m)
			begin = Time.get_ticks_usec(); var saved := g.save_json(); stats.save_ms.append((Time.get_ticks_usec() - begin) / 1000.0)
			var clone := HistoryPlayableGame.new(); begin = Time.get_ticks_usec()
			var loaded := clone.load_json(saved); stats.load_ms.append((Time.get_ticks_usec() - begin) / 1000.0)
			if not loaded or clone.save_json() != saved: failures.append([seed, "roundtrip", clone.load_error])
		if seed % 25 == 0: print("M049 corpus ", seed, "/", count)
	stats.failures = failures
	for key in ["realization_ms", "save_ms", "load_ms"]:
		var times: Array = stats[key]; times.sort(); var sum := 0.0
		for value in times: sum += value
		stats[key] = {"samples": times.size(), "mean": sum / maxi(1, times.size()), "p95": times[floori((times.size() - 1) * 0.95)] if not times.is_empty() else 0}
	FileAccess.open("res://docs/reviews/m049/" + "corpus_%d.json" % count, FileAccess.WRITE).store_string(JSON.stringify(stats, "\t", true) + "\n")
	print("M049 corpus: ", stats.zones, " zones; ", failures.size(), " failures; species=", stats.enemies)
	for f in failures.slice(0, 25): print(f)
	quit(0 if failures.is_empty() else 1)

func reachable(z: Dictionary, blocked: Dictionary, safe: bool = false) -> Dictionary:
	var start := HistoryWorldRealization.vector(z.spawn)
	var seen := {start: true}; var queue: Array[Vector2i] = [start]; var index := 0
	while index < queue.size():
		var cell := queue[index]; index += 1
		for d in TimeCostGame.CARDINAL_DIRECTIONS:
			var c := cell + d
			if seen.has(c) or c.x < 0 or c.x >= 96 or c.y < 0 or c.y >= z.height or blocked.has(c) or z.rows[c.y][c.x] in ["R", "T", "~"]: continue
			if safe and z.hazards.has(HistoryWorldRealization.key(c)): continue
			seen[c] = true; queue.append(c)
	return seen
