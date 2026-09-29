extends SceneTree

var failures := 0

func expect(condition: bool, label: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + label)

func _init() -> void:
	call_deferred("_run")

func _run() -> void:
	_test_types_profiles()
	_test_hands()
	_test_natural_attacks()
	_test_actions_and_isolation()
	_test_production_armor_and_rng()
	await _test_playground_controls()
	if failures == 0:
		print("PASS: M027 physical profiles, weapon actions, hands, RNG and playground controls")
	quit(1 if failures else 0)

func _game(weapon_id: StringName = &"longsword") -> TimeCostGame:
	var game := TimeCostGame.new()
	game.player_position = Vector2i(7, 3)
	game.get_actor(&"player").set_weapon(CombatContentCatalog.weapon(weapon_id))
	# Keep response actions out of focused execution assertions.
	game.get_actor(&"rat").ai_policy = &"wait"
	game.get_actor(&"player").definition.proficiency_bonus = 100
	return game

func _test_types_profiles() -> void:
	var attack := CombatContentCatalog.natural_attack(&"rat_bite")
	for type in [AttackDefinition.DAMAGE_CUT, AttackDefinition.DAMAGE_PUNCTURE, AttackDefinition.DAMAGE_BLUNT]:
		attack.damage_type = type
		expect(attack.is_valid(), "%s is valid" % type)
		var full := CombatRules.armor_result(100, 20, 0, 7, type)
		var partial := CombatRules.armor_result(100, 20, 40, 7, type)
		var bypass := CombatRules.armor_result(100, 20, 80, 7, type)
		expect(full.damage == 0, "%s full block" % type)
		expect(partial.damage == 4 and partial.damage_type == AttackDefinition.DAMAGE_BLUNT, "%s half rounds up to Blunt" % type)
		expect(bypass.damage == 7 and bypass.damage_type == type, "%s bypass preserves type/damage" % type)
	attack.damage_type = "Sharp"
	expect(not attack.is_valid(), "Old Sharp authoring rejected")
	var types := [AttackDefinition.DAMAGE_CUT, AttackDefinition.DAMAGE_PUNCTURE, AttackDefinition.DAMAGE_BLUNT]
	var profiles := [ArmorDefinition.SOFT, ArmorDefinition.MAIL, ArmorDefinition.RIGID]
	var multipliers := [[1.0, 0.8, 1.2], [1.2, 1.0, 0.8], [1.2, 1.2, 0.8]]
	expect(ArmorProfileCatalog.is_valid(), "Registered armor profiles are valid")
	for row in range(3):
		for column in range(3):
			var result := CombatRules.armor_result(50, 30, 99, 7, types[column], profiles[row])
			var expected_adjusted := roundi(50 * multipliers[row][column])
			expect(is_equal_approx(CombatRules.armor_profile_multiplier(profiles[row], types[column]), multipliers[row][column]), "Central profile table %d/%d" % [row, column])
			expect(result.base_armor == 50 and is_equal_approx(result.profile_multiplier, multipliers[row][column]) and result.profile_adjusted_armor == expected_adjusted and result.effective == maxi(0, expected_adjusted - 30), "Base x multiplier - penetration")
	expect(is_equal_approx(CombatRules.armor_profile_multiplier(ArmorDefinition.MAIL, &"Heat"), 1.0), "Undefined future damage type defaults to neutral multiplier")
	expect(CombatRules.armor_result(5, 80, 0, 3, AttackDefinition.DAMAGE_PUNCTURE, ArmorDefinition.SOFT).effective == 0, "Lower effective clamp")
	expect(CombatRules.armor_result(250, 0, 99, 3, AttackDefinition.DAMAGE_CUT, ArmorDefinition.RIGID).damage == 0, "Upper 200 effective clamp")
	for id in [&"hunting_knife", &"handaxe", &"longsword", &"warhammer", &"maul"]:
		var weapon := CombatContentCatalog.weapon(id)
		expect(weapon.is_valid() and weapon.required_hands == (2 if id == &"maul" else 1), "Current human weapon hands")
		weapon.required_hands = 0
		expect(not weapon.is_valid(), "Zero hands invalid")
		weapon.required_hands = -1
		expect(not weapon.is_valid(), "Negative hands invalid")
	var maul := CombatContentCatalog.weapon(&"maul")
	maul.attack_definition.required_capability_count = 1
	expect(not maul.is_valid(), "Mismatching authoring count rejected")
	maul.attack_definition.required_capability_count = 2
	maul.attack_definition.required_capability = &"bite"
	expect(not maul.is_valid(), "Weapon cannot author a natural capability")
	maul.attack_definition.required_capability = &"weapon_manipulation"
	maul.required_hands = 3
	maul.attack_definition.required_capability_count = 3
	expect(maul.is_valid(), "Engine permits future positive counts beyond two")
	var invalid := CombatContentCatalog.weapon(&"longsword")
	invalid.actions[0].cost_multiplier = 0
	expect(not invalid.is_valid(), "Zero multiplier invalid")
	invalid.actions[0].cost_multiplier = NAN
	expect(not invalid.is_valid(), "Nonfinite multiplier invalid")
	invalid.actions[0].cost_multiplier = 1.25
	invalid.actions.append(invalid.actions[0])
	expect(not invalid.is_valid(), "Duplicate weapon action IDs invalid")
	var armor := CombatContentCatalog.armor(&"chain_shirt")
	armor.profile = "unknown"
	expect(not armor.is_valid(), "Unknown profile invalid")

func _test_hands() -> void:
	for weapon_id in [&"hunting_knife", &"handaxe", &"longsword", &"warhammer", &"maul"]:
		var game := _game(weapon_id)
		var actor := game.get_actor(&"player")
		var special_id: StringName = actor.equipped_weapon.actions[0].id if not actor.equipped_weapon.actions.is_empty() else &""
		var basic := AttackAction.new(&"rat")
		var special := AttackAction.new(&"rat", special_id)
		expect(basic.can_execute(game, actor.id) and special.can_execute(game, actor.id), "%s both healthy" % weapon_id)
		actor.body.apply_damage(&"left_arm", 10)
		var expected := 0.5 if weapon_id == &"maul" else 1.0
		expect(game.attack_efficiency(actor.id) == expected and special.can_execute(game, actor.id), "%s damaged arm efficiency" % weapon_id)
		if weapon_id == &"maul":
			var result := game.resolve_attack(actor.id, &"rat", special_id)
			expect(result.situation == -2 and result.attack_efficiency == 0.5 and result.attack_parts.size() == 2, "Both maul limbs considered by shared injury rule")
		actor.body.apply_damage(&"left_arm", 100)
		var one_hand: bool = weapon_id != &"maul"
		expect(basic.can_execute(game, actor.id) == one_hand and special.can_execute(game, actor.id) == one_hand, "%s one disabled" % weapon_id)
		if not one_hand:
			var before := game.combat_rng.state
			var events := game.combat_log.events.size()
			expect(not game.perform_action(actor.id, special) and not game.perform_action(actor.id, basic), "Maul basic and overhead rejected")
			expect(game.world_time == 0 and game.combat_rng.state == before and game.combat_log.events.size() == events, "Unavailable consumes no time, RNG or event")
			expect(actor.weapon_id == &"maul" and actor.equipped_weapon != null, "Injury retains equipped maul")
			expect(game.message.contains("Maul") and game.get_recent_debug_text().contains("requires 2 functional weapon_manipulation limbs; 1 available"), "Readable and debug rejection reasons")
			# A runtime drift in the old attack snapshot cannot bypass weapon hands.
			actor.attack.required_capability_count = 1
			expect(not game.can_attack(actor.id, special_id), "Weapon hands authoritative at use time")
		actor.body.apply_damage(&"right_arm", 100)
		expect(not basic.can_execute(game, actor.id) and not special.can_execute(game, actor.id), "%s both disabled" % weapon_id)
		expect(actor.available_weapon_actions().is_empty(), "No usable specials when both arms disabled")
	# A synthetic third manipulator proves there is no hidden humanoid upper cap.
	var definition := ActorDefinition.human_default()
	var weapon := CombatContentCatalog.weapon(&"maul")
	weapon.required_hands = 3
	weapon.attack_definition.required_capability_count = 3
	definition.equipped_weapon = weapon
	var part: Dictionary = definition.combat_species.body_template.parts[2].duplicate(true)
	part.id = &"third_manipulator"
	definition.combat_species.body_template.parts.append(part)
	var actor := Actor.new(&"multi", definition, Vector2i.ZERO)
	expect(actor.body.attack_efficiency(actor.attack_capability(), actor.attack_capability_count()) == 1, "Three functional manipulators can use a three-hand weapon")

func _test_natural_attacks() -> void:
	for id in [&"feral_dog", &"boar", &"giant_crab"]:
		var game := CombatSimulationGame.new()
		var definition := CombatContentCatalog.actor(id)
		game.configure_matchup(definition, ActorDefinition.rat_common(), Vector2i(7, 3), Vector2i(8, 3))
		game.reset()
		var actor := game.get_actor(&"player")
		expect(actor.equipped_weapon == null and actor.body.functional_count(&"weapon_manipulation") == 0 and game.can_attack(actor.id), "%s uses natural capability without hands" % id)
		expect(actor.attack_capability() == definition.attack_definition.required_capability and actor.attack_capability_count() == definition.attack_definition.required_capability_count, "Natural requirements remain AttackDefinition-owned")
		for part in actor.body.functional_parts(actor.attack_capability()):
			actor.body.apply_damage(part, 100)
		expect(not game.can_attack(actor.id), "Natural capability damage disables attack")

func _test_actions_and_isolation() -> void:
	var cases := [[&"hunting_knife", &"quick_stab", 750, AttackDefinition.DAMAGE_PUNCTURE, 20.0, -1],
		[&"longsword", &"thrust", 1250, AttackDefinition.DAMAGE_PUNCTURE, 40.0, 0],
		[&"warhammer", &"crushing_blow", 1500, AttackDefinition.DAMAGE_BLUNT, 60.0, 0],
		[&"maul", &"overhead_smash", 1750, AttackDefinition.DAMAGE_BLUNT, 70.0, 0]]
	for sample in cases:
		var game := _game(sample[0])
		var actor := game.get_actor(&"player")
		var base_type := actor.attack.damage_type
		var base_pen := actor.attack.penetration
		var action := AttackAction.new(&"rat", sample[1])
		expect(AttackAction.new(&"rat").get_cost(game, actor.id) == 1000, "Shared basic cost")
		expect(action.get_cost(game, actor.id) == sample[2] and game.perform_action(actor.id, action), "Special cost and common execution")
		var event: CombatEvent = game.combat_log.events[0]
		expect(event.action_id == sample[1] and event.action_cost == sample[2] and game.player_next_ready_time == sample[2], "Scheduler charges action multiplier")
		expect(event.data.original_damage_type == sample[3] and event.data.penetration == sample[4], "Special type and penetration applied")
		expect(event.data.raw_damage == CombatRules.damage_total(event.data.damage_rolls, event.data.damage_ability_modifier + int(sample[5])), "Sparse damage modifier applied once")
		expect(event.data.action_cost == sample[2] and event.data.weapon_id == sample[0], "Event retains action identity and cost")
		expect(actor.attack.damage_type == base_type and actor.attack.penetration == base_pen, "Execution does not mutate base attack")
		expect(CombatLogFormatter.format_player_event(event).contains(event.data.attack_name), "Player log names special action")
		expect(CombatLogFormatter.format_debug_event(event).contains("original_damage_type"), "Debug retains type trace")
		event.data.armor_result = &"full"
		expect(CombatLogFormatter.format_player_event(event).contains(event.data.attack_name), "Full block also names special action")
	var game := _game(&"handaxe")
	expect(game.get_actor(&"player").available_weapon_actions().is_empty(), "Handaxe basic only")
	var state := game.combat_rng.state
	expect(not game.perform_action(&"player", AttackAction.new(&"rat", &"thrust")), "Other weapon action rejected")
	expect(game.world_time == 0 and game.combat_rng.state == state and game.combat_log.events.is_empty(), "Invalid action is free")
	var definition := ActorDefinition.human_default()
	var first := Actor.new(&"first", definition, Vector2i.ZERO)
	var second := Actor.new(&"second", definition, Vector2i.ZERO)
	first.equipped_weapon.actions[0].penetration_modifier = 999
	first.attack.damage_dice.dice_count = 9
	first.body.apply_damage(&"left_arm", 100)
	expect(second.equipped_weapon.actions[0].penetration_modifier == 10 and definition.equipped_weapon.actions[0].penetration_modifier == 10, "Actor action resources isolated from sibling and prototype")
	expect(second.attack.damage_dice.dice_count == 1 and second.body.state(&"left_arm") == &"healthy", "Actor attack dice/body isolated")
	# NPCs can explicitly execute the same special; AI selection is deferred.
	game = _game()
	game.get_actor(&"rat").set_weapon(CombatContentCatalog.weapon(&"hunting_knife"))
	# Rat body deliberately has no manipulators, so use a human NPC definition.
	var npc := Actor.new(&"human_npc", ActorDefinition.human_default(), Vector2i(7, 2))
	expect(game.register_actor(npc), "Register arbitrary Actor")
	game.scheduler.advance_actor(&"player", 2000)
	expect(game.perform_action(npc.id, AttackAction.new(&"player", &"thrust")), "Common special execution works for NPC")

func _test_production_armor_and_rng() -> void:
	for armor_id in [&"chain_shirt", &"leather_vest", &"scrap_plate"]:
		var game := _game()
		var target := game.get_actor(&"rat")
		target.body.equip_armor(CombatContentCatalog.armor(armor_id))
		for part: Dictionary in target.body.parts.values():
			part.weight = 1 if part.id == &"torso" else 0
		var mirror := RandomNumberGenerator.new()
		mirror.state = game.combat_rng.state
		var expected_d20 := mirror.randi_range(1, 20)
		mirror.randf()
		var expected_die := mirror.randi_range(1, 8)
		var expected_armor := mirror.randf() * 100.0
		var result := game.resolve_attack(&"player", &"rat", &"thrust")
		expect(result.d20 == expected_d20 and result.damage_rolls == [expected_die] and is_equal_approx(result.armor_roll, expected_armor) and mirror.state == game.combat_rng.state, "Profile/action preserves D20/location/dice/armor RNG order")
		expect(result.effective_armor == clampf(roundi(result.base_armor * result.profile_multiplier) - 40, 0, 200), "Production profile penetration formula")
		for part: Dictionary in target.body.parts.values():
			part.weight = 1 if part.id == &"head" else 0
		result = game.resolve_attack(&"player", &"rat")
		expect(result.armor_result == &"unarmored" and not result.has("armor_roll") and result.profile_multiplier == 1.0, "No coverage means neutral profile and no armor RNG")
	var beetle := Actor.new(&"beetle", CombatContentCatalog.actor(&"giant_beetle"), Vector2i.ZERO)
	expect(beetle.body.parts.thorax.armor == 60 and beetle.body.parts.thorax.armor_profile == ArmorDefinition.RIGID, "Natural armor carries rigid profile")
	var game := _game()
	game.get_actor(&"rat").body.apply_natural_armor(60, ArmorDefinition.RIGID)
	var result := game.resolve_attack(&"player", &"rat")
	expect(result.armor_profile == ArmorDefinition.RIGID and is_equal_approx(result.profile_multiplier, 1.2) and result.effective_armor == 42, "Natural profile participates in production resolution")
	game = _game()
	game.get_actor(&"rat").abilities.scores[&"DEX"] = 1000
	var mirror := RandomNumberGenerator.new()
	mirror.state = game.combat_rng.state
	mirror.randi_range(1, 20)
	result = game.resolve_attack(&"player", &"rat", &"thrust")
	expect(not result.hit and game.combat_rng.state == mirror.state, "Miss consumes D20 only")

func _test_playground_controls() -> void:
	for path in ["res://time_cost/time_cost_test_room.tscn", "res://time_cost/generated_map_combat_playground.tscn"]:
		var scene: Node = load(path).instantiate()
		root.add_child(scene)
		await process_frame
		await process_frame
		var panel: CombatDebugPanel = scene.combat_panel
		var game: TimeCostGame = scene.game
		for sample in [[&"hunting_knife", &"quick_stab", 750], [&"longsword", &"thrust", 1250], [&"warhammer", &"crushing_blow", 1500]]:
			game.reset()
			game.get_actor(&"player").definition.proficiency_bonus = 100
			for actor in game.actors.all():
				if actor.id != &"player":
					actor.ai_policy = &"wait"
			var npc: Actor = game.actors.all()[1]
			# Place adjacent in a clear local patch, using the game geometry.
			for direction in TimeCostGame.MOVE_DIRECTIONS:
				if game.can_step(game.player_position, direction):
					npc.position = game.player_position + direction
					break
			panel.weapon_selector.item_selected.emit(panel.weapon_ids.find(sample[0]))
			var button: Button = panel.find_child(String(sample[1]), true, false)
			expect(button != null and button.focus_mode == Control.FOCUS_NONE, "Playground exposes special without capturing keys")
			button.pressed.emit()
			expect(game.last_action_cost == sample[2] and game.combat_log.events[0].data.weapon_action_id == sample[1], "Actual UI signal executes special through scheduler")
		await process_frame
		await process_frame
		var scroll: Control = scene.get_node("CanvasLayer/LogScroll")
		expect(not panel.get_global_rect().intersects(scroll.get_global_rect()), "Weapon controls preserve panel/log bounds")
		scene.queue_free()
		await process_frame
