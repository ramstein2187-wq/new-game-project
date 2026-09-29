extends SceneTree

var failures := 0


func expect(condition: bool, description: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + description)


func _init() -> void:
	_test_damage_dice_and_ability_modifier()
	_test_weapon_catalog_and_shared_time()
	_test_finesse_and_proficiency()
	_test_capability_requirements()
	_test_armor_catalog_and_coverage()
	_test_monster_catalog()
	_test_rng_order()
	_test_production_matchups()
	if failures == 0:
		print("PASS: M024 combat data foundation, prototype content and production simulation")
	quit(1 if failures else 0)


func _test_damage_dice_and_ability_modifier() -> void:
	for dice: DamageDice in [DamageDice.create(1, 4), DamageDice.create(1, 8), DamageDice.create(2, 6)]:
		var first := RandomNumberGenerator.new()
		first.seed = 24024
		var second := RandomNumberGenerator.new()
		second.seed = 24024
		var first_rolls: Array[int] = dice.roll(first)
		var second_rolls: Array[int] = dice.roll(second)
		expect(first_rolls == second_rolls and first_rolls.size() == dice.dice_count, "%s is deterministic for a fixed seed" % dice.notation())
		for roll in first_rolls:
			expect(roll >= 1 and roll <= dice.dice_size, "%s stays within die bounds" % dice.notation())
	expect(AbilityScores.modifier(16) == 3, "STR 16 gives +3")
	expect(CombatRules.damage_total([5], AbilityScores.modifier(16)) == 8, "A d8 roll of 5 plus STR 16 modifier produces raw damage 8")


func _test_weapon_catalog_and_shared_time() -> void:
	var weapons := CombatContentCatalog.all_weapons()
	expect(weapons.size() == 5, "Five prototype weapons exist")
	for id in [&"hunting_knife", &"handaxe", &"longsword", &"warhammer", &"maul"]:
		var definition := ActorDefinition.human_default()
		definition.equipped_weapon = CombatContentCatalog.weapon(id)
		var actor := Actor.new(StringName("tester_" + String(id)), definition, Vector2i.ZERO)
		var game := TimeCostGame.new()
		expect(actor.attack.is_valid() and AttackAction.new(&"rat").get_cost(game, &"player") == 1000, "%s normal attack costs 1000" % id)


func _test_finesse_and_proficiency() -> void:
	var definition := ActorDefinition.human_default()
	definition.equipped_weapon = CombatContentCatalog.weapon(&"hunting_knife")
	definition.initial_scores = {&"STR": 12, &"DEX": 16}
	definition.proficiency_bonus = 7
	var target := ActorDefinition.rat_common()
	target.initial_scores = {&"DEX": -100}
	var game := CombatSimulationGame.new()
	game.configure_matchup(definition, target, Vector2i(7, 3), Vector2i(8, 3))
	game.combat_seed = 12
	game.reset()
	for part: Dictionary in game.get_actor(&"rat").body.parts.values():
		part.armor = -1
	var result := game.resolve_attack(&"player", &"rat")
	expect(result.damage_ability == &"DEX" and result.damage_ability_modifier == 3, "Finesse chooses the higher STR/DEX modifier")
	expect(result.proficiency == 7 and result.raw_damage == CombatRules.damage_total(result.damage_rolls, 3), "Proficiency affects hit data but is absent from damage")


func _test_capability_requirements() -> void:
	var one_hand := ActorDefinition.human_default()
	one_hand.equipped_weapon = CombatContentCatalog.weapon(&"longsword")
	var swordsman := Actor.new(&"swordsman", one_hand, Vector2i.ZERO)
	swordsman.body.apply_damage(&"right_arm", 100)
	expect(swordsman.body.attack_efficiency(swordsman.attack.required_capability, swordsman.attack.required_capability_count) == 1.0, "Longsword falls back to the healthy arm")

	var two_hand := ActorDefinition.human_default()
	two_hand.equipped_weapon = CombatContentCatalog.weapon(&"maul")
	var mauler := Actor.new(&"mauler", two_hand, Vector2i.ZERO)
	expect(mauler.body.attack_efficiency(mauler.attack.required_capability, mauler.attack.required_capability_count) == 1.0, "Maul works with two healthy manipulation limbs")
	mauler.body.apply_damage(&"right_arm", 100)
	expect(mauler.body.attack_efficiency(mauler.attack.required_capability, mauler.attack.required_capability_count) == 0.0, "Maul fails after one manipulation limb is disabled")

	var dog := Actor.new(&"dog", CombatContentCatalog.actor(&"feral_dog"), Vector2i.ZERO)
	var crab := Actor.new(&"crab", CombatContentCatalog.actor(&"giant_crab"), Vector2i.ZERO)
	expect(dog.body.functional_count(&"weapon_manipulation") == 0 and dog.body.attack_efficiency(&"bite") > 0, "Bite works without weapon manipulation")
	expect(crab.body.functional_count(&"weapon_manipulation") == 0 and crab.body.functional_count(&"claw") == 2, "Claw uses its own redundant capability")
	crab.body.apply_damage(&"left_claw", 100)
	expect(crab.body.attack_efficiency(&"claw") > 0, "One healthy claw preserves the attack")
	crab.body.apply_damage(&"right_claw", 100)
	expect(crab.body.attack_efficiency(&"claw") == 0, "Both disabled claws remove the attack")


func _test_armor_catalog_and_coverage() -> void:
	var armor := CombatContentCatalog.all_armor()
	expect(armor.size() == 5, "Five prototype armor definitions exist")
	var definition := ActorDefinition.human_default()
	definition.equipped_armor.clear()
	definition.equipped_armor.append(CombatContentCatalog.armor(&"iron_helmet"))
	definition.equipped_armor.append(CombatContentCatalog.armor(&"leather_vest"))
	var actor := Actor.new(&"armored", definition, Vector2i.ZERO)
	expect(actor.body.parts.head.armor == 60 and actor.body.parts.head.armor_id == &"iron_helmet", "Iron Helmet covers Head")
	expect(actor.body.parts.torso.armor == 30 and actor.body.parts.torso.armor_id == &"leather_vest", "Leather Vest covers Torso")
	expect(actor.body.parts.left_arm.armor == -1 and actor.body.parts.right_arm.armor == -1, "Helmet and vest do not cover Arms")
	var full := CombatRules.armor_result(100, 20, 0, 7, &"Cut")
	var partial := CombatRules.armor_result(100, 20, 50, 7, &"Cut")
	var bypass := CombatRules.armor_result(100, 20, 90, 7, &"Cut")
	expect(full.damage == 0 and full.armor_result == &"full", "Full armor result deals zero damage")
	expect(partial.damage == 4 and partial.damage_type == &"Blunt", "Partial armor result halves upward and converts Cut to Blunt")
	expect(bypass.damage == 7 and bypass.damage_type == &"Cut", "Bypass preserves raw damage and type")


func _test_monster_catalog() -> void:
	var monsters := CombatContentCatalog.all_hostiles()
	expect(monsters.size() == 10, "Ten new hostile definitions exist")
	for id in CombatContentCatalog.HOSTILE_IDS:
		var definition: ActorDefinition = monsters[id]
		expect(definition.is_valid(), "%s ActorDefinition is valid" % id)
		var actor := Actor.new(id, definition, Vector2i.ZERO)
		expect(actor.body.parts.size() > 0 and actor.attack.is_valid(), "%s can be instantiated" % id)


func _test_rng_order() -> void:
	var game := TimeCostGame.new()
	game.combat_seed = 9024
	game.reset()
	game.get_actor(&"player").definition.proficiency_bonus = 100
	for part: Dictionary in game.get_actor(&"rat").body.parts.values():
		part.weight = 1 if part.id == &"torso" else 0
	game.get_actor(&"rat").body.parts.torso.armor = 230
	var mirror := RandomNumberGenerator.new()
	mirror.state = game.combat_rng.state
	var expected_d20 := mirror.randi_range(1, 20)
	mirror.randf()
	var expected_damage := mirror.randi_range(1, 8)
	var expected_armor_roll := mirror.randf() * 100.0
	var result := game.resolve_attack(&"player", &"rat")
	expect(result.d20 == expected_d20 and result.damage_rolls == [expected_damage], "Hit location precedes damage dice in combat RNG order")
	expect(result.armor_result == &"full" and result.raw_damage > 0 and result.final_damage == 0, "Full Block still retains the consumed raw damage roll")
	expect(is_equal_approx(result.armor_roll, expected_armor_roll) and game.combat_rng.state == mirror.state, "Damage dice precede the armor roll")


func _test_production_matchups() -> void:
	var config := {"run_count": 2, "base_seed": 2400, "max_actions": 300, "max_world_time": 300000}
	var runner := CombatBatchRunner.new()
	for pair in [
		[&"feral_dog", &"wolf"],
		[&"raider", &"giant_beetle"],
		[&"raider", &"armored_raider"],
	]:
		var result := runner.run_matchup(CombatContentCatalog.actor(pair[0]), CombatContentCatalog.actor(pair[1]), config)
		expect(not result.has("configuration_error") and result.simulation_errors == 0, "%s vs %s uses production run_matchup without simulation errors" % pair)
		expect(result.combatant_a_combat.attack_attempts + result.combatant_b_combat.attack_attempts > 0, "%s vs %s actors actually attack" % pair)
		expect(result.combatant_a_combat.damage_dice_rolls + result.combatant_b_combat.damage_dice_rolls > 0, "%s vs %s production hits consume damage dice" % pair)
