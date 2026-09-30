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


func base_cost() -> float:
	return BASE_COST

func cost_source() -> StringName:
	return &"attack:normal_melee"

func get_tags() -> Array[StringName]:
	return [&"ATTACK", &"MELEE", &"PHYSICAL"]

func intrinsic_cost(game: RefCounted, actor_id: StringName) -> Dictionary:
	if weapon_action_id == &"":
		return super.intrinsic_cost(game, actor_id)
	var actor: Actor = game.get_actor(actor_id)
	var selected := actor.weapon_action(weapon_action_id) if actor != null else null
	if selected == null or not selected.is_valid():
		return {"valid": false}
	return {"valid": true, "source": StringName("weapon_action:" + String(selected.id)), "value": selected.cost_percent}


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var event: CombatEvent = game.make_action_event(
		&"attack", actor_id, weapon_action_id if weapon_action_id != &"" else game.get_actor(actor_id).attack.id, cost
	)
	event.target_id = target_id
	event.data = game.resolve_attack(actor_id, target_id, weapon_action_id)
	event.data["action_cost"] = cost
	return event
