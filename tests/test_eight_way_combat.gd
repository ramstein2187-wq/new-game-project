extends SceneTree

func _init() -> void:
	var game := TimeCostGame.new()
	var diagonals: Array[Vector2i] = [Vector2i(-1, -1), Vector2i(1, -1), Vector2i(-1, 1), Vector2i(1, 1)]
	for direction in diagonals:
		if not game.MOVE_DIRECTIONS.has(direction):
			fail("Missing diagonal direction")
			return
		game.reset()
		game.player_position = Vector2i(8, 2)
		game.rat_position = Vector2i(2, 3)
		if not game.player_move(direction) or game.player_position != Vector2i(8, 2) + direction:
			fail("Open diagonal move failed: %s" % direction)
			return
		if game.last_action_cost != game.DIAGONAL_MOVE_COST:
			fail("Player diagonal movement must cost 1400")
			return

	game.reset()
	if MoveAction.new(Vector2i.RIGHT).get_cost(game, &"player") != 1000 or MoveAction.new(Vector2i.RIGHT).get_cost(game, &"rat") != 750:
		fail("Cardinal movement costs must remain unchanged")
		return
	if MoveAction.new(Vector2i(1, 1)).get_cost(game, &"rat") != 1050:
		fail("Rat diagonal movement must cost 1050")
		return
	game.bodies[&"player"].apply_damage(&"left_leg", 13)
	game.bodies[&"rat"].apply_damage(&"left_foreleg", 3)
	if MoveAction.new(Vector2i(1, 1)).get_cost(game, &"player") != 1867:
		fail("Injured player diagonal movement must apply efficiency and round up")
		return
	if MoveAction.new(Vector2i(1, 1)).get_cost(game, &"rat") != 1200:
		fail("Injured rat diagonal movement must apply efficiency and round up")
		return

	game.reset()
	game.player_position = Vector2i(7, 2)
	if not AttackAction.new(&"rat").can_execute(game, &"player"):
		fail("Diagonal rat is in melee range")
		return
	if not game.player_move(Vector2i(1, 1)) or game.player_position != Vector2i(7, 2):
		fail("Diagonal bump must attack instead of moving onto the rat")
		return
	if game.last_action_cost != game.ATTACK_COST:
		fail("Diagonal melee uses the original attack time cost")
		return

	game.reset()
	game.player_position = Vector2i(4, 2)
	game.rat_position = Vector2i(5, 3)
	if game.can_step(Vector2i(4, 2), Vector2i(1, 1)):
		fail("Closed door and wall must block diagonal corner crossing")
		return
	if AttackAction.new(&"rat").can_execute(game, &"player"):
		fail("Diagonal attack must not pass through a blocked corner")
		return

	game.reset()
	game.player_position = Vector2i(3, 3)
	game.rat_position = Vector2i(8, 3)
	if MoveAction.new(Vector2i(2, 0)).can_execute(game, &"player"):
		fail("Multi-tile movement must remain invalid")
		return

	print("PASS: eight-way movement, 1400/1050 diagonal costs, injury scaling, diagonal melee and corner collision")
	quit(0)

func fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
