class_name AttackAction
extends TimeAction

var target_id: StringName


func _init(attack_target: StringName = &"") -> void:
	target_id = attack_target


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return (
		game.actor_is_alive(actor_id)
		and game.actor_is_alive(target_id)
		and actor_id != target_id
		and game._manhattan_distance(
			game.get_actor_position(actor_id), game.get_actor_position(target_id)
		) == 1
	)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.RAT_ATTACK_COST if actor_id == &"rat" else game.ATTACK_COST


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var remaining_hp: int = game.damage_actor(target_id, game.ATTACK_DAMAGE)
	var event: CombatEvent = game.make_action_event(
		&"attack", actor_id, &"bite" if actor_id == &"rat" else &"melee", cost
	)
	event.target_id = target_id
	event.data = {
		"damage": game.ATTACK_DAMAGE,
		"defeated": remaining_hp == 0,
		"remaining_hp": remaining_hp,
	}
	return event
