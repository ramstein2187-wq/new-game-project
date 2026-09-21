extends SceneTree

const FixedGame := preload("res://time_cost/time_cost_game.gd")
const GeneratedGame := preload("res://time_cost/generated_map_combat_game.gd")
const Fixture := preload("res://tests/support/combat_fixture.gd")


func _init() -> void:
	call_deferred("_run_tests")


func _run_tests() -> void:
	if not _test_diagonal_step_and_corner():
		return
	if not _test_diagonal_attack_and_corner():
		return
	if not _test_rat_diagonal_route_and_retreat():
		return
	if not _test_generated_map_diagonals():
		return
	if not _test_scene_keyboard_input():
		return
	print("PASS: eight-direction movement, melee, corner blocking, AI and input")
	quit(0)


func _test_diagonal_step_and_corner() -> bool:
	var game: TimeCostGame = FixedGame.new()
	if not game.player_move(Vector2i(1, 1)) or game.player_position != Vector2i(3, 4):
		return _fail("Player must step diagonally onto a free tile")
	if game.last_action_cost != game.MOVE_COST or game.player_next_ready_time != game.MOVE_COST:
		return _fail("Diagonal move must keep the ordinary move cost")
	if game.combat_log.events[0].data.get("to") != Vector2i(3, 4):
		return _fail("Diagonal move must use the shared Action/event path")
	game.reset()
	game.player_position = Vector2i(2, 2)
	# (3,3) is free, but its (3,2) side is a wall.
	if game.can_step(Vector2i(2, 2), Vector2i(1, 1), &"player"):
		return _fail("One blocked flank must prevent corner cutting")
	if game.player_move(Vector2i(1, 1)) or MoveAction.new(Vector2i(1, 1)).can_execute(game, &"player"):
		return _fail("Player and shared MoveAction must both reject the same diagonal corner")
	if game.world_time != 0 or not game.combat_log.events.is_empty():
		return _fail("Blocked diagonal movement must be free and unlogged")
	if game.player_move(Vector2i(2, 0)) or game.player_move(Vector2i.ZERO):
		return _fail("Only one-cell directions are valid")
	return true


func _test_diagonal_attack_and_corner() -> bool:
	var game: TimeCostGame = FixedGame.new()
	game.player_position = Vector2i(7, 2)
	game.rat_position = Vector2i(8, 3)
	game.rat_aggression = 180
	Fixture.guaranteed_hits(game)
	if not game.can_melee_reach(game.player_position, game.rat_position):
		return _fail("Clear diagonal neighbors must be within melee range")
	if not game.player_move(Vector2i(1, 1)):
		return _fail("Diagonal bump must execute an attack")
	if game.player_position != Vector2i(7, 2) or game.rat_hp != game.RAT_MAX_HP - game.ATTACK_DAMAGE:
		return _fail("Diagonal attack must damage the rat without moving the player")
	if game.last_action_cost != game.ATTACK_COST or game.last_response_count != 2:
		return _fail("Diagonal attack must preserve time cost and NPC responses")
	if game.combat_log.events[0].type != &"attack" or game.combat_log.events[1].action_id != &"bite":
		return _fail("Both diagonal attacks must pass through the shared combat pipeline")
	game.reset()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	if game.can_melee_reach(game.player_position, game.rat_position):
		return _fail("Attacks cannot pass through a blocked diagonal corner")
	if game.player_move(Vector2i(1, 1)) or AttackAction.new(&"player").can_execute(game, &"rat"):
		return _fail("Both actors must reject an attack through the same corner")
	if game.world_time != 0 or not game.combat_log.events.is_empty():
		return _fail("Invalid diagonal attacks must not consume time")
	return true


func _test_rat_diagonal_route_and_retreat() -> bool:
	var game: TimeCostGame = FixedGame.new()
	game.player_position = Vector2i(6, 1)
	if game._next_step_toward_player() != Vector2i(7, 2):
		return _fail("Rat pathfinding must take a legal diagonal shortcut")
	if not game.player_wait() or game.combat_log.events[1].data.get("to") != Vector2i(7, 2):
		return _fail("Rat must execute its diagonal route as an ordinary move")
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.rat_hp = game.RAT_MAX_HP / 3
	if not game.player_wait():
		return _fail("Player wait failed before retreat")
	var retreat: CombatEvent = game.combat_log.events[1]
	if retreat.data.get("to") != Vector2i(9, 2) or retreat.data.get("visible_cue") != &"retreat":
		return _fail("Wounded rat must be able to retreat diagonally with a visible reason")
	if retreat.action_cost != game.RAT_MOVE_COST or not retreat.reason_codes.has(&"low_health"):
		return _fail("Diagonal retreat must preserve injured AI reasons and movement cost")
	return true


func _test_generated_map_diagonals() -> bool:
	var game: GeneratedMapCombatGame = GeneratedGame.new()
	var rows := PackedStringArray(["TTTTTT", "T#...T", "T....T", "T....T", "T...#T", "TTTTTT"])
	if not game.configure(rows):
		return _fail("Generated terrain fixture should configure")
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(4, 3)
	if not game.player_move(Vector2i(-1, -1)) or game.player_position != Vector2i(1, 1):
		return _fail("Generated-map player must use the shared diagonal movement rule")
	game.reset()
	game.player_position = Vector2i(1, 2)
	game.rat_position = Vector2i(3, 3)
	# Terrain blocks the destination, not just the flanks.
	if game.can_step(Vector2i(1, 2), Vector2i(-1, -1), &"player"):
		return _fail("Generated terrain must block diagonal steps into a tree")
	game.reset()
	game.player_position = Vector2i(1, 2)
	game.rat_position = Vector2i(2, 1)
	Fixture.guaranteed_hits(game)
	if not game.player_move(Vector2i(1, -1)) or game.rat_hp != game.RAT_MAX_HP - game.ATTACK_DAMAGE:
		return _fail("Generated-map diagonal bump must resolve through shared combat")
	return true


func _test_scene_keyboard_input() -> bool:
	var scene := preload("res://time_cost/time_cost_test_room.tscn").instantiate()
	root.add_child(scene)
	_press(KEY_KP_3)
	if scene.game.player_position != Vector2i(3, 4) or scene.game.world_time != scene.game.MOVE_COST:
		return _fail("Numpad 3 must dispatch the southeast movement action")
	_press(KEY_HOME)
	if scene.game.player_position != Vector2i(2, 3) or scene.game.player_next_ready_time != 2 * scene.game.MOVE_COST:
		return _fail("Home (Num Lock off 7) must dispatch northwest movement")
	scene.free()
	var generated := preload("res://time_cost/generated_map_combat_playground.tscn").instantiate()
	root.add_child(generated)
	var game: GeneratedMapCombatGame = generated.game
	var found := false
	for y in range(1, game.map_height - 1):
		for x in range(1, game.map_width - 1):
			var cell := Vector2i(x, y)
			if game.is_wall(cell) or cell == game.rat_position or not game.can_step(cell, Vector2i(1, 1), &"player"):
				continue
			game.player_position = cell
			_press(KEY_KP_3)
			if game.player_position != cell + Vector2i(1, 1) or game.last_action_cost != game.MOVE_COST:
				return _fail("Generated scene must dispatch the same diagonal numpad input")
			found = true
			break
		if found:
			break
	generated.free()
	if not found:
		return _fail("Generated fixture must contain a clear diagonal input test cell")
	return true


func _press(key: Key) -> void:
	var event := InputEventKey.new()
	event.keycode = key
	event.physical_keycode = key
	event.pressed = true
	root.push_input(event)
	event = event.duplicate()
	event.pressed = false
	root.push_input(event)


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
