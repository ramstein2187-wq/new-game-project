class_name WaitAction
extends TimeAction


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return game.actor_is_alive(actor_id)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.RAT_WAIT_COST if actor_id == &"rat" else game.WAIT_COST


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(&"wait", actor_id, &"wait", cost)
	event.importance = CombatEvent.TRIVIAL
	return event
