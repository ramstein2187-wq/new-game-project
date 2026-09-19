extends SceneTree

const GameScript := preload("res://time_cost/time_cost_game.gd")


func _init() -> void:
	if not _test_recorded_event_order_and_context():
		return
	if not _test_visibility_and_reasons():
		return
	if not _test_importance_and_history():
		return
	if not _test_reset_clears_events():
		return
	if not _test_room_loads_with_log_controls():
		return

	print("PASS: structured combat log")
	quit(0)


func _test_recorded_event_order_and_context() -> bool:
	var game := GameScript.new()
	if not game.player_move(Vector2i.RIGHT):
		return _fail("Initial player move failed")
	if game.combat_log.events.size() != 3:
		return _fail("Player move should record one player event and two rat events")

	var first := game.combat_log.events[0]
	var second := game.combat_log.events[1]
	var third := game.combat_log.events[2]
	if first.actor_id != &"player" or first.type != &"move" or first.time != 0:
		return _fail("First event must be the player's movement at t=0")
	if first.action_cost != GameScript.MOVE_COST or first.data.get("to") != Vector2i(3, 3):
		return _fail("Player event lost its cost or destination")
	if second.actor_id != &"rat" or second.time != 0 or third.time != 750:
		return _fail("Rat actions are missing or not recorded in scheduler order")
	if not second.reason_codes.has(&"close_distance") or not third.reason_codes.has(&"close_distance"):
		return _fail("Rat decision reasons are not retained as reason codes")
	if not second.reason_codes.has(&"target_hostile") or not second.data.has("ai_factors"):
		return _fail("New tactical scorer must preserve its contributing factors")
	if game.get_recent_debug_text().find("cost=750") < 0:
		return _fail("Developer trace should expose exact costs")
	return true


func _test_visibility_and_reasons() -> bool:
	var log := CombatEventLog.new()
	var attack := CombatEvent.new()
	attack.type = &"attack"
	attack.actor_id = &"rat"
	attack.target_id = &"player"
	attack.action_id = &"bite"
	attack.time = 1000
	attack.action_cost = 1000
	attack.reason_codes = [&"hidden_faction_hostility"]
	attack.data = {"damage": 2, "defeated": false}
	log.add_event(attack)

	if not CombatLogFormatter.get_recent_player_text(log).begins_with("No notable"):
		return _fail("Unobserved attacks must not appear in the player log")
	if CombatLogFormatter.format_player_event(attack, &"player", true) != "":
		return _fail("Detailed player mode must still respect visibility")
	if CombatLogFormatter.format_debug_event(attack).find("hidden_faction_hostility") < 0:
		return _fail("Developer trace should retain the original reason code")

	attack.observed_by.append(&"player")
	var player_text := CombatLogFormatter.get_recent_player_text(log)
	if player_text.find("2 damage") < 0:
		return _fail("Observed attack must display its public damage")
	if player_text.find("hidden_faction_hostility") >= 0:
		return _fail("Internal AI reason must not leak into the player log")
	if CombatLogFormatter.format_player_event(attack, &"other_observer") != "":
		return _fail("An unrelated observer must not see the event")
	return true


func _test_importance_and_history() -> bool:
	var log := CombatEventLog.new()
	var move := CombatEvent.new()
	move.type = &"move"
	move.actor_id = &"rat"
	move.importance = CombatEvent.TRIVIAL
	move.observed_by.append(&"player")
	log.add_event(move)
	if CombatLogFormatter.get_recent_player_text(log).find("rat moves") >= 0:
		return _fail("Default player log should omit trivial movement")
	if CombatLogFormatter.get_recent_player_text(log, &"player", true).find("rat moves") < 0:
		return _fail("Detailed player log should include trivial movement")

	log.clear()
	for index in range(CombatEventLog.MAX_EVENTS + 4):
		var event := CombatEvent.new()
		event.time = index
		log.add_event(event)
	if log.events.size() != CombatEventLog.MAX_EVENTS:
		return _fail("Event log must enforce its history limit")
	if log.events[0].time != 4:
		return _fail("History overflow must discard oldest events first")
	var recent := log.get_recent_events(2)
	if recent.size() != 2 or recent[0].time != CombatEventLog.MAX_EVENTS + 2:
		return _fail("Recent-event lookup must return the newest events in order")
	return true


func _test_reset_clears_events() -> bool:
	var game := GameScript.new()
	game.player_wait()
	if game.combat_log.events.is_empty():
		return _fail("Waiting should have generated structured events")
	game.reset()
	if not game.combat_log.events.is_empty():
		return _fail("Reset must clear the previous combat's history")
	if game.player_next_ready_time != 0 or game.world_time != 0:
		return _fail("Reset must clear scheduler times along with the history")
	return true


func _test_room_loads_with_log_controls() -> bool:
	var scene_resource := load("res://time_cost/time_cost_test_room.tscn") as PackedScene
	if scene_resource == null:
		return _fail("Time-cost test room cannot be loaded")
	var scene := scene_resource.instantiate()
	root.add_child(scene)
	var label := scene.get_node_or_null("CanvasLayer/UI/VBox/EventLog") as Label
	if label == null:
		return _fail("Time-cost test room is missing its combat log UI")
	if scene.get_script() == null or not scene.has_method("_refresh"):
		return _fail("Test room is missing the combat log presentation script")
	scene.queue_free()
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
