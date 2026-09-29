class_name InteractAction
extends TimeAction

var target_cell: Vector2i


func _init(cell: Vector2i = Vector2i.ZERO) -> void:
	target_cell = cell


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return (
		game.actor_is_alive(actor_id)
		and target_cell == game.door_position
		and (game.get_actor_position(actor_id) - target_cell).length_squared() == 1
		and (
			not game.door_open
			or game.actors.occupant_at(target_cell) == null
		)
	)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.get_actor(actor_id).definition.interact_cost


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	game.door_open = not game.door_open
	var event: CombatEvent = game.make_action_event(&"interact", actor_id, &"door", cost)
	event.data = {"open": game.door_open, "position": target_cell}
	return event
