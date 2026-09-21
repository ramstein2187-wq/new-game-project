class_name AttackAction
extends TimeAction

var target_id: StringName


func _init(attack_target: StringName = &"") -> void:
	target_id = attack_target


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return (
		game.actor_is_alive(actor_id)
		and game.can_attack(actor_id)
		and game.actor_is_alive(target_id)
		and actor_id != target_id
		and game.can_melee_reach(
			game.get_actor_position(actor_id), game.get_actor_position(target_id)
		)
	)


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return game.RAT_ATTACK_COST if actor_id == &"rat" else game.ATTACK_COST


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(
		&"attack", actor_id, game.species[actor_id].attack_id, cost
	)
	event.target_id = target_id
	event.data = game.resolve_attack(actor_id, target_id)
	return event
