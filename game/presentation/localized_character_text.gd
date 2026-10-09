class_name LocalizedCharacterText
extends RefCounted
## Korean view of the existing query, with its exact English view retained.
static func korean() -> bool: return TranslationServer.get_locale().begins_with("ko")

static func label(value: String) -> String:
	return GameText.term(value) if korean() else value

static func source(id: StringName) -> String:
	var labels := {&"actor:human": "Innate base", &"actor:rat": "Innate base", &"movement_speed": "Movement speed", &"body:locomotion": "Body efficiency", &"move:cardinal": "Standard move", &"final_rounding": "Round up", &"minimum_cost": "Minimum cost", &"base": "Base", &"CON": "Constitution", &"STR": "Strength", &"DEX": "Dexterity", &"PER": "Perception", &"INT": "Intelligence", &"WIL": "Willpower"}
	return GameText.text(labels.get(id, "Other source"))

static func attack_hover(a: Dictionary) -> String:
	if not korean(): return CharacterOverviewText.attack_hover(a)
	if not a.get("valid", false): return GameText.text("No attack definition.")
	return GameText.text("{name}\nDamage {damage} · Attack bonus {bonus}\nPenetration {penetration} · Type {type}\n{availability}", {"name": label(a.attack_name), "damage": CharacterOverviewText.damage(a), "bonus": "%+d" % a.attack_bonus, "penetration": CharacterOverviewText.number(a.penetration), "type": label(a.damage_type), "availability": GameText.text("Basic attack ready." if a.available else "Attack unavailable: health or required functional limbs.")})

static func steps(b: Dictionary) -> Array[Dictionary]:
	var spans: Array[Dictionary] = []
	for step in b.steps:
		var operation: String = String(step.operation)
		var amount := CharacterOverviewText.signed(float(step.value) * 100) + "%" if operation == "PERCENT" else CharacterOverviewText.number(step.value)
		if operation == "FLAT": amount = CharacterOverviewText.signed(step.value)
		elif operation == "DIVIDE": amount = "÷ " + amount
		elif operation == "MAX": amount = GameText.text("At least {amount}", {"amount": amount})
		spans.append(InspectorNumberStyle.span(source(step.source) + "  "))
		spans.append(InspectorNumberStyle.span(amount, InspectorNumberStyle.modifier_tone(step.value) if operation in ["FLAT", "PERCENT"] else InspectorNumberStyle.Tone.NEUTRAL))
		spans.append(InspectorNumberStyle.span(" → " + CharacterOverviewText.number(step.result) + "\n"))
		if step.has("effect_id"): spans.append(InspectorNumberStyle.span(GameText.text("Effect source: {effect}; origin: {origin}.\n", {"effect": source(step.effect_id), "origin": source(step.source_id)})))
		if step.has("stat_breakdown"): spans.append_array(steps(step.stat_breakdown))
	return spans

static func inspection(m: Dictionary, key: StringName) -> Dictionary:
	if not korean(): return CharacterOverviewText.inspection(m, key)
	var title := ""; var value := ""; var body := ""; var spans: Array[Dictionary] = []
	for a in m.attributes:
		if a.id == key:
			title = GameText.term(key); value = CharacterOverviewText.number(a.value)
			spans = steps(a.breakdown)
			body = GameText.text("Base × (1 + percent total) + flat total.\nResolved value: {value}; ability modifier: {modifier}.\nThe modifier uses the whole score. Checks use one resolved primary attribute; alternates require an authored rule.", {"value": value, "modifier": "%+d" % a.modifier})
	match key:
		&"health":
			title = GameText.text("HEALTH"); value = "%d / %d" % [m.hp, m.max_hp]
			spans = steps(m.max_hp_breakdown.con_breakdown)
			body = GameText.text("Current HP {hp}; maximum {maximum}.\nBase HP {base}; resolved CON {con}.\nEach CON point above or below 10 changes base HP by 5%. Round once, minimum 1. Maximum changes preserve damage; decreases can kill, increases never revive.", {"hp": m.hp, "maximum": m.max_hp, "base": m.max_hp_breakdown.base_hp, "con": CharacterOverviewText.number(m.max_hp_breakdown.con)})
		&"attack", &"damage", &"penetration":
			title = GameText.text("MAIN ATTACK")
			if m.attack.get("valid", false):
				var a: Dictionary = m.attack
				value = CharacterOverviewText.damage(a)
				body = attack_hover(a) + "\n\n" + GameText.text("Primary attribute: {ability} ({domain}); modifier {modifier}.\nProficiency {proficiency}; body injury modifier {situation}.\nd20 + attack bonus is checked against defender difficulty. No target selected here. Damage is floored at zero. DEX does not change movement speed.", {"ability": label(a.ability), "domain": label(a.ability_domain), "modifier": "%+d" % a.ability_modifier, "proficiency": "%+d" % a.proficiency, "situation": "%+d" % a.situation})
			else: body = GameText.text("No attack definition.")
		&"armor":
			title = GameText.text("AVERAGE ARMOR"); value = "%.1f" % m.armor.value
			body = GameText.text("Raw armor weighted by part hit probability. Disabled parts remain hittable. Unarmored parts count as zero. No penetration or attacker is included.")
			for p in m.armor.parts:
				body += "\n" + GameText.text("{part}: hit chance {chance}%, armor {armor}, contribution {contribution}.", {"part": label(p.name), "chance": CharacterOverviewText.number(p.probability * 100), "armor": CharacterOverviewText.number(p.armor), "contribution": CharacterOverviewText.number(p.contribution)})
		&"move":
			title = GameText.text("MOVE TIME"); value = "%d μt" % m.move.cost if m.move.valid else GameText.text("Unavailable")
			spans = steps(m.move)
			body = GameText.text("Cardinal movement time before destination checks. Movement speed, body efficiency and active effects apply. Adjusted base × (1 + percent total) + flat total, then round up; minimum 1.")
		&"state":
			title = GameText.text("CURRENT STATE")
			for state in m.states:
				if state.has("current"): body += GameText.text("{part}: {current}/{maximum} ({state}).\n", {"part": label(state.name), "current": state.current, "maximum": state.maximum, "state": label(state.state)})
				else: body += GameText.text("Active effect: {effect}; origin: {origin}.\n", {"effect": source(state.effect_id), "origin": source(state.source_id)})
			if body.is_empty(): body = GameText.text("No injured parts or active Effects.")
	spans.append(InspectorNumberStyle.span(body))
	return {"title": title, "value": value, "body": InspectorNumberStyle.plain_text(spans), "body_spans": spans}
