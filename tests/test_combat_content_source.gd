extends SceneTree

var failures := 0

func expect(condition: bool, label: String) -> void:
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	var source := CombatContentCatalog.content()
	expect(source != null and source.validation_errors().is_empty(), "All authored content validates")
	if source == null:
		quit(1)
		return
	for item in source.weapons:
		var loaded := CombatContentCatalog.weapon(item.id)
		expect(loaded != item and loaded.is_valid(), "Weapon loads as isolated valid Resource")
		expect(loaded.attack_definition.damage_dice.notation() == item.attack_definition.damage_dice.notation() and loaded.attack_definition.penetration == item.attack_definition.penetration, "Weapon tuning comes from source")
		expect(loaded.required_hands == loaded.attack_definition.required_capability_count, "Hands match capability count")
	for entry in source.actors:
		var definition := CombatContentCatalog.actor(entry.definition.type_id)
		expect(definition.is_valid() and definition.max_hp == entry.definition.max_hp, "Actor HP comes from source")
		var actor := Actor.new(definition.type_id, definition, Vector2i.ZERO)
		expect(actor.aggression == entry.definition.aggression and actor.ai_policy == entry.definition.ai_policy, "Actor AI tuning comes from source")
		expect(CombatContentCatalog.all_hostiles().has(definition.type_id) == entry.list_in_hostiles, "Legacy hostile listing follows authored membership")
	for piece in source.armor:
		var definition := ActorDefinition.human_default()
		definition.equipped_armor = [piece]
		var actor := Actor.new(&"coverage", definition, Vector2i.ZERO)
		for part: Dictionary in actor.body.parts.values():
			if piece.coverage.has(part.type):
				expect(part.armor == piece.armor and part.armor_profile == piece.profile and part.armor_id == piece.id, "Authored armor applies to covered body part")
			else:
				expect(part.armor == -1, "Uncovered body part stays unarmored")
	var rat := ActorDefinition.rat_common()
	var rat_source := CombatContentCatalog.actor(&"rat")
	expect(rat.max_hp == rat_source.max_hp and rat.combat_species.body_size == CombatSpecies.rat().body_size, "Rat compatibility factories use authored data")
	expect(CombatContentCatalog.weapon(&"missing") == null and CombatContentCatalog.actor(&"missing") == null, "Unknown lookup returns null")
	_test_invalid_data(source)
	_test_isolation()
	_test_explicit_tuning()
	if failures == 0:
		print("PASS: single-source content, references, coverage, isolation and tuning")
	quit(1 if failures else 0)

func _test_invalid_data(source: CombatContentData) -> void:
	var invalid: CombatContentData = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.weapons.append(invalid.weapons[0])
	expect(not invalid.validation_errors().is_empty(), "Duplicate weapon IDs rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors.append(invalid.actors[0])
	expect(not invalid.validation_errors().is_empty(), "Duplicate actor IDs rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.natural_attacks.append(invalid.natural_attacks[0])
	expect(not invalid.validation_errors().is_empty(), "Duplicate natural attack keys rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.armor.append(invalid.armor[0])
	expect(not invalid.validation_errors().is_empty(), "Duplicate armor IDs rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].body_template_id = &"missing_body"
	expect(not invalid.validation_errors().is_empty(), "Unknown body reference rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].definition.attack_definition = AttackDefinition.create(&"unregistered", "Unregistered", 1, 4, &"Blunt", 0, &"STR", &"bite")
	expect(not invalid.validation_errors().is_empty(), "Unregistered natural reference rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].definition.equipped_weapon = CombatContentCatalog.weapon(&"longsword")
	expect(not invalid.validation_errors().is_empty(), "Unregistered weapon resource rejected even when its ID exists")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].definition.equipped_armor.append(CombatContentCatalog.armor(&"iron_helmet"))
	expect(not invalid.validation_errors().is_empty(), "Unregistered armor resource rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.armor[0].coverage = [&"typo"]
	expect(not invalid.validation_errors().is_empty(), "Unknown coverage rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.weapons[0].attack_definition.penetration = INF
	expect(not invalid.validation_errors().is_empty(), "Nonfinite weapon tuning rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.weapons[0].actions[0].cost_percent = NAN
	expect(not invalid.validation_errors().is_empty(), "Invalid action multiplier rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].definition.ai_policy = &"typo"
	expect(not invalid.validation_errors().is_empty(), "Unknown AI policy rejected")
	invalid = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	invalid.actors[0].definition.aggression += 17
	var runtime := Actor.new(&"tuned_ai", invalid.actors[0].instantiate_definition(), Vector2i.ZERO)
	expect(invalid.validation_errors().is_empty() and runtime.aggression == invalid.actors[0].definition.aggression, "Per-actor aggression can be authored")

func _test_isolation() -> void:
	var first := CombatContentCatalog.actor(&"armored_raider")
	var second := CombatContentCatalog.actor(&"armored_raider")
	var original_hp := second.max_hp
	var original_armor := second.equipped_armor[0].armor
	var original_pen := second.equipped_weapon.attack_definition.penetration
	first.max_hp += 1
	first.equipped_armor[0].armor += 1
	first.equipped_weapon.attack_definition.penetration += 1
	expect(second.max_hp == original_hp and second.equipped_armor[0].armor == original_armor and second.equipped_weapon.attack_definition.penetration == original_pen, "Catalog copies isolate nested resources")
	expect(CombatContentCatalog.actor(&"armored_raider").equipped_armor[0].armor == original_armor, "Caller mutation never changes cached source")

func _test_explicit_tuning() -> void:
	# Values are supplied by the mutation harness, never copied from current balance.
	for argument in OS.get_cmdline_user_args():
		var pair := argument.split("=")
		if pair.size() != 2:
			continue
		var value := float(pair[1])
		match pair[0]:
			"--boar-hp":
				expect(CombatContentCatalog.actor(&"boar").max_hp == int(value), "Temporary Boar HP reached runtime")
			"--longsword-penetration":
				expect(CombatContentCatalog.weapon(&"longsword").attack_definition.penetration == value, "Temporary Longsword penetration reached runtime")
			"--longsword-die-size":
				expect(CombatContentCatalog.weapon(&"longsword").attack_definition.damage_dice.dice_size == int(value), "Temporary Longsword die size reached runtime")
			"--helmet-armor":
				var definition := ActorDefinition.human_default()
				definition.equipped_armor = [CombatContentCatalog.armor(&"iron_helmet")]
				expect(Actor.new(&"tuned", definition, Vector2i.ZERO).body.parts.head.armor == int(value), "Temporary Iron Helmet armor reached equipped body part")
