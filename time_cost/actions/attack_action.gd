class_name AttackAction
extends TimeAction

var target_id: StringName


func _init(attack_target: StringName = &"") -> void:
	target_id = attack_target


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return failure_reason(game, actor_id) == &""


func failure_reason(game: RefCounted, actor_id: StringName) -> StringName:
	if not game.actor_is_alive(actor_id):
		return &"actor_unavailable"
	if not game.can_attack(actor_id):
		return &"attack_function_lost"
	if actor_id == target_id or not game.actor_is_alive(target_id):
		return &"target_unavailable"
	var start: Vector2i = game.get_actor_position(actor_id)
	var target: Vector2i = game.get_actor_position(target_id)
	var offset := target - start
	if maxi(absi(offset.x), absi(offset.y)) > 1 or offset == Vector2i.ZERO:
		return &"out_of_range"
	if not game.can_melee_reach(start, target):
		return &"attack_path_blocked"
	return &""


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.get_actor(actor_id).definition.attack_cost


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(
		&"attack", actor_id, game.get_actor(actor_id).species.attack_id, cost
	)
	event.target_id = target_id
	event.data = game.resolve_attack(actor_id, target_id)
	return event
