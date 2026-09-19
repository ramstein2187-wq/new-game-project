extends SceneTree

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const CombatGameScript := preload("res://time_cost/generated_map_combat_game.gd")
const ScenePath := "res://time_cost/generated_map_combat_playground.tscn"
const Settings := preload("res://procgen/default_generation_settings.tres")


func _init() -> void:
	call_deferred("_run_tests")


func _run_tests() -> void:
	if not _test_multiple_seeds_and_paths():
		return
	if not _test_terrain_and_world_bounds_block_movement():
		return
	if not _test_attack_and_shared_ai_clock():
		return
	if not _test_reset_and_invalid_map():
		return
	if not _test_playable_scene():
		return
	print("PASS: generated-map action-cost combat")
	quit(0)


func _make_game(seed_value: int) -> GeneratedMapCombatGame:
	var rows: PackedStringArray = MapGeneratorScript.new(Settings).generate(seed_value)
	var game: GeneratedMapCombatGame = CombatGameScript.new()
	if not game.configure(rows):
		push_error("Map setup failed for seed %d" % seed_value)
		return null
	return game


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
	var toward_rat: Vector2i = game.rat_position - game.player_position
	if not game.player_move(toward_rat):
		return _fail("Player cannot attack a rat on generated terrain")
	if game.rat_hp != game.RAT_MAX_HP - 1 or game.player_hp != game.PLAYER_MAX_HP - 2:
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
	if not game.configure(next_rows):
		return _fail("Next seed did not reconfigure the combat world")
	if game.terrain_rows != next_rows or game.world_time != 0:
		return _fail("Regeneration did not install new terrain and reset time")
	if not game.combat_log.events.is_empty() or game.rat_hp != game.RAT_MAX_HP:
		return _fail("Regeneration did not clear combat log or restore rat")
	if game.door_position != Vector2i(-1, -1) or not game.door_open:
		return _fail("Fixed-room door leaked into generated map")
	return true


func _test_playable_scene() -> bool:
	var packed_scene := load(ScenePath) as PackedScene
	if packed_scene == null:
		return _fail("Could not load generated-map turn combat scene")
	var scene := packed_scene.instantiate()
	root.add_child(scene)
	if scene.game == null or scene.generated_map.is_empty():
		return _fail("Generated-map scene did not initialize a playable game")
	if scene.get_node_or_null("CanvasLayer/Log") == null:
		return _fail("Generated-map scene has no combat log")
	var original_seed: int = scene.world_seed
	scene.regenerate(original_seed + 1)
	if scene.world_seed != original_seed + 1 or scene.game.world_time != 0:
		return _fail("Seed regeneration did not reset scene and clock")
	scene.queue_free()
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
