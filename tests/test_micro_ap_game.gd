extends SceneTree

const MicroApGameScript := preload("res://micro_ap/micro_ap_game.gd")


func _init() -> void:
	if not _test_move_cost():
		return
	if not _test_door_interaction_cost():
		return
	if not _test_bump_attack_cost():
		return
	if not _test_turn_cycle():
		return
	if not _test_scene_loads():
		return

	print("PASS: micro AP test room")
	quit(0)


func _test_move_cost() -> bool:
	var game := MicroApGameScript.new()
	var start := game.player_position

	if not game.player_move(Vector2i.RIGHT):
		return _fail("Player move should succeed")
	if game.player_position != start + Vector2i.RIGHT:
		return _fail("Player did not move one cell")
	if game.player_ap != MicroApGame.MAX_AP - MicroApGame.MOVE_COST:
		return _fail("Movement did not cost 1 AP")

	return true


func _test_door_interaction_cost() -> bool:
	var game := MicroApGameScript.new()
	game.player_position = Vector2i(4, 3)
	game.facing = Vector2i.RIGHT

	if not game.player_interact():
		return _fail("Door interaction should succeed")
	if not game.door_open:
		return _fail("Door did not open")
	if game.player_ap != MicroApGame.MAX_AP - MicroApGame.INTERACT_COST:
		return _fail("Door interaction did not cost 1 AP")

	return true


func _test_bump_attack_cost() -> bool:
	var game := MicroApGameScript.new()
	game.player_position = Vector2i(7, 3)
	game.facing = Vector2i.RIGHT
	var start := game.player_position

	if not game.player_move(Vector2i.RIGHT):
		return _fail("Bumping the rat should resolve as an attack")
	if game.player_position != start:
		return _fail("Bump attack should not move the player into the rat")
	if game.rat_hp != MicroApGame.RAT_MAX_HP - MicroApGame.ATTACK_DAMAGE:
		return _fail("Bump attack did not damage the rat")
	if game.player_ap != MicroApGame.MAX_AP - MicroApGame.ATTACK_COST:
		return _fail("Attack did not cost 2 AP")

	return true


func _test_turn_cycle() -> bool:
	var game := MicroApGameScript.new()
	var initial_round := game.round_number
	var initial_rat_position := game.rat_position

	if not game.player_end_turn():
		return _fail("Ending the player turn should succeed")
	if game.round_number != initial_round + 1:
		return _fail("Round did not advance after the rat activation")
	if game.player_ap != MicroApGame.MAX_AP:
		return _fail("Player AP did not refill after the rat activation")
	if game.rat_position == initial_rat_position and not game.door_open:
		return _fail("Rat did not spend AP moving or interacting")

	return true


func _test_scene_loads() -> bool:
	var packed_scene := load("res://micro_ap/micro_ap_test_room.tscn") as PackedScene
	if packed_scene == null:
		return _fail("Could not load micro_ap_test_room.tscn")

	var scene := packed_scene.instantiate()
	root.add_child(scene)

	if scene.get_node_or_null("CanvasLayer/UI/VBox/Status") == null:
		return _fail("Micro-AP status UI is missing")

	scene.queue_free()
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
