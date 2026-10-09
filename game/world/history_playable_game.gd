class_name HistoryPlayableGame
extends GeneratedMapCombatGame
## Existing movement, body combat, AI and Scheduler own all action execution.
var runtime: HistoryRuntimeState
var initial_world: HistoryWorldRealization
var pending_zone := ""
var action_feedback := ""
var load_error := ""

func start(manifest: HistoryWorldManifest) -> bool:
	var w := HistoryWorldRealization.build(manifest)
	if not w.errors.is_empty(): message = str(w.errors); return false
	initial_world = w; runtime = HistoryRuntimeState.new(w)
	scheduler.reset(&"player"); actors = ActorRegistry.new()
	var player := Actor.new(&"player", ActorDefinition.human_default(), HistoryWorldRealization.vector(w.zones[runtime.current_zone].spawn), "You")
	actors.register(player); _observe_max_hp_depletion(player)
	game_over = false; simulation_error = ""; combat_log.clear(); pending_zone = ""
	_activate(runtime.current_zone, player.position)
	message = "Explore the connected paths, recover supplies or seek shelter. Records are optional."
	return true

func _activate(zone_id: String, spawn: Vector2i) -> void:
	# Handoff happens only at the player's ready boundary, never resets the clock.
	for a in actors.all():
		if a.id != &"player":
			if scheduler.has_actor(a.id): scheduler.unregister_actor(a.id)
			actors.remove(a.id)
	runtime.current_zone = zone_id
	var z: Dictionary = initial_world.zones[zone_id]
	terrain_rows = z.rows.duplicate(); map_width = terrain_rows[0].length(); map_height = terrain_rows.size()
	door_position = Vector2i(-1, -1); door_open = true
	get_actor(&"player").position = spawn
	combat_rng.seed = SeedDeriver.derive(int(initial_world.manifest.seed), [HistoryWorldRealization.VERSION, zone_id, "combat"])
	if not runtime.rng_states[zone_id].is_empty(): combat_rng.state = int(runtime.rng_states[zone_id])
	if runtime.actors[zone_id].is_empty():
		for index in range(z.npc_spawns.size()):
			var a := Actor.new(StringName("fauna:" + zone_id + ":" + str(index)), ActorDefinition.rat_common(), HistoryWorldRealization.vector(z.npc_spawns[index]), "Local rat")
			register_actor(a)
	else:
		for raw in runtime.actors[zone_id]:
			var a := WorldActorState.restore(JSON.parse_string(JSON.stringify(raw)))
			assert(a != null, "Validated frozen Actor must restore")
			actors.register(a); _observe_max_hp_depletion(a)
			if a.is_alive(): scheduler.register_actor(a.id, world_time + int(raw.ready_remaining))
	# Freeze storage is an authoritative snapshot only while inactive.
	runtime.actors[zone_id] = []

func _capture_zone() -> void:
	var snapshots: Array = []
	for a in actors.all():
		if a.id != &"player": snapshots.append(WorldActorState.capture(a, maxi(0, scheduler.get_ready_time(a.id) - world_time) if a.is_alive() else 0))
	runtime.actors[runtime.current_zone] = snapshots
	runtime.rng_states[runtime.current_zone] = str(combat_rng.state)
	runtime.last_updates[runtime.current_zone] = world_time

func perform_action(actor_id: StringName, action: TimeAction) -> bool:
	if runtime == null: return super.perform_action(actor_id, action)
	if action is InteractAction:
		var reason := interaction_unavailable_reason(actor_id, action.target_cell, action.operation)
		if not reason.is_empty(): message = reason + " No time spent."; return false
	if actor_id == &"player": action_feedback = ""
	var success := super.perform_action(actor_id, action)
	if success and actor_id == &"player":
		if game_over: pending_zone = ""
		if not pending_zone.is_empty() and not game_over:
			var previous := runtime.current_zone; var destination := pending_zone; pending_zone = ""
			_capture_zone()
			var entry := runtime.object(destination, "exit:" + previous)
			_activate(destination, HistoryWorldRealization.vector(entry.cell))
		if not action_feedback.is_empty(): message = action_feedback + " (cost %d, t=%d)" % [last_action_cost, world_time]
	return success

func is_wall(cell: Vector2i) -> bool:
	if runtime == null: return super.is_wall(cell)
	if super.is_wall(cell): return true
	for o in objects_at(cell):
		if o.blocks and not o.get("open", false) and not o.get("removed", false): return true
	return false

func set_actor_position(actor_id: StringName, cell: Vector2i) -> void:
	var previous := get_actor_position(actor_id)
	super.set_actor_position(actor_id, cell)
	if runtime != null and previous != cell and get_actor_position(actor_id) == cell:
		var hazard := hazard_at(cell)
		if hazard > 0:
			damage_actor(actor_id, hazard)
			if actor_id == &"player": action_feedback = "Unstable ground causes %d damage; investigate or stabilize the structure." % hazard

func hazard_at(cell: Vector2i) -> int:
	var hazard: Dictionary = initial_world.zones[runtime.current_zone].hazards.get(HistoryWorldRealization.key(cell), {})
	if hazard.is_empty(): return 0
	var control_id := "control:" + str(hazard.facility_id)
	if runtime.object(runtime.current_zone, control_id).get("stabilized", false): return 0
	return int(hazard.damage)

func objects_at(cell: Vector2i) -> Array[Dictionary]:
	var out: Array[Dictionary] = []
	if runtime == null: return out
	for id in initial_world.zones[runtime.current_zone].objects:
		var o := runtime.object(runtime.current_zone, id)
		if o.kind == "record" and not record_present(o): continue
		if HistoryWorldRealization.vector(o.cell) == cell and not o.get("taken", false) and not o.get("removed", false): out.append(o)
	return out

func record_present(o: Dictionary) -> bool:
	for kind in ["genomic_records", "survey_records"]:
		var id: String = "asset:" + str(o.facility_id) + ":" + kind
		if initial_world.zones[runtime.current_zone].objects.has(id) and not runtime.object(runtime.current_zone, id).taken: return true
	return false

func target(operation: StringName, cell: Vector2i) -> Dictionary:
	for o in objects_at(cell):
		if operation == &"inspect": return o
		if operation == &"recover" and o.kind in ["resource", "unique"]: return o
		if operation == &"clear" and o.kind in ["rubble", "route"]: return o
		if operation in [&"repair", &"use", &"stabilize", &"offer"] and o.kind == "control": return o
		if operation == &"travel" and o.kind == "exit": return o
		if operation == &"interact" and o.kind == "door": return o
	return {}

func interaction_unavailable_reason(actor_id: StringName, cell: Vector2i, operation: StringName) -> String:
	if runtime == null: return super.interaction_unavailable_reason(actor_id, cell, operation)
	if actor_id != &"player" or not actor_is_alive(actor_id): return "Only the living explorer can operate these objects."
	var position := get_actor_position(actor_id)
	if (cell - position).length_squared() > 1: return "Stand beside the object."
	var o := target(operation, cell)
	if o.is_empty(): return "No target for this action."
	if operation == &"inspect": return ""
	if get_actor(actor_id).body.functional_count(&"weapon_manipulation") < 1: return "A functional hand is required."
	if operation == &"interact":
		if o.open and actors.occupant_at(cell) != null: return "The doorway is occupied."
		if not runtime.has_permission(o.owner_id): return "The community denies facility access after unauthorized recovery."
	elif operation == &"travel":
		var route_id := "route:" + runtime.current_zone
		if initial_world.zones[runtime.current_zone].objects.has(route_id) and not runtime.object(runtime.current_zone, route_id).removed: return "The locality's passage is blocked; clear its route barrier first."
		var destination: String = o.destination
		if not initial_world.zones[destination].objects.has("exit:" + runtime.current_zone): return "Invalid destination."
		var arrival: Vector2i = HistoryWorldRealization.vector(runtime.object(destination, "exit:" + runtime.current_zone).cell)
		for raw in runtime.actors[destination]:
			if not raw.dead and HistoryWorldRealization.vector(raw.position) == arrival: return "An Actor occupies the destination entrance."
	elif operation in [&"clear", &"repair", &"stabilize"]:
		if (operation != &"clear" or o.kind == "route") and runtime.bag("materials") < 1: return "One recovered material unit is required."
		if operation == &"repair" and o.condition == "intact": return "The structure is already intact."
		if operation == &"stabilize":
			if o.get("stabilized", false): return "This structure is already stabilized."
			if not runtime.knowledge.has("record:" + o.facility_id): return "An optional on-site record can identify a safer structural intervention."
	elif operation == &"use":
		if not runtime.has_permission(o.owner_id): return "The community denies facility use after unauthorized recovery."
		if not function_usable(o.facility_id): return "The facility lacks safe structure, supplies or a functioning dependency; unknown machinery cannot be operated."
		if o.used: return "This expedition's shelter rest has already been used."
		for p in initial_world.manifest.projects:
			if p.site_id == o.facility_id and p.status == "active": return "This facility is reserved for an ongoing community project."
		if initial_world.zones[runtime.current_zone].facilities[o.facility_id].local_function != "shelter": return "This prototype only operates safe shelters."
		if player_hp >= PLAYER_MAX_HP: return "You do not need shelter recovery."
	elif operation == &"offer":
		if o.owner_id.is_empty() or runtime.has_permission(o.owner_id): return "No outstanding custody dispute."
		if runtime.bag("materials") < restitution_cost(o.owner_id): return "%d material units are needed for this community's present needs." % restitution_cost(o.owner_id)
	return ""

func restitution_cost(owner: String) -> int:
	for f in initial_world.manifest.factions:
		if f.id == owner: return 2 if f.current_need in ["survival", "project_maintenance"] else 1
	return 1

func function_usable(site_id: String, seen: Array[String] = []) -> bool:
	if site_id in seen: return false
	seen = seen.duplicate(); seen.append(site_id)
	var f: Dictionary = {}
	for row in initial_world.manifest.facilities:
		if row.id == site_id: f = row; break
	if f.is_empty() or f.local_function == "none": return false
	var zone: String = f.locality_id
	if not initial_world.zones.has(zone): return f.function_usable
	var control := runtime.object(zone, "control:" + site_id)
	if not f.accessible and f.condition != "ruined": return false
	if control.condition == "ruined" or f.hazard > 0 and not control.get("stabilized", false): return false
	var route := "route:" + zone
	if initial_world.zones[zone].objects.has(route) and not runtime.object(zone, route).removed: return false
	if f.local_function in ["power", "launch", "survey"]:
		var equipment := "asset:" + site_id + ":equipment"
		if not initial_world.zones[zone].objects.has(equipment) or runtime.object(zone, equipment).taken: return false
	if not f.dependency.is_empty() and not function_usable(f.dependency, seen): return false
	return true

func execute_interaction(actor_id: StringName, cell: Vector2i, operation: StringName, cost: int) -> CombatEvent:
	var o := target(operation, cell)
	if o.is_empty(): return null
	var event := make_action_event(&"interact", actor_id, operation, cost)
	event.data = {"object_id": o.id, "facility_id": o.facility_id, "operation": String(operation), "position": cell}
	match operation:
		&"interact":
			runtime.change(o.id, {"open": not o.open}); action_feedback = "Door opened." if not o.open else "Door closed."
		&"recover":
			runtime.change(o.id, {"taken": true})
			if o.kind == "unique": runtime.unique_owners[o.entity_id] = "player"; action_feedback = "Recovered an inert unknown object; its function remains unknown."
			else:
				runtime.gather(o.asset_kind, int(o.quantity)); action_feedback = "Recovered %d %s." % [o.quantity, o.asset_kind]
				if o.asset_kind in ["genomic_records", "survey_records"] and "record:" + o.facility_id not in runtime.knowledge:
					runtime.knowledge.append("record:" + o.facility_id)
			if not o.owner_id.is_empty():
				runtime.offenses[o.owner_id] = int(runtime.offenses.get(o.owner_id, 0)) + 1
				action_feedback += " Community custody was violated: managed doors and shelter use are now restricted."
		&"clear":
			if o.kind == "route": runtime.inventory["materials"] = runtime.bag("materials") - 1
			runtime.change(o.id, {"removed": true}); action_feedback = "Removed the obstruction; passage is open."
		&"repair":
			runtime.inventory["materials"] = runtime.bag("materials") - 1
			runtime.change(o.id, {"condition": "damaged" if o.condition == "ruined" else "intact"})
			action_feedback = "Repaired ordinary structure. Missing equipment and unknown machinery remain unavailable."
		&"stabilize":
			runtime.inventory["materials"] = runtime.bag("materials") - 1
			runtime.change(o.id, {"stabilized": true}); action_feedback = "Used the on-site structural record to make this facility's footing safe."
		&"inspect":
			if o.id not in runtime.knowledge: runtime.knowledge.append(o.id)
			action_feedback = describe(o, true)
		&"use":
			runtime.change(o.id, {"used": true}); get_actor(actor_id).hp = mini(PLAYER_MAX_HP, player_hp + 4)
			action_feedback = "Rested in a functioning shelter; recovered up to four HP."
		&"offer":
			runtime.inventory["materials"] = runtime.bag("materials") - restitution_cost(o.owner_id)
			runtime.offenses[o.owner_id] = maxi(0, int(runtime.offenses.get(o.owner_id, 0)) - 1)
			action_feedback = "Contributed recovered material to the community; one custody violation was settled."
		&"travel": pending_zone = o.destination; action_feedback = "Entered a connected locality."
	event.data["result"] = action_feedback
	return event

func player_operation(operation: StringName) -> bool:
	if not _can_player_act(): return false
	var cell := player_position + facing
	if operation == &"travel" and not target(operation, player_position).is_empty(): cell = player_position
	return perform_action(&"player", InteractAction.new(cell, operation))

func player_interact() -> bool: return player_operation(&"interact")

func describe(o: Dictionary, learned: bool = false) -> String:
	if o.is_empty(): return "No nearby object."
	var text := "%s | %s" % [o.kind, o.id]
	if not o.owner_id.is_empty():
		text += " | managed by " + o.owner_id
		for f in initial_world.manifest.factions:
			if f.id == o.owner_id: text += " (current need: " + f.current_need + ")"
	if o.kind == "resource": text += " | %d %s" % [o.quantity, o.asset_kind]
	if o.kind == "exit": text += " | connected destination: " + o.destination
	if o.kind == "sealed": text += " | intentionally inaccessible; no safe entry"
	if not o.facility_id.is_empty():
		var f: Dictionary = initial_world.zones[runtime.current_zone].facilities[o.facility_id]
		var control := runtime.object(runtime.current_zone, "control:" + f.id)
		text += " | observed structure: " + control.condition + " | safe local function: " + str(function_usable(f.id))
		if learned and o.kind == "record":
			text += " | archival fact: local use " + f.local_function + "; structural safety notes permit stabilization."
			for p in initial_world.manifest.projects:
				if p.site_id == f.id: text += " | project record: " + p.kind + "/" + p.status + "/" + p.outcome
			for id in f.provenance:
				for e in initial_world.manifest.events:
					if e.id == id: text += " | recorded event: year %d (%s)" % [e.year, e.rule_id]
	if o.kind == "scar": text += " | observed trace: " + o.scar_kind + "; cause/operator intent unconfirmed"
	if o.kind == "worksite": text += " | current works: " + o.project_kind + " (" + o.status + "); active works restrict space and shelter use"
	if o.kind == "unique": text += " | inert object; origin/function unconfirmed"
	return text

func save_json() -> String:
	if runtime == null or not pending_zone.is_empty() or player_next_ready_time != world_time and not game_over: return ""
	_capture_zone()
	var data := runtime.data(world_time, WorldActorState.capture(get_actor(&"player"), maxi(0, player_next_ready_time - world_time)))
	data = JSON.parse_string(JSON.stringify(data))
	data["checksum"] = JSON.stringify(data, "", true).sha256_text()
	return JSON.stringify(data, "", true)

func load_json(json: String) -> bool:
	var decoded := HistoryRuntimeState.decode(json)
	load_error = decoded.error
	if not load_error.is_empty(): message = load_error; return false
	runtime = decoded.runtime; initial_world = runtime.realization
	scheduler.reset(&"player"); scheduler.restore_player_boundary(decoded.world_time)
	if decoded.player_delay > 0: scheduler.advance_actor(&"player", decoded.player_delay)
	actors = ActorRegistry.new(); actors.register(decoded.player); _observe_max_hp_depletion(decoded.player)
	game_over = not decoded.player.is_alive(); simulation_error = ""; pending_zone = ""; combat_log.clear()
	_activate(runtime.current_zone, decoded.player.position)
	message = "Saved world restored."
	return true

func save_file(path: String) -> bool:
	var text := save_json()
	if text.is_empty(): message = "Save requires a completed player turn."; return false
	var temporary := path + ".tmp"
	var file := FileAccess.open(temporary, FileAccess.WRITE)
	if file == null: message = "Cannot write save: " + str(FileAccess.get_open_error()); return false
	file.store_string(text); file.flush()
	var error := file.get_error(); file.close()
	if error != OK: message = "Save write failed."; return false
	error = DirAccess.rename_absolute(temporary, path)
	message = "Saved world." if error == OK else "Save replacement failed: " + str(error)
	return error == OK

func load_file(path: String) -> bool:
	var file := FileAccess.open(path, FileAccess.READ)
	if file == null: message = "Cannot open save."; return false
	return load_json(file.get_as_text())
