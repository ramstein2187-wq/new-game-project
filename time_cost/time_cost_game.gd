class_name TimeCostGame
extends RefCounted

const GRID_WIDTH := 11
const GRID_HEIGHT := 7

const MOVE_COST := 1000
const DIAGONAL_MOVE_COST := 1400
const ATTACK_COST := 1250
const INTERACT_COST := 500
const WAIT_COST := 1000

const RAT_MOVE_COST := 750
const RAT_DIAGONAL_MOVE_COST := 1050
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

# Legacy accessors forward into Actor; they own no duplicate runtime state.
var actors := ActorRegistry.new()
var player_position: Vector2i:
	get: return get_actor(&"player").position
	set(value): get_actor(&"player").position = value
var rat_position: Vector2i:
	get: return get_actor(&"rat").position
	set(value): get_actor(&"rat").position = value
var player_hp: int:
	get: return get_actor(&"player").hp
	set(value): get_actor(&"player").hp = value
var rat_hp: int:
	get: return get_actor(&"rat").hp
	set(value): get_actor(&"rat").hp = value
var facing: Vector2i:
	get: return get_actor(&"player").facing
	set(value): get_actor(&"player").facing = value
var door_position := Vector2i(5, 3)
var door_open := false
var game_over := false
var simulation_error := ""

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
var rat_aggression: int:
	get: return get_actor(&"rat").aggression
	set(value): get_actor(&"rat").aggression = value
var rat_fear_bonus: int:
	get: return get_actor(&"rat").fear_bonus
	set(value): get_actor(&"rat").fear_bonus = value

var combat_seed := 17017
var combat_rng := RandomNumberGenerator.new()
# Compatibility views return references to owned objects, not stored dictionaries.
var abilities: Dictionary:
	get: return _actor_view(&"abilities")
var species: Dictionary:
	get: return _actor_view(&"species")
var bodies: Dictionary:
	get: return _actor_view(&"body")

var _walls: Dictionary = {}


func _init() -> void:
	reset()


func reset() -> void:
	combat_rng.seed = combat_seed
	actors = ActorRegistry.new()
	scheduler.reset(&"player")
	_build_room()
	door_position = Vector2i(5, 3)
	door_open = false
	game_over = false
	simulation_error = ""
	_create_initial_actors()
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
	var occupant := actors.occupant_at(target, &"player")
	if occupant != null:
		return perform_action(&"player", AttackAction.new(occupant.id))
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
	if door_open and actors.occupant_at(door_position) != null:
		message = "The doorway is occupied."
		return false
	return perform_action(&"player", InteractAction.new(target))


func player_wait() -> bool:
	if not _can_player_act():
		return false
	return perform_action(&"player", WaitAction.new())


# The same action path is used by player input and every NPC. Invalid actions
# neither consume time nor add events. The scheduler never imports an Action.
func perform_action(actor_id: StringName, action: TimeAction) -> bool:
	if game_over or not simulation_error.is_empty() or action == null or not scheduler.has_actor(actor_id) or not actor_is_alive(actor_id):
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
	if get_actor(event.target_id) != null:
		event.target_name = get_actor(event.target_id).display_name
	combat_log.add_event(event)
	scheduler.advance_actor(actor_id, cost)
	if actor_id == &"player":
		last_action_cost = cost
		last_response_count = 0
		_run_until_player_ready()
		if not game_over and simulation_error.is_empty():
			message = "Action cost %d; NPC responses %d." % [cost, last_response_count]
	return true


func get_rat_fear() -> int:
	return get_actor(&"rat").fear()


func can_attack(actor_id: StringName) -> bool:
	var actor := get_actor(actor_id)
	return actor != null and actor.is_alive() and actor.body.attack_efficiency(actor.species.attack_capability) > 0


func movement_efficiency(actor_id: StringName) -> float:
	var actor := get_actor(actor_id)
	return actor.body.capability(&"locomotion") if actor != null and actor.is_alive() else 0.0


func resolve_attack(actor_id: StringName, target_id: StringName) -> Dictionary:
	var attacker: CombatSpecies = get_actor(actor_id).species
	var body: BodyInstance = get_actor(actor_id).body
	var target: BodyInstance = get_actor(target_id).body
	var injury_mod := -2 if body.attack_efficiency(attacker.attack_capability) < 1 else 0
	var result := CombatRules.check(combat_rng.randi_range(1, 20),
		get_actor(actor_id).abilities.get_modifier(attacker.attack_ability), 0, injury_mod,
		10 + get_actor(target_id).abilities.get_modifier(&"DEX"))
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


func get_actor(actor_id: StringName) -> Actor:
	return actors.get_actor(actor_id)


func _actor_view(property: StringName) -> Dictionary:
	var view := {}
	for actor in actors.all():
		view[actor.id] = actor.get(property)
	return view


func _create_initial_actors() -> void:
	actors.register(Actor.new(&"player", ActorDefinition.human_default(), Vector2i(2, 3), "You"))
	register_actor(Actor.new(&"rat", ActorDefinition.rat_common(), Vector2i(8, 3), "The rat"))


# Register/remove through the game so occupancy and scheduling change together.
func register_actor(actor: Actor, ready_time: int = -1) -> bool:
	if actor == null or actor.id == &"player" or actor.definition == null or not actor.definition.is_valid() or not actor.is_alive():
		return false
	if _blocks_movement(actor.position) or scheduler.has_actor(actor.id):
		return false
	var ready := world_time if ready_time < 0 else ready_time
	if ready < world_time or not actors.register(actor):
		return false
	if not scheduler.register_actor(actor.id, ready):
		actors.remove(actor.id)
		return false
	return true


func remove_actor(actor_id: StringName) -> bool:
	if actor_id == &"player" or not actors.has_actor(actor_id):
		return false
	if scheduler.has_actor(actor_id):
		scheduler.unregister_actor(actor_id)
	return actors.remove(actor_id)


func actor_is_alive(actor_id: StringName) -> bool:
	var actor := get_actor(actor_id)
	return actor != null and actor.is_alive()


func get_actor_position(actor_id: StringName) -> Vector2i:
	var actor := get_actor(actor_id)
	assert(actor != null, "Unknown actor position: %s" % actor_id)
	return actor.position


func set_actor_position(actor_id: StringName, cell: Vector2i) -> void:
	var actor := get_actor(actor_id)
	if actor != null and not blocks_actor_movement(cell, actor_id):
		actor.position = cell


func blocks_actor_movement(cell: Vector2i, actor_id: StringName) -> bool:
	return _blocks_movement(cell) or actors.occupant_at(cell, actor_id) != null


func damage_actor(actor_id: StringName, damage: int) -> int:
	var actor := get_actor(actor_id)
	if actor == null:
		return 0
	actor.hp = maxi(0, actor.hp - maxi(0, damage))
	if not actor.is_alive():
		if actor_id == &"player":
			game_over = true
		else:
			scheduler.unregister_actor(actor_id)
	return actor.hp


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
	var entries: Array[String] = []
	for actor in actors.all():
		entries.append("%s: %s" % [actor.display_name,
			str(scheduler.get_ready_time(actor.id)) if actor.is_alive() else "defeated"])
	return "Ready — %s | Last cost: %d | NPC responses: %d" % [" / ".join(entries), last_action_cost, last_response_count]


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
	if not simulation_error.is_empty():
		message = simulation_error
		return false
	if game_over:
		message = "The test is over. Press R to reset."
		return false
	return true


func _run_until_player_ready() -> void:
	while not game_over and player_hp > 0:
		var next_actor := scheduler.take_next_actor_before_player()
		if next_actor == &"":
			break
		if not _run_npc_action(next_actor):
			simulation_error = "NPC %s failed at time %d; simulation stopped." % [next_actor, world_time]
			message = simulation_error
			push_error(simulation_error)
			return
		last_response_count += 1

	if player_hp <= 0:
		game_over = true
		message = "You are defeated at time %d. Press R to reset." % world_time


func _run_npc_action(actor_id: StringName) -> bool:
	var action := choose_ai_action(actor_id)
	if action == null:
		return false
	return perform_action(actor_id, action)


# AI-controlled player-slot adapters use the same policy boundary as NPC turns.
# Selection does not execute or schedule anything; perform_action remains the
# only production action entry point.
func choose_ai_action(actor_id: StringName) -> TimeAction:
	var actor := get_actor(actor_id)
	if actor == null or not actor.is_alive():
		return null
	if actor.ai_policy == &"rat_tactics" and actor_is_alive(actor.target_id):
		var decision := RatTactics.choose(self, actor_id, actor.target_id)
		if decision == null:
			return null
		return decision.action
	return WaitAction.new()


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
	event.actor_name = get_actor(actor_id).display_name
	event.action_id = action_id
	event.time = action_time
	event.action_cost = cost
	# This prototype room is fully visible. Other maps must supply actual perception.
	event.observed_by.append(&"player")
	return event


func _next_step_toward_player() -> Vector2i:
	return next_step_toward(&"rat", &"player")


func next_step_toward(actor_id: StringName, target_id: StringName) -> Vector2i:
	var start := get_actor_position(actor_id)
	var target := get_actor_position(target_id)
	if start == target:
		return start
	var frontier: Array[Vector2i] = [start]
	var frontier_index := 0
	var came_from: Dictionary = {start: start}

	while frontier_index < frontier.size():
		var current := frontier[frontier_index]
		frontier_index += 1

		if current == target:
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

			var occupant := actors.occupant_at(neighbor, actor_id)
			if occupant != null and occupant.id != target_id:
				continue
			came_from[neighbor] = current
			frontier.append(neighbor)

	if not came_from.has(target):
		return start

	var step := target
	while came_from[step] != start:
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


func can_melee_reach(start: Vector2i, target: Vector2i) -> bool:
	# Shared by attack validation, AI approach selection and observable feedback.
	# Grid adjacency alone is insufficient when a diagonal corner is blocked.
	return can_step(start, target - start)


func can_step(start: Vector2i, direction: Vector2i) -> bool:
	if not MOVE_DIRECTIONS.has(direction):
		return false
	if _blocks_movement(start + direction):
		return false
	# Both orthogonal neighbors must be passable to cross a diagonal corner.
	if direction.x != 0 and direction.y != 0:
		return not _blocks_movement(start + Vector2i(direction.x, 0)) and not _blocks_movement(start + Vector2i(0, direction.y))
	return true


func get_actor_status_text() -> String:
	var entries: Array[String] = []
	for actor in actors.all():
		entries.append("%s HP %d/%d%s" % [actor.display_name, actor.hp, actor.max_hp, " (dead)" if not actor.is_alive() else ""])
	return " | ".join(entries)
