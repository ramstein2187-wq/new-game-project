extends SceneTree
## Logical placement/path corpus; no GUI or full tactical simulation per seed.
func _init() -> void:
	var count := 500
	var output_path := ""
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count = int(arg.trim_prefix("--count="))
		if arg.begins_with("--output="): output_path = arg.trim_prefix("--output=")
	var stats := {"count": count, "generation_version": HistoryWorldRealization.VERSION, "history_version": HistoryCivilizationContent.VERSION,
		"worlds": 0, "zones": 0, "facilities": 0, "edges": 0, "valid_spawns": 0, "objects": 0,
		"reachable_objects": 0, "intentional_sealed_objects": 0, "unintended_unreachable": 0,
		"resources": 0, "resource_units": 0, "confirmed_unique_objects": 0, "scar_instances": {}, "worksites": {},
		"scar_effects": 0, "conditions": {}, "blocked_locality_passages": 0, "hazard_cells": 0,
		"failures": [], "geometry_signatures": {}, "generation_us": [], "realization_us": [], "save_us": [], "restore_us": [], "travel_us": []}
	for seed in range(1, count + 1):
		var begin := Time.get_ticks_usec()
		var history := HistoryEngine.new().generate_civilization(seed)
		stats.generation_us.append(Time.get_ticks_usec() - begin)
		var m := HistoryWorldManifest.build(history)
		begin = Time.get_ticks_usec()
		var w := HistoryWorldRealization.build(m)
		stats.realization_us.append(Time.get_ticks_usec() - begin)
		if not w.errors.is_empty(): stats.failures.append({"seed": seed, "errors": w.errors}); continue
		stats.worlds += 1
		var r := HistoryRuntimeState.new(w)
		for id in w.selected:
			var z: Dictionary = w.zones[id]; stats.zones += 1; stats.facilities += z.facilities.size()
			if r.valid_position(id, HistoryWorldRealization.vector(z.spawn)): stats.valid_spawns += 1
			else: stats.failures.append({"seed": seed, "error": "blocked spawn"})
			var reachable := reachable_with_interactions(z)
			stats.hazard_cells += z.hazards.size()
			if not z.locality.passage_open: stats.blocked_locality_passages += 1
			for f in z.facilities.values(): stats.conditions[f.condition] = int(stats.conditions.get(f.condition, 0)) + 1
			for o in z.objects.values():
				stats.objects += 1
				var cell := HistoryWorldRealization.vector(o.cell)
				var accessible := reachable.has(cell)
				for direction in TimeCostGame.CARDINAL_DIRECTIONS:
					if reachable.has(cell + direction): accessible = true
				if accessible: stats.reachable_objects += 1
				elif not o.reachable: stats.intentional_sealed_objects += 1
				else:
					stats.unintended_unreachable += 1
					stats.failures.append({"seed": seed, "zone": id, "unreachable": o.id})
				if o.kind == "resource": stats.resources += 1; stats.resource_units += int(o.quantity)
				if o.kind == "unique": stats.confirmed_unique_objects += 1
				if o.kind == "worksite": stats.worksites[o.status] = int(stats.worksites.get(o.status, 0)) + 1
				if o.kind == "exit": stats.edges += 1
				if o.kind == "scar":
					stats.scar_instances[o.scar_kind] = int(stats.scar_instances.get(o.scar_kind, 0)) + 1
					if not o.recovered and (o.residue > 0 or not z.hazards.is_empty() or z.facilities[o.facility_id].condition != "intact" or not z.locality.passage_open): stats.scar_effects += 1
			# Remove all labels/IDs; geometry, hazard cells and object affordances only.
			var objects: Array = []
			for o in z.objects.values(): objects.append([o.kind, o.cell, o.get("quantity", 0), o.get("asset_kind", ""), o.get("open", false)])
			var sig := JSON.stringify([z.rows, z.hazards.keys(), objects], "", true).sha256_text()
			stats.geometry_signatures[sig] = true
		if seed <= 50:
			var g := HistoryPlayableGame.new(); g.start(m)
			for o in w.zones[g.runtime.current_zone].objects.values():
				if o.kind != "exit": continue
				var exit_cell := HistoryWorldRealization.vector(o.cell)
				while g.player_position.y < exit_cell.y - 1: g.player_move(Vector2i.DOWN)
				g.facing = Vector2i.DOWN
				begin = Time.get_ticks_usec(); var traveled := g.player_operation(&"travel")
				if traveled: stats.travel_us.append(Time.get_ticks_usec() - begin)
				break
			begin = Time.get_ticks_usec(); var saved := g.save_json(); stats.save_us.append(Time.get_ticks_usec() - begin)
			var clone := HistoryPlayableGame.new(); begin = Time.get_ticks_usec(); var valid := clone.load_json(saved); stats.restore_us.append(Time.get_ticks_usec() - begin)
			if not valid or clone.save_json() != saved: stats.failures.append({"seed": seed, "save_error": clone.load_error})
		if seed % 100 == 0: print("Validated %d/%d playable worlds" % [seed, count])
	stats.geometry_signatures = stats.geometry_signatures.size()
	for field in ["generation_us", "realization_us", "save_us", "restore_us", "travel_us"]:
		var times: Array = stats[field]; times.sort(); var total := 0.0
		for t in times: total += t
		stats[field] = {"samples": times.size(), "mean": total / maxi(1, times.size()), "p95": times[floori((times.size() - 1) * 0.95)] if not times.is_empty() else 0, "max": times.back() if not times.is_empty() else 0}
	DirAccess.make_dir_recursive_absolute("res://docs/reviews/history_v6_phase_c")
	if output_path.is_empty(): output_path = "res://" + "docs/reviews/history_v6_phase_c/stats_%d.json" % count
	var file := FileAccess.open(output_path, FileAccess.WRITE)
	file.store_string(JSON.stringify(stats, "\t", true) + "\n")
	print("Playable corpus complete: %d worlds, %d zones, %d failures, %d unreachable" % [stats.worlds, stats.zones, stats.failures.size(), stats.unintended_unreachable])
	quit(0 if stats.failures.is_empty() else 1)

func reachable_with_interactions(z: Dictionary) -> Dictionary:
	var start := HistoryWorldRealization.vector(z.spawn)
	var queue: Array[Vector2i] = [start]; var seen := {start: true}; var barriers := {}
	for o in z.objects.values():
		if o.blocks and o.kind not in ["door", "rubble"]: barriers[HistoryWorldRealization.vector(o.cell)] = true
	var index := 0
	while index < queue.size():
		var cell := queue[index]; index += 1
		for direction in TimeCostGame.CARDINAL_DIRECTIONS:
			var next := cell + direction
			if next.x < 0 or next.y < 0 or next.y >= z.rows.size() or next.x >= z.rows[0].length() or seen.has(next) or barriers.has(next) or z.rows[next.y][next.x] in ["T", "R"]: continue
			seen[next] = true; queue.append(next)
	return seen
