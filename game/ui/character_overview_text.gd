class_name CharacterOverviewText
extends RefCounted

const RESULT_DIVIDER := "────────────"

const ATTRIBUTE_NAMES := {&"STR": "STRENGTH", &"DEX": "DEXTERITY", &"CON": "CONSTITUTION",
	&"PER": "PERCEPTION", &"INT": "INTELLIGENCE", &"WIL": "WILLPOWER"}

static func number(value: float) -> String:
	return ("%.2f" % value).trim_suffix("0").trim_suffix("0").trim_suffix(".")

static func signed(value: float) -> String:
	return ("+" if value > 0 else "") + number(value)

static func source_label(source: StringName) -> String:
	var labels := {&"movement_speed": "Movement Speed", &"body:locomotion": "Body Efficiency",
		&"move:cardinal": "Standard Move", &"final_rounding": "Round Up", &"minimum_cost": "Minimum Cost"}
	return labels.get(source, String(source).replace(":", " / ").replace("_", " ").capitalize())

static func damage(attack: Dictionary) -> String:
	if not attack.get("valid", false):
		return "Unavailable"
	var modifier: int = attack.ability_modifier + attack.damage_modifier
	return attack.dice + ("%+d" % modifier if modifier != 0 else "")

static func attack_hover(attack: Dictionary) -> String:
	if not attack.get("valid", false):
		return "No attack definition."
	return "%s\nDamage  %s\nAttack Bonus  %+d\nPenetration  %s\nDamage Type  %s\n%s" % [
		attack.attack_name, damage(attack), attack.attack_bonus, number(attack.penetration),
		attack.damage_type, "Basic attack; no target selected." if attack.available else "Currently unavailable: body or health."]

static func armor_lines(armor: Dictionary, detailed: bool) -> String:
	var lines: Array[String] = []
	for part: Dictionary in armor.parts:
		var label := "Armor " + number(part.armor) if part.armor > 0 else "Unarmored"
		lines.append("%s   %s%%   %s%s" % [part.name, number(part.probability * 100), label,
			"  → " + number(part.contribution) if detailed else ""])
		if detailed and part.armor_id != &"":
			lines.append("  Source: " + source_label(part.armor_id))
	return "\n".join(lines)

# Format resolver steps, preserving authoritative order, operation and provenance.
static func steps_text(breakdown: Dictionary) -> String:
	return InspectorNumberStyle.plain_text(_steps_spans(breakdown))

static func _steps_spans(breakdown: Dictionary) -> Array[Dictionary]:
	var spans: Array[Dictionary] = []
	for step: Dictionary in breakdown.steps:
		if not spans.is_empty():
			spans.append(InspectorNumberStyle.span("\n"))
		var operation: String = String(step.operation)
		var amount := signed(float(step.value) * 100) + "%" if operation == "PERCENT" else number(step.value)
		if operation == "DIVIDE": amount = "÷ " + amount
		elif operation == "FLAT": amount = signed(step.value)
		elif operation == "MAX": amount = "at least " + amount
		var amount_span := _modifier(step.value, amount) if operation in ["PERCENT", "FLAT"] else InspectorNumberStyle.span(amount)
		var result_span := _result(number(step.result)) if operation == "MAX" else InspectorNumberStyle.span(number(step.result))
		spans.append_array(_format_spans("%s   %s   → %s", [source_label(step.source), amount_span, result_span]))
		if step.has("effect_id"):
			spans.append(InspectorNumberStyle.span("\n  Effect: %s · Origin: %s" % [source_label(step.effect_id), source_label(step.source_id)]))
		if step.has("stat_breakdown"):
			spans.append(InspectorNumberStyle.span("\n  Movement Speed sources:\n  "))
			for nested: Dictionary in _steps_spans(step.stat_breakdown):
				spans.append(InspectorNumberStyle.span(nested.text.replace("\n", "\n  "), nested.tone))
	return spans

static func _modifier(value: float, text: String) -> Dictionary:
	var tone := InspectorNumberStyle.modifier_tone(value)
	# Formatting may round a tiny modifier to signed zero; visible zero is neutral.
	if text in ["0", "+0", "-0", "0%", "+0%", "-0%"]:
		tone = InspectorNumberStyle.Tone.NEUTRAL
	return InspectorNumberStyle.span(text, tone)

static func _result(text: String) -> Dictionary:
	return InspectorNumberStyle.span(text, InspectorNumberStyle.Tone.RESULT)

# Controlled templates preserve semantic roles, without scanning numbers in text.
# Dynamic names and labels remain literal, neutral spans (even if they contain +/-).
static func _format_spans(template: String, values: Array) -> Array[Dictionary]:
	var literals := template.split("%s")
	assert(literals.size() == values.size() + 1)
	var spans: Array[Dictionary] = []
	for index in range(literals.size()):
		spans.append(InspectorNumberStyle.span(literals[index]))
		if index < values.size():
			var value: Variant = values[index]
			if value is Array:
				spans.append_array(value)
			elif value is Dictionary:
				spans.append(value)
			else:
				spans.append(InspectorNumberStyle.span(str(value)))
	return spans

static func _details(title: String, value: String, spans: Array[Dictionary]) -> Dictionary:
	return {"title": title, "value": value, "body": InspectorNumberStyle.plain_text(spans), "body_spans": spans}

# No model is retained. The screen passes fresh query data on every selection.
static func inspection(model: Dictionary, key: StringName) -> Dictionary:
	for attribute: Dictionary in model.attributes:
		if attribute.id == key:
			var b: Dictionary = attribute.breakdown
			return _details(ATTRIBUTE_NAMES[key], number(attribute.value), _format_spans(
				"Domain   %s\nBase × (1 + Σ Percent) + Σ Flat\n\n%s\n\nBase %s · Percent %s% · Flat %s\n" + RESULT_DIVIDER + "\nResolved %s · Modifier %s\n\nModifier uses the whole score, discarding any fractional part.\nGameplay checks consume one resolved primary attribute. An alternate is used only when the authored rule explicitly allows it.", [
					StatCatalog.primary_domain(key), _steps_spans(b), number(b.base), number(b.percent_total * 100), signed(b.flat_total), _result(number(b.value)),
					_modifier(attribute.modifier, "%+d" % attribute.modifier)]))
	match key:
		&"health":
			return {"title": "HEALTH", "value": "%d / %d" % [model.hp, model.max_hp],
				"body": "Current HP   %d\nMaximum HP   %d\n\nSources: current health and starting maximum health.\nCON does not modify maximum HP in the current rules." % [model.hp, model.max_hp]}
		&"attack", &"damage", &"penetration":
			var a: Dictionary = model.attack
			if not a.get("valid", false):
				return {"title": "MAIN ATTACK", "value": "Unavailable", "body": "No attack definition."}
			return _details(a.attack_name.to_upper(), damage(a), _format_spans(
				"TO HIT\n%s (%s) Modifier   %s\nProficiency   %s\nSituation (body injury)   %s\n" + RESULT_DIVIDER + "\nAttack Bonus   %s\n\nd20 + Attack Bonus is checked against defender difficulty. No target is selected here.\n\nDAMAGE\n%s   %s\n%s Modifier   %s\n" + RESULT_DIVIDER + "\nDamage   %s\nDamage is floored at zero after rolling.\n\nPenetration   %s\nDamage Type   %s\n\n%s\nSources: current weapon / natural attack, resolved primary attribute and basic attack rules.\nDEX/Execution does not change movement speed; movement_speed remains an independent stat.", [
					a.ability, a.ability_domain, _modifier(a.ability_modifier, "%+d" % a.ability_modifier),
					_modifier(a.proficiency, "%+d" % a.proficiency), _modifier(a.situation, "%+d" % a.situation), _result("%+d" % a.attack_bonus),
					a.name, a.dice, a.ability, _modifier(a.ability_modifier, "%+d" % a.ability_modifier), _result(damage(a)),
					number(a.penetration), a.damage_type, "Basic attack ready." if a.available else "Attack unavailable: health or required functional limbs."]))
		&"armor":
			var a: Dictionary = model.armor
			return {"title": "AVERAGE ARMOR", "value": "%.1f" % a.value,
				"body": "Σ (part weight / total weight × raw armor)\nTotal hit weight   %s\n\n%s\n\nExpected raw armor   %s\n\nDisabled parts remain hittable. Nonpositive weights contribute zero. Unarmored is zero.\nNo penetration, damage type, armor profile or attacker is included.\nSources: body hit weights and current armor on each part." % [number(a.total_weight), armor_lines(a, true), number(a.value)]}
		&"move":
			var b: Dictionary = model.move
			var final_spans: Array[Dictionary] = []
			if b.valid:
				final_spans = _format_spans(RESULT_DIVIDER + "\nFinal   %s", [_result("%d μt" % b.cost)])
			else:
				final_spans.append(InspectorNumberStyle.span("Reason: " + source_label(b.reason)))
			return _details("MOVE TIME", "%d μt" % b.cost if b.valid else "Unavailable", _format_spans(
				"Cardinal standard movement; no destination check.\n\n%s\n\n%s\nSources: standard movement, movement speed, body efficiency and active Effects.\nAdjusted Base × (1 + Σ Percent) + Σ Flat, then round up and minimum 1.", [_steps_spans(b), final_spans]))
		&"state":
			var lines: Array[String] = []
			for state: Dictionary in model.states:
				if state.has("current"):
					lines.append("%s   %d / %d (%s)" % [state.name, state.current, state.maximum, state.state])
				else:
					lines.append("%s\n  Effect: %s · Origin: %s" % [state.name, source_label(state.effect_id), source_label(state.source_id)])
			return {"title": "CURRENT STATE", "value": "", "body": "\n".join(lines) + "\n\nSources: current body integrity/state and active Effects." if not lines.is_empty() else "No injured parts or active Effects."}
	return {"title": "INSPECTOR", "value": "", "body": "Select a value to see its sources."}
