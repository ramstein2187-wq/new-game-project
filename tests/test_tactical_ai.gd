extends SceneTree

const GameScript := preload("res://time_cost/time_cost_game.gd")

# The evaluator accepts a new action type without adding a case to its code.
class CustomAction extends TimeAction:
	func can_execute(_game: RefCounted, _actor_id: StringName) -> bool:
		return true

	func get_cost(_game: RefCounted, _actor_id: StringName) -> int:
		return 600

	func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
		return game.make_action_event(&"custom", actor_id, &"custom", cost)


func _init() -> void:
	if not _test_generic_planner_and_invalid_candidates():
		return
	if not _test_normal_rat_chases_and_preserves_trace():
		return
	if not _test_wounded_rat_retreats_and_shows_only_visible_cues():
		return
	if not _test_aggression_and_fear_can_change_the_same_rat():
		return
	print("PASS: tactical AI decision and explainability")
	quit(0)


func _test_generic_planner_and_invalid_candidates() -> bool:
	var game := GameScript.new()
	var invalid := TacticalChoice.new(MoveAction.new(Vector2i.ZERO), &"invalid", 999)
	var custom := TacticalChoice.new(CustomAction.new(), &"test_goal", 30)
	custom.add_factor(&"test_reason", 5)
	var lower := TacticalChoice.new(WaitAction.new(), &"wait", 0)
	var options: Array[TacticalChoice] = [invalid, custom, lower]
	var chosen := TacticalPlanner.choose(game, &"rat", options)
	if chosen != custom or not chosen.action is CustomAction:
		return _fail("New custom Action must be chosen without changing the planner")
	if chosen.score != 35 or not chosen.action.reason_codes.has(&"test_reason"):
		return _fail("Chosen utility and its causal factor must be preserved")
	if chosen.action.ai_candidates.size() != 2:
		return _fail("Invalid actions must not enter the evaluated candidates")
	var tie: Array[TacticalChoice] = [
		TacticalChoice.new(CustomAction.new(), &"first", 8),
		TacticalChoice.new(WaitAction.new(), &"second", 8),
	]
	if TacticalPlanner.choose(game, &"rat", tie) != tie[0]:
		return _fail("Equal scores must have stable candidate-order priority")
	return true


func _test_normal_rat_chases_and_preserves_trace() -> bool:
	var game := GameScript.new()
	if not game.player_move(Vector2i.RIGHT):
		return _fail("Initial move failed")
	if game.last_response_count != 2 or game.rat_next_ready_time != 1500:
		return _fail("Tactical planner changed the existing scheduling rhythm")
	var chase: CombatEvent = game.combat_log.events[1]
	if chase.action_id != &"move" or not chase.reason_codes.has(&"close_distance"):
		return _fail("The rat no longer approaches its target with a retained reason")
	if chase.data.get("ai_goal") != &"approach_target" or int(chase.data.get("ai_score", 0)) <= 0:
		return _fail("Selected AI goal and score were not recorded")
	var factors: Dictionary = chase.data.get("ai_factors", {})
	if not factors.has(&"target_hostile"):
		return _fail("Decision's hostility contribution is missing from the developer trace")
	if game.get_recent_event_text().find("target_hostile") >= 0:
		return _fail("Private hostility reasoning leaked into the player combat log")
	return true


func _test_wounded_rat_retreats_and_shows_only_visible_cues() -> bool:
	var game := GameScript.new()
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	game.rat_hp = 1
	var start_distance := game._manhattan_distance(game.rat_position, game.player_position)
	if not game.player_wait():
		return _fail("Player should be able to wait while the rat reevaluates")
	if game._manhattan_distance(game.rat_position, game.player_position) <= start_distance:
		return _fail("A wounded rat should retreat from the adjacent threat")
	var retreat: CombatEvent = game.combat_log.events[1]
	if retreat.action_id != &"move" or retreat.data.get("ai_goal") != &"survive":
		return _fail("Wounded rat should choose a survival movement action")
	if not retreat.reason_codes.has(&"low_health") or not retreat.reason_codes.has(&"fearful"):
		return _fail("Retreat must retain the injury and fear causes")
	if retreat.action_cost != GameScript.RAT_MOVE_COST:
		return _fail("Retreat must use the existing movement cost")
	var player_text := game.get_recent_event_text()
	if player_text.find("recoils and retreats") < 0:
		return _fail("Visible retreat must be explained in the default player log")
	if player_text.find("low_health") >= 0 or player_text.find("ai_score") >= 0:
		return _fail("Hidden decision factors must not leak into the player log")
	var debug_text := CombatLogFormatter.format_debug_event(retreat)
	if debug_text.find("low_health") < 0 or debug_text.find("ai_score") < 0:
		return _fail("Debug trace must retain both the reason and utility evaluation")
	return true


func _test_aggression_and_fear_can_change_the_same_rat() -> bool:
	var game := GameScript.new()
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	game.rat_hp = 1
	game.rat_aggression = 180
	if not game.player_wait():
		return _fail("First wait failed")
	var first: CombatEvent = game.combat_log.events[1]
	if first.action_id != &"bite" or game.rat_position != Vector2i(8, 3):
		return _fail("High aggression should keep the wounded rat fighting")
	# Re-evaluated on its next activation: no saved action queue or stale score.
	game.rat_aggression = 20
	if not game.player_wait():
		return _fail("Second wait failed")
	var last: CombatEvent = game.combat_log.events[game.combat_log.events.size() - 1]
	if last.action_id != &"move" or last.data.get("ai_goal") != &"survive":
		return _fail("Lowering aggression must change the next AI choice to retreat")
	if game.rat_position == Vector2i(8, 3):
		return _fail("Chosen retreat must resolve as an actual move, not a teleport-only outcome")
	return true


func _fail(message: String) -> bool:
	push_error("FAIL: " + message)
	quit(1)
	return false
