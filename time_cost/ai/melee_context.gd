class_name MeleeContext
extends RefCounted

# Phase A observation boundary: no retained game/Actor references, enemy stats,
# RNG, schedules or predicted actions. Replace capture with perception later.
var target_id: StringName
var target_alive := false
var target_condition: StringName = &"healthy"
var self_condition: StringName = &"healthy"
var can_attack := false
var can_move := false
var aggression := 0
var fear := 0
var caution_spent := 0
var distance := 0
var in_melee_range := false
var exposure := 0
var congestion := 0
var route_action: TimeAction
var steps: Array[Dictionary] = []


static func capture(game: RefCounted, actor_id: StringName, current_target: StringName) -> MeleeContext:
	var context := MeleeContext.new()
	context.target_id = current_target
	var actor: Actor = game.get_actor(actor_id)
	context.can_attack = game.can_attack(actor_id)
	context.can_move = game.movement_efficiency(actor_id) > 0
	context.self_condition = condition(actor.hp, actor.max_hp)
	context.aggression = clampi(actor.aggression, 0, 180)
	context.fear = clampi(actor.fear(), 0, 120)
	if actor.melee_caution_target == current_target:
		context.caution_spent = actor.melee_caution_spent
	context.target_alive = current_target != actor_id and game.actor_is_alive(current_target)
	if not context.target_alive:
		return context
	var target: Actor = game.get_actor(current_target)
	# Exact HP is consumed only by this coarse observation adapter, never scoring.
	context.target_condition = condition(target.hp, target.max_hp)
	context.distance = tile_distance(actor.position, target.position)
	context.in_melee_range = game.can_melee_reach(actor.position, target.position)
	context.exposure = int(game.can_melee_reach(target.position, actor.position))
	var occupied: Array[Vector2i] = []
	for other: Actor in game.actors.all():
		if other.id != actor_id and other.id != current_target and other.is_alive():
			occupied.append(other.position)
	context.congestion = _congestion(actor.position, occupied)
	if context.can_move:
		context._observe_steps(game, actor_id, actor.position, target.position, occupied)
		if not context.in_melee_range and context.can_attack:
			var step: Vector2i = game.next_step_toward(actor_id, current_target)
			if step != actor.position:
				if step == game.door_position and not game.door_open:
					context.route_action = InteractAction.new(step)
				else:
					context.route_action = MoveAction.new(step - actor.position)
				if not context.route_action.can_execute(game, actor_id):
					context.route_action = null
	return context


func _observe_steps(game: RefCounted, actor_id: StringName, start: Vector2i,
		target: Vector2i, occupied: Array[Vector2i]) -> void:
	# Use exactly the common Action legality, including corners and occupancy.
	for direction: Vector2i in game.MOVE_DIRECTIONS:
		var action := MoveAction.new(direction)
		if not action.can_execute(game, actor_id):
			continue
		var cell := start + direction
		steps.append({"direction": direction, "distance": tile_distance(cell, target),
			"exposure": int(game.can_melee_reach(target, cell)),
			"congestion": _congestion(cell, occupied)})


static func condition(hp: int, maximum: int) -> StringName:
	if hp * 3 <= maximum:
		return &"critical"
	return &"wounded" if hp * 3 <= maximum * 2 else &"healthy"


static func tile_distance(a: Vector2i, b: Vector2i) -> int:
	return maxi(absi(a.x - b.x), absi(a.y - b.y))


static func _congestion(cell: Vector2i, occupied: Array[Vector2i]) -> int:
	var count := 0
	for other in occupied:
		if tile_distance(cell, other) <= 1:
			count += 1
	return mini(count, 3)
