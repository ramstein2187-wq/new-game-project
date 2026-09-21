class_name InteractAction
extends TimeAction

var target_cell: Vector2i


func _init(cell: Vector2i = Vector2i.ZERO) -> void:
	target_cell = cell


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return (
		target_cell == game.door_position
		and game._manhattan_distance(game.get_actor_position(actor_id), target_cell) == 1
		and (
			not game.door_open
			or (game.player_position != target_cell and (
				game.rat_hp <= 0 or game.rat_position != target_cell
			))
		)
	)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.RAT_INTERACT_COST if actor_id == &"rat" else game.INTERACT_COST


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	game.door_open = not game.door_open
	var event: CombatEvent = game.make_action_event(&"interact", actor_id, &"door", cost)
	event.data = {"open": game.door_open, "position": target_cell}
	return event
