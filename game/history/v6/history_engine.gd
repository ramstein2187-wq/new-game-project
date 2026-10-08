class_name HistoryEngine
extends RefCounted
## Explicit opt-in entry point. Never called by HistoryGenerator or gameplay.

class Result extends RefCounted:
	var seed: int
	var content_version: String = HistoryEventSelector.CONTENT_VERSION
	var initial: HistoryWorldState
	var final_state: HistoryWorldState
	var log := HistoricalEventLog.new()
	var errors: Array[String] = []
	var stop_reason: String
	func data() -> Dictionary:
		return {"seed": seed, "content_version": content_version, "initial": initial.data(),
			"events": log.data(), "final": final_state.data(), "errors": errors.duplicate(), "stop_reason": stop_reason}
	func canonical() -> String:
		return JSON.stringify(data(), "", true)

static func default_rules() -> Array[HistoryEventRule]:
	return [HistoryV6FactionSplit.new(), HistoryV6Migration.new(), HistoryV6SiteReoccupation.new(),
		HistoryV6RelationshipChange.new(), HistoryV6SiteIncident.new(), HistoryV6ArtifactTransfer.new()]

static func civilization_rules() -> Array[HistoryEventRule]:
	return [HistoryCivilizationPopulation.new(), HistoryCivilizationFacility.new(), HistoryCivilizationPolitics.new(),
		HistoryCivilizationProject.new(), HistoryCivilizationScarRule.new(), HistoryCivilizationCustody.new()]

func generate_civilization(seed: int, horizon: int = 600, safety_limit: int = 256, initial: HistoryWorldState = null) -> Result:
	if initial != null and initial.civilization == null:
		var rejected := Result.new()
		rejected.seed = seed; rejected.initial = initial.copy(); rejected.final_state = initial.copy()
		rejected.errors = ["Phase B requires civilization initial state"]; rejected.stop_reason = "invalid_input"
		return rejected
	return generate(seed, safety_limit, civilization_rules(), HistoryCivilizationInitial.build(seed) if initial == null else initial, horizon)

func generate(seed: int, limit: int = 36, rules: Array[HistoryEventRule] = default_rules(), initial: HistoryWorldState = null, horizon: int = 0) -> Result:
	var result := Result.new()
	result.seed = seed
	result.initial = HistoryInitialWorld.build(seed) if initial == null else initial.copy()
	result.final_state = result.initial.copy()
	if result.initial.civilization != null: result.content_version = HistoryCivilizationContent.VERSION
	result.errors = result.initial.errors()
	var ids: Array[String] = []
	for rule in rules:
		if rule == null or rule.id.is_empty() or rule.id in ids or not is_finite(rule.weight) or rule.weight < 0:
			result.errors.append("Invalid/duplicate rule definition")
		else: ids.append(rule.id)
	if limit < 0: result.errors.append("Negative event limit")
	if result.initial.civilization != null and horizon <= result.initial.year: result.errors.append("Civilization horizon must advance")
	if not result.errors.is_empty():
		result.stop_reason = "invalid_input"
		return result
	var reducer := HistoryReducer.new()
	var selector := HistoryEventSelector.new()
	for step in range(limit):
		# Rule code sees a defensive copy; accidental mutation is an error, not state.
		var view := result.final_state.copy()
		if view.civilization != null:
			var clock_rng := HistoryEventSelector.stream(seed, step, "time", result.content_version)
			view.year += clock_rng.randi_range(45, 90) if clock_rng.randf() < 0.12 else clock_rng.randi_range(2, 22)
			if view.year > horizon:
				result.stop_reason = "time_horizon"
				return result
		var before := view.canonical()
		var choice := selector.select(view, rules, seed, step, result.log.last_rule())
		if choice.rule == null and view.civilization != null and choice.cooldown_blocked:
			choice = selector.select(view, rules, seed, step)
		if view.canonical() != before:
			result.errors.append("Rule mutated candidate input")
			result.stop_reason = "invalid_rule"
			return result
		if choice.rule == null and view.civilization != null:
			for _idle in range(16):
				var opportunity := view.civilization.next_opportunity(view)
				if opportunity < 0: break
				if opportunity > horizon:
					result.stop_reason = "time_horizon"
					return result
				view.year = opportunity; before = view.canonical()
				choice = selector.select(view, rules, seed, step)
				if view.canonical() != before:
					result.errors.append("Rule mutated idle-time input"); result.stop_reason = "invalid_rule"; return result
				if choice.rule != null: break
		if choice.rule == null:
			result.stop_reason = "cooldown_exhausted" if choice.cooldown_blocked else "no_eligible_rules"
			return result
		var event := choice.rule.propose(view, choice.candidate, HistoryEventSelector.stream(seed, step, "parameters/" + choice.rule.id, result.content_version))
		if event == null or event.rule_id != choice.rule.id or view.canonical() != before:
			result.errors.append("Invalid/mutating rule proposal")
			result.stop_reason = "invalid_rule"
			return result
		event.id = "event_%04d" % step
		event.year = view.year if view.civilization != null else result.final_state.year + HistoryEventSelector.stream(seed, step, "time").randi_range(1, 5)
		var transition := reducer.apply(result.final_state, event, result.log)
		if not transition.ok():
			result.errors.append_array(transition.errors)
			result.stop_reason = "validation_failed"
			return result
		result.final_state = transition.state
		result.log.append_committed(event)
	result.stop_reason = "event_limit"
	return result
