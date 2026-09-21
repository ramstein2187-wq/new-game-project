class_name MoveAction
extends TimeAction

var direction: Vector2i


func _init(move_direction: Vector2i = Vector2i.ZERO) -> void:
	direction = move_direction


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return failure_reason(game, actor_id) == &""


func failure_reason(game: RefCounted, actor_id: StringName) -> StringName:
	if not game.actor_is_alive(actor_id):
		return &"actor_unavailable"
	if game.movement_efficiency(actor_id) <= 0:
		return &"movement_function_lost"
	if not game.MOVE_DIRECTIONS.has(direction):
		return &"invalid_direction"
	var start: Vector2i = game.get_actor_position(actor_id)
	var target := start + direction
	if not game.can_step(start, direction):
		return &"movement_path_blocked"
	if game.blocks_actor_movement(target, actor_id):
		return &"tile_occupied"
	return &""


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	var efficiency: float = game.movement_efficiency(actor_id)
	if efficiency <= 0:
		return 0
	var diagonal := direction.x != 0 and direction.y != 0
	var definition: ActorDefinition = game.get_actor(actor_id).definition
	var base_cost := definition.move_diagonal if diagonal else definition.move_cardinal
	return ceili(base_cost / efficiency)


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var start: Vector2i = game.get_actor_position(actor_id)
	var target := start + direction
	game.set_actor_position(actor_id, target)
	var event: CombatEvent = game.make_action_event(&"move", actor_id, &"move", cost)
	var adjacent: bool = actor_id != &"player" and game.actor_is_alive(game.get_actor(actor_id).target_id) and game.can_melee_reach(target, game.get_actor_position(game.get_actor(actor_id).target_id))
	event.importance = CombatEvent.IMPORTANT if adjacent or visible_cue == &"retreat" else CombatEvent.TRIVIAL
	event.data = {"from": start, "to": target, "in_melee_range": adjacent}
	return event
