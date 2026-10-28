class_name ExplorationZoneBuilder
extends RefCounted
## Consumer-only terrain. Legacy realization supplies exact historical quantities,
## IDs and access contracts; this profile changes their physical arrangement.
const WIDTH := 96
const FORMS := ["industrial", "woodland", "impact", "observatory"]
static var encounter_table: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://content/exploration/encounters.json"))

static func build(world: RefCounted, legacy: Dictionary, seed: int) -> Dictionary:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history_zone/2", legacy.id, "layout"])
	var height := maxi(64, ceili(legacy.facilities.size() / 4.0) * 32)
	var z := {"id": legacy.id, "locality": legacy.locality.duplicate(true), "rows": PackedStringArray(),
		"objects": {}, "hazards": {}, "facilities": {}, "spawn": [6, 30], "npc_spawns": [], "npc_types": [],
		"height": height, "forms": [], "landmarks": [], "protected": {}, "visual_seed": seed}
	var noise := FastNoiseLite.new(); noise.seed = rng.randi(); noise.frequency = 0.085
	for y in range(height):
		var row := ""
		for x in range(WIDTH):
			var n := noise.get_noise_2d(x, y)
			row += "R" if x == 0 or y == 0 or x == WIDTH - 1 or y == height - 1 else ("T" if n > 0.27 else ("~" if n < -0.32 else "."))
		z.rows.append(row)
	# One recognizable main trail, with thin irregular northern/southern loops.
	# No repeated street grid: branches are selected by real facilities/landforms.
	_path(z, Vector2i(6, 30), Vector2i(90, 30), 1)
	_trail(z, Vector2i(5, 5), Vector2i(90, 5), rng)
	_trail(z, Vector2i(5, height - 5), Vector2i(90, height - 5), rng)
	_path(z, Vector2i(5, 5), Vector2i(5, height - 5), 0)
	_path(z, Vector2i(90, 5), Vector2i(90, height - 5), 0)
	var index := 0
	var centers := {}
	for id in legacy.facilities:
		var f: Dictionary = legacy.facilities[id].duplicate(true)
		var form: String = FORMS[(index + posmod(rng.seed, 4)) % 4]
		# Existing human function informs architecture; damage/scars then change routes.
		if f.local_function in ["power", "launch"]: form = "industrial"
		elif f.local_function in ["survey", "archive"]: form = "observatory"
		if f.condition == "ruined": form = "impact"
		var center := Vector2i(12 + (index % 4) * 24 + rng.randi_range(-2, 2), 14 + (index / 4) * 32)
		index += 1
		var old_center := HistoryWorldRealization.vector(f.center)
		centers[id] = {"old": old_center, "new": center}
		f.center = [center.x, center.y]; f["form"] = form; z.facilities[id] = f
		z.forms.append(form)
		var sealed: bool = not f.accessible and f.condition != "ruined"
		var half_width := 7 + rng.randi_range(0, 2)
		var half_height := 5 if form != "observatory" else 7
		for dy in range(-half_height, half_height + 1):
			for dx in range(-half_width, half_width + 1):
				var c := center + Vector2i(dx, dy)
				var outer: bool = absi(dx) == half_width or absi(dy) == half_height
				var wall := outer
				if form == "woodland" and not sealed: wall = outer and (dy < 0 or dx < 0)
				if form == "impact" and not sealed: wall = outer and (absi(dx + dy) % 4 != 0)
				if form == "observatory" and absi(dx) > half_width - 2 and absi(dy) > half_height - 2: wall = true
				_tile(z, c, "R" if wall else ":")
		# Content core is spacious and guaranteed usable, with side wings/pillars around it.
		for dx in [-half_width + 2, half_width - 2]:
			if form == "industrial":
				for dy in [-2, 1]: _tile(z, center + Vector2i(dx, dy), "R")
		var entry := center + Vector2i(0, half_height)
		_path(z, entry + Vector2i(0, 1), Vector2i(entry.x, mini(height - 5, 30 + (index - 1) / 4 * 32)), 0)
		_tile(z, entry, ":")
		z.landmarks.append({"id": id, "cell": f.center, "kind": form})
		for old in legacy.objects.values():
			if old.facility_id != id: continue
			var o: Dictionary = old.duplicate(true)
			var cell := center + HistoryWorldRealization.vector(o.cell) - old_center
			if o.id == "entry:" + id: cell = entry
			# Several scars at one site must remain individually inspectable.
			cell = _vacant(z, cell)
			o.cell = [cell.x, cell.y]; z.objects[o.id] = o
			_tile(z, cell, ":")
		for key in legacy.hazards:
			var h: Dictionary = legacy.hazards[key]
			if h.facility_id != id: continue
			var parts: PackedStringArray = key.split(",")
			var cell := center + Vector2i(int(parts[0]), int(parts[1])) - old_center
			z.hazards[HistoryWorldRealization.key(cell)] = h.duplicate(true)
		# Ordinary ruined shells have a second approach; sealed sites keep their boundary.
		if f.condition != "intact" and not sealed:
			var breach := center - Vector2i(half_width, 0)
			_path(z, Vector2i(24 * ((index - 1) % 4) + 3, center.y), breach, 0)
			_tile(z, breach, ":")
	# Even a locality with one historical site has four different outdoor spaces.
	_landscape(z, rng)
	var exits: Array = legacy.objects.values().filter(func(o: Dictionary) -> bool: return o.kind == "exit")
	for i in range(exits.size()):
		var o: Dictionary = exits[i].duplicate(true)
		var cell := Vector2i(90, 8 if i == 0 else height - 9)
		o.cell = [cell.x, cell.y]; z.objects[o.id] = o; _path(z, cell, Vector2i(90, 30), 0)
	if not legacy.locality.passage_open:
		_env(z, "route", Vector2i(11, 30), {"removed": false}, "route:" + z.id)
	# Current-environment finite resources, explicitly separate from Manifest stocks.
	_env(z, "branches", Vector2i(8, 28), {"taken": false, "quantity": 4, "asset_kind": "materials"})
	_env(z, "stone_cache", Vector2i(23, 28), {"taken": false, "quantity": 3, "asset_kind": "materials"})
	_env(z, "camp", Vector2i(8, 32), {"used": false})
	_env(z, "trail_sign", Vector2i(16, 30), {})
	_env(z, "lookout", Vector2i(33, 29), {"used": false})
	_env(z, "workbench", Vector2i(36, 30), {"used": false})
	# Distinct noncombat objective: brace a short crossing, or walk the longer dry bank.
	_env(z, "bridge", Vector2i(56, 30), {"used": false, "cost": 2})
	for x in range(57, 63):
		for y in range(29, 32):
			_tile(z, Vector2i(x, y), "!")
			z.hazards["%d,%d" % [x, y]] = {"damage": 2, "facility_id": "", "source": "loose_current_footing", "control_id": "env:" + z.id + ":bridge"}
	_path(z, Vector2i(54, 30), Vector2i(54, 37), 1)
	_path(z, Vector2i(54, 37), Vector2i(65, 37), 1)
	_path(z, Vector2i(65, 37), Vector2i(65, 30), 1)
	_env(z, "supply_cache", Vector2i(68, 29), {"taken": false, "quantity": 4, "asset_kind": "materials"})
	_env(z, "shelter", Vector2i(74, 29), {"used": false})
	_env(z, "tool_rack", Vector2i(77, 30), {"used": false, "weapon_id": "hunting_knife"})
	_env(z, "waystone", Vector2i(85, 31), {})
	# Props carry exact collision roles; decorative tufts never block a passage.
	var outdoor := _reachable(z)
	for i in range(48):
		var cell := Vector2i(rng.randi_range(4, 90), rng.randi_range(5, height - 5))
		if not outdoor.has(cell) or z.protected.has(cell) or _occupied(z, cell) or _terrain(z, cell) in ["R", "T", ":", "~"]: continue
		var kind: String = ["flowers", "stump", "cart", "scrap", "fence", "crate", "boulder"][i % 7]
		_env(z, kind, cell, {"blocks": kind in ["stump", "cart", "fence", "boulder"], "removed": false} if kind != "flowers" else {}, "env:" + z.id + ":prop:" + str(i))
	_spawn(z, seed)
	z.erase("protected")
	return z

static func _landscape(z: Dictionary, rng: RandomNumberGenerator) -> void:
	# Unoccupied sector corners make a grove, water basin, crater and stone ring.
	for i in range(4):
		var center := Vector2i(14 + i * 24, 51)
		if z.facilities.values().any(func(f: Dictionary) -> bool: return HistoryWorldRealization.vector(f.center).distance_to(center) < 12): continue
		z.landmarks.append({"id": "landform:" + z.id + ":" + str(i), "cell": [center.x, center.y], "kind": FORMS[i]})
		z.forms.append(FORMS[i])
		for dy in range(-7, 8):
			for dx in range(-8, 9):
				var cell := center + Vector2i(dx, dy)
				if cell.x >= 94 or z.protected.has(cell): continue
				var d := Vector2(dx, dy).length()
				var tile := "."
				if i == 0: tile = ":" if absi(dx) < 6 and absi(dy) < 4 else "."
				elif i == 1: tile = "T" if d > 4 and d < 7 and rng.randf() < 0.6 else "."
				elif i == 2: tile = "~" if d < 4 else ("," if d < 6 else ".")
				elif i == 3: tile = "R" if d > 5 and d < 6.5 and absi(dy) > 1 else ":"
				_tile(z, cell, tile)
		_path(z, center, Vector2i(center.x, z.height - 4), 0)

static func _reachable(z: Dictionary) -> Dictionary:
	var start := HistoryWorldRealization.vector(z.spawn)
	var seen := {start: true}; var queue: Array[Vector2i] = [start]; var i := 0
	while i < queue.size():
		var cell := queue[i]; i += 1
		for d in TimeCostGame.CARDINAL_DIRECTIONS:
			var c := cell + d
			if seen.has(c) or _terrain(z, c) in ["R", "T", "~"]: continue
			seen[c] = true; queue.append(c)
	return seen

static func _trail(z: Dictionary, a: Vector2i, b: Vector2i, rng: RandomNumberGenerator) -> void:
	var current := a
	while current.x < b.x:
		var next := Vector2i(mini(b.x, current.x + rng.randi_range(8, 14)), clampi(a.y + rng.randi_range(-2, 2), 2, z.height - 3))
		_path(z, current, next, 0); current = next
	_path(z, current, b, 0)

static func _spawn(z: Dictionary, seed: int) -> void:
	var rng := RandomNumberGenerator.new(); rng.seed = SeedDeriver.derive(seed, ["history_zone/2", z.id, "encounters"])
	var catalog := CombatContentCatalog.all_hostiles()
	# Rat is an explicitly unlisted catalog compatibility prototype, never hand-authored stats.
	if CombatContentCatalog.actor(&"rat") != null: catalog[&"rat"] = CombatContentCatalog.actor(&"rat")
	var table: Dictionary = encounter_table
	var contexts: Array = z.forms.duplicate(); contexts.append("woodland")
	var candidates: Array = []
	for id: String in table:
		if not catalog.has(StringName(id)): continue
		var definition: ActorDefinition = catalog[StringName(id)]
		if not definition.is_valid() or definition.ai_policy not in [&"rat_tactics", &"basic_melee"]: continue
		var weight := 0
		for context in contexts: weight += int(table[id].get(context, 0))
		if z.locality.hazard > 0: weight += int(table[id].get("hazard", 0))
		for n in range(weight): candidates.append(id)
	if candidates.is_empty(): return
	var reachable := _reachable(z)
	for i in range(3):
		for attempt in range(200):
			var cell := Vector2i(rng.randi_range(10, 87), rng.randi_range(6, z.height - 7))
			if not reachable.has(cell) or _terrain(z, cell) != "." or _occupied(z, cell) or cell.distance_to(Vector2i(6, 30)) < 17 or absi(cell.y - 30) < 12: continue
			if z.objects.values().any(func(o: Dictionary) -> bool: return o.kind in ["exit", "camp", "shelter"] and HistoryWorldRealization.vector(o.cell).distance_to(cell) < 12): continue
			if z.npc_spawns.any(func(c: Array) -> bool: return HistoryWorldRealization.vector(c).distance_to(cell) < 17): continue
			var open := true
			for d in TimeCostGame.MOVE_DIRECTIONS:
				if _terrain(z, cell + d) in ["R", "T", "~"] or _occupied(z, cell + d): open = false
			if not open: continue
			z.npc_spawns.append([cell.x, cell.y]); z.npc_types.append(candidates[rng.randi_range(0, candidates.size() - 1)])
			break

static func _env(z: Dictionary, kind: String, at: Vector2i, extra: Dictionary, id: String = "") -> void:
	var cell := _vacant(z, at)
	if id.is_empty(): id = "env:" + z.id + ":" + kind
	var o := {"id": id, "kind": kind, "cell": [cell.x, cell.y], "facility_id": "", "owner_id": "", "blocks": false,
		"reachable": true, "provenance": "present_environment/1"}
	o.merge(extra, true); z.objects[id] = o; _tile(z, cell, "#" if z.protected.has(cell) else ".")
	# A prop is never enclosed by random forest/rocks; adjacency is an actual approach.
	for d in TimeCostGame.CARDINAL_DIRECTIONS:
		if _terrain(z, cell + d) in ["T", "~"]: _tile(z, cell + d, ".")

static func _vacant(z: Dictionary, cell: Vector2i) -> Vector2i:
	if not _occupied(z, cell): return cell
	for radius in range(1, 8):
		for y in range(-radius, radius + 1):
			for x in range(-radius, radius + 1):
				var c := cell + Vector2i(x, y)
				if not _occupied(z, c) and _terrain(z, c) not in ["R", "T", "~"]: return c
	return cell

static func _occupied(z: Dictionary, cell: Vector2i) -> bool:
	return z.objects.values().any(func(o: Dictionary) -> bool: return HistoryWorldRealization.vector(o.cell) == cell)

static func _path(z: Dictionary, a: Vector2i, b: Vector2i, radius: int) -> void:
	var current := a
	for step in range(300):
		for dy in range(-radius, radius + 1):
			for dx in range(-radius, radius + 1):
				var cell := current + Vector2i(dx, dy)
				if cell.x > 0 and cell.x < WIDTH - 1 and cell.y > 0 and cell.y < z.height - 1:
					_tile(z, cell, "#"); z.protected[cell] = true
		if current == b: break
		if current.x != b.x: current.x += signi(b.x - current.x)
		else: current.y += signi(b.y - current.y)

static func _terrain(z: Dictionary, cell: Vector2i) -> String:
	if cell.x < 1 or cell.y < 1 or cell.x >= WIDTH - 1 or cell.y >= z.height - 1: return "R"
	return z.rows[cell.y][cell.x]

static func _tile(z: Dictionary, cell: Vector2i, tile: String) -> void:
	if cell.x < 1 or cell.y < 1 or cell.x >= WIDTH - 1 or cell.y >= z.height - 1: return
	HistoryWorldRealization._tile(z, cell, tile)
