class_name HistoryEventRule
extends RefCounted
## One shallow rule contract. Proposals never mutate their input state.

class Candidate extends RefCounted:
	var key: String
	var actor: String
	var target: String
	var location: String
	var variant: String
	func _init(a: String = "", t: String = "", l: String = "", v: String = "") -> void:
		actor = a; target = t; location = l; variant = v
		key = JSON.stringify([a, t, l, v])

var id: String
var weight: float = 1.0

func candidates(_state: HistoryWorldState) -> Array[Candidate]:
	return []

func propose(_state: HistoryWorldState, _candidate: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	return null

func event(actor: String, targets: Array[String]) -> HistoryV6Event:
	var result := HistoryV6Event.new()
	result.rule_id = id
	result.participants = [actor]
	result.targets = targets
	return result
