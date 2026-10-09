class_name HistoryWorldRealization
extends RefCounted
## Deterministic initial play space. All historical rows are defensive snapshots.
const VERSION := "history_zone/1"
const WIDTH := 40
var manifest: Dictionary = {}
var manifest_hash := ""
var zones: Dictionary = {}
var selected: Array[String] = []
var errors: Array[String] = []

static func build(input: HistoryWorldManifest, terrain_seed: int = -1) -> HistoryWorldRealization:
	var w := HistoryWorldRealization.new()
	if input == null:
		w.errors = ["Missing Manifest"]; return w
	w.errors = HistoryWorldManifest.validate(input.payload)
	if not w.errors.is_empty(): return w
	if input.payload.content_version != HistoryCivilizationContent.VERSION:
		w.errors = ["Unsupported history content version"]; return w
	w.manifest = input.payload.duplicate(true)
	w.manifest_hash = JSON.stringify(JSON.parse_string(JSON.stringify(w.manifest)), "", true).sha256_text()
	var graph := {}
	for l in w.manifest.localities: graph[l.id] = l
	# Prefer a connected region with current confirmed objects; selection never adds edges.
	var start: String = w.manifest.localities[0].id
	for a in w.manifest.objects:
		if a.actually_present:
			for f in w.manifest.facilities:
				if f.id == a.site_id: start = f.locality_id; break
			break
	var queue: Array[String] = [start]
	var seen := {start: true}
	while not queue.is_empty() and w.selected.size() < 3:
		var id: String = queue.pop_front()
		w.selected.append(id)
		var neighbors: Array = graph[id].neighbors.duplicate(); neighbors.sort()
		for neighbor: String in neighbors:
			if not seen.has(neighbor): seen[neighbor] = true; queue.append(neighbor)
	if w.selected.size() != 3:
		w.errors = ["Manifest has fewer than three connected localities"]; return w
	for id in w.selected:
		w.zones[id] = w._zone(graph[id], int(w.manifest.seed) if terrain_seed < 0 else terrain_seed)
	for id in w.selected:
		for exit in w.zones[id].objects.values():
			if exit.kind == "exit":
				var reverse: Variant = w.zones[exit.destination].objects.get("exit:" + id)
				if reverse == null: w.errors.append("Missing reciprocal exit: " + id)
	return w

func _zone(locality: Dictionary, seed: int) -> Dictionary:
	var facilities: Array = manifest.facilities.filter(func(f: Dictionary) -> bool: return f.locality_id == locality.id)
	var height := maxi(25, 10 + ceili(facilities.size() / 4.0) * 7)
	var settings := GenerationSettings.new(); settings.map_width = WIDTH; settings.map_height = height
	var base := SimpleMapGenerator.new(settings).generate_environment(SeedDeriver.derive(seed, [VERSION, locality.id, "terrain"]))
	var z := {"id": locality.id, "locality": locality.duplicate(true), "rows": base,
		"objects": {}, "hazards": {}, "facilities": {}, "spawn": [2, 2], "npc_spawns": [], "height": height}
	# Safe travel spine is ordinary present-day traversal, not a new historical site.
	for y in range(1, height - 1): _tile(z, Vector2i(2, y), "#")
	for x in range(WIDTH): _tile(z, Vector2i(x, 0), "R"); _tile(z, Vector2i(x, height - 1), "R")
	for y in range(height): _tile(z, Vector2i(0, y), "R"); _tile(z, Vector2i(WIDTH - 1, y), "R")
	for index in range(facilities.size()):
		var f: Dictionary = facilities[index].duplicate(true)
		var origin := Vector2i(6 + (index % 4) * 8, 4 + (index / 4) * 7)
		var door := origin + Vector2i(3, 5)
		var corridor_y := door.y + 1
		for x in range(2, door.x + 1): _tile(z, Vector2i(x, corridor_y), "#")
		for dy in range(6):
			for dx in range(7):
				var wall := dx == 0 or dx == 6 or dy == 0 or dy == 5
				# Ruins retain broken walls and inert interiors, not their old function.
				var broken: bool = f.condition == "ruined" and wall and dy != 5 and (dx + dy) % 3 == 0
				_tile(z, origin + Vector2i(dx, dy), "R" if wall and not broken else ".")
		_tile(z, door, ".")
		# Phase B marks every ruin inaccessible to its historical function. A ruined
		# shell can still be explored/cleared now; explicit intact/damaged closure stays sealed.
		var sealed: bool = not f.accessible and f.condition != "ruined"
		var barrier := "sealed" if sealed else ("door" if f.condition == "intact" else "rubble")
		_add(z, "entry:" + f.id, barrier, door, f, {"open": false, "removed": false, "blocks": true})
		var can_reach: bool = f.accessible or f.condition == "ruined"
		f["center"] = _cell(origin + Vector2i(3, 2)); z.facilities[f.id] = f
		var positions := [Vector2i(1, 1), Vector2i(2, 1), Vector2i(4, 1), Vector2i(5, 1), Vector2i(1, 2), Vector2i(5, 2)]
		for i in range(f.assets.size()):
			var asset: Dictionary = f.assets[i]
			if asset.actual_quantity <= 0: continue
			_add(z, "asset:" + f.id + ":" + asset.kind, "resource", origin + positions[i], f,
				{"quantity": int(asset.actual_quantity), "asset_kind": asset.kind, "reachable": can_reach, "taken": false})
		_add(z, "control:" + f.id, "control", origin + Vector2i(3, 2), f,
			{"condition": f.condition, "reachable": can_reach, "used": false})
		for p in manifest.projects:
			if p.site_id == f.id and p.status in ["active", "paused"]:
				_add(z, "worksite:" + p.id, "worksite", origin + Vector2i(1, 3), f,
					{"project_id": p.id, "project_kind": p.kind, "status": p.status, "blocks": p.status == "active", "reachable": can_reach})
		if f.assets[2].actual_quantity > 0 or f.assets[5].actual_quantity > 0:
			_add(z, "record:" + f.id, "record", origin + Vector2i(2, 3), f, {"reachable": can_reach})
		for a in manifest.objects:
			if a.site_id == f.id and a.actually_present:
				_add(z, "unique:" + a.id, "unique", origin + Vector2i(4, 3), f,
					{"entity_id": a.id, "taken": false, "reachable": can_reach, "origin": a.origin, "owner_id": a.owner_id})
		if f.hazard > 0:
			z.hazards[key(origin + Vector2i(3, 3))] = {"damage": int(f.hazard), "facility_id": f.id, "source": "current_locality_hazard"}
	# Actual Scar residue is already counted in facility stocks; never mint extra salvage.
	for scar in manifest.scars:
		if scar.locality_id != locality.id: continue
		for site_id in scar.sites:
			if not z.facilities.has(site_id): continue
			var f: Dictionary = z.facilities[site_id]; var center := vector(f.center)
			_add(z, "scar:" + scar.id + ":" + site_id, "scar", center + Vector2i(-1, 1), f,
				{"scar_id": scar.id, "scar_kind": scar.kind, "recovered": scar.recovered, "residue": scar.actual_residue})
			if (f.accessible or f.condition == "ruined") and f.condition != "intact" and scar.kind == "orbital_fall" and not scar.recovered:
				_tile(z, center + Vector2i(0, -2), ".") # an impact breach instead of a wall
			if not scar.recovered and scar.hazard > 0 and f.hazard > 0:
				z.hazards[key(center + Vector2i(0, 1))] = {"damage": mini(int(scar.hazard), int(f.hazard)), "facility_id": site_id, "source": scar.id}
	var exit_index := 0
	for neighbor: String in locality.neighbors:
		if neighbor not in selected: continue
		var cell := Vector2i(2, 4 + exit_index * 2); exit_index += 1
		_add(z, "exit:" + neighbor, "exit", cell, {}, {"destination": neighbor})
	if not locality.passage_open:
		_add(z, "route:" + locality.id, "route", Vector2i(3, 3), {}, {"removed": false})
		_tile(z, Vector2i(3, 3), ".")
	# Ambient fauna use authored Rat, not historical populations converted to hostile NPCs.
	if locality.hazard > 0 or facilities.any(func(f: Dictionary) -> bool: return f.condition != "intact"):
		var spawn := Vector2i(4, height - 3)
		for x in range(2, 5): _tile(z, Vector2i(x, height - 3), ".")
		z.npc_spawns.append(_cell(spawn))
	return z

func _add(z: Dictionary, id: String, kind: String, cell: Vector2i, f: Dictionary, extra: Dictionary) -> void:
	var o := {"id": id, "kind": kind, "cell": _cell(cell), "facility_id": f.get("id", ""),
		"owner_id": f.get("owner_id", ""), "blocks": false, "reachable": true}
	o.merge(extra, true); z.objects[id] = o

static func _tile(z: Dictionary, cell: Vector2i, tile: String) -> void:
	var row: String = z.rows[cell.y]; z.rows[cell.y] = row.substr(0, cell.x) + tile + row.substr(cell.x + 1)
static func _cell(cell: Vector2i) -> Array: return [cell.x, cell.y]
static func vector(cell: Array) -> Vector2i: return Vector2i(int(cell[0]), int(cell[1]))
static func key(cell: Vector2i) -> String: return "%d,%d" % [cell.x, cell.y]

func canonical() -> String:
	return JSON.stringify({"version": VERSION, "hash": manifest_hash, "selected": selected, "zones": zones}, "", true)
