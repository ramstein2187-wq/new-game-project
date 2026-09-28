class_name BasicMeleeTactics
extends RefCounted


static func choose(game: RefCounted, actor_id: StringName, target_id: StringName) -> TacticalChoice:
	if game.actor_is_alive(target_id) and game.can_attack(actor_id) and game.can_melee_reach(
		game.get_actor_position(actor_id), game.get_actor_position(target_id)
	):
		var attack := TacticalChoice.new(AttackAction.new(target_id), &"fight_target", 100)
		attack.add_reason(&"target_adjacent")
		return attack
	if game.actor_is_alive(target_id) and game.can_melee_reach(
		game.get_actor_position(actor_id), game.get_actor_position(target_id)
	):
		var disabled_wait := TacticalChoice.new(WaitAction.new(), &"hold_position", 0)
		disabled_wait.add_reason(&"attack_function_lost")
		return disabled_wait

	if game.actor_is_alive(target_id) and game.movement_efficiency(actor_id) > 0:
		var next_step: Vector2i = game.next_step_toward(actor_id, target_id)
		if next_step != game.get_actor_position(actor_id):
			if next_step == game.door_position and not game.door_open:
				var interact := TacticalChoice.new(InteractAction.new(game.door_position), &"approach_target", 80)
				interact.add_reason(&"door_blocks_route")
				return interact
			var move := TacticalChoice.new(
				MoveAction.new(next_step - game.get_actor_position(actor_id)), &"approach_target", 70
			)
			move.add_reason(&"close_distance")
			return move

	var wait := TacticalChoice.new(WaitAction.new(), &"hold_position", 0)
	if not game.can_attack(actor_id):
		wait.add_reason(&"attack_function_lost")
	if game.movement_efficiency(actor_id) <= 0:
		wait.add_reason(&"locomotion_lost")
	return wait
