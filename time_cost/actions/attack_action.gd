class_name AttackAction
extends TimeAction

const BASE_COST := 1000

var target_id: StringName
var weapon_action_id: StringName


func _init(attack_target: StringName = &"", selected_action: StringName = &"") -> void:
	target_id = attack_target
	weapon_action_id = selected_action


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return (
		game.actor_is_alive(actor_id)
		and game.can_attack(actor_id, weapon_action_id)
		and game.actor_is_alive(target_id)
		and actor_id != target_id
		and game.can_melee_reach(
			game.get_actor_position(actor_id), game.get_actor_position(target_id)
		)
	)


static func cost_from_multiplier(multiplier: float) -> int:
	return maxi(1, roundi(BASE_COST * multiplier))

func get_cost(game: RefCounted, actor_id: StringName) -> int:
	if weapon_action_id == &"":
		return BASE_COST
	var actor: Actor = game.get_actor(actor_id)
	var selected := actor.weapon_action(weapon_action_id) if actor != null else null
	return cost_from_multiplier(selected.cost_multiplier) if selected != null and selected.is_valid() else 0


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(
		&"attack", actor_id, weapon_action_id if weapon_action_id != &"" else game.get_actor(actor_id).attack.id, cost
	)
	event.target_id = target_id
	event.data = game.resolve_attack(actor_id, target_id, weapon_action_id)
	event.data["action_cost"] = cost
	return event
