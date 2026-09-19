class_name TimeAction
extends RefCounted

# An action decides whether it is legal and applies one atomic game-state change.
# The game records its CombatEvent; the scheduler only advances the actor's time.
var reason_codes: Array[StringName] = []


func can_execute(_game: RefCounted, _actor_id: StringName) -> bool:
	return false


func get_cost(_game: RefCounted, _actor_id: StringName) -> int:
	return -1


func execute(_game: RefCounted, _actor_id: StringName, _cost: int) -> CombatEvent:
	return null
