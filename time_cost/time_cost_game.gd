class_name TimeCostGame
extends RefCounted

const GRID_WIDTH := 11
const GRID_HEIGHT := 7

const MOVE_COST := 1000
const ATTACK_COST := 1250
const INTERACT_COST := 500
const WAIT_COST := 1000

const RAT_MOVE_COST := 750
const RAT_ATTACK_COST := 1000
const RAT_INTERACT_COST := 500
const RAT_WAIT_COST := 1000

const PLAYER_MAX_HP := 5
const RAT_MAX_HP := 3
const ATTACK_DAMAGE := 1

const CARDINAL_DIRECTIONS: Array[Vector2i] = [
	Vector2i.UP,
	Vector2i.RIGHT,
	Vector2i.DOWN,
	Vector2i.LEFT,
]

var player_position := Vector2i(2, 3)
var rat_position := Vector2i(8, 3)
var door_position := Vector2i(5, 3)

var player_hp := PLAYER_MAX_HP
var rat_hp := RAT_MAX_HP
var door_open := false
var facing := Vector2i.RIGHT
var game_over := false

var scheduler := TimeScheduler.new()
var world_time: int:
	get:
		return scheduler.world_time
var player_next_ready_time: int:
	get:
		return scheduler.get_ready_time(&"player")
var rat_next_ready_time: int:
	get:
		return scheduler.get_ready_time(&"rat")
var last_action_cost := 0
var last_response_count := 0
var message := ""
var combat_log := CombatEventLog.new()

var _walls: Dictionary = {}


func _init() -> void:
	reset()


func reset() -> void:
	_build_room()
	player_position = Vector2i(2, 3)
	rat_position = Vector2i(8, 3)
	door_position = Vector2i(5, 3)
	player_hp = PLAYER_MAX_HP
	rat_hp = RAT_MAX_HP
	door_open = false
	facing = Vector2i.RIGHT
	game_over = false

	scheduler.reset(&"player")
	scheduler.register_actor(&"rat")
	last_action_cost = 0
	last_response_count = 0
	combat_log.clear()
	message = (
		"Your action advances your ready time. "
		+ "The rat acts while its ready time is earlier than yours."
	)


func player_move(direction: Vector2i) -> bool:
	if not _can_player_act():
		return false
	if not CARDINAL_DIRECTIONS.has(direction):
		return false

	facing = direction
	var target := player_position + direction

	if rat_hp > 0 and target == rat_position:
		return _player_attack_rat()

	if _blocks_movement(target):
		if target == door_position and not door_open:
			message = "The door is closed. Face it and press E to interact."
		else:
			message = "Movement blocked."
		return false

	var start := player_position
	player_position = target
	var event := _new_event(&"move", &"player", &"move", MOVE_COST, player_next_ready_time)
	event.importance = CombatEvent.TRIVIAL
	event.data = {"from": start, "to": target}
	_commit_player_action(event)
	return true


func player_interact() -> bool:
	if not _can_player_act():
		return false

	var target := player_position + facing
	if target != door_position:
		message = "There is nothing to interact with in that direction."
		return false

	if door_open and (player_position == door_position or (rat_hp > 0 and rat_position == door_position)):
		message = "The doorway is occupied."
		return false

	door_open = not door_open
	var event := _new_event(&"interact", &"player", &"door", INTERACT_COST, player_next_ready_time)
	event.data = {"open": door_open, "position": door_position}
	_commit_player_action(event)
	return true


func player_wait() -> bool:
	if not _can_player_act():
		return false

	var event := _new_event(&"wait", &"player", &"wait", WAIT_COST, player_next_ready_time)
	event.importance = CombatEvent.TRIVIAL
	_commit_player_action(event)
	return true


func is_wall(cell: Vector2i) -> bool:
	return _walls.has(cell)


func is_inside(cell: Vector2i) -> bool:
	return (
		cell.x >= 0
		and cell.x < GRID_WIDTH
		and cell.y >= 0
		and cell.y < GRID_HEIGHT
	)


func get_timeline_text() -> String:
	return (
		"Ready times — You: %d | Rat: %s | Last cost: %d | Rat responses: %d"
		% [
			player_next_ready_time,
			str(rat_next_ready_time) if rat_hp > 0 else "defeated",
			last_action_cost,
			last_response_count,
		]
	)


func get_recent_event_text(detailed: bool = false) -> String:
	return CombatLogFormatter.get_recent_player_text(combat_log, &"player", detailed)


func get_recent_debug_text() -> String:
	return CombatLogFormatter.get_recent_debug_text(combat_log)


func _build_room() -> void:
	_walls.clear()

	for x in range(GRID_WIDTH):
		_walls[Vector2i(x, 0)] = true
		_walls[Vector2i(x, GRID_HEIGHT - 1)] = true

	for y in range(GRID_HEIGHT):
		_walls[Vector2i(0, y)] = true
		_walls[Vector2i(GRID_WIDTH - 1, y)] = true

	for y in range(1, GRID_HEIGHT - 1):
		if y != 3:
			_walls[Vector2i(5, y)] = true

	_walls[Vector2i(3, 2)] = true
	_walls[Vector2i(7, 4)] = true


func _can_player_act() -> bool:
	if game_over:
		message = "The test is over. Press R to reset."
		return false
	return true


func _player_attack_rat() -> bool:
	rat_hp = maxi(0, rat_hp - ATTACK_DAMAGE)
	var event := _new_event(&"attack", &"player", &"melee", ATTACK_COST, player_next_ready_time)
	event.target_id = &"rat"
	event.data = {"damage": ATTACK_DAMAGE, "defeated": rat_hp == 0, "remaining_hp": rat_hp}
	if rat_hp == 0:
		scheduler.unregister_actor(&"rat")
	_commit_player_action(event)
	return true


func _commit_player_action(event: CombatEvent) -> void:
	last_action_cost = event.action_cost
	last_response_count = 0
	combat_log.add_event(event)

	scheduler.advance_actor(&"player", event.action_cost)
	_run_until_player_ready()

	if game_over:
		return

	message = "Action cost %d; rat responses %d." % [event.action_cost, last_response_count]


func _run_until_player_ready() -> void:
	while not game_over and player_hp > 0:
		var next_actor := scheduler.take_next_actor_before_player()
		if next_actor == &"":
			break
		match next_actor:
			&"rat":
				_run_rat_action()
				last_response_count += 1
			_:
				push_error("No action handler registered for actor: %s" % next_actor)
				return

	if player_hp <= 0:
		game_over = true
		message = "The rat defeats you at time %d. Press R to reset." % world_time


func _run_rat_action() -> void:
	var distance := _manhattan_distance(rat_position, player_position)

	if distance == 1:
		player_hp = maxi(0, player_hp - ATTACK_DAMAGE)
		var attack := _new_event(&"attack", &"rat", &"bite", RAT_ATTACK_COST, rat_next_ready_time)
		attack.target_id = &"player"
		attack.reason_codes.append(&"target_adjacent")
		attack.data = {"damage": ATTACK_DAMAGE, "defeated": player_hp == 0, "remaining_hp": player_hp}
		combat_log.add_event(attack)
		scheduler.advance_actor(&"rat", RAT_ATTACK_COST)
		return

	var next_step := _next_step_toward_player()
	if next_step == rat_position:
		var wait_event := _new_event(&"wait", &"rat", &"wait", RAT_WAIT_COST, rat_next_ready_time)
		wait_event.reason_codes.append(&"route_blocked")
		wait_event.importance = CombatEvent.TRIVIAL
		combat_log.add_event(wait_event)
		scheduler.advance_actor(&"rat", RAT_WAIT_COST)
		return

	if next_step == door_position and not door_open:
		door_open = true
		var door_event := _new_event(&"interact", &"rat", &"door", RAT_INTERACT_COST, rat_next_ready_time)
		door_event.reason_codes.append(&"door_blocks_route")
		door_event.data = {"open": true, "position": door_position}
		combat_log.add_event(door_event)
		scheduler.advance_actor(&"rat", RAT_INTERACT_COST)
		return

	var start := rat_position
	rat_position = next_step
	var move_event := _new_event(&"move", &"rat", &"move", RAT_MOVE_COST, rat_next_ready_time)
	move_event.reason_codes.append(&"close_distance")
	var adjacent := _manhattan_distance(rat_position, player_position) == 1
	move_event.importance = CombatEvent.IMPORTANT if adjacent else CombatEvent.TRIVIAL
	move_event.data = {"from": start, "to": next_step, "in_melee_range": adjacent}
	combat_log.add_event(move_event)
	scheduler.advance_actor(&"rat", RAT_MOVE_COST)


func _new_event(
	event_type: StringName,
	actor_id: StringName,
	action_id: StringName,
	cost: int,
	action_time: int
) -> CombatEvent:
	var event := CombatEvent.new()
	event.type = event_type
	event.actor_id = actor_id
	event.action_id = action_id
	event.time = action_time
	event.action_cost = cost
	# This prototype room is fully visible. Other maps must supply actual perception.
	event.observed_by.append(&"player")
	return event


func _next_step_toward_player() -> Vector2i:
	var frontier: Array[Vector2i] = [rat_position]
	var frontier_index := 0
	var came_from: Dictionary = {rat_position: rat_position}

	while frontier_index < frontier.size():
		var current := frontier[frontier_index]
		frontier_index += 1

		if current == player_position:
			break

		for direction in CARDINAL_DIRECTIONS:
			var neighbor := current + direction
			if came_from.has(neighbor):
				continue
			if not is_inside(neighbor):
				continue
			if is_wall(neighbor):
				continue

			came_from[neighbor] = current
			frontier.append(neighbor)

	if not came_from.has(player_position):
		return rat_position

	var step := player_position
	while came_from[step] != rat_position:
		step = came_from[step]

	return step


func _blocks_movement(cell: Vector2i) -> bool:
	if not is_inside(cell):
		return true
	if is_wall(cell):
		return true
	if cell == door_position and not door_open:
		return true
	return false


func _manhattan_distance(a: Vector2i, b: Vector2i) -> int:
	return absi(a.x - b.x) + absi(a.y - b.y)
