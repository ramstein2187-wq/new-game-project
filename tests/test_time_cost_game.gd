extends SceneTree

const TimeCostGameScript := preload("res://time_cost/time_cost_game.gd")


func _init() -> void:
	if not _test_move_advances_time_and_allows_multiple_fast_responses():
		return
	if not _test_fast_interaction_shortens_response_window():
		return
	if not _test_slow_attack_creates_opening():
		return
	if not _test_player_wins_ready_time_ties():
		return
	if not _test_scene_loads():
		return

	print("PASS: time-cost scheduler test room")
	quit(0)


func _test_move_advances_time_and_allows_multiple_fast_responses() -> bool:
	var game := TimeCostGameScript.new()
	var start := game.player_position

	if not game.player_move(Vector2i.RIGHT):
		return _fail("Player move should succeed")
	if game.player_position != start + Vector2i.RIGHT:
		return _fail("Player did not move one cell")
	if game.player_next_ready_time != TimeCostGame.MOVE_COST:
		return _fail("Move did not advance player ready time by 1000")
	if game.last_response_count != 2:
		return _fail("A 750-cost rat should act twice before a 1000-cost player move resolves")
	if game.rat_next_ready_time != TimeCostGame.RAT_MOVE_COST * 2:
		return _fail("Rat ready time did not advance by two fast moves")

	return true


func _test_fast_interaction_shortens_response_window() -> bool:
	var game := TimeCostGameScript.new()
	game.player_position = Vector2i(4, 3)
	game.facing = Vector2i.RIGHT

	if not game.player_interact():
		return _fail("Door interaction should succeed")
	if not game.door_open:
		return _fail("Door did not open")
	if game.player_next_ready_time != TimeCostGame.INTERACT_COST:
		return _fail("Door interaction did not use the 500 time cost")
	if game.last_response_count != 1:
		return _fail("A 500-cost interaction should allow only one initial rat response")

	return true


func _test_slow_attack_creates_opening() -> bool:
	var game := TimeCostGameScript.new()
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	var start_hp := game.player_hp

	if not game.player_move(Vector2i.RIGHT):
		return _fail("Bumping the rat should resolve as an attack")
	if game.player_position != Vector2i(7, 3):
		return _fail("Bump attack should not move into the rat")
	if game.rat_hp != TimeCostGame.RAT_MAX_HP - TimeCostGame.ATTACK_DAMAGE:
		return _fail("Attack did not damage the rat")
	if game.player_next_ready_time != TimeCostGame.ATTACK_COST:
		return _fail("Attack did not use the 1250 time cost")
	if game.last_response_count != 2:
		return _fail("A 1250-cost attack should expose the player to two 1000-cost rat attacks from time zero")
	if game.player_hp != start_hp - 2:
		return _fail("Rat did not use both openings created by the slow attack")

	return true


func _test_player_wins_ready_time_ties() -> bool:
	var game := TimeCostGameScript.new()
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)

	if not game.player_wait():
		return _fail("Wait should succeed")
	if game.last_response_count != 1:
		return _fail("Rat should act once at t=0, then stop when both actors are ready at t=1000")
	if game.player_next_ready_time != game.rat_next_ready_time:
		return _fail("Tie test did not end with equal ready times")
	if game.world_time != game.player_next_ready_time:
		return _fail("Scheduler did not stop at the player's next decision time")

	return true


func _test_scene_loads() -> bool:
	var packed_scene := load("res://time_cost/time_cost_test_room.tscn") as PackedScene
	if packed_scene == null:
		return _fail("Could not load time_cost_test_room.tscn")

	var scene := packed_scene.instantiate()
	root.add_child(scene)

	if scene.get_node_or_null("CanvasLayer/UI/VBox/Timeline") == null:
		return _fail("Timeline UI is missing")
	if scene.get_node_or_null("CanvasLayer/UI/VBox/EventLog") == null:
		return _fail("Scheduler event log UI is missing")

	scene.queue_free()
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
