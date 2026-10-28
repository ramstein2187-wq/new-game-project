extends SceneTree
## Real GPU window and Input dispatch. No synthetic screenshot composition.
var scene: Node
var failures: Array = []
var captures: Array = []

func _init() -> void: call_deferred("run")

func key(code: Key) -> void:
	var event := InputEventKey.new(); event.physical_keycode = code; event.keycode = code; event.pressed = true
	Input.parse_input_event(event); await process_frame
	event = InputEventKey.new(); event.physical_keycode = code; event.keycode = code; event.pressed = false
	Input.parse_input_event(event); await process_frame

func capture(seed: int, label: String) -> void:
	scene._refresh()
	for frame in range(5): await process_frame
	await RenderingServer.frame_post_draw
	var path := "res://docs/reviews/m049/screenshots/" + "%d_%dx%d_%s.png" % [seed, root.size.x, root.size.y, label]
	if root.get_texture().get_image().save_png(path) != OK: failures.append("Capture write failed")
	var viewport := Rect2(Vector2.ZERO, Vector2(root.size))
	for panel in [scene.header, scene.feedback, scene.map_clip, scene.nearby, scene.records]:
		if not viewport.encloses(panel.get_global_rect()): failures.append([label, "Panel exceeds viewport", str(panel.get_global_rect())])
	if scene.map_clip.size.x < 300 or scene.map_clip.size.y < 200: failures.append([label, "Map too small", str(scene.map_clip.size)])
	if not scene.overview and scene.map_canvas.scale.x < 1: failures.append("Main map shrunk below pixel scale")
	captures.append({"file": path, "seed": seed, "zone": scene.game.runtime.current_zone, "position": [scene.game.player_position.x, scene.game.player_position.y], "viewport": [root.size.x, root.size.y], "zoom": scene.zoom, "view": label, "progress": ExplorationInteractions.progress(scene.game)})

func run() -> void:
	DirAccess.make_dir_recursive_absolute("res://docs/reviews/m049/screenshots")
	var seed := 42
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--seed="): seed = int(arg.trim_prefix("--seed="))
	scene = preload("res://scenes/debug/history_world_playground.tscn").instantiate()
	scene.world_seed = seed; scene.save_path = "user://m049_capture_only.json"; root.add_child(scene)
	for frame in range(4): await process_frame
	var start: Vector2i = scene.game.player_position
	await key(KEY_D)
	if scene.game.player_position != start + Vector2i.RIGHT: failures.append("WASD input failed")
	var destination: String = scene.game.initial_world.selected[0 if seed == 1 else 1 if seed == 42 else 2]
	if not travel_to(destination): failures.append("Actual inter-region capture travel failed")
	var prefix := "env:" + str(scene.game.runtime.current_zone) + ":"
	if not ExplorationAutoplay.operate(scene.game, prefix + "branches", &"recover"): failures.append("Live gathering failed")
	if not ExplorationAutoplay.operate(scene.game, prefix + "lookout", &"use"): failures.append("Live survey failed")
	if seed == 1:
		for o in scene.game.initial_world.zones[scene.game.runtime.current_zone].objects.values():
			if o.kind == "control" and o.reachable and ExplorationAutoplay.operate(scene.game, o.id, &"inspect"): break
	elif seed == 1839602582:
		if not ExplorationAutoplay.operate(scene.game, prefix + "bridge", &"repair"): failures.append("Live crossing repair failed")
	for resolution in [Vector2i(800, 600), Vector2i(1152, 648), Vector2i(1920, 1080)]:
		root.size = resolution; root.content_scale_size = resolution
		for frame in range(3): await process_frame
		await capture(seed, "exploration")
	await key(KEY_M); await capture(seed, "overview"); await key(KEY_M)
	await key(KEY_EQUAL)
	if scene.zoom != 3: failures.append("Zoom key failed")
	await key(KEY_MINUS)
	await key(KEY_C)
	if not scene.character.visible: failures.append("Character input failed")
	await capture(seed, "character"); await key(KEY_ESCAPE)
	if scene.character.visible: failures.append("Character close input failed")
	await key(KEY_F5); var saved: String = scene.game.save_json()
	if FileAccess.get_file_as_string(scene.save_path) != saved: failures.append("GUI save file differs")
	var before_wait: int = scene.game.world_time
	await key(KEY_SPACE)
	if scene.game.world_time <= before_wait: failures.append("GUI wait did not advance time")
	await key(KEY_F9)
	if scene.game.save_json() != saved: failures.append("GUI save/load state differs")
	# Also show a historical site, arrived by production movement/door operations.
	for o in scene.game.initial_world.zones[scene.game.runtime.current_zone].objects.values():
		if o.kind == "control" and o.reachable:
			if ExplorationAutoplay.operate(scene.game, o.id, &"inspect"):
				await capture(seed, "site"); break
	var report := {"renderer": RenderingServer.get_video_adapter_name(), "captures": captures, "failures": failures, "human_play": "not performed"}
	FileAccess.open("res://docs/reviews/m049/" + "captures_%d.json" % seed, FileAccess.WRITE).store_string(JSON.stringify(report, "\t", true) + "\n")
	print("M049 GPU ", seed, ": ", captures.size(), " screenshots / ", failures.size(), " failures")
	for error in failures: print(error)
	scene.queue_free(); await process_frame
	quit(0 if failures.is_empty() else 1)

func travel_to(destination: String) -> bool:
	var g: HistoryPlayableGame = scene.game
	for hop in range(3):
		if g.runtime.current_zone == destination: return true
		var zone := g.runtime.current_zone
		var barrier := "route:" + zone
		if g.initial_world.zones[zone].objects.has(barrier) and not g.runtime.object(zone, barrier).removed:
			if g.runtime.bag("materials") < 1 and not ExplorationAutoplay.operate(g, "env:" + zone + ":branches", &"recover"): return false
			if not ExplorationAutoplay.operate(g, barrier, &"clear"): return false
		var next := "exit:" + destination
		if not g.initial_world.zones[zone].objects.has(next):
			for o in g.initial_world.zones[zone].objects.values():
				if o.kind == "exit": next = o.id; break
		if not ExplorationAutoplay.operate(g, next, &"travel"): return false
	return g.runtime.current_zone == destination
