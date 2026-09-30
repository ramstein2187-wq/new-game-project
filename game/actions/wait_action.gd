class_name WaitAction
extends TimeAction

const BASE_COST := 1000


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return game.actor_is_alive(actor_id)


func base_cost() -> float:
	return BASE_COST

func cost_source() -> StringName:
	return &"wait"

func get_tags() -> Array[StringName]:
	return [&"WAIT"]


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(&"wait", actor_id, &"wait", cost)
	event.importance = CombatEvent.TRIVIAL
	return event
