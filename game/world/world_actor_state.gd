class_name WorldActorState
extends RefCounted
## Save the existing Actor model's mutable state; no second combat implementation.
static func capture(a: Actor, ready_remaining: int = 0) -> Dictionary:
	var parts := {}
	for id in a.body.parts: parts[String(id)] = a.body.parts[id].current
	var effects: Array = []
	for instance in a.active_effect_instances():
		var stats: Array = []; var costs: Array = []
		for m in instance.definition.stat_modifiers:
			stats.append({"source": String(m.source_id), "target": String(m.target_stat), "operation": int(m.operation), "value": m.value})
		for m in instance.definition.action_cost_modifiers:
			costs.append({"source": String(m.source_id), "tags": m.required_tags.duplicate(), "operation": int(m.operation), "value": m.value})
		effects.append({"id": String(instance.definition.id), "source": String(instance.source_id), "stats": stats, "costs": costs})
	return {"id": String(a.id), "type": String(a.definition.type_id), "name": a.display_name,
		"position": HistoryWorldRealization._cell(a.position), "facing": HistoryWorldRealization._cell(a.facing),
		"damage": a._damage_taken, "dead": a._dead, "scores": a.abilities.scores.duplicate(), "points": a.abilities.remaining,
		"parts": parts, "attack_part": String(a.body.attack_part), "weapon": String(a.weapon_id),
		"aggression": a.aggression, "fear_bonus": a.fear_bonus, "policy": String(a.ai_policy), "target": String(a.target_id),
		"caution_target": String(a.melee_caution_target), "caution_spent": a.melee_caution_spent,
		"effects": effects, "ready_remaining": ready_remaining}

static func restore(raw: Variant) -> Actor:
	if not raw is Dictionary or raw.size() != 20: return null
	for field in ["id", "type", "name", "attack_part", "weapon", "policy", "target", "caution_target"]:
		if not raw.get(field) is String: return null
	for field in ["damage", "points", "aggression", "fear_bonus", "caution_spent", "ready_remaining"]:
		if not HistoryV6Event._integer(raw.get(field)): return null
	if raw.id.is_empty() or raw.type not in ["human", "rat"] or raw.damage < 0 or raw.points < 0 or raw.ready_remaining < 0 or not raw.get("dead") is bool: return null
	if not valid_cell(raw.get("position")) or not valid_cell(raw.get("facing")) or not raw.get("parts") is Dictionary or not raw.get("scores") is Dictionary or not raw.get("effects") is Array: return null
	var a := Actor.new(StringName(raw.id), ActorDefinition.human_default() if raw.type == "human" else ActorDefinition.rat_common(), HistoryWorldRealization.vector(raw.position), raw.name)
	if raw.scores.size() != AbilityScores.NAMES.size() or raw.parts.size() != a.body.parts.size(): return null
	for id in AbilityScores.NAMES:
		if not HistoryV6Event._integer(raw.scores.get(String(id))) or raw.scores[String(id)] < 1 or raw.scores[String(id)] > 100: return null
		a.abilities.scores[id] = int(raw.scores[String(id)])
	for id in a.body.parts:
		if not HistoryV6Event._integer(raw.parts.get(String(id))) or raw.parts[String(id)] < 0 or raw.parts[String(id)] > a.body.parts[id].maximum: return null
		a.body.parts[id].current = int(raw.parts[String(id)])
	if raw.weapon != String(a.weapon_id):
		if raw.weapon.is_empty() or not a.set_weapon(CombatContentCatalog.weapon(StringName(raw.weapon))): return null
	if not raw.attack_part.is_empty() and not a.body.parts.has(StringName(raw.attack_part)): return null
	a.body.attack_part = StringName(raw.attack_part); a.abilities.remaining = int(raw.points)
	a.facing = HistoryWorldRealization.vector(raw.facing)
	if a.facing not in TimeCostGame.MOVE_DIRECTIONS: return null
	a.aggression = int(raw.aggression); a.fear_bonus = int(raw.fear_bonus)
	if raw.policy not in ["wait", "rat_tactics", "basic_melee"]: return null
	a.ai_policy = StringName(raw.policy); a.target_id = StringName(raw.target)
	a.melee_caution_target = StringName(raw.caution_target); a.melee_caution_spent = int(raw.caution_spent)
	for e in raw.effects:
		if not e is Dictionary or e.size() != 4 or not e.get("id") is String or not e.get("source") is String or not e.get("stats") is Array or not e.get("costs") is Array: return null
		var effect := GameplayEffectDefinition.new(); effect.id = StringName(e.id)
		for m in e.stats:
			if not _modifier_valid(m, "target"): return null
			var modifier := StatModifier.new(); modifier.source_id = StringName(m.source); modifier.target_stat = StringName(m.target)
			modifier.operation = int(m.operation); modifier.value = float(m.value); effect.stat_modifiers.append(modifier)
		for m in e.costs:
			if not _modifier_valid(m, "tags") or not HistoryWorldManifest._strings(m.tags): return null
			var modifier := ActionCostModifier.new(); modifier.source_id = StringName(m.source)
			for tag in m.tags: modifier.required_tags.append(StringName(tag))
			modifier.operation = int(m.operation); modifier.value = float(m.value); effect.action_cost_modifiers.append(modifier)
		if not effect.is_valid() or not a.add_effect(effect, StringName(e.source)): return null
	a._damage_taken = int(raw.damage); a._dead = raw.dead
	if not a._dead and a.hp <= 0: return null
	return a

static func _modifier_valid(m: Variant, selector: String) -> bool:
	return m is Dictionary and m.size() == 4 and m.get("source") is String and m.has(selector) and HistoryV6Event._integer(m.get("operation")) and int(m.operation) in [0, 1] and (m.get("value") is float or m.get("value") is int) and is_finite(float(m.value)) and (selector != "target" or m.target is String)

static func valid_cell(raw: Variant) -> bool:
	return raw is Array and raw.size() == 2 and HistoryV6Event._integer(raw[0]) and HistoryV6Event._integer(raw[1])
