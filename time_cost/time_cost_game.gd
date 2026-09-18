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

var world_time := 0
var player_next_ready_time := 0
var rat_next_ready_time := 0
var last_action_cost := 0
var last_response_count := 0
var last_rat_reason := ""
var message := ""
var recent_events: Array[String] = []

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

	world_time = 0
	player_next_ready_time = 0
	rat_next_ready_time = 0
	last_action_cost = 0
	last_response_count = 0
	last_rat_reason = ""
	recent_events.clear()
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

	player_position = target
	_commit_player_action(MOVE_COST, "You move one tile.")
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
	_commit_player_action(
		INTERACT_COST,
		"You %s the door." % ("open" if door_open else "close")
	)
	return true


func player_wait() -> bool:
	if not _can_player_act():
		return false

	_commit_player_action(WAIT_COST, "You wait.")
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
		"Ready times — You: %d | Rat: %d | Last cost: %d | Rat responses: %d"
		% [
			player_next_ready_time,
			rat_next_ready_time,
			last_action_cost,
			last_response_count,
		]
	)


func get_recent_event_text() -> String:
	if recent_events.is_empty():
		return "No actions yet."
	return "\n".join(recent_events)


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
	var attack_text := "You hit the rat for %d damage" % ATTACK_DAMAGE

	if rat_hp == 0:
		attack_text += " and defeat it."
	else:
		attack_text += " (%d/%d HP)." % [rat_hp, RAT_MAX_HP]

	_commit_player_action(ATTACK_COST, attack_text)
	return true


func _commit_player_action(cost: int, description: String) -> void:
	var action_time := player_next_ready_time
	last_action_cost = cost
	last_response_count = 0
	_record_event(action_time, "%s [cost %d]" % [description, cost])

	player_next_ready_time += cost
	_run_until_player_ready()

	if game_over:
		return

	world_time = player_next_ready_time
	message = (
		"%s Cost %d; the rat responded %d time(s)."
		% [description, cost, last_response_count]
	)


func _run_until_player_ready() -> void:
	while (
		not game_over
		and rat_hp > 0
		and player_hp > 0
		and rat_next_ready_time < player_next_ready_time
	):
		world_time = rat_next_ready_time
		_run_rat_action()
		last_response_count += 1

	if player_hp <= 0:
		game_over = true
		message = "The rat defeats you at time %d. Press R to reset." % world_time
		return

	world_time = player_next_ready_time


func _run_rat_action() -> void:
	var distance := _manhattan_distance(rat_position, player_position)

	if distance == 1:
		player_hp = maxi(0, player_hp - ATTACK_DAMAGE)
		last_rat_reason = "The player is adjacent, so biting is the direct threat response."
		_record_event(
			rat_next_ready_time,
			"Rat bites for %d damage. Reason: %s [cost %d]"
			% [ATTACK_DAMAGE, last_rat_reason, RAT_ATTACK_COST]
		)
		rat_next_ready_time += RAT_ATTACK_COST
		return

	var next_step := _next_step_toward_player()
	if next_step == rat_position:
		last_rat_reason = "No traversable route to the player is currently available."
		_record_event(
			rat_next_ready_time,
			"Rat waits. Reason: %s [cost %d]" % [last_rat_reason, RAT_WAIT_COST]
		)
		rat_next_ready_time += RAT_WAIT_COST
		return

	if next_step == door_position and not door_open:
		door_open = true
		last_rat_reason = "The closed door blocks the shortest route to the player."
		_record_event(
			rat_next_ready_time,
			"Rat opens the door. Reason: %s [cost %d]"
			% [last_rat_reason, RAT_INTERACT_COST]
		)
		rat_next_ready_time += RAT_INTERACT_COST
		return

	rat_position = next_step
	last_rat_reason = "Closing distance is the current route toward the player."
	_record_event(
		rat_next_ready_time,
		"Rat moves. Reason: %s [cost %d]"
		% [last_rat_reason, RAT_MOVE_COST]
	)
	rat_next_ready_time += RAT_MOVE_COST


func _record_event(time: int, text: String) -> void:
	recent_events.append("t=%d  %s" % [time, text])
	while recent_events.size() > 6:
		recent_events.pop_front()


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
