extends SceneTree

const Style := preload("res://game/ui/inspector_number_style.gd")
var failures := 0
var assertions := 0

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	call_deferred("_run")

func _run() -> void:
	expect(Style.modifier_tone(3) == Style.Tone.POSITIVE, "Positive modifier tone")
	expect(Style.modifier_tone(-2) == Style.Tone.NEGATIVE, "Negative modifier tone")
	expect(Style.modifier_tone(0) == Style.Tone.NEUTRAL, "Zero modifier tone")
	expect(Style.modifier_tone(-0.0) == Style.Tone.NEUTRAL, "Signed zero remains neutral")
	expect(Style.span("+5", Style.Tone.RESULT).tone == Style.Tone.RESULT, "Result role overrides numeric sign")
	expect(Style.span("42").tone == Style.Tone.NEUTRAL, "Ordinary positive value defaults neutral")
	expect(Style.color_for(Style.Tone.RESULT) != Style.POSITIVE and Style.color_for(Style.Tone.RESULT) != Style.NEGATIVE, "Result palette differs from modifier palette")
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	actor.abilities.scores[&"STR"] = 16
	var before := _state(game)
	var model := CharacterOverviewQuery.read(game)
	var attack := CharacterOverviewText.inspection(model, &"attack")
	_check_span(attack, "+3", Style.Tone.POSITIVE, "Attack ability modifier")
	_check_span(attack, "+2", Style.Tone.POSITIVE, "Attack proficiency")
	_check_span(attack, "+0", Style.Tone.NEUTRAL, "Zero situation")
	_check_span(attack, "%+d" % model.attack.attack_bonus, Style.Tone.RESULT, "Final attack bonus")
	_check_span(attack, CharacterOverviewText.damage(model.attack), Style.Tone.RESULT, "Final damage notation")
	expect(_colored(attack) == ["+3", "+2", "+3"], "Only modifier numbers, not labels/penetration/dice/results, colored")
	expect(_state(game) == before, "Formatting does not mutate RNG/time/events/Actor")
	for part: Dictionary in actor.body.parts.values():
		if part.functions.has(&"weapon_manipulation"):
			part.current = part.maximum / 2
	model = CharacterOverviewQuery.read(game)
	attack = CharacterOverviewText.inspection(model, &"attack")
	_check_span(attack, "-2", Style.Tone.NEGATIVE, "Injured situation")
	_check_span(attack, "%+d" % model.attack.attack_bonus, Style.Tone.RESULT, "Positive injured final stays result")
	for score in [4, 10]:
		actor.abilities.scores[&"STR"] = score
		model = CharacterOverviewQuery.read(game)
		attack = CharacterOverviewText.inspection(model, &"attack")
		_check_span(attack, "%+d" % model.attack.attack_bonus, Style.Tone.RESULT, "Negative/zero final keeps neutral emphasis")
	actor.abilities.scores[&"STR"] = 16
	var effect := _fixture_effect()
	expect(actor.add_effect(effect, &"skill:test"), "Fixture uses existing Effect API")
	model = CharacterOverviewQuery.read(game)
	var attribute := CharacterOverviewText.inspection(model, &"STR")
	_check_span(attribute, "+20%", Style.Tone.POSITIVE, "Positive attribute percent")
	_check_span(attribute, "-1", Style.Tone.NEGATIVE, "Negative attribute flat")
	_check_span(attribute, "0", Style.Tone.NEUTRAL, "Zero attribute flat")
	_check_span(attribute, CharacterOverviewText.number(model.attributes[0].value), Style.Tone.RESULT, "Resolved stat neutral emphasis")
	expect(not _colored(attribute).has("16"), "Attribute base stays neutral")
	var move := CharacterOverviewText.inspection(model, &"move")
	_check_span(move, "-20%", Style.Tone.NEGATIVE, "Signed movement percent uses same convention")
	_check_span(move, "+50", Style.Tone.POSITIVE, "Signed movement flat")
	_check_span(move, "+0.25", Style.Tone.POSITIVE, "Nested movement-speed Effect")
	_check_span(move, "%d μt" % model.move.cost, Style.Tone.RESULT, "Final cost neutral emphasis")
	expect(_colored(move) == ["+0.25", "-20%", "+50"], "Base/divisors/intermediate values excluded from modifier colors")
	for key in [&"health", &"armor", &"penetration", &"state"]:
		var details := CharacterOverviewText.inspection(model, key)
		if key == &"penetration":
			_check_span(details, CharacterOverviewText.number(model.attack.penetration), Style.Tone.NEUTRAL, "Penetration is ordinary")
		else:
			expect(_colored(details).is_empty(), "HP/armor/weight/probability/state have no signed modifier tones: " + String(key))
	expect(actor.remove_effect(effect.id), "Remove fixture effect")
	var tiny := GameplayEffectDefinition.new()
	tiny.id = &"tiny_tone_test"
	for value in [0.00000001, -0.00000001]:
		var modifier := StatModifier.new()
		modifier.source_id = &"tiny_source"
		modifier.target_stat = &"STR"
		modifier.value = value
		tiny.stat_modifiers.append(modifier)
	actor.add_effect(tiny)
	attribute = CharacterOverviewText.inspection(CharacterOverviewQuery.read(game), &"STR")
	_check_span(attribute, "+0", Style.Tone.NEUTRAL, "Rounded positive zero is neutral")
	_check_span(attribute, "-0", Style.Tone.NEUTRAL, "Rounded negative zero is neutral")
	actor.remove_effect(tiny.id)
	model = CharacterOverviewQuery.read(game)
	expect(_colored(CharacterOverviewText.inspection(model, &"move")).is_empty(), "No move modifiers means no bonus/penalty colors")
	var inspector := CharacterInspector.new()
	root.add_child(inspector)
	await process_frame
	for key in [&"STR", &"attack", &"move", &"health", &"armor", &"state"]:
		var details := CharacterOverviewText.inspection(model, key)
		inspector.show_inspection(details)
		expect(inspector.body_label.get_parsed_text() == details.body, "Rendered text matches plain Inspector body: " + String(key))
		expect(not details.body.contains("[color="), "Plain model does not contain styling codes")
	# Dynamic labels containing signs or BBCode-like syntax are literal, neutral text.
	actor.equipped_weapon.display_name = "[color=red]+99[/color]"
	model = CharacterOverviewQuery.read(game)
	attack = CharacterOverviewText.inspection(model, &"attack")
	_check_span(attack, actor.equipped_weapon.display_name, Style.Tone.NEUTRAL, "Dynamic signed label is not classified or parsed")
	inspector.show_inspection(attack)
	expect(inspector.body_label.get_parsed_text().contains(actor.equipped_weapon.display_name), "Literal dynamic markup survives rendering")
	expect(not inspector.body_label.bbcode_enabled, "No BBCode parsing")
	var hover := CharacterOverviewText.attack_hover(model.attack)
	expect(hover.contains("Attack Bonus") and not hover.contains("[color=") and not hover.contains("[b]"), "Existing hover remains plain text")
	inspector.queue_free()
	print("%s: Character Inspector semantic modifier tones (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _check_span(details: Dictionary, text: String, tone: Style.Tone, label: String) -> void:
	var found := false
	for part: Dictionary in details.get("body_spans", [Style.span(details.body)]):
		if part.text == text and part.tone == tone:
			found = true
	expect(found, label)

func _colored(details: Dictionary) -> Array[String]:
	var values: Array[String] = []
	for part: Dictionary in details.get("body_spans", []):
		if part.tone in [Style.Tone.POSITIVE, Style.Tone.NEGATIVE]:
			values.append(part.text)
	return values

static func _fixture_effect() -> GameplayEffectDefinition:
	var effect := GameplayEffectDefinition.new()
	effect.id = &"tone_test"
	for spec in [[&"STR", ModifierOperation.Kind.PERCENT, 0.2], [&"STR", ModifierOperation.Kind.FLAT, -1.0],
		[&"STR", ModifierOperation.Kind.FLAT, 0.0], [StatCatalog.MOVEMENT_SPEED, ModifierOperation.Kind.FLAT, 0.25]]:
		var modifier := StatModifier.new()
		modifier.source_id = &"test_source"
		modifier.target_stat = spec[0]
		modifier.operation = spec[1]
		modifier.value = spec[2]
		effect.stat_modifiers.append(modifier)
	for spec in [[ModifierOperation.Kind.PERCENT, -0.2], [ModifierOperation.Kind.FLAT, 50.0]]:
		var modifier := ActionCostModifier.new()
		modifier.source_id = &"test_source"
		modifier.required_tags = [&"MOVE"]
		modifier.operation = spec[0]
		modifier.value = spec[1]
		effect.action_cost_modifiers.append(modifier)
	return effect

func _state(game: TimeCostGame) -> String:
	var actor := game.get_actor(&"player")
	return var_to_str([game.combat_rng.state, game.world_time, game.combat_log.events,
		actor.hp, actor.abilities.scores, actor.body.parts, actor.body.attack_part])
