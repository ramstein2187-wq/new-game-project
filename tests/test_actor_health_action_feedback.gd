extends SceneTree

var failures := 0

func expect(condition: bool, description: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + description)

func _init() -> void:
	_test_hp_lifecycle()
	_test_attack_failures()
	_test_movement_failures()
	if failures == 0:
		print("PASS: HP lifecycle, direct-write death synchronization and specific action feedback")
	quit(1 if failures else 0)

func _test_hp_lifecycle() -> void:
	var game := TimeCostGame.new()
	var rat := game.get_actor(&"rat")
	expect(game.set_actor_hp(rat.id, 999) == rat.max_hp, "HP is clamped to maximum")
	expect(game.damage_actor(rat.id, 5) == 25, "Damage uses shared health transition")
	expect(game.heal_actor(rat.id, 100) == 30, "Healing clamps at maximum")
	var old_position := rat.position
	rat.hp = 0 # A direct debug write must not bypass the game/scheduler.
	expect(not game.scheduler.has_actor(rat.id) and game.get_actor(rat.id) == rat, "Direct NPC HP write unschedules but retains corpse")
	expect(game.actors.occupant_at(old_position) == null, "Dead NPC no longer occupies its cell")
	expect(game.heal_actor(rat.id, 5) == 0, "Healing does not accidentally resurrect dead NPC")
	rat.hp = 10
	expect(rat.hp == 0 and not game.scheduler.has_actor(rat.id), "Direct HP assignment cannot revive an unscheduled NPC")
	expect(game.register_actor(Actor.new(&"successor", ActorDefinition.rat_common(), old_position)), "Dead cell can be used by a new NPC")
	game.player_hp = 0
	expect(game.game_over and not game.player_wait(), "Direct player HP write immediately ends game")
	game.reset()
	expect(game.player_hp == 50 and game.scheduler.has_actor(&"rat") and not game.game_over, "Reset restores living actors and schedules")
	# An old reference must not affect a newly created actor with the same ID.
	var old_living_rat := game.get_actor(&"rat")
	game.reset()
	old_living_rat.hp = 0
	expect(game.scheduler.has_actor(&"rat") and game.rat_hp == 30, "Old actor reference cannot kill replacement after reset")

func _test_attack_failures() -> void:
	var game := TimeCostGame.new()
	game.player_position = Vector2i(7, 3)
	var player := game.get_actor(&"player")
	var arm: StringName = player.body.attack_part
	player.body.apply_damage(arm, player.body.parts[arm].maximum)
	var before := game.world_time
	var events := game.combat_log.events.size()
	expect(not game.player_move(Vector2i.RIGHT), "Disabled attack is rejected")
	expect(game.message.contains("right arm") and game.message.contains("disabled"), "Identifies the disabled attack part")
	expect(game.world_time == before and game.combat_log.events.size() == events, "Failed attack consumes no time or events")
	game = TimeCostGame.new()
	expect(not game.perform_action(&"player", AttackAction.new(&"rat")), "Out-of-range attack rejected")
	expect(game.message.contains("out of range"), "Out-of-range reason is visible")
	game = TimeCostGame.new()
	game.player_position = Vector2i(3, 3)
	game.rat_position = Vector2i(4, 4)
	game._walls[Vector2i(4, 3)] = true
	expect(not game.perform_action(&"player", AttackAction.new(&"rat")), "Blocked diagonal attack rejected")
	expect(game.message.contains("blocked corner"), "Blocked diagonal attack has distinct feedback")

func _test_movement_failures() -> void:
	var game := TimeCostGame.new()
	var player := game.get_actor(&"player")
	player.body.apply_damage(&"left_leg", 100)
	player.body.apply_damage(&"right_leg", 100)
	expect(not game.player_move(Vector2i.RIGHT), "Movement without functional legs is rejected")
	expect(game.message.contains("lost its movement function"), "Movement failure names body function")
	expect(game.world_time == 0 and game.combat_log.events.is_empty(), "Failed movement is free and unlogged")
	game = TimeCostGame.new()
	game.player_position = Vector2i(2, 1)
	expect(not game.player_move(Vector2i.UP), "Wall movement rejected")
	expect(game.message.contains("terrain or a corner"), "Blocked terrain has specific feedback")
