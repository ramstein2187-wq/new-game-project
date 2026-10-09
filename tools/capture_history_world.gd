extends SceneTree
## Actual renderer and scene input dispatch; no claim of human manual acceptance.
var failures: Array[String] = []
func _init() -> void: call_deferred("run")

func key_input(code: Key) -> void:
	var event := InputEventKey.new(); event.keycode = code; event.pressed = true
	Input.parse_input_event(event)
	await process_frame; await process_frame
	event = InputEventKey.new(); event.keycode = code; event.pressed = false
	Input.parse_input_event(event)
	await process_frame

func capture(scene: Node, name: String) -> void:
	scene._refresh()
	for frame in range(5): await process_frame
	await RenderingServer.frame_post_draw
	var output := "res://.godot/history-world-captures"
	DirAccess.make_dir_recursive_absolute(output)
	var error := root.get_texture().get_image().save_png(output + "/" + name + ".png")
	if error != OK: failures.append("Failed rendered capture " + name)

func run() -> void:
	root.size = Vector2i(1152, 648); root.content_scale_size = root.size
	var scene := preload("res://scenes/debug/history_world_playground.tscn").instantiate()
	scene.save_path = "user://m048_render_test.json"
	root.add_child(scene)
	for frame in range(5): await process_frame
	await capture(scene, "initial")
	var original: String = scene.game.runtime.current_zone
	await key_input(KEY_DOWN); await key_input(KEY_DOWN)
	if scene.game.world_time != 2000: failures.append("Scene movement input did not use Scheduler")
	await key_input(KEY_T)
	if scene.game.runtime.current_zone == original: failures.append("Scene travel input failed")
	await key_input(KEY_F5)
	var saved: String = scene.game.save_json()
	await key_input(KEY_SPACE); await key_input(KEY_F9)
	if scene.game.save_json() != saved: failures.append("Scene Save/Load input failed")
	await key_input(KEY_H)
	await capture(scene, "revisited-ui")
	scene.character.open()
	await capture(scene, "character")
	scene.character.close()
	DirAccess.remove_absolute(scene.save_path)
	if failures.is_empty(): print("PASS rendered history scene: movement/travel/save/load/character and three captures")
	else:
		for failure in failures: push_error(failure)
	quit(0 if failures.is_empty() else 1)
