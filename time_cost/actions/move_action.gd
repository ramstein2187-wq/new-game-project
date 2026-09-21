class_name MoveAction
extends TimeAction

var direction: Vector2i


func _init(move_direction: Vector2i = Vector2i.ZERO) -> void:
	direction = move_direction


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	if game.movement_efficiency(actor_id) <= 0:
		return false
	return game.can_step(game.get_actor_position(actor_id), direction, actor_id)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	var efficiency: float = game.movement_efficiency(actor_id)
	if efficiency <= 0:
		return 0
	var base_cost: int = game.RAT_MOVE_COST if actor_id == &"rat" else game.MOVE_COST
	return ceili(base_cost / efficiency)


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var start: Vector2i = game.get_actor_position(actor_id)
	var target := start + direction
	game.set_actor_position(actor_id, target)
	var event: CombatEvent = game.make_action_event(&"move", actor_id, &"move", cost)
	var adjacent: bool = actor_id == &"rat" and game.can_melee_reach(target, game.player_position)
	event.importance = CombatEvent.IMPORTANT if adjacent or visible_cue == &"retreat" else CombatEvent.TRIVIAL
	event.data = {"from": start, "to": target, "in_melee_range": adjacent}
	return event
