extends SceneTree

const TimeCostGameScript := preload("res://time_cost/time_cost_game.gd")

# A new action can be added without modifying TimeScheduler or TimeCostGame.
class CustomAction extends TimeAction:
	func can_execute(game: RefCounted, actor_id: StringName) -> bool:
		return game.actor_is_alive(actor_id)

	func get_cost(_game: RefCounted, _actor_id: StringName) -> int:
		return 600

	func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
		var event: CombatEvent = game.make_action_event(&"custom", actor_id, &"custom", cost)
		event.data = {"test_marker": true}
		return event


class InvalidCostAction extends CustomAction:
	func get_cost(_game: RefCounted, _actor_id: StringName) -> int:
		return 0


func _init() -> void:
	if not _test_new_action_uses_shared_pipeline():
		return
	if not _test_invalid_action_is_free():
		return
	if not _test_player_and_rat_share_action_types():
		return
	if not _test_combat_and_reason_trace():
		return
	if not _test_unregistered_actor_cannot_act():
		return
	print("PASS: common action system")
	quit(0)


func _test_new_action_uses_shared_pipeline() -> bool:
	var game := TimeCostGameScript.new()
	var action := CustomAction.new()
	action.reason_codes.append(&"test_reason")
	if not game.perform_action(&"player", action):
		return _fail("Custom action should use the shared action execution path")
	if game.player_next_ready_time != 600 or game.last_action_cost != 600:
		return _fail("Custom action did not advance scheduler by its own cost")
	if game.last_response_count != 1 or game.rat_next_ready_time != 750:
		return _fail("Custom action did not trigger the rat scheduling window")
	if game.combat_log.events.size() != 2:
		return _fail("Custom player action and NPC response should both be logged")
	var event: CombatEvent = game.combat_log.events[0]
	if event.action_id != &"custom" or event.time != 0 or event.action_cost != 600:
		return _fail("Custom event lost action id, original timestamp, or cost")
	if event.reason_codes != [&"test_reason"] or not event.data.get("test_marker", false):
		return _fail("Shared action path did not preserve custom reason and result")
	return true


func _test_invalid_action_is_free() -> bool:
	var game := TimeCostGameScript.new()
	if game.perform_action(&"player", MoveAction.new(Vector2i.ZERO)):
		return _fail("Invalid movement must be rejected")
	if game.perform_action(&"player", AttackAction.new(&"rat")):
		return _fail("Non-adjacent attack must be rejected")
	if game.perform_action(&"player", InvalidCostAction.new()):
		return _fail("Nonpositive action cost must be rejected")
	if game.perform_action(&"player", InteractAction.new(Vector2i(1, 1))):
		return _fail("Interaction with non-door cell must be rejected")
	if game.player_next_ready_time != 0 or game.rat_next_ready_time != 0:
		return _fail("Rejected action changed ready times")
	if not game.combat_log.events.is_empty():
		return _fail("Rejected action must not create a combat event")
	return true


func _test_player_and_rat_share_action_types() -> bool:
	var game := TimeCostGameScript.new()
	game.player_position = Vector2i(4, 3)
	game.facing = Vector2i.RIGHT
	if not game.player_interact():
		return _fail("Player should open door via InteractAction")
	if not game.door_open or game.last_action_cost != TimeCostGame.INTERACT_COST:
		return _fail("Player interaction cost or door state changed")
	var game2 := TimeCostGameScript.new()
	# From the initial room, the rat reaches the door after several moves.
	for index in range(5):
		if not game2.player_wait():
			return _fail("Waiting to observe NPC actions failed")
		if game2.door_open:
			break
	if not game2.door_open:
		return _fail("Rat failed to open the door using the same InteractAction")
	var rat_door_found := false
	for event in game2.combat_log.events:
		if event.actor_id == &"rat" and event.type == &"interact":
			rat_door_found = true
			if event.action_cost != TimeCostGame.RAT_INTERACT_COST or not event.reason_codes.has(&"door_blocks_route"):
				return _fail("Rat interaction cost or door-blocking reason changed")
	if not rat_door_found:
		return _fail("Rat interaction event was not recorded")
	return true


func _test_combat_and_reason_trace() -> bool:
	var game := TimeCostGameScript.new()
	game.player_position = Vector2i(7, 3)
	game.rat_position = Vector2i(8, 3)
	if not game.player_move(Vector2i.RIGHT):
		return _fail("Bump attack should run through AttackAction")
	if game.rat_hp != 2 or game.player_hp != 3 or game.last_response_count != 2:
		return _fail("Shared attack path changed damage or timing")
	if game.combat_log.events.size() != 3:
		return _fail("Player attack and both rat bites should be recorded")
	var rat_attack: CombatEvent = game.combat_log.events[1]
	if not rat_attack.reason_codes.has(&"target_adjacent") or rat_attack.action_id != &"bite":
		return _fail("NPC adjacency reason or action id were lost in shared execution")
	return true


func _test_unregistered_actor_cannot_act() -> bool:
	var game := TimeCostGameScript.new()
	if game.perform_action(&"stranger", WaitAction.new()):
		return _fail("Unregistered NPC must not be able to act")
	game.scheduler.unregister_actor(&"rat")
	if game.perform_action(&"rat", WaitAction.new()):
		return _fail("Removed actor must not be able to act")
	if game.combat_log.events.size() != 0:
		return _fail("Unregistered action must not be logged")
	return true


func _fail(reason: String) -> bool:
	push_error("FAIL: " + reason)
	quit(1)
	return false
