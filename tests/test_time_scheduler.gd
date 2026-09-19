extends SceneTree

const TimeSchedulerScript := preload("res://time_cost/time_scheduler.gd")


func _init() -> void:
	if not _test_multiple_npcs_share_one_clock():
		return
	if not _test_player_priority_on_equal_ready_time():
		return
	if not _test_invalid_cost_and_unregister():
		return
	if not _test_reset_and_integration():
		return
	print("PASS: independent time scheduler")
	quit(0)


func _test_multiple_npcs_share_one_clock() -> bool:
	var clock := TimeSchedulerScript.new()
	clock.reset(&"player")
	if not clock.register_actor(&"wolf", 0) or not clock.register_actor(&"guard", 0):
		return _fail("Two NPCs should be registered independently")
	if not clock.register_actor(&"snail", 500):
		return _fail("A later-ready NPC should be registrable")
	if not clock.advance_actor(&"player", 1000):
		return _fail("Player cost was not applied")

	var order: Array[StringName] = []
	var times: Array[int] = []
	for i in range(5):
		var actor: StringName = clock.take_next_actor_before_player()
		if actor == &"":
			break
		order.append(actor)
		times.append(clock.world_time)
		match actor:
			&"wolf":
				clock.advance_actor(actor, 750)
			&"guard":
				clock.advance_actor(actor, 1000)
			&"snail":
				clock.advance_actor(actor, 1000)
			_:
				return _fail("Unexpected actor returned")

	if order != [&"wolf", &"guard", &"snail", &"wolf"]:
		return _fail("Multiple NPCs were not scheduled by time then stable registration order")
	if times != [0, 0, 500, 750]:
		return _fail("Scheduled world times are incorrect")
	if clock.take_next_actor_before_player() != &"" or clock.world_time != 1000:
		return _fail("Clock should stop at the player's next ready time")
	if clock.get_ready_time(&"wolf") != 1500 or clock.get_ready_time(&"guard") != 1000:
		return _fail("NPCs did not retain their individual ready times")
	return true


func _test_player_priority_on_equal_ready_time() -> bool:
	var clock := TimeSchedulerScript.new()
	clock.reset(&"player")
	clock.register_actor(&"rat")
	clock.advance_actor(&"player", 1000)
	if clock.take_next_actor_before_player() != &"rat" or clock.world_time != 0:
		return _fail("Rat should take its t=0 action")
	clock.advance_actor(&"rat", 1000)
	if clock.take_next_actor_before_player() != &"" or clock.world_time != 1000:
		return _fail("Player must win exact ready-time ties")
	clock.advance_actor(&"player", 500)
	if clock.take_next_actor_before_player() != &"rat" or clock.world_time != 1000:
		return _fail("Tied NPC turn should be pending, not discarded")
	return true


func _test_invalid_cost_and_unregister() -> bool:
	var clock := TimeSchedulerScript.new()
	clock.reset(&"player")
	if clock.register_actor(&"player") or clock.register_actor(&""):
		return _fail("Duplicate and blank actor IDs must be rejected")
	if clock.advance_actor(&"player", 0) or clock.advance_actor(&"player", -5):
		return _fail("Zero or negative action costs must be rejected")
	if clock.advance_actor(&"unknown", 1000) or clock.get_ready_time(&"player") != 0:
		return _fail("Invalid actions should not advance time")
	clock.register_actor(&"rat")
	if clock.unregister_actor(&"player") or not clock.unregister_actor(&"rat"):
		return _fail("Player cannot be removed; NPCs can be removed")
	if clock.has_actor(&"rat") or clock.unregister_actor(&"rat"):
		return _fail("Unregistered actors must not remain scheduled")
	clock.advance_actor(&"player", 1000)
	clock.take_next_actor_before_player()
	if clock.register_actor(&"late", 0):
		return _fail("Cannot register an actor in the already elapsed past")
	if not clock.register_actor(&"late", 1000):
		return _fail("Actor can join at the current world time")
	return true


func _test_reset_and_integration() -> bool:
	var game := TimeCostGame.new()
	if not game.player_move(Vector2i.RIGHT):
		return _fail("Existing test-room movement should work with scheduler")
	if game.world_time != 1000 or game.last_response_count != 2:
		return _fail("Refactor changed the original rat timing")
	game.reset()
	if game.world_time != 0 or game.player_next_ready_time != 0 or game.rat_next_ready_time != 0:
		return _fail("Reset did not restore actor times")
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	for i in range(TimeCostGame.RAT_MAX_HP):
		if not game.player_move(Vector2i.RIGHT):
			return _fail("Player should be able to attack the adjacent rat")
		if game.game_over:
			return _fail("The rat should die before the player in this setup")
	if game.rat_hp != 0 or game.scheduler.has_actor(&"rat"):
		return _fail("Defeated NPC must be removed from the scheduler")
	var responses_before := game.last_response_count
	if not game.player_wait() or game.last_response_count != 0:
		return _fail("Defeated rat must never receive another turn")
	if responses_before < 0:
		return _fail("Invalid response count")
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
