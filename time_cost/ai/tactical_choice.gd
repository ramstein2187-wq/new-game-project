class_name TacticalChoice
extends RefCounted

# One candidate retains the proposed action, goal, score and causal factors.
var action: TimeAction
var goal: StringName
var score: int
var reasons: Array[StringName] = []
var factors: Dictionary = {}
var visible_cue: StringName = &""


func _init(proposed_action: TimeAction, proposed_goal: StringName, base_score: int) -> void:
	action = proposed_action
	goal = proposed_goal
	score = base_score
	factors[&"base"] = base_score


func add_factor(reason: StringName, value: int) -> TacticalChoice:
	score += value
	factors[reason] = int(factors.get(reason, 0)) + value
	if value != 0 and not reasons.has(reason):
		reasons.append(reason)
	return self


func add_reason(reason: StringName) -> TacticalChoice:
	if not reasons.has(reason):
		reasons.append(reason)
	return self
