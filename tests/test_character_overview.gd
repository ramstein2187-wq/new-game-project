extends SceneTree

var failures := 0
var assertions := 0

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	_armor()
	_queries()
	_attack_context()
	print("%s: Character Overview queries (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _armor() -> void:
	var body := BodyInstance.new(BodyTemplate.human())
	expect(body.average_armor_breakdown().value == 0, "All unarmored sentinel values count as zero")
	body.equip_armor(ArmorDefinition.create(&"test_torso", "Test torso", 6, [&"torso"]))
	var b := body.average_armor_breakdown()
	expect(is_equal_approx(b.value, 2.7), "Torso-only coverage gives 45% × 6")
	body.equip_armor(ArmorDefinition.create(&"test_head", "Test head", 10, [&"head"]))
	body.equip_armor(ArmorDefinition.create(&"test_legs", "Test legs", 2, [&"leg"]))
	expect(is_equal_approx(body.average_armor_breakdown().value, 4.6), "Multiple parts with different armor values")
	body.parts[&"torso"].current = 0
	expect(is_equal_approx(body.average_armor_breakdown().value, 4.6), "Disabled parts remain in hit model")
	for template in [BodyTemplate.quadruped_canine(), BodyTemplate.beetle(), BodyTemplate.spider(), BodyTemplate.crab(), BodyTemplate.lizard()]:
		body = BodyInstance.new(template)
		body.apply_natural_armor(7)
		b = body.average_armor_breakdown()
		expect(is_equal_approx(b.value, 7), "Nonhuman natural armor: " + String(template.id))
		var probability_sum := 0.0
		var roll_cursor := 0.0
		for row: Dictionary in b.parts:
			probability_sum += row.probability
			if row.probability > 0:
				expect(body.select_part(roll_cursor + row.probability / 2.0) == row.id, "Query and hit selection share intervals")
				roll_cursor += row.probability
		expect(is_equal_approx(probability_sum, 1), "Probabilities normalized")
		if body.parts.has(&"tail") and body.parts[&"tail"].weight == 0:
			body.parts[&"tail"].armor = 9999
			expect(is_equal_approx(body.average_armor_breakdown().value, 7), "Zero-weight tail ignored")
	var template := BodyTemplate.new()
	template.parts = [
		BodyTemplate._part(&"a", &"torso", "A", &"", 10, 2, []),
		BodyTemplate._part(&"b", &"head", "B", &"a", 10, 6, []),
		BodyTemplate._part(&"c", &"tail", "C", &"a", 10, 0, [])]
	body = BodyInstance.new(template)
	body.parts[&"a"].armor = 4
	body.parts[&"b"].armor = 12
	body.parts[&"c"].armor = 1000
	b = body.average_armor_breakdown()
	expect(b.total_weight == 8 and is_equal_approx(b.value, 10), "Normalize actual total 8, not assumed 100")
	body.parts[&"c"].weight = -5
	expect(body.average_armor_breakdown().value == 10, "Negative weights clamped as in select_part")
	b.parts[0].armor = 555
	expect(body.parts[&"a"].armor == 4, "Returned rows are isolated value data")
	for part: Dictionary in body.parts.values():
		part.weight = 0
	expect(body.average_armor_breakdown().value == 0, "Zero total weight safe")
	expect(BodyInstance.new(BodyTemplate.new()).average_armor_breakdown().value == 0, "Empty template safe")

func _queries() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	actor.abilities.scores[&"STR"] = 14
	var effect := GameplayEffectDefinition.new()
	effect.id = &"test_adaptation"
	var percent := StatModifier.new()
	percent.source_id = &"genetic_adaptation"
	percent.target_stat = &"STR"
	percent.operation = ModifierOperation.Kind.PERCENT
	percent.value = 0.2
	var flat := StatModifier.new()
	flat.source_id = &"training"
	flat.target_stat = &"STR"
	flat.value = 2
	var speed := StatModifier.new()
	speed.source_id = &"test_speed"
	speed.target_stat = StatCatalog.MOVEMENT_SPEED
	speed.value = 0.25
	effect.stat_modifiers = [percent, flat, speed]
	var cost := ActionCostModifier.new()
	cost.source_id = &"test_cost"
	cost.required_tags = [&"MOVE"]
	cost.value = -0.2
	effect.action_cost_modifiers = [cost]
	expect(actor.add_effect(effect, &"skill:test"), "Fixture effect inserted via safe Actor API")
	actor.body.apply_damage(&"left_leg", 20)
	actor.hp -= 3
	var before := _state(game)
	for repeat in range(4):
		var model := CharacterOverviewQuery.read(game)
		expect(model.attributes.size() == 6, "Exactly six primary rows")
		for row: Dictionary in model.attributes:
			expect(row.value == actor.resolved_stat(row.id), "Display uses stat resolver")
			expect(row.modifier == AbilityScores.modifier(int(row.value)), "Display uses modifier API")
			var details := CharacterOverviewText.inspection(model, row.id)
			expect(not details.body.is_empty(), "Stat Inspector generated")
		expect(model.move == MoveAction.new(Vector2i.RIGHT).cost_breakdown(game, actor.id), "Move uses exact action breakdown")
		expect(model.attack.name == actor.equipped_weapon.display_name and model.attack.penetration == actor.attack.penetration, "Attack reads equipped content")
		expect(model.attack.dice == actor.attack.damage_dice.notation(), "Damage dice reads definition")
		expect(model.hp == actor.hp and model.max_hp == actor.max_hp, "HP reads Actor")
		expect(model.states.size() == 2, "Only existing injury and effect state")
		for key in [&"health", &"attack", &"damage", &"penetration", &"armor", &"move", &"state"]:
			var details := CharacterOverviewText.inspection(model, key)
			expect(not details.title.is_empty() and not details.body.is_empty(), "Inspector model stable: " + String(key))
		expect(CharacterOverviewText.inspection(model, &"STR").body.contains("Genetic Adaptation"), "Modifier source explained")
		expect(CharacterOverviewText.inspection(model, &"STR").body.contains("Skill / Test"), "Effect origin explained")
		expect(_no_resources(model), "No live or copied Resource enters presentation data")
		model.armor.parts[0].armor = 123456
		model.attributes[0].breakdown.steps[1].value = 123456
		model.states[1].source_id = &"mutation"
		expect(_state(game) == before, "Queries/formatting/model edits preserve RNG, time, events, body, Effects and Actor")
	expect(actor.remove_effect(effect.id), "Remove effect")
	expect(CharacterOverviewQuery.read(game).attributes[0].value == 14, "Fresh queries observe removal immediately")
	actor.set_weapon(CombatContentCatalog.weapon(&"knife"))
	expect(CharacterOverviewQuery.read(game).attack.name == actor.equipped_weapon.display_name, "Fresh queries observe weapon replacement")
	game.reset()
	expect(CharacterOverviewQuery.read(game).hp == game.get_actor(&"player").hp, "Fresh queries observe reset Actor")
	expect(CharacterOverviewQuery.read(game, &"missing").is_empty(), "Missing actor safe")
	actor = game.get_actor(&"player")
	actor.body.parts[&"left_leg"].current = 0
	actor.body.parts[&"right_leg"].current = 0
	var model := CharacterOverviewQuery.read(game)
	expect(not model.move.valid and CharacterOverviewText.inspection(model, &"move").value == "Unavailable", "Unavailable movement is explained, not a zero cost")

func _attack_context() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	actor.abilities.scores[&"STR"] = 12
	actor.abilities.scores[&"DEX"] = 16
	for weapon_id in CombatContentCatalog.all_weapons():
		actor.set_weapon(CombatContentCatalog.weapon(weapon_id))
		for injury in [false, true]:
			for part: Dictionary in actor.body.parts.values():
				part.current = part.maximum / 2 if injury else part.maximum
			for action_id in [&""] + actor.equipped_weapon.actions.map(func(a): return a.id):
				var b := game.attack_breakdown(actor.id, action_id)
				var result := game.resolve_attack(actor.id, &"rat", action_id)
				expect(b.ability == result.ability and b.ability_modifier == result.ability_mod, "Query ability agrees with real combat")
				expect(b.situation == result.situation_modifier and b.proficiency == result.proficiency, "Query modifiers agree with real combat")
				expect(b.penetration == result.penetration and b.damage_type == result.original_damage_type, "Query attack agrees with real combat")
				expect(b.damage_modifier == result.damage_modifier and b.efficiency == result.attack_efficiency, "Query body/damage agree with real combat")
	var rat := game.get_actor(&"rat")
	var natural := CharacterOverviewQuery.read(game, rat.id)
	expect(natural.attack.name == rat.attack.display_name and natural.attack.weapon_id == &"", "Natural main attack has no invented weapon")

func _state(game: TimeCostGame) -> String:
	var actors: Array = []
	for actor in game.actors.all():
		actors.append([actor.position, actor.hp, actor.max_hp, actor.abilities.scores, actor.body.parts,
			actor.body.attack_part, actor.stat_breakdown(&"STR"), actor.stat_breakdown(StatCatalog.MOVEMENT_SPEED),
			game.scheduler.get_ready_time(actor.id), actor.weapon_id])
	return var_to_str([game.combat_rng.state, game.world_time, game.combat_log.events, actors, game.message])

func _no_resources(value: Variant) -> bool:
	if value is Object:
		return false
	if value is Dictionary:
		for entry in value.values():
			if not _no_resources(entry): return false
	if value is Array:
		for entry in value:
			if not _no_resources(entry): return false
	return true
