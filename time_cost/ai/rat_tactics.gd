class_name RatTactics
extends RefCounted

# Prototype NPC policy: builds options each time the rat is ready to act.
# The generic planner does not know about rats, attacks, doors, or movement.
static func choose(game: RefCounted, actor_id: StringName = &"rat") -> TacticalChoice:
	var options: Array[TacticalChoice] = []
	var distance: int = game._manhattan_distance(game.rat_position, game.player_position)
	var aggression: int = game.rat_aggression
	var fear: int = game.get_rat_fear()

	var wait_option := TacticalChoice.new(WaitAction.new(), &"hold_position", 0)
	if distance > 1:
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
		var direction := _best_retreat_direction(game, actor_id, distance)
		if direction != Vector2i.ZERO:
			var retreat := TacticalChoice.new(MoveAction.new(direction), &"survive", 15)
			retreat.add_factor(&"low_health", fear * 2)
			retreat.add_factor(&"target_hostile", -aggression / 2)
			retreat.add_reason(&"fearful")
			retreat.visible_cue = &"retreat"
			options.append(retreat)

	options.append(wait_option)
	return TacticalPlanner.choose(game, actor_id, options)


static func _best_retreat_direction(game: RefCounted, actor_id: StringName, distance: int) -> Vector2i:
	var best_direction := Vector2i.ZERO
	var best_distance := distance
	for direction: Vector2i in game.CARDINAL_DIRECTIONS:
		var target: Vector2i = game.get_actor_position(actor_id) + direction
		if game.blocks_actor_movement(target, actor_id):
			continue
		var candidate_distance: int = game._manhattan_distance(target, game.player_position)
		if candidate_distance > best_distance:
			best_distance = candidate_distance
			best_direction = direction
	return best_direction
