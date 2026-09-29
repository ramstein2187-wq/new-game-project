extends SceneTree

var failures := 0
var checks := 0


func expect(condition: bool, description: String) -> void:
	checks += 1
	if not condition:
		failures += 1
		push_error("FAIL: " + description)


func _init() -> void:
	_test_profile_driven_weapon_actions()
	_test_armor_coverage_observation()
	_test_tempo_and_commitment()
	_test_conservative_retreat()
	_test_progress_and_survival_override()
	_test_information_boundary()
	_test_data_driven_action_extension()
	_test_local_context_regressions()
	_test_production_trace()
	if failures == 0:
		print("PASS: M028 extensible melee AI (%d assertions)" % checks)
	quit(1 if failures else 0)


func _fighter_game(weapon_id: StringName, fighter_cell := Vector2i(3, 3),
		target_cell := Vector2i(2, 3)) -> TimeCostGame:
	var game := TimeCostGame.new()
	game._walls.clear()
	game.door_open = true
	game.remove_actor(&"rat")
	game.player_position = target_cell
	var definition := CombatContentCatalog.actor(&"raider")
	definition.equipped_weapon = CombatContentCatalog.weapon(weapon_id)
	var fighter := Actor.new(&"fighter", definition, fighter_cell, "Fighter")
	fighter.ai_policy = &"basic_melee"
	fighter.target_id = &"player"
	expect(game.register_actor(fighter), "Test fighter registers")
	return game


func _choice(game: TimeCostGame) -> TacticalChoice:
	return BasicMeleeTactics.choose(game, &"fighter", &"player")


func _attack_choice_by_id(context: MeleeContext, id: StringName) -> TacticalChoice:
	for choice: TacticalChoice in BasicMeleeTactics.candidates(context):
		if choice.action is AttackAction and choice.option_id == id:
			return choice
	return null


func _set_all_armor_value(actor: Actor, value: int) -> void:
	for part: Dictionary in actor.body.parts.values():
		if float(part.get("armor", -1)) > 0:
			part.armor = value


func _test_profile_driven_weapon_actions() -> void:
	var game := _fighter_game(&"longsword")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"chain_shirt"))
	var choice := _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"thrust",
		"Longsword prefers Thrust against MAIL without exact damage optimization")
	var ids: Array[StringName] = []
	for item: Dictionary in choice.action.ai_candidates:
		if item.has("option_id"):
			ids.append(StringName(item.option_id))
	expect(ids.has(&"basic") and ids.has(&"thrust"), "Planner trace distinguishes attack variants")

	_set_all_armor_value(game.get_actor(&"player"), 999)
	expect(_choice(game).action.weapon_action_id == &"thrust",
		"Exact armor magnitude does not change same-profile action selection")

	game = _fighter_game(&"warhammer")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"scrap_plate"))
	choice = _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"crushing_blow",
		"Warhammer values penetration action against visible RIGID armor")

	game = _fighter_game(&"warhammer")
	choice = _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"",
		"Unarmored target does not justify slower penetration-only special")


func _test_armor_coverage_observation() -> void:
	var game := _fighter_game(&"warhammer")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"iron_helmet"))
	var context := MeleeContext.capture(game, &"fighter", &"player")
	expect(context.target_armor_coverage == MeleeContext.ARMOR_PARTIAL,
		"Helmet-only armor is observed as partial coverage")
	var choice := _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"",
		"Partial helmet coverage does not justify Crushing Blow")

	game = _fighter_game(&"warhammer")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"scrap_plate"))
	context = MeleeContext.capture(game, &"fighter", &"player")
	expect(context.target_armor_coverage == MeleeContext.ARMOR_SUBSTANTIAL,
		"Torso plate crosses substantial coverage threshold")
	choice = _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"crushing_blow",
		"Substantial RIGID coverage can justify Crushing Blow")

	game = _fighter_game(&"longsword")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"chain_shirt"))
	context = MeleeContext.capture(game, &"fighter", &"player")
	expect(context.target_armor_coverage == MeleeContext.ARMOR_SUBSTANTIAL,
		"Chain shirt is observed as substantial coverage")
	expect(_choice(game).action.weapon_action_id == &"thrust",
		"Substantial MAIL coverage still favors Thrust")


func _test_tempo_and_commitment() -> void:
	var game := _fighter_game(&"hunting_knife")
	var healthy := _choice(game)
	expect(healthy.action is AttackAction and healthy.action.weapon_action_id == &"",
		"Quick Stab damage tradeoff prevents strict dominance on healthy unarmored target")
	game.player_hp = 10
	var finisher := _choice(game)
	expect(finisher.action is AttackAction and finisher.action.weapon_action_id == &"quick_stab",
		"Quick action gains tempo value against a critical target")

	game = _fighter_game(&"maul")
	game.get_actor(&"fighter").aggression = 180
	var context := MeleeContext.capture(game, &"fighter", &"player")
	var basic := _attack_choice_by_id(context, &"basic")
	var smash := _attack_choice_by_id(context, &"overhead_smash")
	expect(basic != null and smash != null and basic.score >= smash.score,
		"Heavy penetration action is not preferred against unarmored target")

	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"scrap_plate"))
	context = MeleeContext.capture(game, &"fighter", &"player")
	basic = _attack_choice_by_id(context, &"basic")
	smash = _attack_choice_by_id(context, &"overhead_smash")
	expect(smash != null and basic != null and smash.score > basic.score,
		"Heavy action can earn commitment when its penetration matters against armor")

	game.get_actor(&"fighter").hp = 8
	game.get_actor(&"fighter").aggression = 10
	game.get_actor(&"fighter").fear_bonus = 10
	context = MeleeContext.capture(game, &"fighter", &"player")
	basic = _attack_choice_by_id(context, &"basic")
	smash = _attack_choice_by_id(context, &"overhead_smash")
	expect(smash != null and basic != null and smash.score < basic.score,
		"Wounded fearful actor discounts heavy commitment")


func _test_conservative_retreat() -> void:
	var game := _fighter_game(&"longsword")
	var fighter := game.get_actor(&"fighter")
	fighter.hp = 12
	fighter.aggression = 50
	var choice := _choice(game)
	expect(choice.action is AttackAction,
		"Moderately wounded ordinary actor keeps fighting instead of automatically retreating")
	expect(BasicMeleeTactics._retreat_pressure(MeleeContext.capture(game, &"fighter", &"player"))
			< BasicMeleeTactics.RETREAT_PRESSURE_THRESHOLD,
		"Wounded ordinary actor remains below retreat pressure threshold")

	fighter.hp = 8
	choice = _choice(game)
	expect(choice.goal == &"survive",
		"Critical ordinary actor may choose retreat once survival pressure is high")

	fighter.aggression = 180
	choice = _choice(game)
	expect(choice.action is AttackAction,
		"Highly aggressive critical actor can keep fighting instead of sharing universal retreat behavior")

	game = _fighter_game(&"longsword")
	fighter = game.get_actor(&"fighter")
	for part: Dictionary in fighter.body.parts.values():
		if part.functions.has(&"weapon_manipulation"):
			fighter.body.apply_damage(part.id, part.maximum)
	choice = _choice(game)
	expect(choice.goal == &"survive",
		"Loss of attack capability remains an explicit retreat trigger regardless of personality")


func _test_progress_and_survival_override() -> void:
	var game := _fighter_game(&"longsword", Vector2i(8, 3), Vector2i(2, 3))
	var fighter := game.get_actor(&"fighter")
	fighter.aggression = 0
	var first := _choice(game)
	expect(first.goal == &"hold_position", "Fresh cautious actor may hold")
	fighter.melee_caution_target = &"player"
	fighter.melee_caution_spent = BasicMeleeTactics.MAX_CAUTION_ACTIONS
	var committed := _choice(game)
	expect(committed.goal == &"approach_target",
		"Spent caution requires progress instead of repeated Hold/Reposition")

	game = _fighter_game(&"longsword")
	fighter = game.get_actor(&"fighter")
	fighter.hp = 8
	fighter.aggression = 0
	fighter.fear_bonus = 20
	fighter.melee_caution_target = &"player"
	fighter.melee_caution_spent = BasicMeleeTactics.MAX_CAUTION_ACTIONS
	var survival := _choice(game)
	expect(survival.goal == &"survive" and survival.reasons.has(&"survival_override"),
		"Critical/high-fear actor may keep a meaningful retreat after caution budget")
	if survival.action is MoveAction:
		expect(MeleeContext.tile_distance(fighter.position + survival.action.direction,
			game.player_position) > 1, "Survival override actually opens distance")
	BasicMeleeTactics.record_action(fighter, survival.action)
	expect(fighter.melee_caution_spent == BasicMeleeTactics.MAX_DEFENSIVE_ACTIONS,
		"Emergency retreat consumes the final defensive allowance")
	var after_emergency := _choice(game)
	expect(after_emergency.goal != &"survive" and after_emergency.goal != &"hold_position"
			and after_emergency.goal != &"reposition",
		"Emergency retreat cannot repeat indefinitely before an attack")


func _test_information_boundary() -> void:
	var game := _fighter_game(&"longsword")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"chain_shirt"))
	var before := _signature(_choice(game))
	var rng_before := game.combat_rng.state
	var time_before := game.world_time
	for index in range(4):
		expect(_signature(_choice(game)) == before, "Repeated selection is deterministic/read-only")
	expect(game.combat_rng.state == rng_before and game.world_time == time_before,
		"Selection consumes no RNG or time")

	var target := game.get_actor(&"player")
	_set_all_armor_value(target, 777)
	target.abilities.scores[&"DEX"] = 100
	target.definition.proficiency_bonus = 200
	target.attack.damage_dice = DamageDice.create(20, 20)
	game.combat_rng.seed = 999
	expect(_signature(_choice(game)) == before,
		"Exact armor/stat/damage/RNG changes outside observations do not alter choice")


func _signature(choice: TacticalChoice) -> Array:
	var attack_id: StringName = &""
	var direction := Vector2i.ZERO
	if choice.action is AttackAction:
		attack_id = choice.action.weapon_action_id
	elif choice.action is MoveAction:
		direction = choice.action.direction
	return [choice.goal, choice.score, choice.reasons, choice.factors, choice.option_id, attack_id, direction]


func _test_data_driven_action_extension() -> void:
	var game := _fighter_game(&"longsword")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"chain_shirt"))
	var custom: WeaponDefinition = CombatContentCatalog.weapon(&"longsword").duplicate(true)
	custom.actions.append(WeaponActionDefinition.create(
		&"synthetic_hook", "Synthetic Hook", 1.0, AttackDefinition.DAMAGE_BLUNT
	))
	expect(custom.is_valid() and game.get_actor(&"fighter").set_weapon(custom),
		"Synthetic valid action can be authored without AI code changes")
	var choice := _choice(game)
	expect(choice.action is AttackAction and choice.action.weapon_action_id == &"synthetic_hook",
		"New data-defined attack variant participates through MeleeAttackOption automatically")
	expect(choice.option_id == &"synthetic_hook" and choice.reasons.has(&"armor_match_favorable"),
		"Generic trace identifies new variant and qualitative matchup reason")


func _test_local_context_regressions() -> void:
	var game := _fighter_game(&"longsword", Vector2i(6, 3), Vector2i(3, 3))
	game.get_actor(&"fighter").aggression = 20
	expect(game.register_actor(Actor.new(&"crowd_a", ActorDefinition.rat_common(), Vector2i(6, 4))),
		"First congestion actor registers")
	expect(game.register_actor(Actor.new(&"crowd_b", ActorDefinition.rat_common(), Vector2i(7, 4))),
		"Second congestion actor registers")
	var choice := _choice(game)
	expect(choice.goal == &"reposition" and choice.action is MoveAction,
		"Local congestion can still produce lateral reposition")
	if choice.action is MoveAction:
		var context := MeleeContext.capture(game, &"fighter", &"player")
		var destination: Vector2i = game.get_actor(&"fighter").position + choice.action.direction
		expect(MeleeContext.tile_distance(destination, game.player_position) == context.distance,
			"Reposition remains lateral rather than disguised approach")

	game = _fighter_game(&"longsword")
	var fighter := game.get_actor(&"fighter")
	for part: Dictionary in fighter.body.parts.values():
		if part.functions.has(&"weapon_manipulation"):
			fighter.body.apply_damage(part.id, part.maximum)
	choice = _choice(game)
	expect(choice.goal == &"survive" and choice.reasons.has(&"attack_function_lost"),
		"Lost weapon capability motivates legal survival movement")

	fighter.target_id = &"missing"
	var missing := BasicMeleeTactics.choose(game, &"fighter", fighter.target_id)
	expect(missing != null and missing.goal == &"wait" and missing.reasons.has(&"target_unavailable"),
		"Missing target produces explained fallback instead of invalid action")


func _test_production_trace() -> void:
	var game := _fighter_game(&"longsword")
	game.get_actor(&"player").body.equip_armor(CombatContentCatalog.armor(&"chain_shirt"))
	expect(game.player_wait(), "Player wait allows adjacent AI activation")
	var found: CombatEvent
	for event: CombatEvent in game.combat_log.events:
		if event.actor_id == &"fighter" and event.type == &"attack":
			found = event
			break
	expect(found != null, "AI attack reaches production event log")
	if found != null:
		expect(found.data.get("ai_policy_revision") == &"basic_melee_v3",
			"Production event records v3 policy revision")
		expect(found.data.get("weapon_action_id") == &"thrust" and found.action_cost == maxi(1, roundi(AttackAction.BASE_COST * CombatContentCatalog.weapon(&"longsword").get_action(&"thrust").cost_multiplier)),
			"Chosen weapon action uses common AttackAction cost/execution")
		expect(found.reason_codes.has(&"penetration_option"),
			"Production trace preserves qualitative weapon-action reason")
