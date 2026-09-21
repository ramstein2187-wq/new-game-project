class_name MicroApGame
extends RefCounted

const GRID_WIDTH := 11
const GRID_HEIGHT := 7

const MAX_AP := 3
const MOVE_COST := 1
const ATTACK_COST := 2
const INTERACT_COST := 1

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
var player_ap := MAX_AP
var door_open := false
var facing := Vector2i.RIGHT
var round_number := 1
var game_over := false
var message := ""

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
	player_ap = MAX_AP
	door_open = false
	facing = Vector2i.RIGHT
	round_number = 1
	game_over = false
	message = "Your turn. Open the door, manage 3 AP, and deal with the rat."


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

	if not _player_has_ap(MOVE_COST):
		return false

	player_position = target
	_spend_player_ap(MOVE_COST)
	message = "Moved for %d AP." % MOVE_COST
	_finish_player_action_if_needed()
	return true


func player_interact() -> bool:
	if not _can_player_act():
		return false
	if not _player_has_ap(INTERACT_COST):
		return false

	var target := player_position + facing
	if target != door_position:
		message = "There is nothing to interact with in that direction."
		return false

	if door_open and (player_position == door_position or (rat_hp > 0 and rat_position == door_position)):
		message = "The doorway is occupied."
		return false

	door_open = not door_open
	_spend_player_ap(INTERACT_COST)
	message = "%s the door for %d AP." % [
		"Opened" if door_open else "Closed",
		INTERACT_COST,
	]
	_finish_player_action_if_needed()
	return true


func player_end_turn() -> bool:
	if not _can_player_act():
		return false

	var discarded_ap := player_ap
	player_ap = 0
	message = "Ended turn and discarded %d AP." % discarded_ap
	_run_rat_activation()
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


func _player_has_ap(cost: int) -> bool:
	if player_ap >= cost:
		return true

	message = "Not enough AP: need %d, have %d." % [cost, player_ap]
	return false


func _player_attack_rat() -> bool:
	if not _player_has_ap(ATTACK_COST):
		return false

	rat_hp = maxi(0, rat_hp - ATTACK_DAMAGE)
	_spend_player_ap(ATTACK_COST)

	if rat_hp == 0:
		message = "Hit the rat for %d damage. Rat defeated." % ATTACK_DAMAGE
	else:
		message = "Hit the rat for %d damage (%d/%d HP)." % [
			ATTACK_DAMAGE,
			rat_hp,
			RAT_MAX_HP,
		]

	_finish_player_action_if_needed()
	return true


func _spend_player_ap(cost: int) -> void:
	player_ap = maxi(0, player_ap - cost)


func _finish_player_action_if_needed() -> void:
	if player_ap == 0 and not game_over:
		_run_rat_activation()


func _run_rat_activation() -> void:
	if game_over:
		return

	var rat_ap := MAX_AP
	var rat_events: Array[String] = []

	while rat_ap > 0 and rat_hp > 0 and player_hp > 0:
		var distance := _manhattan_distance(rat_position, player_position)

		if distance == 1:
			if rat_ap < ATTACK_COST:
				break
			player_hp = maxi(0, player_hp - ATTACK_DAMAGE)
			rat_ap -= ATTACK_COST
			rat_events.append("Rat bites for %d damage." % ATTACK_DAMAGE)
			continue

		var next_step := _next_step_toward_player()
		if next_step == rat_position:
			break

		if next_step == door_position and not door_open:
			if rat_ap < INTERACT_COST:
				break
			door_open = true
			rat_ap -= INTERACT_COST
			rat_events.append("Rat opens the door.")
			continue

		if rat_ap < MOVE_COST:
			break

		rat_position = next_step
		rat_ap -= MOVE_COST
		rat_events.append("Rat moves.")

	if player_hp <= 0:
		game_over = true
		player_ap = 0
		message = "%s You were defeated. Press R to reset." % " ".join(rat_events)
		return

	round_number += 1
	player_ap = MAX_AP

	if rat_hp <= 0:
		message = "Round %d. Rat is defeated; explore the AP rules or press R." % round_number
	elif rat_events.is_empty():
		message = "Round %d. Rat could not act. Your AP refilled to %d." % [round_number, MAX_AP]
	else:
		message = "%s Round %d: your AP refilled to %d." % [
			" ".join(rat_events),
			round_number,
			MAX_AP,
		]


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
