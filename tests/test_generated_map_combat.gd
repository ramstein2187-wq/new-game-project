extends SceneTree

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const CombatGameScript := preload("res://time_cost/generated_map_combat_game.gd")
const ScenePath := "res://time_cost/generated_map_combat_playground.tscn"
const Settings := preload("res://procgen/default_generation_settings.tres")


func _init() -> void:
	call_deferred("_run_tests")


func _run_tests() -> void:
	if not _test_invalid_configuration_is_atomic():
		return
	if not _test_direct_reset():
		return
	if not _test_multiple_seeds_and_paths():
		return
	if not _test_terrain_and_world_bounds_block_movement():
		return
	if not _test_attack_and_shared_ai_clock():
		return
	if not _test_generated_retreat_and_ties():
		return
	if not _test_reset_and_invalid_map():
		return
	if not _test_playable_scene():
		return
	print("PASS: generated-map action-cost combat")
	quit(0)


func _make_game(seed_value: int, npc_count: int = 1) -> GeneratedMapCombatGame:
	var rows: PackedStringArray = MapGeneratorScript.new(Settings).generate(seed_value)
	var game: GeneratedMapCombatGame = CombatGameScript.new()
	if not game.configure(rows, npc_count):
		push_error("Map setup failed for seed %d" % seed_value)
		return null
	return game


func _test_direct_reset() -> bool:
	var game := _make_game(1234)
	var initial := _snapshot(game)
	for iteration in range(3):
		game.reset()
		if _snapshot(game) != initial:
			return _fail("Repeated direct reset must preserve terrain, spawns and clean state")
		game.player_wait()
		game.rat_aggression = 180
		game.rat_fear_bonus = 23
		game.damage_actor(&"player", 2)
		game.damage_actor(&"rat", 1)
		game.reset()
		if _snapshot(game) != initial:
			return _fail("Reset after time/damage must restore generated state including AI traits")
	# Kill via the common action path, which unregisters the rat.
	preload("res://tests/support/combat_fixture.gd").guaranteed_hits(game)
	if not _place_player_next_to_rat(game):
		return false
	game.rat_hp = 1
	if not game.player_move(game.rat_position - game.player_position) or game.scheduler.has_actor(&"rat"):
		return _fail("Fixture must defeat and unschedule the rat")
	if not game.player_wait() or game.last_response_count != 0:
		return _fail("Dead rat must not act on generated terrain")
	game.reset()
	if _snapshot(game) != initial:
		return _fail("Reset after rat death must restore and register the rat")
	if not _place_player_next_to_rat(game):
		return false
	preload("res://tests/support/combat_fixture.gd").guaranteed_hits(game)
	game.player_hp = 1
	game.player_wait()
	if not game.game_over:
		return _fail("Fixture must reach player defeat")
	game.reset()
	if _snapshot(game) != initial:
		return _fail("Reset after player defeat must clear game over")
	# Different dimensions ensure regeneration replaces boundaries and spawn rows.
	var small_rows := PackedStringArray(["....", ".#..", "..#.", "...."])
	if not game.configure(small_rows, 1):
		return _fail("Minimum valid connected map should configure")
	game.player_wait()
	game.reset()
	if game.map_width != 4 or game.map_height != 4 or game.player_position != Vector2i(1, 1) or game.rat_position != Vector2i(2, 2):
		return _fail("Reset must use the latest map dimensions and spawns")
	if game.door_position != Vector2i(-1, -1) or not game.door_open or game.world_time != 0 or not game.combat_log.events.is_empty():
		return _fail("Small-map reset leaked the fixed room or prior time/log")
	return true


func _place_player_next_to_rat(game: GeneratedMapCombatGame) -> bool:
	for direction in game.CARDINAL_DIRECTIONS:
		var cell: Vector2i = game.rat_position + direction
		if game.is_inside(cell) and not game.is_wall(cell):
			game.player_position = cell
			return true
	return _fail("Fixture has no walkable neighbor")


func _snapshot(game: GeneratedMapCombatGame) -> Dictionary:
	return {
		"rows": game.terrain_rows.duplicate(), "width": game.map_width, "height": game.map_height,
		"player": game.player_position, "rat": game.rat_position,
		"hp": [game.player_hp, game.rat_hp], "door": [game.door_position, game.door_open],
		"clock": [game.world_time, game.player_next_ready_time, game.rat_next_ready_time],
		"registered": [game.scheduler.has_actor(&"player"), game.scheduler.has_actor(&"rat")],
		"ai": [game.rat_aggression, game.rat_fear_bonus], "facing": game.facing,
		"over": game.game_over, "cost": game.last_action_cost, "responses": game.last_response_count,
		"message": game.message, "events": game.combat_log.events.duplicate(),
	}


func _test_invalid_configuration_is_atomic() -> bool:
	var game := _make_game(1234)
	game.player_wait()
	game.damage_actor(&"player", 1)
	game.rat_fear_bonus = 9
	var before := _snapshot(game)
	var invalid_maps: Array[PackedStringArray] = [
		PackedStringArray(),
		PackedStringArray(["....", ".#..", "..#."]),
		PackedStringArray(["...", ".#.", ".#.", "..."]),
		PackedStringArray(["....", ".#..", "..#", "...."]),
		PackedStringArray(["....", "....", "..#.", "...."]),
		PackedStringArray(["....", ".#..", "....", "...."]),
		# Both path spawns exist but a solid barrier separates them.
		PackedStringArray(["TTTT", "T#TT", "TTTT", "TT#T", "TTTT"]),
	]
	for rows in invalid_maps:
		if game.configure(rows, 1):
			return _fail("Invalid or disconnected spawn data must be rejected")
		if _snapshot(game) != before:
			return _fail("Failed configuration must leave the entire active game unchanged")
	game.reset()
	if _snapshot(game) != _snapshot(_make_game(1234)):
		return _fail("Rejected configuration must not replace the reset baseline")
	return true


func _test_multiple_seeds_and_paths() -> bool:
	for seed_value in [1, 1234, 1235, 918273]:
		var game := _make_game(seed_value)
		if game == null:
			return _fail("Failed to configure a generated map")
		var repeat := _make_game(seed_value)
		if repeat == null or repeat.terrain_rows != game.terrain_rows:
			return _fail("Generating the same seed did not reproduce terrain")
		if repeat.player_position != game.player_position or repeat.rat_position != game.rat_position:
			return _fail("Same seed did not reproduce actor placement")
		if game.map_height != game.terrain_rows.size() or game.map_width != game.terrain_rows[0].length():
			return _fail("Map dimensions must match configured terrain")
		if game.player_position.y != 1 or game.rat_position.y != 9:
			return _fail("Actors must spawn at separate path segments")
		if game.terrain_rows[game.player_position.y][game.player_position.x] != MapGeneratorScript.PATH:
			return _fail("Player did not spawn on the generated path")
		if game.terrain_rows[game.rat_position.y][game.rat_position.x] != MapGeneratorScript.PATH:
			return _fail("Rat did not spawn on the generated path")
		if game._next_step_toward_player() == game.rat_position:
			return _fail("Rat cannot route to the player on a generated seed")
		var initial_rat := game.rat_position
		if not game.player_wait():
			return _fail("Player cannot wait in a generated world")
		if game.rat_position == initial_rat or game.last_response_count < 1:
			return _fail("Rat did not execute a turn-based movement action")
		if game.is_wall(game.rat_position) or not game.is_inside(game.rat_position):
			return _fail("Rat moved onto generated blocking terrain")
		if game.combat_log.events[1].actor_id != &"rat" or game.combat_log.events[1].time != 0:
			return _fail("Rat movement did not use shared scheduler or log")
	return true


func _test_terrain_and_world_bounds_block_movement() -> bool:
	var game := _make_game(1234)
	if game == null:
		return false
	var tree_found := false
	var ruin_found := false
	for y in range(game.map_height):
		for x in range(game.map_width):
			var cell := Vector2i(x, y)
			if game.terrain_rows[y][x] == MapGeneratorScript.TREE:
				tree_found = true
				if not game.is_wall(cell) or not game.blocks_actor_movement(cell, &"player"):
					return _fail("Generated tree must block movement")
			elif game.terrain_rows[y][x] == MapGeneratorScript.RUIN:
				ruin_found = true
				if not game.is_wall(cell) or not game.blocks_actor_movement(cell, &"rat"):
					return _fail("Generated ruin wall must block movement")
	if not tree_found or not ruin_found:
		return _fail("Terrain fixture lacks required tree/ruin cells")
	if not game.blocks_actor_movement(Vector2i(-1, 1), &"player"):
		return _fail("Outside the generated map must be blocked")
	if not game.blocks_actor_movement(Vector2i(game.map_width, 1), &"player"):
		return _fail("Generated map right boundary must be blocked")
	for cell in [Vector2i(1, -1), Vector2i(1, game.map_height)]:
		if not game.blocks_actor_movement(cell, &"rat"):
			return _fail("Generated map vertical boundaries must be blocked")
	# Try moving directly into an adjacent blocked tile; no time or event is consumed.
	var found_adjacent_wall := false
	for y in range(game.map_height):
		for x in range(game.map_width):
			var cell := Vector2i(x, y)
			if game.is_wall(cell):
				continue
			for direction in game.CARDINAL_DIRECTIONS:
				if game.is_wall(cell + direction) and game.is_inside(cell + direction):
					game.player_position = cell
					if game.player_move(direction):
						return _fail("Player walked through a generated obstacle")
					if game.world_time != 0 or not game.combat_log.events.is_empty():
						return _fail("Blocked movement incorrectly consumed time or created a log event")
					found_adjacent_wall = true
					break
			if found_adjacent_wall:
				break
		if found_adjacent_wall:
			break
	if not found_adjacent_wall:
		return _fail("No terrain wall edge available to test collision")
	return true


func _test_attack_and_shared_ai_clock() -> bool:
	var game := _make_game(1234)
	if game == null:
		return false
	game.rat_aggression = 200
	var adjacent := false
	for direction in game.CARDINAL_DIRECTIONS:
		var cell := game.rat_position + direction
		if game.is_inside(cell) and not game.is_wall(cell):
			game.player_position = cell
			adjacent = true
			break
	if not adjacent:
		return _fail("No free adjacent cell for generated-map combat fixture")
	preload("res://tests/support/combat_fixture.gd").guaranteed_hits(game)
	var toward_rat: Vector2i = game.rat_position - game.player_position
	if not game.player_move(toward_rat):
		return _fail("Player cannot attack a rat on generated terrain")
	if game.rat_hp != game.RAT_MAX_HP - game.ATTACK_DAMAGE or game.player_hp != game.PLAYER_MAX_HP - 2 * game.ATTACK_DAMAGE:
		return _fail("Generated-map melee did not retain damage and two rat responses")
	if game.last_action_cost != game.ATTACK_COST or game.last_response_count != 2:
		return _fail("Shared scheduler/action cost changed on generated map")
	if game.combat_log.events.size() != 3:
		return _fail("Player attack and both AI responses were not logged")
	if not game.combat_log.events[1].reason_codes.has(&"target_adjacent"):
		return _fail("Generated-map AI attack lost its reason codes")
	return true


func _test_reset_and_invalid_map() -> bool:
	var game := _make_game(1234)
	if game == null:
		return false
	game.player_wait()
	if game.world_time == 0 or game.combat_log.events.is_empty():
		return _fail("Fixture must advance world time before regeneration")
	var old_rows := game.terrain_rows.duplicate()
	if game.configure(PackedStringArray(["#..", "##"])):
		return _fail("Ragged generated map must be rejected")
	if game.terrain_rows != old_rows or game.world_time == 0:
		return _fail("Invalid generated data must not replace the active map")
	var next_rows: PackedStringArray = MapGeneratorScript.new(Settings).generate(1235)
	if not game.configure(next_rows, 1):
		return _fail("Next seed did not reconfigure the combat world")
	if game.terrain_rows != next_rows or game.world_time != 0:
		return _fail("Regeneration did not install new terrain and reset time")
	if not game.combat_log.events.is_empty() or game.rat_hp != game.RAT_MAX_HP:
		return _fail("Regeneration did not clear combat log or restore rat")
	if game.door_position != Vector2i(-1, -1) or not game.door_open:
		return _fail("Fixed-room door leaked into generated map")
	if _snapshot(game) != _snapshot(_make_game(1235)):
		return _fail("New-seed configuration must match a fresh game completely")
	return true


func _test_generated_retreat_and_ties() -> bool:
	# A small terrain fixture gives the wounded rat one legal retreat direction.
	var rows := PackedStringArray(["TTTTTT", "T..#.T", "T..#.T", "T..#TT", "T.#TTT", "TTTTTT"])
	var game := CombatGameScript.new()
	if not game.configure(rows, 1):
		return _fail("Connected terrain fixture should configure")
	game.player_position = Vector2i(3, 2)
	game.rat_position = Vector2i(3, 3)
	game.rat_hp = game.RAT_MAX_HP / 3
	game.player_wait()
	var retreat: CombatEvent = game.combat_log.events[1]
	if retreat.data.get("to") != Vector2i(2, 3) or retreat.data.get("visible_cue") != &"retreat":
		return _fail("Wounded rat must retreat into the legal terrain cell")
	if retreat.action_cost != game.RAT_MOVE_COST or not retreat.reason_codes.has(&"low_health"):
		return _fail("Generated retreat must retain shared cost and injury reason")
	for event in game.combat_log.events:
		if event.actor_id == &"rat" and event.type == &"move":
			var destination: Vector2i = event.data["to"]
			if not game.is_inside(destination) or game.is_wall(destination) or destination == game.player_position:
				return _fail("Rat retreat crossed terrain, bounds or player occupancy")
	var player_text := game.get_recent_event_text(true)
	if not player_text.contains("recoils and retreats") or player_text.contains("ai_score") or player_text.contains("low_health"):
		return _fail("Player log must retain visible retreat without private scoring")
	if not game.get_recent_debug_text().contains("ai_score"):
		return _fail("Developer log must retain candidate evaluation")
	game.reset()
	game.player_position = Vector2i(3, 2)
	game.rat_position = Vector2i(3, 3)
	game.rat_hp = game.RAT_MAX_HP / 3
	game.rat_aggression = 180
	game.player_wait()
	if game.last_response_count != 1 or game.player_next_ready_time != 1000 or game.rat_next_ready_time != 1000:
		return _fail("Aggressive rat attack must stop at the player's equal ready time")
	if game.combat_log.events[1].action_id != &"bite":
		return _fail("Aggression must still change the injured rat's choice")
	return true


func _test_playable_scene() -> bool:
	var packed_scene := load(ScenePath) as PackedScene
	if packed_scene == null:
		return _fail("Could not load generated-map turn combat scene")
	var scene := packed_scene.instantiate()
	root.add_child(scene)
	if scene.game == null or scene.generated_map.is_empty():
		return _fail("Generated-map scene did not initialize a playable game")
	if scene.get_node_or_null("CanvasLayer/LogScroll/Log") == null:
		return _fail("Generated-map scene has no combat log")
	var original_seed: int = scene.world_seed
	_press(KEY_ENTER)
	if scene.game.world_time != 1000 or scene.game.combat_log.events.is_empty():
		return _fail("Generated scene wait input did not dispatch actions")
	_press(KEY_L)
	_press(KEY_F3)
	if not scene.detailed_log or not scene.debug_log or not scene.log_label.text.contains("ai_score"):
		return _fail("Generated scene log input did not expose developer trace")
	_press(KEY_F3)
	if scene.log_label.text.contains("ai_score"):
		return _fail("Generated scene player log leaked developer trace")
	_press(KEY_R)
	if scene.world_seed != original_seed + 1 or scene.game.world_time != 0:
		return _fail("Seed regeneration did not reset scene and clock")
	if scene.generated_map != scene.game.terrain_rows or _snapshot(scene.game) != _snapshot(_make_game(original_seed + 1, 3)):
		return _fail("R input must replace rendered terrain and the complete game state")
	scene.queue_free()
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
