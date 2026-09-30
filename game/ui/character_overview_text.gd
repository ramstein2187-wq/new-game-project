class_name CharacterOverviewText
extends RefCounted

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
	var lines: Array[String] = []
	for step: Dictionary in breakdown.steps:
		var operation: String = String(step.operation)
		var amount := signed(float(step.value) * 100) + "%" if operation == "PERCENT" else number(step.value)
		if operation == "DIVIDE": amount = "÷ " + amount
		elif operation == "FLAT": amount = signed(step.value)
		elif operation == "MAX": amount = "at least " + amount
		lines.append("%s   %s   → %s" % [source_label(step.source), amount, number(step.result)])
		if step.has("effect_id"):
			lines.append("  Effect: %s · Origin: %s" % [source_label(step.effect_id), source_label(step.source_id)])
		if step.has("stat_breakdown"):
			lines.append("  Movement Speed sources:\n" + steps_text(step.stat_breakdown).indent("  "))
	return "\n".join(lines)

# No model is retained. The screen passes fresh query data on every selection.
static func inspection(model: Dictionary, key: StringName) -> Dictionary:
	for attribute: Dictionary in model.attributes:
		if attribute.id == key:
			var b: Dictionary = attribute.breakdown
			return {"title": ATTRIBUTE_NAMES[key], "value": number(attribute.value),
				"body": "Base × (1 + Σ Percent) + Σ Flat\n\n%s\n\nBase %s · Percent %s%% · Flat %s\nResolved %s · Modifier %+d\n\nModifier uses the whole score, discarding any fractional part.\nCombat currently uses base attributes; primary attribute Effects do not modify attacks." % [
					steps_text(b), number(b.base), number(b.percent_total * 100), signed(b.flat_total), number(b.value), attribute.modifier]}
	match key:
		&"health":
			return {"title": "HEALTH", "value": "%d / %d" % [model.hp, model.max_hp],
				"body": "Current HP   %d\nMaximum HP   %d\n\nSources: current health and starting maximum health.\nCON does not modify maximum HP in the current rules." % [model.hp, model.max_hp]}
		&"attack", &"damage", &"penetration":
			var a: Dictionary = model.attack
			if not a.get("valid", false):
				return {"title": "MAIN ATTACK", "value": "Unavailable", "body": "No attack definition."}
			return {"title": a.attack_name.to_upper(), "value": damage(a),
				"body": "TO HIT\n%s Modifier (base attribute)   %+d\nProficiency   %+d\nSituation (body injury)   %+d\nAttack Bonus   %+d\n\nd20 + Attack Bonus is checked against defender difficulty. No target is selected here.\n\nDAMAGE\n%s   %s\n%s Modifier   %+d\nDamage   %s\nDamage is floored at zero after rolling.\n\nPenetration   %s\nDamage Type   %s\n\n%s\nSources: current weapon / natural attack and basic attack rules.\nPrimary attribute Effects currently do not modify combat." % [
					a.ability, a.ability_modifier, a.proficiency, a.situation, a.attack_bonus,
					a.name, a.dice, a.ability, a.ability_modifier, damage(a), number(a.penetration), a.damage_type,
					"Basic attack ready." if a.available else "Attack unavailable: health or required functional limbs."]}
		&"armor":
			var a: Dictionary = model.armor
			return {"title": "AVERAGE ARMOR", "value": "%.1f" % a.value,
				"body": "Σ (part weight / total weight × raw armor)\nTotal hit weight   %s\n\n%s\n\nExpected raw armor   %s\n\nDisabled parts remain hittable. Nonpositive weights contribute zero. Unarmored is zero.\nNo penetration, damage type, armor profile or attacker is included.\nSources: body hit weights and current armor on each part." % [number(a.total_weight), armor_lines(a, true), number(a.value)]}
		&"move":
			var b: Dictionary = model.move
			return {"title": "MOVE TIME", "value": "%d μt" % b.cost if b.valid else "Unavailable",
				"body": "Cardinal standard movement; no destination check.\n\n%s\n\n%s\nSources: standard movement, movement speed, body efficiency and active Effects.\nAdjusted Base × (1 + Σ Percent) + Σ Flat, then round up and minimum 1." % [
					steps_text(b), "Final   %d μt" % b.cost if b.valid else "Reason: " + source_label(b.reason)]}
		&"state":
			var lines: Array[String] = []
			for state: Dictionary in model.states:
				if state.has("current"):
					lines.append("%s   %d / %d (%s)" % [state.name, state.current, state.maximum, state.state])
				else:
					lines.append("%s\n  Effect: %s · Origin: %s" % [state.name, source_label(state.effect_id), source_label(state.source_id)])
			return {"title": "CURRENT STATE", "value": "", "body": "\n".join(lines) + "\n\nSources: current body integrity/state and active Effects." if not lines.is_empty() else "No injured parts or active Effects."}
	return {"title": "INSPECTOR", "value": "", "body": "Select a value to see its sources."}
