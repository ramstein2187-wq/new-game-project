class_name TimeScheduler
extends RefCounted

# The scheduler owns time and actor order; it never executes game actions.
# Equal ready times go to the player. NPC ties follow registration order.
var world_time := 0
var player_id: StringName = &""

var _ready_times: Dictionary = {}
var _registration_order: Dictionary = {}
var _next_order := 0


func reset(new_player_id: StringName = &"player") -> void:
	world_time = 0
	player_id = new_player_id
	_ready_times.clear()
	_registration_order.clear()
	_next_order = 0
	register_actor(player_id)


func register_actor(actor_id: StringName, ready_time: int = 0) -> bool:
	if actor_id == &"" or _ready_times.has(actor_id) or ready_time < world_time:
		return false
	_ready_times[actor_id] = ready_time
	_registration_order[actor_id] = _next_order
	_next_order += 1
	return true


func unregister_actor(actor_id: StringName) -> bool:
	if actor_id == player_id or not _ready_times.has(actor_id):
		return false
	_ready_times.erase(actor_id)
	_registration_order.erase(actor_id)
	return true


func has_actor(actor_id: StringName) -> bool:
	return _ready_times.has(actor_id)


func get_ready_time(actor_id: StringName) -> int:
	return int(_ready_times.get(actor_id, -1))


func advance_actor(actor_id: StringName, cost: int) -> bool:
	if cost <= 0 or not _ready_times.has(actor_id):
		return false
	_ready_times[actor_id] = int(_ready_times[actor_id]) + cost
	return true


func take_next_actor_before_player() -> StringName:
	# The player's ready time is the stopping boundary, not an NPC action.
	if not _ready_times.has(player_id):
		return &""
	var player_ready := get_ready_time(player_id)
	var chosen: StringName = &""
	var chosen_time := player_ready
	var chosen_order := 0

	for actor_id: StringName in _ready_times:
		if actor_id == player_id:
			continue
		var ready := get_ready_time(actor_id)
		var order := int(_registration_order[actor_id])
		if ready < chosen_time or (ready == chosen_time and chosen != &"" and order < chosen_order):
			chosen = actor_id
			chosen_time = ready
			chosen_order = order

	if chosen == &"":
		world_time = player_ready
	else:
		world_time = chosen_time
	return chosen
