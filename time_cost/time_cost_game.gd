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

const PLAYER_MAX_HP := 50
const RAT_MAX_HP := 30
const ATTACK_DAMAGE := 5

const CARDINAL_DIRECTIONS: Array[Vector2i] = [
	Vector2i.UP, Vector2i.RIGHT, Vector2i.DOWN, Vector2i.LEFT,
]
const MOVE_DIRECTIONS: Array[Vector2i] = [
	Vector2i.UP, Vector2i.RIGHT, Vector2i.DOWN, Vector2i.LEFT,
	Vector2i(-1, -1), Vector2i(1, -1), Vector2i(-1, 1), Vector2i(1, 1),
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
# Prototype trait values are tunable during play and reevaluated at each action.
var rat_aggression := 50
var rat_fear_bonus := 0

var combat_seed := 17017
var combat_rng := RandomNumberGenerator.new()
var abilities: Dictionary = {}
var species: Dictionary = {}
var bodies: Dictionary = {}

var _walls: Dictionary = {}


func _init() -> void:
	reset()


func reset() -> void:
	combat_rng.seed = combat_seed
	abilities = {&"player": AbilityScores.new(), &"rat": AbilityScores.new()}
	species = {&"player": CombatSpecies.human(), &"rat": CombatSpecies.rat()}
	bodies = {}
	for actor: StringName in species:
		bodies[actor] = BodyInstance.new(species[actor].body_template, species[actor].attack_capability)
	_build_room()
	player_position = Vector2i(2, 3)
	rat_position = Vector2i(8, 3)
	door_position = Vector2i(5, 3)
	player_hp = PLAYER_MAX_HP
	rat_hp = RAT_MAX_HP
	rat_aggression = 50
	rat_fear_bonus = 0
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
	if not MOVE_DIRECTIONS.has(direction):
		return false
	facing = direction
	var target := player_position + direction
	if rat_hp > 0 and target == rat_position:
		return perform_action(&"player", AttackAction.new(&"rat"))
	if not can_step(player_position, direction):
		message = "The door is closed. Face it and press E to interact." if target == door_position and not door_open else "Movement blocked."
		return false
	return perform_action(&"player", MoveAction.new(direction))


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
	return perform_action(&"player", InteractAction.new(target))


func player_wait() -> bool:
	if not _can_player_act():
		return false
	return perform_action(&"player", WaitAction.new())


# The same action path is used by player input and the rat AI. Invalid actions
# neither consume time nor add events. The scheduler never imports an Action.
func perform_action(actor_id: StringName, action: TimeAction) -> bool:
	if game_over or action == null or not scheduler.has_actor(actor_id) or not actor_is_alive(actor_id):
		return false
	if scheduler.get_ready_time(actor_id) != world_time:
		return false
	if actor_id != &"player" and scheduler.get_ready_time(actor_id) >= player_next_ready_time:
		return false
	if not action.can_execute(self, actor_id):
		if actor_id == &"player":
			message = "Action unavailable: check range, path and body function. No time spent."
		return false
	var cost := action.get_cost(self, actor_id)
	if cost <= 0:
		return false
	var event := action.execute(self, actor_id, cost)
	if event == null:
		return false
	event.reason_codes = action.reason_codes.duplicate()
	if action.ai_goal != &"":
		event.data["ai_goal"] = action.ai_goal
		event.data["ai_score"] = action.ai_score
		event.data["ai_factors"] = action.ai_factors.duplicate(true)
		event.data["ai_candidates"] = action.ai_candidates.duplicate(true)
		if action.visible_cue != &"":
			event.data["visible_cue"] = action.visible_cue
	combat_log.add_event(event)
	scheduler.advance_actor(actor_id, cost)
	if actor_id == &"player":
		last_action_cost = cost
		last_response_count = 0
		_run_until_player_ready()
		if not game_over:
			message = "Action cost %d; rat responses %d." % [cost, last_response_count]
	return true


func get_rat_fear() -> int:
	return maxi(0, roundi((RAT_MAX_HP - rat_hp) * 120.0 / RAT_MAX_HP) + rat_fear_bonus)


func can_attack(actor_id: StringName) -> bool:
	return bodies.has(actor_id) and bodies[actor_id].attack_efficiency(species[actor_id].attack_capability) > 0


func movement_efficiency(actor_id: StringName) -> float:
	return bodies[actor_id].capability(&"locomotion") if bodies.has(actor_id) else 0.0


func resolve_attack(actor_id: StringName, target_id: StringName) -> Dictionary:
	var attacker: CombatSpecies = species[actor_id]
	var body: BodyInstance = bodies[actor_id]
	var target: BodyInstance = bodies[target_id]
	var injury_mod := -2 if body.attack_efficiency(attacker.attack_capability) < 1 else 0
	var result := CombatRules.check(combat_rng.randi_range(1, 20),
		abilities[actor_id].get_modifier(attacker.attack_ability), 0, injury_mod,
		10 + abilities[target_id].get_modifier(&"DEX"))
	result["ability"] = attacker.attack_ability
	result["attack_part"] = body.attack_part
	result["damage"] = 0
	if result.hit:
		var part_id := target.select_part(combat_rng.randf())
		if part_id != &"":
			var part: Dictionary = target.parts[part_id]
			result.merge({"part": part_id, "part_name": part.name, "damage": ATTACK_DAMAGE,
				"damage_type": attacker.damage_type, "armor_result": &"unarmored"}, true)
			if part.armor >= 0:
				result.merge(CombatRules.armor_result(part.armor, attacker.penetration,
					combat_rng.randf() * 100.0, ATTACK_DAMAGE, attacker.damage_type), true)
			result.merge(target.apply_damage(part_id, result.damage), true)
		else:
			result["no_valid_part"] = true
	result["remaining_hp"] = damage_actor(target_id, result.damage)
	result["defeated"] = result.remaining_hp == 0
	return result


func actor_is_alive(actor_id: StringName) -> bool:
	match actor_id:
		&"player": return player_hp > 0
		&"rat": return rat_hp > 0
	return false


func get_actor_position(actor_id: StringName) -> Vector2i:
	return player_position if actor_id == &"player" else rat_position


func set_actor_position(actor_id: StringName, cell: Vector2i) -> void:
	if actor_id == &"player":
		player_position = cell
	elif actor_id == &"rat":
		rat_position = cell


func blocks_actor_movement(cell: Vector2i, actor_id: StringName) -> bool:
	return _blocks_movement(cell) or (
		actor_id != &"player" and player_hp > 0 and player_position == cell
	) or (
		actor_id != &"rat" and rat_hp > 0 and rat_position == cell
	)


func damage_actor(actor_id: StringName, damage: int) -> int:
	if actor_id == &"player":
		player_hp = maxi(0, player_hp - damage)
		return player_hp
	if actor_id == &"rat":
		rat_hp = maxi(0, rat_hp - damage)
		if rat_hp == 0:
			scheduler.unregister_actor(&"rat")
		return rat_hp
	return 0


func make_action_event(event_type: StringName, actor_id: StringName, action_id: StringName, cost: int) -> CombatEvent:
	return _new_event(event_type, actor_id, action_id, cost, scheduler.get_ready_time(actor_id))


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


func _run_until_player_ready() -> void:
	while not game_over and player_hp > 0:
		var next_actor := scheduler.take_next_actor_before_player()
		if next_actor == &"":
			break
		match next_actor:
			&"rat":
				if not _run_rat_action():
					push_error("Rat failed to produce a valid action at time %d." % world_time)
					return
				last_response_count += 1
			_:
				push_error("No action handler registered for actor: %s" % next_actor)
				return

	if player_hp <= 0:
		game_over = true
		message = "The rat defeats you at time %d. Press R to reset." % world_time


func _run_rat_action() -> bool:
	# Reobserve and choose a fresh action after every scheduler activation.
	var decision := RatTactics.choose(self)
	if decision == null:
		return false
	return perform_action(&"rat", decision.action)


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

		for direction in MOVE_DIRECTIONS:
			var neighbor := current + direction
			if came_from.has(neighbor):
				continue
			if not is_inside(neighbor):
				continue
			# Closed doors are path goals for InteractAction, but may not be
			# crossed diagonally or used to cut a blocked corner.
			if not can_step(current, direction):
				if neighbor != door_position or door_open or direction.x != 0 and direction.y != 0:
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


# Eight-way adjacency uses Chebyshev distance; retain the historic helper name
# for existing callers and tests that compare distance before and after a move.
func _manhattan_distance(a: Vector2i, b: Vector2i) -> int:
	return maxi(absi(a.x - b.x), absi(a.y - b.y))


func can_step(start: Vector2i, direction: Vector2i) -> bool:
	if not MOVE_DIRECTIONS.has(direction):
		return false
	if _blocks_movement(start + direction):
		return false
	# Both orthogonal neighbors must be passable to cross a diagonal corner.
	if direction.x != 0 and direction.y != 0:
		return not _blocks_movement(start + Vector2i(direction.x, 0)) and not _blocks_movement(start + Vector2i(0, direction.y))
	return true
