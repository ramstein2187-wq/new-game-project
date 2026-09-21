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
		if game.last_action_cost != game.MOVE_COST:
			fail("Diagonal movement must consume one normal movement action")
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

	print("PASS: eight-way movement, diagonal melee, corner collision and time costs")
	quit(0)

func fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
