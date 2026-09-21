extends SceneTree

const Generator := preload("res://procgen/simple_map_generator.gd")
const Settings := preload("res://procgen/default_generation_settings.tres")
const OPEN_MAP := ["TTTTTTTT", "T#.....T", "T......T", "T......T", "T......T", "T#.....T", "TTTTTTTT"]
var failures := 0

func expect(condition: bool, description: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + description)

func _init() -> void:
	call_deferred("_run")

func _run() -> void:
	_test_schedule_and_collision()
	_test_attacks_and_death()
	_test_individual_tactics()
	_test_generated_contracts()
	_test_replay()
	await _test_scene()
	if failures == 0:
		print("PASS: multiple NPC scheduling, occupancy, combat, AI, generated reset/replay and playable UI")
	quit(1 if failures else 0)

func _open_game() -> GeneratedMapCombatGame:
	var game := GeneratedMapCombatGame.new()
	expect(game.configure(PackedStringArray(OPEN_MAP)), "Open fixture configures")
	return game

func _test_schedule_and_collision() -> void:
	var game := _open_game()
	for actor in game.actors.all():
		actor.ai_policy = &"unimplemented_policy"
	expect(game.actors.all().size() == 4, "Default three NPCs")
	expect(game.player_wait(), "Player action advances generic NPCs")
	var expected: Array[StringName] = [&"player", &"rat", &"rat_002", &"rat_003"]
	for index in range(4):
		var event: CombatEvent = game.combat_log.events[index]
		expect(event.actor_id == expected[index] and event.time == 0 and event.action_cost == 1000, "Equal NPC times preserve registration order")
	expect(game.world_time == 1000 and game.last_response_count == 3, "NPC ties at player-ready wait for player")
	for actor in game.actors.all():
		expect(game.scheduler.get_ready_time(actor.id) == 1000, "All independent ready times advanced once")
	var before := _snapshot(game)
	expect(not game.perform_action(&"player", MoveAction.new(Vector2i.ZERO)), "Invalid move rejected")
	expect(before == _snapshot(game), "Invalid move changes no state, time, log or RNG")
	var npc := game.get_actor(&"rat_002")
	var other := game.get_actor(&"rat_003")
	npc.position = Vector2i(3, 3)
	other.position = Vector2i(4, 3)
	expect(not MoveAction.new(Vector2i.RIGHT).can_execute(game, npc.id), "NPC blocks other NPC")
	game.set_actor_position(npc.id, other.position)
	expect(npc.position == Vector2i(3, 3), "Position API prevents occupancy collision")
	other.position = Vector2i(2, 2)
	npc.body.apply_damage(&"left_foreleg", 3)
	expect(MoveAction.new(Vector2i(1, 1)).get_cost(game, npc.id) == 1200, "Arbitrary NPC diagonal injury cost rounds once")
	expect(MoveAction.new(Vector2i(1, 1)).get_cost(game, other.id) == 1050, "Sibling movement cost unaffected")
	game.door_position = other.position
	game.door_open = true
	npc.position = Vector2i(2, 3)
	expect(not InteractAction.new(other.position).can_execute(game, npc.id), "Any live NPC prevents door close")
	game.damage_actor(other.id, other.hp)
	expect(InteractAction.new(other.position).can_execute(game, npc.id), "Dead NPC does not block door")
	game.door_open = false
	npc.position = Vector2i(1, 2)
	expect(not MoveAction.new(Vector2i(1, 1)).can_execute(game, npc.id), "NPC cannot cut closed-door corner")
	expect(not AttackAction.new(&"missing").can_execute(game, npc.id), "Unknown attack target rejected safely")

func _guarantee_hits(game: TimeCostGame) -> void:
	for actor in game.actors.all():
		actor.species.attack_ability = &"STR"
		actor.abilities.scores[&"STR"] = 100
		for part: Dictionary in actor.body.parts.values():
			part.armor = -1
			part.weight = 1.0 if part.id == &"torso" else 0.0

func _surround(game: TimeCostGame) -> void:
	game.get_actor(&"player").position = Vector2i(3, 3)
	game.get_actor(&"rat").position = Vector2i(3, 2)
	game.get_actor(&"rat_002").position = Vector2i(4, 3)
	game.get_actor(&"rat_003").position = Vector2i(3, 4)

func _test_attacks_and_death() -> void:
	var game := _open_game()
	_surround(game)
	_guarantee_hits(game)
	game.player_wait()
	expect(game.player_hp == 35 and game.last_response_count == 3, "Three independent attackers each damage player")
	var attacker_ids := {}
	for event in game.combat_log.events:
		if event.type == &"attack":
			attacker_ids[event.actor_id] = true
			expect(event.target_id == &"player" and event.data.damage == 5, "Each attack records correct target and fixed damage")
			expect(event.actor_name.contains("Rat"), "Event captures distinguishing NPC name")
	expect(attacker_ids.size() == 3, "All three NPCs attacked")
	expect(game.get_recent_event_text().contains("Rat 2") and not game.get_recent_event_text().contains("ai_score"), "Visible names without private AI scoring")
	game.reset()
	_surround(game)
	_guarantee_hits(game)
	game.get_actor(&"rat_002").hp = 5
	var other_body := game.get_actor(&"rat_003").body.parts.duplicate(true)
	game.get_actor(&"rat").ai_policy = &"wait"
	game.get_actor(&"rat_003").ai_policy = &"wait"
	expect(game.player_move(Vector2i.RIGHT), "Bump targets arbitrary live NPC")
	var attack: CombatEvent = game.combat_log.events[0]
	expect(attack.target_id == &"rat_002" and attack.data.defeated, "Correct arbitrary target killed")
	expect(not game.scheduler.has_actor(&"rat_002") and game.get_actor(&"rat_002") != null, "Dead body retained and unscheduled")
	expect(game.get_actor(&"rat_003").body.parts == other_body and game.get_actor(&"rat_003").hp == 30, "Target damage does not affect sibling")
	for event in game.combat_log.events:
		expect(event.actor_id != &"rat_002", "Dead NPC cannot respond")
	expect(game.player_move(Vector2i.RIGHT) and game.player_position == Vector2i(4, 3), "Player enters dead NPC cell")
	# Non-player target and ID-independent species policy.
	game.reset()
	_guarantee_hits(game)
	game.get_actor(&"rat_002").position = Vector2i(3, 3)
	game.get_actor(&"rat_003").position = Vector2i(4, 3)
	game.get_actor(&"rat_002").target_id = &"rat_003"
	game.get_actor(&"rat_003").ai_policy = &"wait"
	game.get_actor(&"rat").ai_policy = &"wait"
	game.player_wait()
	expect(game.get_actor(&"rat_003").hp == 25 and game.player_hp == 50, "Arbitrary NPC attacks arbitrary target")
	game.reset()
	_surround(game)
	_guarantee_hits(game)
	game.player_hp = 5
	game.player_wait()
	expect(game.game_over and game.last_response_count == 1, "Player death stops all remaining NPC activations")
	expect(not game.player_wait(), "Game-over input rejected")

func _test_individual_tactics() -> void:
	var game := _open_game()
	_surround(game)
	var injured := game.get_actor(&"rat_002")
	injured.hp = 10
	var healthy := game.get_actor(&"rat_003")
	var retreat := RatTactics.choose(game, injured.id, &"player")
	var attack := RatTactics.choose(game, healthy.id, &"player")
	expect(retreat.goal == &"survive" and retreat.action.visible_cue == &"retreat", "One injured NPC retreats")
	expect(attack.goal == &"fight_target" and healthy.fear() == 0, "Healthy sibling still attacks")
	injured.aggression = 180
	expect(RatTactics.choose(game, injured.id).goal == &"fight_target", "Only that actor's aggression changes choice")
	# Own locomotion loss selects a valid wait; no forced-cost recovery path.
	injured.position = Vector2i(6, 5)
	for part: Dictionary in injured.body.parts.values():
		injured.body.apply_damage(part.id, part.maximum)
	var hold := RatTactics.choose(game, injured.id)
	expect(hold.action is WaitAction and hold.action.reason_codes.has(&"locomotion_lost"), "Disabled NPC chooses legitimate wait")
	# One-cell corridor: a living NPC blocks the complete route.
	var corridor := GeneratedMapCombatGame.new()
	expect(corridor.configure(PackedStringArray(["TTTT", "T#TT", "T.TT", "T.TT", "T#TT", "TTTT"]), 1), "Corridor configures")
	expect(corridor.register_actor(Actor.new(&"blocker", ActorDefinition.human_default(), Vector2i(1, 3))), "Blocker registers")
	var blocked := RatTactics.choose(corridor, &"rat")
	expect(blocked.action is WaitAction and blocked.action.reason_codes.has(&"route_blocked"), "Routing respects live occupancy")
	corridor.remove_actor(&"blocker")
	expect(RatTactics.choose(corridor, &"rat").action is MoveAction, "Removal restores route")

func _snapshot(game: TimeCostGame) -> String:
	var state: Array = [game.world_time, str(game.combat_rng.state), game.game_over]
	for actor in game.actors.all():
		state.append([actor.id, actor.position, actor.hp, actor.facing, actor.aggression,
			actor.fear_bonus, actor.target_id, actor.body.parts, actor.abilities.scores,
			game.scheduler.get_ready_time(actor.id)])
	for event in game.combat_log.events:
		state.append([event.time, event.actor_id, event.target_id, event.action_cost, event.data])
	return JSON.stringify(state)

func _test_generated_contracts() -> void:
	for seed_value in [1, 1234, 1235, 918273]:
		var rows: PackedStringArray = Generator.new(Settings).generate(seed_value)
		var game := GeneratedMapCombatGame.new()
		expect(game.configure(rows), "Generated seed supports default group")
		expect(game.actors.all().size() == 4, "Every default seed spawns three NPCs")
		var initial := _snapshot(game)
		var reachable := game._reachable_cells(rows, game.player_position)
		var cells := {}
		for actor in game.actors.all():
			expect(reachable.has(actor.position) and not cells.has(actor.position), "All spawn cells connected and unique")
			cells[actor.position] = true
		var one := GeneratedMapCombatGame.new()
		one.configure(rows, 1)
		expect(one.player_position == game.player_position and one.rat_position == game.rat_position, "Original spawns preserved")
		expect(one.combat_rng.state == game.combat_rng.state, "Extra placement consumes no combat RNG")
		game.player_wait()
		game.get_actor(&"rat_002").body.apply_damage(&"head", 4)
		game.damage_actor(&"rat_003", 30)
		var before := _snapshot(game)
		expect(not game.configure(PackedStringArray(["TTTT", "T#TT", "TT#T", "TTTT"])), "Disconnected layout rejected")
		expect(not game.configure(rows, 0), "Invalid NPC count rejected")
		expect(_snapshot(game) == before and game.terrain_rows == rows, "Invalid configuration fully atomic")
		game.reset()
		expect(_snapshot(game) == initial, "Direct reset restores every NPC, body, trait and clock")
		var fresh := GeneratedMapCombatGame.new()
		fresh.configure(rows)
		expect(_snapshot(fresh) == initial, "Repeated configure has deterministic state")
	var tiny := GeneratedMapCombatGame.new()
	expect(tiny.configure(PackedStringArray(["TTTT", "T#TT", "T#TT", "TTTT"])), "Two-cell connected map valid")
	expect(tiny.actors.all().size() == 2, "Insufficient space gracefully spawns only one NPC")
	tiny.reset()
	expect(tiny.actors.all().size() == 2, "Small-map count persists across reset")

func _test_replay() -> void:
	var reference: Array[String] = []
	for run in range(2):
		var game := _open_game()
		for turn in range(40):
			if not game.game_over:
				game.player_wait()
			if run == 0:
				reference.append(_snapshot(game))
			else:
				expect(_snapshot(game) == reference[turn], "Multi-NPC replay deterministic after each input")
			var occupied := {}
			for actor in game.actors.all():
				if actor.is_alive():
					expect(not occupied.has(actor.position), "Simulation never overlaps live actors")
					occupied[actor.position] = true
			expect(game.simulation_error.is_empty(), "Playable multi-NPC simulation never stalls")

func _test_scene() -> void:
	var scene: Node = load("res://time_cost/generated_map_combat_playground.tscn").instantiate()
	root.add_child(scene)
	await process_frame
	expect(scene.game.actors.all().size() == 4, "Actual default scene has player and three rats")
	for label in ["Rat 1", "Rat 2", "Rat 3"]:
		expect(scene.status_label.text.contains(label) and scene.combat_panel.body_status.text.contains(label), "UI distinguishes every NPC and its HP/body state")
	var input := InputEventKey.new()
	input.keycode = KEY_ENTER
	input.pressed = true
	scene._unhandled_input(input)
	var moved := {}
	for event in scene.game.combat_log.events:
		if event.type == &"move":
			moved[event.actor_id] = true
	expect(moved.size() == 3, "Real scene wait makes all three NPCs move independently")
	# Controlled placement through the real scene/input path verifies presentation
	# after attacks, retreat and death without relying on manual keyboard timing.
	scene.game.configure(PackedStringArray(OPEN_MAP))
	scene.generated_map = scene.game.terrain_rows
	_surround(scene.game)
	_guarantee_hits(scene.game)
	scene._unhandled_input(input)
	expect(scene.game.player_hp == 35, "Real scene input executes all three attacks")
	scene.game.get_actor(&"rat_002").hp = 10
	scene._unhandled_input(input)
	var retreated := false
	for event in scene.game.combat_log.events:
		if event.actor_id == &"rat_002" and event.data.get("visible_cue") == &"retreat":
			retreated = true
	expect(retreated and scene.log_label.text.contains("Rat 2 recoils"), "Real scene presents that NPC's retreat")
	scene.game.get_actor(&"rat_002").position = Vector2i(4, 3)
	scene.game.get_actor(&"rat_002").hp = 5
	scene.game.get_actor(&"rat").ai_policy = &"wait"
	scene.game.get_actor(&"rat_003").ai_policy = &"wait"
	input.keycode = KEY_KP_6
	scene._unhandled_input(input)
	expect(scene.game.get_actor(&"rat_002").hp == 0 and scene.log_label.text.contains("Rat 2 falls"), "Real scene bump kills and names the selected NPC")
	scene._refresh()
	expect(scene.status_label.text.contains("Rat 2 HP 0/30 (dead)"), "Dead NPC visible in status")
	var scroll: Control = scene.get_node("CanvasLayer/LogScroll")
	expect(not scene.combat_panel.get_global_rect().intersects(scroll.get_global_rect()), "Four actor panel does not overlap log")
	scene.queue_free()
	await process_frame
