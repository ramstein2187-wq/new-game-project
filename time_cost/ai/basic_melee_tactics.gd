class_name BasicMeleeTactics
extends RefCounted

const POLICY_REVISION: StringName = &"basic_melee_v2"
const MAX_CAUTION_ACTIONS := 2


static func choose(game: RefCounted, actor_id: StringName, target_id: StringName) -> TacticalChoice:
	return TacticalPlanner.choose(game, actor_id,
		candidates(MeleeContext.capture(game, actor_id, target_id)))


static func candidates(context: MeleeContext) -> Array[TacticalChoice]:
	var options: Array[TacticalChoice] = []
	if context.target_alive:
		_add_pressure(options, context)
		if context.caution_spent < MAX_CAUTION_ACTIONS:
			_add_hold(options, context)
			_add_local_moves(options, context)
	var wait := TacticalChoice.new(WaitAction.new(), &"wait", 0)
	wait.add_reason(&"no_meaningful_action")
	if not context.target_alive:
		wait.add_reason(&"target_unavailable")
	if not context.can_attack:
		wait.add_reason(&"attack_function_lost")
	if not context.can_move:
		wait.add_reason(&"locomotion_lost")
	if context.target_alive and context.can_attack and context.can_move \
			and not context.in_melee_range and context.route_action == null:
		wait.add_reason(&"route_blocked")
	options.append(wait)
	return options


static func _add_pressure(options: Array[TacticalChoice], context: MeleeContext) -> void:
	var choice: TacticalChoice
	if context.in_melee_range and context.can_attack:
		choice = TacticalChoice.new(AttackAction.new(context.target_id), &"fight_target", 60)
		choice.add_reason(&"target_adjacent")
		if context.self_condition == &"healthy":
			choice.add_factor(&"self_healthy", 10)
		if context.target_condition != &"healthy":
			choice.add_factor(&"target_vulnerable", 20 if context.target_condition == &"critical" else 10)
	elif context.route_action != null:
		choice = TacticalChoice.new(context.route_action, &"approach_target", 35)
		choice.add_reason(&"door_blocks_route" if context.route_action is InteractAction else &"close_distance")
	else:
		return
	choice.add_factor(&"aggression", context.aggression / 2)
	choice.add_factor(&"fear", -context.fear / 2)
	choice.add_factor(&"self_condition", -_injury(context))
	# A possible fight/route stays preferable to a reasonless fallback, even
	# after defensive options run out. This is resolve, not damage optimization.
	choice.add_factor(&"maintain_pressure", maxi(0, 1 - choice.score))
	if context.caution_spent >= MAX_CAUTION_ACTIONS:
		choice.add_reason(&"commit_to_engagement")
	options.append(choice)


static func _add_hold(options: Array[TacticalChoice], context: MeleeContext) -> void:
	# Deliberate hesitation only when advancing is a real alternative.
	if context.in_melee_range or context.route_action == null:
		return
	var hold := TacticalChoice.new(WaitAction.new(), &"hold_position", 40)
	hold.add_reason(&"await_target")
	hold.add_factor(&"aggression", -context.aggression / 2)
	hold.add_factor(&"fear", context.fear / 4)
	hold.add_factor(&"self_condition", _injury(context))
	options.append(hold)


static func _add_local_moves(options: Array[TacticalChoice], context: MeleeContext) -> void:
	for step: Dictionary in context.steps:
		if context.distance <= 2 and step.distance > context.distance:
			var retreat := TacticalChoice.new(MoveAction.new(step.direction), &"survive", 10)
			retreat.add_factor(&"fear", context.fear)
			retreat.add_factor(&"aggression", -context.aggression / 2)
			retreat.add_factor(&"self_condition", _injury(context))
			retreat.add_factor(&"distance_pressure", 8)
			retreat.add_factor(&"exposure", (context.exposure - int(step.exposure)) * 8)
			if not context.can_attack:
				retreat.add_factor(&"attack_function_lost", 60)
			retreat.add_reason(&"open_distance")
			retreat.visible_cue = &"retreat"
			options.append(retreat)
		elif step.distance == context.distance and step.congestion < context.congestion:
			var reposition := TacticalChoice.new(MoveAction.new(step.direction), &"reposition", 30)
			reposition.add_factor(&"congestion_relief", (context.congestion - int(step.congestion)) * 20)
			reposition.add_factor(&"aggression", -context.aggression / 4)
			reposition.add_factor(&"fear", context.fear / 4)
			reposition.add_factor(&"exposure", (context.exposure - int(step.exposure)) * 8)
			reposition.add_reason(&"clear_crowding")
			options.append(reposition)


static func _injury(context: MeleeContext) -> int:
	if context.self_condition == &"critical":
		return 20
	return 10 if context.self_condition == &"wounded" else 0


# Called only after production execution succeeds. Queries, rejected actions,
# route steps and target movement cannot replenish hesitation indefinitely.
static func record_action(actor: Actor, action: TimeAction) -> void:
	if actor.melee_caution_target != actor.target_id:
		actor.melee_caution_target = actor.target_id
		actor.melee_caution_spent = 0
	if action is AttackAction:
		actor.melee_caution_spent = 0
	elif action.ai_goal in [&"hold_position", &"survive", &"reposition"]:
		actor.melee_caution_spent = mini(MAX_CAUTION_ACTIONS, actor.melee_caution_spent + 1)
