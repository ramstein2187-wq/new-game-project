extends SceneTree

const Exporter := preload("res://tools/export_combat_datasets.gd")
var failures := 0
var assertions := 0

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	_primary_rules()
	_finesse()
	_effects_and_defense()
	_action_override()
	_rng_and_rejection()
	_serialization_and_export()
	_external_isolation()
	_hp_regression()
	print("%s: primary attribute runtime (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _game(rule: StringName = &"STR") -> TimeCostGame:
	var game := TimeCostGame.new()
	game.player_position = Vector2i(7, 3)
	game.get_actor(&"player").attack.ability_rule = rule
	game.get_actor(&"player").definition.proficiency_bonus = 100
	game.get_actor(&"rat").hp = 10000
	game.get_actor(&"rat").max_hp = 10000
	# Focus on one production player Action; NPC responses have separate coverage.
	game.scheduler.advance_actor(&"rat", 100000)
	return game

func _effect(id: StringName, stat: StringName, flat: float, percent: float = 0.0) -> GameplayEffectDefinition:
	var effect := GameplayEffectDefinition.new()
	effect.id = id
	var f := StatModifier.new()
	f.source_id = &"synthetic_flat"
	f.target_stat = stat
	f.value = flat
	var p := StatModifier.new()
	p.source_id = &"synthetic_percent"
	p.target_stat = stat
	p.operation = ModifierOperation.Kind.PERCENT
	p.value = percent
	effect.stat_modifiers = [f, p]
	return effect

func _execute(game: TimeCostGame, ability: StringName, modifier: int, action_id: StringName = &"") -> Dictionary:
	var before := _state(game)
	var query := game.attack_breakdown(&"player", action_id)
	var model := CharacterOverviewQuery.read(game)
	# The Character Overview deliberately shows the basic attack only.
	model.attack = query
	var details := CharacterOverviewText.inspection(model, &"attack")
	expect(query.ability == ability and query.ability_modifier == modifier, "One selected primary/modifier in query")
	expect(details.body.contains(String(ability) + " Modifier (resolved attribute)") and details.body.contains("%+d" % modifier), "Inspector shows resolved governing modifier")
	expect(not details.body.contains("do not modify") and not details.body.contains("base attribute"), "Inspector has no stale base-only claim")
	expect(details.body.contains("Resolved " + String(ability) + ": " + CharacterOverviewText.number(query.ability_breakdown.value)), "Inspector uses raw resolved score from runtime breakdown")
	query.ability_breakdown.steps[0].result = -999
	expect(_state(game) == before, "Query/Inspector/value-model mutation consumes no time/RNG/events or gameplay state")
	expect(game.perform_action(&"player", AttackAction.new(&"rat", action_id)), "Production AttackAction succeeds")
	var result: Dictionary = game.combat_log.events[-1].data
	expect(result.ability == ability and result.ability_mod == modifier and result.damage_ability_modifier == modifier, "Same primary feeds real hit and damage")
	expect(result.total == result.d20 + modifier + result.proficiency + result.situation, "Only one primary participates in check")
	if result.hit:
		expect(result.raw_damage == CombatRules.damage_total(result.damage_rolls, modifier + result.damage_modifier), "Damage uses same selected modifier exactly once")
	return result

func _primary_rules() -> void:
	for ability: StringName in StatCatalog.PRIMARY:
		var game := _game(ability)
		var actor := game.get_actor(&"player")
		for stat in StatCatalog.PRIMARY:
			actor.abilities.scores[stat] = 22
		actor.abilities.scores[ability] = 14
		expect(actor.attack.is_valid() and actor.equipped_weapon.is_valid(), "Valid primary attack/weapon: " + String(ability))
		var base := _execute(game, ability, 2)
		expect(base.dv == 10 + game.get_actor(&"rat").abilities.get_modifier(&"DEX"), "No-effect defense preserves legacy DEX")
		expect(actor.add_effect(_effect(&"governing", ability, 2.0, 0.2), &"skill:synthetic"), "Primary Effect inserted")
		# 14 * 1.2 + 2 = 18.8 -> int18 -> +4, without cached intermediate scores.
		var changed := _execute(game, ability, 4)
		expect(changed.action_cost == base.action_cost, "Primary changes do not change Action Cost")
		expect(actor.remove_effect(&"governing"), "Remove primary Effect")
		_execute(game, ability, 2)
		actor.add_effect(_effect(&"clear_governing", ability, -3.0))
		_execute(game, ability, 0)
		actor.clear_effects()
		_execute(game, ability, 2)
		# Authored low/negative scores retain the same int/modifier boundary.
		actor.abilities.scores[ability] = 0
		actor.add_effect(_effect(&"fraction", ability, -1.8))
		expect(actor.ability_modifier_breakdown(ability).score == -1 and actor.resolved_ability_modifier(ability) == -6, "Negative fractional score truncates before floor modifier")
	for rule in [&"", &"WIS", &"CHA", &"movement_speed", &"STR+DEX", &"DEX+PER", &"best_any"]:
		var game := _game(rule)
		expect(not game.get_actor(&"player").attack.is_valid(), "Unknown/combined/nonprimary rules reject")
		expect(not game.attack_breakdown(&"player").valid, "Invalid rule has no valid Inspector breakdown")
		var before := _state(game)
		expect(not game.perform_action(&"player", AttackAction.new(&"rat")) and _state(game) == before, "Invalid base rule rejects without time/RNG/event consumption")

func _finesse() -> void:
	for pair in [[14, 16, &"DEX", 3], [16, 14, &"STR", 3], [14, 15, &"STR", 2], [10, 10, &"STR", 0]]:
		var game := _game(AttackDefinition.ABILITY_BEST_STR_DEX)
		var actor := game.get_actor(&"player")
		actor.abilities.scores[&"STR"] = pair[0]
		actor.abilities.scores[&"DEX"] = pair[1]
		_execute(game, pair[2], pair[3])
	var game := _game(AttackDefinition.ABILITY_BEST_STR_DEX)
	var actor := game.get_actor(&"player")
	actor.abilities.scores[&"STR"] = 14
	actor.abilities.scores[&"DEX"] = 15
	actor.add_effect(_effect(&"switch", &"DEX", 1.0))
	_execute(game, &"DEX", 3)
	actor.remove_effect(&"switch")
	_execute(game, &"STR", 2)
	actor.add_effect(_effect(&"tie", &"DEX", 0.9))
	_execute(game, &"STR", 2)

func _effects_and_defense() -> void:
	var game := _game(&"STR")
	var actor := game.get_actor(&"player")
	var sibling := Actor.new(&"sibling", actor.definition, Vector2i.ZERO)
	var effect := _effect(&"force", &"STR", 4.0)
	actor.add_effect(effect)
	effect.stat_modifiers[0].value = 100
	var snapshot := actor.active_effect_instances()
	snapshot[0].definition.stat_modifiers[0].value = 200
	expect(sibling.resolved_ability_modifier(&"STR") == 0 and actor.resolved_ability_modifier(&"STR") == 2, "Caller/snapshot/sibling effects isolated")
	var result := _execute(game, &"STR", 2)
	var target := game.get_actor(&"rat")
	var base_dv: int = result.dv
	var target_dex := target.resolved_stat(&"DEX")
	target.add_effect(_effect(&"evasion", &"DEX", 4.0))
	result = _execute(game, &"STR", 2)
	expect(result.dv == base_dv + 2 and result.difficulty == result.dv, "Defender resolved DEX Effect changes actual DV")
	target.remove_effect(&"evasion")
	result = _execute(game, &"STR", 2)
	expect(result.dv == base_dv and target.resolved_stat(&"DEX") == target_dex, "Defense restores immediately on Effect removal")
	# PER/INT/WIL have no automatic general accuracy/defense/cost/AI role.
	var query := game.attack_breakdown(&"player")
	var ai_policy := actor.ai_policy
	var move_cost := MoveAction.new(Vector2i.RIGHT).get_cost(game, actor.id)
	for stat in [&"PER", &"INT", &"WIL", &"DEX"]:
		actor.add_effect(_effect(StringName("irrelevant_" + String(stat)), stat, 100.0))
	expect(game.attack_breakdown(actor.id) == query, "Non-governing primaries never add a second attack modifier")
	expect(actor.ai_policy == ai_policy and MoveAction.new(Vector2i.RIGHT).get_cost(game, actor.id) == move_cost, "INT policy and DEX global cost remain separate")

func _action_override() -> void:
	var weapon := CombatContentCatalog.weapon(&"longsword")
	weapon.attack_definition.ability_rule = &"DEX"
	var aimed := WeaponActionDefinition.create(&"synthetic_aim", "Synthetic Aim", 0.25, &"", 0, 0, 0, &"PER")
	weapon.actions.append(aimed)
	expect(weapon.is_valid(), "Synthetic sparse PER action is valid")
	var prototype := ActorDefinition.human_default()
	prototype.equipped_weapon = weapon
	var sibling := Actor.new(&"sibling", prototype, Vector2i.ZERO)
	var actor := Actor.new(&"player", prototype, Vector2i(7, 3))
	var game := _game()
	game.actors.remove(&"player")
	game.actors.register(actor)
	actor.definition.proficiency_bonus = 100
	actor.abilities.scores[&"DEX"] = 12
	actor.abilities.scores[&"PER"] = 18
	_execute(game, &"DEX", 1)
	var result := _execute(game, &"PER", 4, aimed.id)
	expect(result.action_cost == 1250, "Existing authored cost_percent path applies to override action")
	_execute(game, &"DEX", 1)
	_execute(game, &"DEX", 1, weapon.actions[0].id)
	actor.add_effect(_effect(&"aim_effect", &"PER", 2.0))
	_execute(game, &"PER", 5, aimed.id)
	expect(actor.attack.ability_rule == &"DEX" and weapon.attack_definition.ability_rule == &"DEX" and sibling.attack.ability_rule == &"DEX", "Execution does not mutate actor base, authored weapon or sibling attack")
	actor.weapon_action(aimed.id).ability_rule_override = &"CON"
	expect(aimed.ability_rule_override == &"PER" and sibling.weapon_action(aimed.id).ability_rule_override == &"PER", "Actor action mutation isolates authored/sibling resources")
	var temporary := aimed.modified_attack(actor.attack)
	temporary.damage_dice.dice_count = 99
	expect(actor.attack.damage_dice.dice_count != 99, "Temporary override deep-copies nested/external dice")
	for rule in StatCatalog.PRIMARY + [AttackDefinition.ABILITY_BEST_STR_DEX, &""]:
		aimed.ability_rule_override = rule
		expect(aimed.is_valid(), "Override allows primary, legacy best, or inheritance")
		expect(aimed.modified_attack(actor.attack).ability_rule == (actor.attack.ability_rule if rule == &"" else rule), "Sparse override inherits or substitutes one rule")
	for rule in [&"DEX+PER", &"movement_speed", &"unknown"]:
		aimed.ability_rule_override = rule
		expect(not aimed.is_valid(), "Combined/unknown override invalid")

func _rng_and_rejection() -> void:
	for hit in [true, false]:
		for armored in [true, false]:
			var game := _game(&"PER")
			var actor := game.get_actor(&"player")
			actor.definition.proficiency_bonus = 100 if hit else -100
			actor.add_effect(_effect(&"per", &"PER", 4.0))
			var target := game.get_actor(&"rat")
			for part: Dictionary in target.body.parts.values():
				part.weight = 1.0 if part.id == &"torso" else 0.0
				part.armor = 60 if armored else -1
				part.armor_profile = ArmorDefinition.RIGID if armored else &""
			var mirror := RandomNumberGenerator.new()
			mirror.state = game.combat_rng.state
			var d20 := mirror.randi_range(1, 20)
			var dice: Array = []
			var armor_roll := -1.0
			if hit:
				mirror.randf()
				dice = actor.attack.damage_dice.roll(mirror)
				if armored:
					armor_roll = mirror.randf() * 100
			var result := _execute(game, &"PER", 2)
			expect(result.hit == hit and result.d20 == d20 and result.damage_rolls == dice and game.combat_rng.state == mirror.state, "Resolved primary adds no RNG: D20/location/dice/optional armor order")
			expect(not result.has("armor_roll") if armor_roll < 0 else is_equal_approx(result.armor_roll, armor_roll), "Armor draw occurs only on covered hit")
	var game := _game(&"DEX")
	var actor := game.get_actor(&"player")
	actor.weapon_action(&"thrust").ability_rule_override = &"DEX+PER"
	var before := _state(game)
	expect(not game.perform_action(actor.id, AttackAction.new(&"rat", &"thrust")), "Invalid override action rejected")
	expect(_state(game) == before, "Rejected override spends no time/RNG/event/damage")
	expect(not game.attack_breakdown(actor.id, &"thrust").valid, "Invalid action query agrees with rejection")
	actor.weapon_action(&"thrust").ability_rule_override = &"PER"
	actor.body.parts[&"left_arm"].current = 0
	actor.body.parts[&"right_arm"].current = 0
	before = _state(game)
	expect(not game.perform_action(actor.id, AttackAction.new(&"rat", &"thrust")), "Valid override cannot bypass Body capability")
	expect(_state(game) == before, "Body rejection remains free")

func _serialization_and_export() -> void:
	var data := CombatContentData.new()
	for ability: StringName in StatCatalog.PRIMARY:
		var weapon := CombatContentCatalog.weapon(&"longsword")
		weapon.id = ability
		weapon.attack_definition.ability_rule = ability
		weapon.actions[0].ability_rule_override = ability
		data.weapons.append(weapon)
		var path := "user://synthetic_primary_" + String(ability) + ".tres"
		expect(ResourceSaver.save(weapon, path) == OK, "Native Resource saves primary and override")
		var loaded: WeaponDefinition = ResourceLoader.load(path, "", ResourceLoader.CACHE_MODE_IGNORE)
		expect(loaded.is_valid() and loaded.attack_definition.ability_rule == ability and loaded.actions[0].ability_rule_override == ability, "Native Resource round trip preserves rule/override")
	var exported: Dictionary = JSON.parse_string(JSON.stringify(Exporter.equipment(data)))
	for row: Dictionary in exported.weapons:
		expect(row.damage.ability == row.id and row.weapon_actions[0].ability_rule_override == row.id, "Real exporter JSON round trip preserves every primary and override")
	var production: Dictionary = Exporter.equipment(CombatContentCatalog.content())
	for row: Dictionary in production.weapons:
		for action: Dictionary in row.weapon_actions:
			expect(not action.has("ability_rule_override"), "No forced production override; sparse dataset inherits")

func _state(game: TimeCostGame) -> String:
	var actors: Array = []
	for actor in game.actors.all():
		actors.append([actor.hp, actor.max_hp, actor.body.parts, actor.body.attack_part,
			actor.position, actor.abilities.scores, actor.attack.ability_rule,
			actor.stat_breakdown(&"STR"), game.scheduler.get_ready_time(actor.id)])
	return var_to_str([game.combat_rng.state, game.world_time, game.combat_log.events, actors])

func _hp_regression() -> void:
	var actor := Actor.new(&"hp", ActorDefinition.human_default(), Vector2i.ZERO)
	expect(actor.definition.max_hp == 30 and actor.max_hp == 30 and actor.hp == 30, "Human Base HP and neutral CON remain 30")
	actor.hp -= 7
	actor.add_effect(_effect(&"fractional_con", &"CON", 2.4))
	var hp := actor.max_hp_breakdown()
	expect(is_equal_approx(hp.unrounded, 33.6) and hp.rounded == 34 and actor.max_hp == 34 and actor.hp == 27, "HP uses raw fractional CON, one final round, preserves damage")
	expect(actor.resolved_ability_modifier(&"CON") == 1, "Attack CON modifier has separate integer boundary from HP scaling")
	actor.clear_effects()
	expect(actor.max_hp == 30 and actor.hp == 23, "CON removal restores max with same damage")
	actor.add_effect(_effect(&"lethal_con", &"CON", -100.0))
	expect(actor.max_hp == 1 and actor.hp == 0, "Extreme CON retains minimum one and can kill wounded actor")
	actor.remove_effect(&"lethal_con")
	expect(actor.max_hp == 30 and actor.hp == 0, "Removing lethal CON never revives dead actor")
	actor.add_effect(_effect(&"dead_boost", &"CON", 10.0))
	expect(actor.max_hp == 45 and actor.hp == 0, "Increasing dead actor max HP does not revive")

func _external_isolation() -> void:
	var authored: WeaponDefinition = load("res://content/weapons/longsword.tres")
	var prototype := ActorDefinition.human_default()
	prototype.equipped_weapon = authored
	var first := Actor.new(&"first", prototype, Vector2i.ZERO)
	var second := Actor.new(&"second", prototype, Vector2i.ZERO)
	var rule := authored.attack_definition.ability_rule
	var count := authored.attack_definition.damage_dice.dice_count
	var override := authored.actions[0].ability_rule_override
	first.attack.ability_rule = &"WIL"
	first.attack.damage_dice.dice_count = 99
	first.equipped_weapon.actions[0].ability_rule_override = &"PER"
	expect(second.attack.ability_rule == rule and authored.attack_definition.ability_rule == rule, "External base attack isolated between actors and authored Resource")
	expect(second.attack.damage_dice.dice_count == count and authored.attack_definition.damage_dice.dice_count == count, "External nested dice isolated between actors and authored Resource")
	expect(second.equipped_weapon.actions[0].ability_rule_override == override and authored.actions[0].ability_rule_override == override, "External Weapon Action override isolated between actors and authored Resource")
	var natural: AttackDefinition = load("res://content/attacks/rat_bite.tres")
	prototype = ActorDefinition.rat_common()
	prototype.attack_definition = natural
	first = Actor.new(&"first", prototype, Vector2i.ZERO)
	second = Actor.new(&"second", prototype, Vector2i.ZERO)
	rule = natural.ability_rule
	count = natural.damage_dice.dice_count
	first.attack.ability_rule = &"CON"
	first.attack.damage_dice.dice_count = 99
	expect(second.attack.ability_rule == rule and natural.ability_rule == rule and second.attack.damage_dice.dice_count == count and natural.damage_dice.dice_count == count, "External natural attack/dice isolation retained")
