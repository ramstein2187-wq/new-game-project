class_name HistoryCivilizationRule
extends HistoryEventRule
## Small shared proposal helpers. No scheduling, state mutation, or generator here.
const Op = HistoryV6Event.Operation

func effective_weight(_s: HistoryWorldState, pool: Array[Candidate]) -> float:
	var urgency := 1.0
	for c in pool: urgency = maxf(urgency, c.urgency)
	return weight * urgency

func add(pool: Array[Candidate], actor: String, target: String, location: String, variant: String, urgency: float = 1.0) -> void:
	var c := Candidate.new(actor, target, location, variant)
	c.urgency = urgency; pool.append(c)

func proposal(s: HistoryWorldState, c: Candidate, reason: String) -> HistoryV6Event:
	var e := event(c.actor, [])
	for reference in [c.target, c.location]:
		if s.contains(reference) and reference not in e.targets: e.targets.append(reference)
	e.reason = reason
	return e

func effect(e: HistoryV6Event, op: int, subject: String, target: String = "", location: String = "", value: int = 0, detail: String = "") -> void:
	e.effects.append(HistoryV6Event.Effect.new(op, subject, target, location, value, detail))

func cite(e: HistoryV6Event, s: HistoryWorldState, kind: String, id_value: String) -> void:
	e.cite(s, [kind + ":" + id_value])

func unique_id(s: HistoryWorldState, prefix: String) -> String:
	var number := 0
	while s.contains(prefix + str(number)) or prefix + str(number) in s.civilization.retired_populations: number += 1
	return prefix + str(number)
