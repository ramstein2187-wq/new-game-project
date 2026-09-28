extends SceneTree

var failures := 0
var checks := 0


func expect(condition: bool, description: String) -> void:
	checks += 1
	if not condition:
		failures += 1
		push_error("FAIL: " + description)


func _init() -> void:
	_run_case("A healthy aggressive attack", _test_attack)
	_run_case("B wounded cautious retreat", _test_retreat)
	_run_case("C blocked retreat", _test_blocked_retreat)
	_run_case("D hold instead of blind approach", _test_hold)
	_run_case("E aggression changes next activation", _test_personality)
	_run_case("F production candidate trace and player filtering", _test_trace)
	_run_case("G illegal candidates, corners, occupancy and costs", _test_legality)
	_run_case("H bounded hesitation and controlled termination", _test_termination)
	_run_case("I reposition without inferred factions", _test_reposition)
	_run_case("J information boundary and read-only selection", _test_information)
	_run_case("K doors, disabled body and missing target fallback", _test_fallback_and_door)
	_run_case("L independent NPCs, reset and deterministic replay", _test_multiple_npcs)
	if failures == 0:
		print("PASS: basic_melee_v2 all 12 scenarios (%d assertions)" % checks)
	quit(1 if failures else 0)


func _run_case(label: String, test: Callable) -> void:
	var before := failures
	test.call()
	print("%s: %s" % ["PASS" if failures == before else "FAIL", label])


func _game(npc_cell := Vector2i(5, 3), target_cell := Vector2i(4, 3)) -> TimeCostGame:
	var game := TimeCostGame.new()
	game._walls.clear()
	game.door_open = true
	game.rat_position = npc_cell
	game.player_position = target_cell
	game.get_actor(&"rat").ai_policy = &"basic_melee"
	return game


func _choice(game: TimeCostGame) -> TacticalChoice:
	return BasicMeleeTactics.choose(game, &"rat", game.get_actor(&"rat").target_id)


func _wound(game: TimeCostGame) -> void:
	game.rat_hp = 9
	game.rat_aggression = 10
	game.rat_fear_bonus = 10


func _test_attack() -> void:
	var game := _game()
	game.rat_aggression = 180
	var chosen := _choice(game)
	expect(chosen.action is AttackAction and chosen.goal == &"fight_target", "Healthy aggression attacks adjacent target")
	expect(chosen.reasons.has(&"target_adjacent") and chosen.factors.has(&"self_healthy"), "Attack states proximity and own health")
	expect(chosen.action.ai_candidates.size() > 1, "Attack competes with other legal candidates")
	var sum := 0
	for factor in chosen.factors.values():
		sum += int(factor)
	expect(sum == chosen.score, "Utility equals sum of trace factors")


func _test_retreat() -> void:
	var game := _game()
	_wound(game)
	var chosen := _choice(game)
	expect(chosen.goal == &"survive" and chosen.action is MoveAction, "Wounded cautious actor retreats")
	expect(chosen.action.can_execute(game, &"rat"), "Retreat is executable")
	if chosen.action is MoveAction:
		expect(MeleeContext.tile_distance(game.rat_position + chosen.action.direction, game.player_position) > 1, "Retreat increases eight-way distance")
	expect(chosen.factors[&"fear"] > 0 and chosen.factors[&"self_condition"] > 0, "Retreat explains fear and injury")


func _test_blocked_retreat() -> void:
	var game := _game()
	_wound(game)
	for direction in game.MOVE_DIRECTIONS:
		var cell := game.rat_position + direction
		if cell != game.player_position:
			game._walls[cell] = true
	var chosen := _choice(game)
	expect(chosen.action is AttackAction and chosen.action.can_execute(game, &"rat"), "Cornered actor fights instead of invalid escape")
	for candidate in chosen.action.ai_candidates:
		expect(candidate.goal != &"survive", "No blocked retreat enters planner trace")


func _test_hold() -> void:
	var game := _game(Vector2i(8, 3), Vector2i(2, 3))
	game.rat_aggression = 0
	var chosen := _choice(game)
	expect(chosen.action is WaitAction and chosen.goal == &"hold_position", "Low aggression holds despite open route")
	expect(chosen.reasons.has(&"await_target"), "Hold has an intentional reason")
	var goals: Array = chosen.action.ai_candidates.map(func(item: Dictionary): return item.goal)
	expect(goals.has(&"approach_target") and goals.has(&"wait"), "Hold competes with approach and distinct fallback Wait")


func _test_personality() -> void:
	var game := _game(Vector2i(8, 3), Vector2i(2, 3))
	game.rat_aggression = 0
	expect(game.player_wait(), "First activation executes")
	expect(game.rat_position == Vector2i(8, 3), "Low aggression held position")
	game.rat_aggression = 180
	var chosen := _choice(game)
	expect(chosen.goal == &"approach_target", "Changing only aggression changes next decision")
	expect(game.player_wait() and game.rat_position != Vector2i(8, 3), "Next activation really approaches")
	game = _game()
	_wound(game)
	game.rat_aggression = 180
	expect(_choice(game).action is AttackAction, "Aggressive wounded actor accepts risk")
	game.rat_aggression = 10
	expect(_choice(game).goal == &"survive", "Same wounded state with low aggression retreats")


func _test_trace() -> void:
	var game := _game()
	_wound(game)
	expect(game.player_wait(), "Production turn executes retreat")
	var event: CombatEvent = game.combat_log.events[1]
	for key in ["ai_goal", "ai_score", "ai_factors", "ai_candidates"]:
		expect(event.data.has(key), "CombatEvent retains " + key)
	expect(event.data.get("ai_policy_revision") == &"basic_melee_v2", "Executed event identifies policy revision")
	expect(event.data.ai_goal == &"survive" and event.data.ai_candidates.size() >= 3, "Several candidates considered at retreat")
	expect(event.reason_codes.has(&"open_distance") and event.reason_codes.has(&"fear"), "Reasons survive production execution")
	var direction: Vector2i = event.data.to - event.data.from
	expect(event.action_cost == MoveAction.new(direction).get_cost(game, &"rat"), "Movement retains direction and body cost")
	var visible := game.get_recent_event_text()
	expect(visible.contains("recoils and retreats"), "Existing player retreat cue is reused")
	expect(not visible.contains("ai_score") and not visible.contains("self_condition"), "Private factors stay out of player text")
	expect(CombatLogFormatter.format_debug_event(event).contains("ai_score"), "Developer trace retains scores")


func _test_legality() -> void:
	var game := _game(Vector2i(6, 3), Vector2i(2, 3))
	game._walls[Vector2i(6, 2)] = true
	expect(game.register_actor(Actor.new(&"blocker", ActorDefinition.rat_common(), Vector2i(7, 3))), "Occupant registers")
	_wound(game)
	var context := MeleeContext.capture(game, &"rat", &"player")
	for step in context.steps:
		expect(step.direction != Vector2i.RIGHT, "Occupied tile excluded")
		expect(step.direction != Vector2i(1, -1) and step.direction != Vector2i(-1, -1), "Blocked corners excluded")
	for option in BasicMeleeTactics.candidates(context):
		expect(option.action.can_execute(game, &"rat"), "Generated candidate respects shared legality")
	var invalid := TacticalChoice.new(MoveAction.new(Vector2i.RIGHT), &"invalid", 9999)
	var zero := TacticalChoice.new(MoveAction.new(Vector2i.ZERO), &"invalid", 9999)
	var valid := TacticalChoice.new(WaitAction.new(), &"wait", 0)
	var options: Array[TacticalChoice] = [invalid, zero, valid]
	var chosen := TacticalPlanner.choose(game, &"rat", options)
	expect(chosen == valid and chosen.action.ai_candidates.size() == 1, "Planner excludes can_execute false even at high score")
	game.get_actor(&"rat").definition.wait_cost = 0
	expect(TacticalPlanner.choose(game, &"rat", [valid]) == null, "Nonpositive Action cost is rejected")
	game = _game()
	game.get_actor(&"rat").body.apply_damage(&"left_foreleg", 3)
	var diagonal := MoveAction.new(Vector2i(1, 1))
	expect(diagonal.get_cost(game, &"rat") == 1200, "Injured diagonal cost remains shared 1050 / 0.875")


func _fixed_damage(game: TimeCostGame) -> void:
	for actor in game.actors.all():
		actor.definition.proficiency_bonus = 100
		actor.attack.damage_dice = DamageDice.create(5, 1)
		actor.attack.ability_rule = AttackDefinition.ABILITY_STR
		actor.abilities.scores[&"STR"] = 10
		for part: Dictionary in actor.body.parts.values():
			part.armor = -1
			part.weight = 1.0 if part.id == &"torso" else 0.0


func _test_termination() -> void:
	for cautious_wounded in [false, true]:
		var game := _game(Vector2i(7, 3), Vector2i(2, 3))
		game.rat_aggression = 0
		if cautious_wounded:
			_wound(game)
		_fixed_damage(game)
		game.player_hp = 15
		var cursor := 0
		var defensive := 0
		var attacks := 0
		var goals: Array[StringName] = []
		for activation in range(40):
			if game.game_over:
				break
			expect(game.player_wait(), "Controlled production step accepted")
			for index in range(cursor, game.combat_log.events.size()):
				var event: CombatEvent = game.combat_log.events[index]
				if event.actor_id != &"rat":
					continue
				var goal: StringName = event.data.get("ai_goal", &"")
				goals.append(goal)
				if event.type == &"attack":
					attacks += 1
					defensive = 0
				elif goal in [&"hold_position", &"survive", &"reposition"]:
					defensive += 1
					expect(defensive <= 2, "No unbounded defensive cycle between attacks")
			cursor = game.combat_log.events.size()
		expect(game.game_over and attacks == 3, "Cautious policy terminates controlled combat within 40 inputs")
		expect(game.simulation_error.is_empty(), "Termination uses production actions without errors")
		print("  controlled wounded=%s: %d NPC actions, goals=%s" % [cautious_wounded, goals.size(), goals])
	# Both sides cautious: neither can wait forever for the other to engage.
	var sim := CombatSimulationGame.new()
	var definition := CombatContentCatalog.actor(&"feral_dog")
	definition.aggression = 0
	sim.configure_matchup(definition, definition.duplicate(true))
	sim.reset()
	_fixed_damage(sim)
	for turn in range(60):
		if not sim.actor_is_alive(&"player") or not sim.actor_is_alive(&"rat"):
			break
		expect(sim.perform_action(&"player", sim.choose_ai_action(&"player")), "Both-cautious simulation progresses")
	expect(not sim.actor_is_alive(&"player") or not sim.actor_is_alive(&"rat"), "Both-cautious encounter terminates")


func _test_reposition() -> void:
	var game := _game(Vector2i(6, 3), Vector2i(3, 3))
	game.rat_aggression = 20
	expect(game.register_actor(Actor.new(&"crowd_a", ActorDefinition.rat_common(), Vector2i(6, 4))), "First crowd occupant")
	expect(game.register_actor(Actor.new(&"crowd_b", ActorDefinition.rat_common(), Vector2i(7, 4))), "Second crowd occupant")
	var context := MeleeContext.capture(game, &"rat", &"player")
	var chosen := _choice(game)
	expect(chosen.goal == &"reposition" and chosen.action is MoveAction, "Local crowd relief can beat direct approach")
	if chosen.action is MoveAction:
		var destination: Vector2i = game.rat_position + chosen.action.direction
		expect(MeleeContext.tile_distance(destination, game.player_position) == context.distance, "Reposition is lateral, not disguised approach")
		expect(chosen.factors.get(&"congestion_relief", 0) > 0, "Reposition explains reduced crowding")
	var signature := _signature(chosen)
	game.get_actor(&"crowd_a").target_id = &"rat"
	game.get_actor(&"crowd_b").target_id = &"player"
	expect(_signature(_choice(game)) == signature, "Other actors' targets are not interpreted as factions")


func _signature(choice: TacticalChoice) -> Array:
	return [choice.goal, choice.score, choice.reasons, choice.factors,
		choice.action.direction if choice.action is MoveAction else Vector2i.ZERO,
		choice.action.ai_candidates]


func _test_information() -> void:
	var game := _game()
	var npc := game.get_actor(&"rat")
	var target := game.get_actor(&"player")
	target.hp = 45
	var original := _signature(_choice(game))
	var rng_before := game.combat_rng.state
	var time_before := game.world_time
	for query in range(5):
		expect(_signature(_choice(game)) == original, "Repeated selection is deterministic")
	expect(npc.melee_caution_spent == 0 and game.combat_log.events.is_empty(), "Queries consume no hesitation or events")
	expect(game.combat_rng.state == rng_before and game.world_time == time_before, "Queries consume no RNG or time")
	target.hp = 40 # Same observed healthy category.
	target.abilities.scores[&"DEX"] = 100
	target.definition.proficiency_bonus = 200
	target.attack.damage_dice = DamageDice.create(20, 20)
	for part: Dictionary in target.body.parts.values():
		part.armor = 999
	game.combat_rng.seed = 999
	game.scheduler.advance_actor(&"player", 12345)
	expect(_signature(_choice(game)) == original, "Same category ignores exact HP, stats, armor, damage, RNG and ready times")
	target.hp = 10
	var vulnerable := _choice(game)
	expect(vulnerable.factors.get(&"target_vulnerable", 0) == 20, "Coarse critical target can change pressure")
	expect(MeleeContext.condition(10, 30) == &"critical" and MeleeContext.condition(20, 30) == &"wounded" and MeleeContext.condition(21, 30) == &"healthy", "Category boundaries are explicit")
	# Rejected execution cannot consume defensive budget.
	game = _game(Vector2i(8, 3), Vector2i(2, 3))
	game.rat_aggression = 0
	var hold := game.choose_ai_action(&"rat")
	expect(not game.perform_action(&"rat", hold), "Not-ready actor cannot execute")
	expect(game.get_actor(&"rat").melee_caution_spent == 0, "Rejected action does not consume hesitation")


func _test_fallback_and_door() -> void:
	var game := TimeCostGame.new()
	game.get_actor(&"rat").ai_policy = &"basic_melee"
	game.rat_position = Vector2i(6, 3)
	var door := _choice(game)
	expect(door.action is InteractAction and door.reasons.has(&"door_blocks_route"), "Closed door remains a pursuit candidate")
	expect(game.player_wait() and game.door_open, "Production action opens door")
	game = _game()
	for part: Dictionary in game.get_actor(&"rat").body.parts.values():
		game.get_actor(&"rat").body.apply_damage(part.id, part.maximum)
	var wait := _choice(game)
	expect(wait.goal == &"wait" and wait.action is WaitAction, "Fully disabled actor falls back to Wait, not Hold")
	expect(wait.reasons.has(&"attack_function_lost") and wait.reasons.has(&"locomotion_lost"), "Disabled fallback explains both capabilities")
	game = _game(Vector2i(8, 3), Vector2i(2, 3))
	for direction in game.MOVE_DIRECTIONS:
		game._walls[game.rat_position + direction] = true
	var blocked := _choice(game)
	expect(blocked.goal == &"wait" and blocked.reasons.has(&"route_blocked"), "No route or local move produces explained fallback")
	game = _game()
	for part: Dictionary in game.get_actor(&"rat").body.parts.values():
		if part.functions.has(&"locomotion"):
			game.get_actor(&"rat").body.apply_damage(part.id, part.maximum)
	expect(_choice(game).action is AttackAction, "Locomotion loss does not prevent a legal adjacent attack")
	game = _game()
	game.get_actor(&"rat").body.apply_damage(&"head", 100)
	expect(_choice(game).goal == &"survive", "Lost attack capability motivates legal retreat")
	game.get_actor(&"rat").target_id = &"missing"
	var missing := game.choose_ai_action(&"rat")
	expect(missing is WaitAction and missing.reason_codes.has(&"target_unavailable"), "Missing target uses traced fallback")
	game.get_actor(&"rat").target_id = &"rat"
	expect(_choice(game).goal == &"wait", "Self-target cannot trigger a fight or retreat")


func _test_multiple_npcs() -> void:
	var reference: Array[String] = []
	for run in range(2):
		var game := _game(Vector2i(6, 2), Vector2i(2, 3))
		game.rat_aggression = 0
		for index in range(2):
			var definition := CombatContentCatalog.actor(&"feral_dog")
			expect(game.register_actor(Actor.new(StringName("dog_%d" % index), definition, Vector2i(6, 3 + index))), "Independent hostile registers")
		_fixed_damage(game)
		for turn in range(30):
			if game.game_over:
				break
			expect(game.player_wait(), "Multiple v2 actors execute")
			var state: Array = [game.world_time, game.player_hp, str(game.combat_rng.state)]
			var occupied := {}
			for actor in game.actors.all():
				if actor.is_alive():
					expect(not occupied.has(actor.position), "Live actors never overlap")
					occupied[actor.position] = true
				state.append([actor.id, actor.hp, actor.position, actor.melee_caution_spent])
			if run == 0:
				reference.append(JSON.stringify(state))
			else:
				expect(turn < reference.size() and JSON.stringify(state) == reference[turn], "Multi-NPC replay remains deterministic")
			expect(game.simulation_error.is_empty(), "No multi-NPC execution failure")
		expect(game.game_over, "Controlled three-NPC combat terminates")
		game.get_actor(&"rat").melee_caution_spent = 2
		expect(game.get_actor(&"dog_0").melee_caution_spent != 2, "Hesitation belongs to each Actor")
		game.reset()
		expect(game.get_actor(&"rat").melee_caution_spent == 0 and game.get_actor(&"rat").melee_caution_target == &"", "Reset recreates clean tactical state")
