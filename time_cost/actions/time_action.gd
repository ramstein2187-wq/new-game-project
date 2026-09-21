class_name TimeAction
extends RefCounted

# An action decides whether it is legal and applies one atomic game-state change.
# The game records its CombatEvent; the scheduler only advances the actor's time.
var reason_codes: Array[StringName] = []
# Optional NPC decision trace. Only visible_cue may become player-facing text.
var ai_goal: StringName = &""
var ai_score := 0
var ai_factors: Dictionary = {}
var ai_candidates: Array[Dictionary] = []
var visible_cue: StringName = &""


func can_execute(_game: RefCounted, _actor_id: StringName) -> bool:
	return false


func get_cost(_game: RefCounted, _actor_id: StringName) -> int:
	return -1


func execute(_game: RefCounted, _actor_id: StringName, _cost: int) -> CombatEvent:
	return null
