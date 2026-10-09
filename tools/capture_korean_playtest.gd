extends SceneTree
## Actual Godot GPU renders and dispatched physical keys. Not a native OS IME test.
var failures: Array[String] = []
var captures: Array[Dictionary] = []
var scene: Node
const OUTPUT := "res://.godot/korean-playtest-captures"

func _init() -> void: call_deferred("run")

func key(code: Key, logical: Key = KEY_NONE) -> void:
	var e := InputEventKey.new(); e.physical_keycode = code; e.keycode = logical; e.pressed = true
	Input.parse_input_event(e)
	for frame in range(3): await process_frame
	e = InputEventKey.new(); e.physical_keycode = code; e.keycode = logical; e.pressed = false
	Input.parse_input_event(e); await process_frame

func capture(name: String) -> void:
	scene._refresh()
	for frame in range(6): await process_frame
	if name == "records":
		var scroll: VScrollBar = scene.records.get_v_scroll_bar()
		scroll.value = scroll.max_value
		for frame in range(3): await process_frame
		if root.size.x <= 1152 and scroll.value <= 0: failures.append("Long record did not scroll")
	await RenderingServer.frame_post_draw
	var file := "%s/%dx%d_%s.png" % [OUTPUT, root.size.x, root.size.y, name]
	var error := root.get_texture().get_image().save_png(file)
	if error != OK: failures.append("Capture failed: " + file)
	var bounds := Rect2(Vector2.ZERO, Vector2(root.size))
	for node in [scene.header, scene.feedback, scene.map_clip, scene.nearby, scene.records]:
		var rect: Rect2 = node.get_global_rect()
		if not bounds.encloses(rect) or rect.size.y < 50 and node in [scene.map_clip, scene.nearby, scene.records]: failures.append("Panel outside viewport / too small: " + name + str(rect))
	if scene.map_clip.get_global_rect().intersects(scene.nearby.get_global_rect()): failures.append("Map overlaps description")
	if scene.nearby.get_global_rect().intersects(scene.records.get_global_rect()): failures.append("Description overlaps records")
	captures.append({"file": file, "resolution": [root.size.x, root.size.y], "view": name, "feedback": scene.feedback.text})

func walk_to(id: String, operation: StringName) -> bool:
	var g: HistoryPlayableGame = scene.game
	var cell := HistoryWorldRealization.vector(g.runtime.object(g.runtime.current_zone, id).cell)
	if not walk_beside(g, cell): return false
	g.facing = cell - g.player_position
	return g.perform_action(&"player", InteractAction.new(cell, operation))

func run() -> void:
	DirAccess.make_dir_recursive_absolute(OUTPUT)
	for resolution in [Vector2i(1152, 648), Vector2i(1920, 1080), Vector2i(800, 600)]:
		root.size = resolution; root.content_scale_size = resolution
		scene = preload("res://scenes/debug/history_world_playground.tscn").instantiate()
		scene.save_path = "user://m048_korean_capture.json"; root.add_child(scene)
		for frame in range(5): await process_frame
		await capture("basic")
		# Same synthetic authored-content state as Phase C's integration tests.
		var state := HistoryCivilizationInitial.build(22)
		state.sites.site_0.condition = "intact"; state.sites.site_0.accessible = true
		state.civilization.facilities.site_0.materials = 8
		var result := HistoryEngine.Result.new(); result.seed = 22; result.content_version = HistoryCivilizationContent.VERSION
		result.initial = state.copy(); result.final_state = state
		scene.game.start(HistoryWorldManifest.build(result))
		# Logical code deliberately differs: physical S retains the movement binding.
		await key(KEY_S, KEY_Q)
		if scene.game.world_time != 1000: failures.append("Physical key was not used")
		if not walk_to("asset:site_0:materials", &"recover"): failures.append("Recovery did not execute")
		if not scene.game.notice.get("custody", false): failures.append("Ownership feedback absent")
		await capture("action")
		scene.game.start(HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(1839602582)))
		var record_id := ""
		for o in scene.game.initial_world.zones[scene.game.runtime.current_zone].objects.values():
			if o.kind == "record": record_id = o.id; break
		if record_id.is_empty() or not walk_to(record_id, &"inspect"): failures.append("Real generated record inspection failed")
		scene.records_visible = true
		await capture("long_description")
		# Actual generated evidence; no repeated or invented historical prose.
		await key(KEY_H); await key(KEY_H)
		await capture("records")
		await key(KEY_C)
		if not scene.character.visible: failures.append("Physical C did not open modal")
		scene.character.inspect(&"health")
		await capture("character")
		for stat in AbilityScores.NAMES:
			if scene.character.rows[stat].caption.text == String(stat): failures.append("Raw stat abbreviation in Korean Character")
		await key(KEY_ESCAPE, KEY_ESCAPE)
		await key(KEY_F5)
		var saved: String = scene.game.save_json()
		await key(KEY_SPACE); await key(KEY_F9)
		if scene.game.save_json() != saved or scene.game.notice.code != "loaded": failures.append("Save/load dispatched keys differ")
		await capture("save_load")
		# Input focus and modal still block underlying gameplay.
		scene.seed_input.grab_focus(); var before: int = scene.game.world_time
		await key(KEY_W)
		if scene.game.world_time != before: failures.append("Focused seed edits moved player")
		scene.seed_input.release_focus()
		scene.queue_free(); await process_frame
	DirAccess.remove_absolute("user://m048_korean_capture.json")
	var file := FileAccess.open(OUTPUT + "/captures.json", FileAccess.WRITE)
	file.store_string(JSON.stringify({"captures": captures, "failures": failures, "renderer": RenderingServer.get_video_adapter_name(), "native_ime": "not performed"}, "\t"))
	if failures.is_empty(): print("PASS Korean GPU captures: 6 views x 3 resolutions, physical input and save/load")
	else:
		for failure in failures: push_error(failure)
	quit(0 if failures.is_empty() else 1)

func walk_beside(g: HistoryPlayableGame, target_cell: Vector2i) -> bool:
	for step in range(220):
		if (g.player_position - target_cell).length_squared() <= 1: return true
		if g.game_over: return false
		var route := route_to(g, target_cell)
		if route.size() < 2: return false
		var next: Vector2i = route[1]
		if g.is_wall(next):
			var cleared := false
			for o in g.objects_at(next):
				if o.kind in ["door", "rubble"]:
					cleared = g.perform_action(&"player", InteractAction.new(next, &"interact" if o.kind == "door" else &"clear")); break
			if not cleared: return false
		elif not g.player_move(next - g.player_position): return false
	return false

func route_to(g: HistoryPlayableGame, target_cell: Vector2i) -> Array[Vector2i]:
	var queue: Array[Vector2i] = [g.player_position]; var previous := {g.player_position: g.player_position}
	var found := Vector2i(-1, -1)
	var index := 0
	while index < queue.size():
		var current := queue[index]; index += 1
		if (current - target_cell).length_squared() <= 1: found = current; break
		for direction in TimeCostGame.CARDINAL_DIRECTIONS:
			var next := current + direction
			if not g.is_inside(next) or previous.has(next) or g.terrain_rows[next.y][next.x] in ["R", "T"]: continue
			if g.is_wall(next) and not g.objects_at(next).any(func(o: Dictionary) -> bool: return o.kind in ["door", "rubble"]): continue
			previous[next] = current; queue.append(next)
	if found.x < 0: return []
	var route: Array[Vector2i] = [found]
	while route[0] != g.player_position: route.push_front(previous[route[0]])
	return route
