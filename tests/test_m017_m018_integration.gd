extends SceneTree

var failures := 0
const Fixture := preload("res://tests/support/combat_fixture.gd")
const OPEN_MAP := ["TTTTTTT", "T#....T", "T.....T", "T.....T", "T.....T", "T....#T", "TTTTTTT"]

func _init() -> void:
	call_deferred("_run")

func expect(condition: bool, message: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + message)

func _run() -> void:
	_test_corner_ai_and_feedback()
	_test_generated_terrain_and_costs()
	await _test_keypad_dispatch()
	if failures == 0:
		print("PASS: M017/M018 corner routing, honest reach feedback, generated terrain, injured diagonal scheduling and both scene inputs")
	quit(1 if failures else 0)

func _test_corner_ai_and_feedback() -> void:
	var game := TimeCostGame.new()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	# (3,2) blocks diagonal reach, but (2,3) is a legal route to the player.
	expect(not AttackAction.new(&"player").can_execute(game, &"rat"), "Wall corner prevents bite")
	var choice := RatTactics.choose(game)
	expect(choice.action is MoveAction and choice.action.can_execute(game, &"rat"), "Rat routes around a blocked adjacent corner instead of waiting forever")
	game.player_wait()
	expect(game.combat_log.events[1].action_id == &"move" and game.rat_position == Vector2i(2, 3), "Legal corner route executes in the scheduler")
	expect(game.combat_log.events.size() == 3 and game.combat_log.events[2].action_id == &"bite", "Rat can bite after reaching clear adjacency")
	game.reset()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(4, 3)
	# A move arriving at the blocked diagonal must not announce striking reach.
	var move := MoveAction.new(Vector2i.LEFT)
	expect(move.can_execute(game, &"rat"), "Feedback fixture movement legal")
	var event := move.execute(game, &"rat", move.get_cost(game, &"rat"))
	expect(not event.data.in_melee_range and not CombatLogFormatter.format_player_event(event).contains("striking"), "Blocked diagonal must not claim melee range")
	# An actual closed door still selects InteractAction, not a rejected attack.
	game.reset()
	game.player_position = Vector2i(4, 3)
	game.rat_position = Vector2i(6, 3)
	choice = RatTactics.choose(game)
	expect(choice.action is InteractAction, "Closed door remains an approach interaction")

func _map() -> GeneratedMapCombatGame:
	var game := GeneratedMapCombatGame.new()
	expect(game.configure(PackedStringArray(OPEN_MAP), 1), "Generated test layout connected")
	return game

func _test_generated_terrain_and_costs() -> void:
	for block in ["T", "R"]:
		var game := _map()
		game.terrain_rows[2] = "T..%s..T" % block
		game.player_position = Vector2i(2, 2)
		game.rat_position = Vector2i(3, 3)
		var rng_state := game.combat_rng.state
		expect(not game.player_move(Vector2i(1, 1)), "Tree/ruin corner forbids diagonal melee")
		expect(game.world_time == 0 and game.combat_log.events.is_empty() and game.combat_rng.state == rng_state, "Blocked diagonal spends no time or RNG")
		expect(RatTactics.choose(game).action is MoveAction, "Generated-map rat routes around blocked corner")
	var game := _map()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(5, 5)
	game.bodies[&"player"].apply_damage(&"left_leg", 13)
	game.bodies[&"rat"].apply_damage(&"left_foreleg", 3)
	expect(game.player_move(Vector2i(1, 1)), "Injured diagonal movement executes")
	expect(game.last_action_cost == 1867 and game.player_next_ready_time == 1867 and game.world_time == 1867, "Player diagonal injury cost applied exactly once")
	var approach: CombatEvent = game.combat_log.events[1]
	expect(approach.action_id == &"move" and approach.action_cost == 1200 and approach.time == 0, "Injured rat diagonal approach costs 1200")
	expect(game.last_response_count == 2 and game.rat_next_ready_time == 2200, "1200 move then 1000 bite advances rat once per action")
	game = _map()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	game.rat_hp = 10
	game.bodies[&"rat"].apply_damage(&"left_foreleg", 3)
	game.player_wait()
	var retreat: CombatEvent = game.combat_log.events[1]
	expect(retreat.data.ai_goal == &"survive" and retreat.data.to == Vector2i(4, 4), "Generated-map rat retreats diagonally")
	expect(retreat.action_cost == 1200 and game.rat_next_ready_time == 1200 and game.last_response_count == 1, "Retreat uses injury-scaled diagonal cost exactly once")
	game = _map()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	Fixture.guaranteed_hits(game)
	game.bodies[&"player"].apply_damage(&"right_arm", 10)
	expect(game.player_move(Vector2i(1, 1)), "Injured-arm diagonal bump still executes")
	var attack: CombatEvent = game.combat_log.events[0]
	expect(attack.action_cost == 1250 and attack.data.situation == -2 and attack.data.damage == 5 and attack.data.has("part"), "Diagonal melee retains arm penalty and D20/body resolution")
	expect(game.rat_hp == 25 and game.player_position == Vector2i(2, 2), "Diagonal attack applies HP once without movement")
	game.reset()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	game.bodies[&"player"].apply_damage(&"right_arm", 20)
	expect(not game.player_move(Vector2i(1, 1)) and game.world_time == 0, "Disabled arm also blocks diagonal attack for free")
	game.reset()
	game.player_position = Vector2i(2, 2)
	game.rat_position = Vector2i(3, 3)
	game.bodies[&"rat"].apply_damage(&"head", 8)
	game.player_wait()
	expect(game.combat_log.events[1].action_id == &"wait" and game.world_time == 1000, "Disabled bite never stalls an adjacent eight-way encounter")

func _test_keypad_dispatch() -> void:
	var bindings := {KEY_KP_7: Vector2i(-1, -1), KEY_KP_8: Vector2i.UP, KEY_KP_9: Vector2i(1, -1),
		KEY_KP_4: Vector2i.LEFT, KEY_KP_6: Vector2i.RIGHT, KEY_KP_1: Vector2i(-1, 1), KEY_KP_2: Vector2i.DOWN, KEY_KP_3: Vector2i(1, 1)}
	for path in ["res://time_cost/time_cost_test_room.tscn", "res://time_cost/generated_map_combat_playground.tscn"]:
		var scene: Node = load(path).instantiate()
		root.add_child(scene)
		await process_frame
		for key: int in bindings:
			var game: TimeCostGame = scene.game
			game.reset()
			if game is GeneratedMapCombatGame:
				game.configure(PackedStringArray(OPEN_MAP), 1)
				game.player_position = Vector2i(3, 3)
				game.rat_position = Vector2i(5, 5)
			else:
				game.player_position = Vector2i(8, 2)
				game.rat_position = Vector2i(2, 3)
			var start := game.player_position
			_press(key)
			var direction: Vector2i = bindings[key]
			var cost := 1400 if direction.x != 0 and direction.y != 0 else 1000
			expect(game.player_position == start + direction and game.player_next_ready_time == cost, "Keypad movement and direction cost in " + path)
			var count := game.combat_log.events.size()
			_press(key, true)
			expect(game.combat_log.events.size() == count, "Key echo must not duplicate actions")
			scene._refresh()
			await process_frame
			expect(scene.combat_panel.body_status.text.contains("1000/1400"), "Panel explains both direction costs")
			var log_scroll: Control = scene.get_node("CanvasLayer/LogScroll")
			expect(not scene.combat_panel.get_global_rect().intersects(log_scroll.get_global_rect()), "Combat panel remains separate from log")
		scene.queue_free()
		await process_frame

func _press(key: int, echo: bool = false) -> void:
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
