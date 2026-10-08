class_name HistoryEventSelector
extends RefCounted

const CONTENT_VERSION := "phase_a_3"

class Choice extends RefCounted:
	var rule: HistoryEventRule
	var candidate: HistoryEventRule.Candidate
	var cooldown_blocked: bool = false

static func stream(seed: int, step: int, namespace_id: String) -> RandomNumberGenerator:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history_v6", CONTENT_VERSION, str(step), namespace_id])
	return rng

func select(state: HistoryWorldState, rules: Array[HistoryEventRule], seed: int, step: int, last_rule: String = "") -> Choice:
	var choice := Choice.new()
	var best_score := INF
	# Independent exponential races implement weighted type selection. Adding an
	# ineligible rule or reordering content consumes no other rule's random stream.
	for rule in rules:
		var pool := rule.candidates(state)
		if pool.is_empty() or rule.weight <= 0.0: continue
		if rule.id == last_rule:
			choice.cooldown_blocked = true
			continue
		var score := -log(maxf(0.000000001, stream(seed, step, "type/" + rule.id).randf())) / rule.weight
		if score > best_score or (score == best_score and choice.rule != null and rule.id >= choice.rule.id): continue
		best_score = score
		choice.rule = rule
		pool.sort_custom(func(a: HistoryEventRule.Candidate, b: HistoryEventRule.Candidate) -> bool: return a.key < b.key)
		choice.candidate = pool[stream(seed, step, "participants/" + rule.id).randi_range(0, pool.size() - 1)]
	return choice
