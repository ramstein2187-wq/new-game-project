class_name HistoryRuntimeState
extends RefCounted
## Runtime-only overrides and unique ownership. History never changes after start.
const SAVE_SCHEMA := "history_play_save/1"
var realization: HistoryWorldRealization
var current_zone := ""
var overrides: Dictionary = {}
var unique_owners: Dictionary = {}
var inventory: Dictionary = {}
var knowledge: Array[String] = []
var offenses: Dictionary = {}
var actors: Dictionary = {} # Frozen actors by zone; active actors live in the game registry.
var rng_states: Dictionary = {}
var last_updates: Dictionary = {}

func _init(initial: HistoryWorldRealization = null) -> void:
	realization = initial
	if initial == null or not initial.errors.is_empty(): return
	current_zone = initial.selected[0]
	for zone_id in initial.selected:
		overrides[zone_id] = {}; actors[zone_id] = []; rng_states[zone_id] = ""; last_updates[zone_id] = 0
		for o in initial.zones[zone_id].objects.values():
			if o.kind == "unique": unique_owners[o.entity_id] = "zone:" + zone_id + ":" + o.id

func object(zone_id: String, id: String) -> Dictionary:
	var base: Dictionary = realization.zones[zone_id].objects[id].duplicate(true)
	base.merge(overrides[zone_id].get(id, {}), true)
	return base

func change(id: String, fields: Dictionary) -> void:
	var patch: Dictionary = overrides[current_zone].get(id, {})
	patch.merge(fields, true); overrides[current_zone][id] = patch

func bag(kind: String) -> int: return int(inventory.get(kind, 0))

func gather(kind: String, quantity: int) -> void:
	inventory[kind] = bag(kind) + quantity

func has_permission(owner: String) -> bool: return owner.is_empty() or int(offenses.get(owner, 0)) == 0

func data(world_time: int, player: Dictionary) -> Dictionary:
	return {"schema": SAVE_SCHEMA, "seed": int(realization.manifest.seed),
		"history_version": realization.manifest.content_version, "generation_version": HistoryWorldRealization.VERSION,
		"manifest_hash": realization.manifest_hash, "manifest": realization.manifest.duplicate(true),
		"world_time": world_time, "player": player, "current_zone": current_zone,
		"overrides": overrides.duplicate(true), "unique_owners": unique_owners.duplicate(), "inventory": inventory.duplicate(),
		"knowledge": knowledge.duplicate(), "offenses": offenses.duplicate(), "actors": actors.duplicate(true),
		"rng_states": rng_states.duplicate(), "last_updates": last_updates.duplicate()}

static func decode(json: String) -> Dictionary:
	var raw: Variant = JSON.parse_string(json)
	if not raw is Dictionary or raw.size() != 18 or raw.get("schema") != SAVE_SCHEMA:
		return {"error": "Invalid save envelope"}
	var integrity: Dictionary = raw.duplicate(true); integrity.erase("checksum")
	if not raw.get("checksum") is String or raw.checksum != JSON.stringify(integrity, "", true).sha256_text():
		return {"error": "Save integrity check failed"}
	if raw.get("generation_version") != HistoryWorldRealization.VERSION or raw.get("history_version") != HistoryCivilizationContent.VERSION:
		return {"error": "Incompatible content/generation version"}
	var manifest := HistoryWorldManifest.from_json(JSON.stringify(raw.get("manifest")))
	if not manifest.errors.is_empty(): return {"error": "Invalid saved Manifest: " + str(manifest.errors)}
	var initial := HistoryWorldRealization.build(manifest)
	if not initial.errors.is_empty() or raw.get("manifest_hash") != initial.manifest_hash or raw.get("seed") != initial.manifest.seed:
		return {"error": "Manifest integrity or realization mismatch"}
	if not raw.get("current_zone") is String or not initial.zones.has(raw.current_zone) or not HistoryV6Event._integer(raw.get("world_time")) or raw.world_time < 0:
		return {"error": "Invalid world time/current zone"}
	var player := WorldActorState.restore(raw.get("player"))
	if player == null or player.id != &"player" or raw.player.type != "human" or not player._dead and raw.player.ready_remaining != 0:
		return {"error": "Invalid player snapshot"}
	for field in ["overrides", "unique_owners", "inventory", "offenses", "actors", "rng_states", "last_updates"]:
		if not raw.get(field) is Dictionary: return {"error": "Invalid runtime map: " + field}
	if not HistoryWorldManifest._strings(raw.get("knowledge")): return {"error": "Invalid knowledge"}
	var r := HistoryRuntimeState.new(initial)
	for zone in initial.selected:
		for field in ["overrides", "actors", "rng_states", "last_updates"]:
			if not raw[field].has(zone) or raw[field].size() != 3: return {"error": "Invalid zone keys"}
		if not raw.overrides[zone] is Dictionary or not raw.actors[zone] is Array or not raw.rng_states[zone] is String or not HistoryV6Event._integer(raw.last_updates[zone]) or raw.last_updates[zone] < 0 or raw.last_updates[zone] > raw.world_time:
			return {"error": "Invalid zone state"}
		if not raw.rng_states[zone].is_empty() and (not raw.rng_states[zone].is_valid_int()): return {"error": "Invalid RNG state"}
		for id in raw.overrides[zone]:
			if not initial.zones[zone].objects.has(id) or not raw.overrides[zone][id] is Dictionary: return {"error": "Unknown override object"}
			var o: Dictionary = initial.zones[zone].objects[id]
			for field in raw.overrides[zone][id]:
				var v: Variant = raw.overrides[zone][id][field]
				if field in ["open", "removed", "taken", "used"]:
					if not o.has(field) or not v is bool: return {"error": "Invalid boolean override"}
				elif field == "condition":
					if o.kind != "control" or v not in ["intact", "damaged", "ruined"]: return {"error": "Invalid condition override"}
				elif field == "stabilized":
					if o.kind != "control" or not v is bool: return {"error": "Invalid hazard override"}
				else: return {"error": "Unknown override field"}
	r.overrides = raw.overrides.duplicate(true)
	var seen := {"player": true}
	for zone in initial.selected:
		var expected_ids: Array[String] = []
		for index in range(initial.zones[zone].npc_spawns.size()): expected_ids.append("fauna:" + zone + ":" + str(index))
		for state in raw.actors[zone]:
			var a := WorldActorState.restore(state)
			if a == null or state.type != "rat" or seen.has(String(a.id)) or String(a.id) not in expected_ids: return {"error": "Invalid/duplicate Actor"}
			seen[String(a.id)] = true
			if not r.valid_position(zone, a.position, not a.is_alive()): return {"error": "Actor in blocked/outside cell"}
		if (zone == raw.current_zone or not raw.rng_states[zone].is_empty()) and raw.actors[zone].size() != expected_ids.size(): return {"error": "Missing persistent Actor"}
		var occupied := {}
		for state in raw.actors[zone]:
			if not state.dead:
				var cell_key := str(state.position)
				if occupied.has(cell_key) or zone == raw.current_zone and state.position == raw.player.position: return {"error": "Actor overlap"}
				occupied[cell_key] = true
	if not r.valid_position(raw.current_zone, player.position): return {"error": "Player in blocked/outside cell"}
	if raw.unique_owners.size() != r.unique_owners.size(): return {"error": "Unique ownership mismatch"}
	for id in r.unique_owners:
		var initial_owner: String = r.unique_owners[id]
		if raw.unique_owners.get(id) not in [initial_owner, "player"]: return {"error": "Invalid unique owner"}
		var found := false
		for zone in initial.selected:
			for o in initial.zones[zone].objects.values():
				if o.kind == "unique" and o.entity_id == id:
					found = r.object(zone, o.id).taken
		if found != (raw.unique_owners[id] == "player"): return {"error": "Unique duplication/loss"}
	for field in ["inventory", "offenses"]:
		for id in raw[field]:
			if not HistoryV6Event._integer(raw[field][id]) or raw[field][id] < 0: return {"error": "Negative/noninteger ledger"}
			if field == "inventory" and id not in ["materials", "equipment", "genomic_records", "samples", "inert_salvage", "survey_records"]: return {"error": "Unknown inventory kind"}
			if field == "offenses" and not initial.manifest.factions.any(func(f: Dictionary) -> bool: return f.id == id and f.active): return {"error": "Unknown faction"}
	for id in raw.knowledge:
		if not initial.zones.values().any(func(z: Dictionary) -> bool: return z.objects.has(id)): return {"error": "Unknown learned object"}
	r.unique_owners = raw.unique_owners.duplicate(); r.inventory = raw.inventory.duplicate(); r.offenses = raw.offenses.duplicate()
	r.knowledge.assign(raw.knowledge); r.actors = raw.actors.duplicate(true); r.rng_states = raw.rng_states.duplicate(); r.last_updates = raw.last_updates.duplicate()
	r.current_zone = raw.current_zone
	return {"error": "", "runtime": r, "player": player, "world_time": int(raw.world_time), "player_delay": int(raw.player.ready_remaining)}

func valid_position(zone: String, cell: Vector2i, dead: bool = false) -> bool:
	var rows: PackedStringArray = realization.zones[zone].rows
	if cell.x < 0 or cell.y < 0 or cell.y >= rows.size() or cell.x >= rows[0].length(): return false
	if rows[cell.y][cell.x] in ["T", "R"]: return false
	if dead: return true
	for id in realization.zones[zone].objects:
		var o := object(zone, id)
		if HistoryWorldRealization.vector(o.cell) == cell and o.blocks and not o.get("open", false) and not o.get("removed", false): return false
	return true
