class_name HistoryEventSelector
extends RefCounted

const CONTENT_VERSION := "phase_a_3"

class Choice extends RefCounted:
	var rule: HistoryEventRule
	var candidate: HistoryEventRule.Candidate
	var cooldown_blocked: bool = false

static func stream(seed: int, step: int, namespace_id: String, version: String = CONTENT_VERSION) -> RandomNumberGenerator:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history_v6", version, str(step), namespace_id])
	return rng

func select(state: HistoryWorldState, rules: Array[HistoryEventRule], seed: int, step: int, last_rule: String = "") -> Choice:
	var choice := Choice.new()
	var best_score := INF
	var version := CONTENT_VERSION if state.civilization == null else HistoryCivilizationContent.VERSION
	# Independent exponential races implement weighted type selection. Adding an
	# ineligible rule or reordering content consumes no other rule's random stream.
	for rule in rules:
		var pool := rule.candidates(state)
		var effective := rule.effective_weight(state, pool)
		if pool.is_empty() or effective <= 0.0: continue
		if rule.id == last_rule:
			choice.cooldown_blocked = true
			continue
		var score := -log(maxf(0.000000001, stream(seed, step, "type/" + rule.id, version).randf())) / effective
		if score > best_score or (score == best_score and choice.rule != null and rule.id >= choice.rule.id): continue
		best_score = score
		choice.rule = rule
		pool.sort_custom(func(a: HistoryEventRule.Candidate, b: HistoryEventRule.Candidate) -> bool: return a.key < b.key)
		if state.civilization == null:
			choice.candidate = pool[stream(seed, step, "participants/" + rule.id).randi_range(0, pool.size() - 1)]
		else:
			var participant_score := INF
			for c in pool:
				var candidate_score := -log(maxf(0.000000001, stream(seed, step, "participants/" + rule.id + "/" + c.key, version).randf())) / c.urgency
				if candidate_score < participant_score: participant_score = candidate_score; choice.candidate = c
	return choice
