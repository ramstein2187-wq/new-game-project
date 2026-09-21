extends SceneTree

# Exercise the scene's real input dispatch and presentation wiring headlessly.
# This does not replace a visual/pacing playthrough.
func _init() -> void:
	call_deferred("_run_tests")


func _run_tests() -> void:
	var scene := preload("res://time_cost/time_cost_test_room.tscn").instantiate()
	root.add_child(scene)
	await process_frame
	var game: TimeCostGame = scene.game
	_press(KEY_RIGHT)
	if game.player_position != Vector2i(3, 3) or game.world_time != 1000 or game.last_response_count != 2:
		_fail("Movement input did not reach the shared action/scheduler pipeline")
		return
	var event_count := game.combat_log.events.size()
	_press(KEY_RIGHT, true)
	if game.combat_log.events.size() != event_count:
		_fail("Keyboard echo must not commit another action")
		return
	_press(KEY_L)
	_press(KEY_F3)
	if not scene.detailed_log or not scene.debug_log or not scene.event_log_label.text.contains("ai_score"):
		_fail("Log toggles must show the structured developer trace")
		return
	_press(KEY_F3)
	if scene.event_log_label.text.contains("ai_score") or scene.event_log_label.text.contains("target_hostile"):
		_fail("Returning to player log must hide private AI data")
		return
	_press(KEY_R)
	if game.world_time != 0 or not game.combat_log.events.is_empty():
		_fail("Reset input must clear clock and log")
		return
	game.player_position = Vector2i(4, 3)
	game.facing = Vector2i.RIGHT
	_press(KEY_E)
	if not game.door_open or game.last_action_cost != 500:
		_fail("Interaction input must open the door for 500 time units")
		return
	# Occupied doorway must reject closing without running NPC responses.
	game.rat_position = game.door_position
	var before_time := game.world_time
	event_count = game.combat_log.events.size()
	_press(KEY_E)
	if not game.door_open or game.world_time != before_time or game.combat_log.events.size() != event_count:
		_fail("Rejected occupied-door interaction must be free")
		return
	_press(KEY_R)
	if game.perform_action(&"rat", WaitAction.new()):
		_fail("Rat must not act before the player at a ready-time tie")
		return
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	game.player_hp = 1
	_press(KEY_SPACE)
	if not game.game_over or game.player_hp != 0 or game.last_response_count != 1:
		_fail("A lethal NPC response must stop the simulation immediately")
		return
	event_count = game.combat_log.events.size()
	before_time = game.world_time
	_press(KEY_RIGHT)
	_press(KEY_ENTER)
	if game.combat_log.events.size() != event_count or game.world_time != before_time:
		_fail("Inputs after defeat must not consume time or create events")
		return
	_press(KEY_R)
	if game.game_over or game.player_hp != game.PLAYER_MAX_HP or game.rat_hp != game.RAT_MAX_HP:
		_fail("Reset after defeat must restore both actors")
		return
	if game.player_position != Vector2i(2, 3) or game.rat_position != Vector2i(8, 3) or game.door_open:
		_fail("Reset must restore the fixed room's placements and door")
		return
	if game.world_time != 0 or game.rat_next_ready_time != 0 or game.player_next_ready_time != 0 or not game.combat_log.events.is_empty():
		_fail("Reset must restore both ready times and clear history")
		return
	_press(KEY_ENTER)
	if game.last_action_cost != 1000 or game.world_time != 1000:
		_fail("Enter must resume wait actions after reset")
		return
	scene.queue_free()
	print("PASS: time-cost scene input, defeat and reset")
	quit(0)


func _press(key: Key, echo: bool = false) -> void:
	var event := InputEventKey.new()
	event.keycode = key
	event.physical_keycode = key
	event.pressed = true
	event.echo = echo
	root.push_input(event)
	event = event.duplicate()
	event.pressed = false
	event.echo = false
	root.push_input(event)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
