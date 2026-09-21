class_name RatTactics
extends RefCounted

# Prototype NPC policy: builds options each time the rat is ready to act.
# The generic planner does not know about rats, attacks, doors, or movement.
static func choose(game: RefCounted, actor_id: StringName = &"rat") -> TacticalChoice:
	var options: Array[TacticalChoice] = []
	var in_melee_range: bool = game.can_melee_reach(game.rat_position, game.player_position)
	var aggression: int = game.rat_aggression
	var fear: int = game.get_rat_fear()

	var wait_option := TacticalChoice.new(WaitAction.new(), &"hold_position", 0)
	if not game.can_attack(actor_id):
		wait_option.add_reason(&"attack_function_lost")
	if game.movement_efficiency(actor_id) <= 0:
		wait_option.add_reason(&"locomotion_lost")
	if not in_melee_range:
		var next_step: Vector2i = game._next_step_toward_player()
		if next_step == game.rat_position:
			wait_option.add_reason(&"route_blocked")
		elif next_step == game.door_position and not game.door_open:
			var open_door := TacticalChoice.new(InteractAction.new(game.door_position), &"approach_target", 80)
			open_door.add_reason(&"door_blocks_route")
			open_door.add_factor(&"target_hostile", aggression / 2)
			open_door.add_factor(&"fear", -fear)
			options.append(open_door)
		else:
			var advance := TacticalChoice.new(MoveAction.new(next_step - game.rat_position), &"approach_target", 70)
			advance.add_reason(&"close_distance")
			advance.add_factor(&"target_hostile", aggression / 2)
			advance.add_factor(&"fear", -fear)
			options.append(advance)
	else:
		var bite := TacticalChoice.new(AttackAction.new(&"player"), &"fight_target", 100)
		bite.add_reason(&"target_adjacent")
		bite.add_factor(&"target_hostile", aggression / 2)
		bite.add_factor(&"fear", -fear)
		options.append(bite)

	# An injury changes the *same* NPC's preferences. A retreat must increase
	# distance and be genuinely walkable; otherwise the attack is still available.
	if fear > 0:
		var direction := _best_retreat_direction(game, actor_id)
		if direction != Vector2i.ZERO:
			var retreat := TacticalChoice.new(MoveAction.new(direction), &"survive", 15)
			retreat.add_factor(&"low_health", fear * 2)
			retreat.add_factor(&"target_hostile", -aggression / 2)
			retreat.add_reason(&"fearful")
			retreat.visible_cue = &"retreat"
			options.append(retreat)

	options.append(wait_option)
	return TacticalPlanner.choose(game, actor_id, options)


static func _best_retreat_direction(game: RefCounted, actor_id: StringName) -> Vector2i:
	var best_direction := Vector2i.ZERO
	var offset: Vector2i = game.get_actor_position(actor_id) - game.player_position
	var best_distance := offset.length_squared()
	for direction: Vector2i in game.MOVE_DIRECTIONS:
		var target: Vector2i = game.get_actor_position(actor_id) + direction
		if not game.can_step(game.get_actor_position(actor_id), direction) or game.blocks_actor_movement(target, actor_id):
			continue
		var candidate_distance: int = (target - game.player_position).length_squared()
		if candidate_distance > best_distance:
			best_distance = candidate_distance
			best_direction = direction
	return best_direction
