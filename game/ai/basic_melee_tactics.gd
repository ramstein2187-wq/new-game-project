class_name BasicMeleeTactics
extends RefCounted

const POLICY_REVISION: StringName = &"basic_melee_v3"
const MAX_CAUTION_ACTIONS := 2
const MAX_SURVIVAL_RETREATS := 1
const MAX_DEFENSIVE_ACTIONS := MAX_CAUTION_ACTIONS + MAX_SURVIVAL_RETREATS
const RETREAT_PRESSURE_THRESHOLD := 60


static func choose(game: RefCounted, actor_id: StringName, target_id: StringName) -> TacticalChoice:
	return TacticalPlanner.choose(game, actor_id,
		candidates(MeleeContext.capture(game, actor_id, target_id)))


static func candidates(context: MeleeContext) -> Array[TacticalChoice]:
	var options: Array[TacticalChoice] = []
	if context.target_alive:
		_add_pressure(options, context)
		if context.caution_spent < MAX_CAUTION_ACTIONS:
			_add_hold(options, context)
			_add_local_moves(options, context, true, true)
		elif context.caution_spent < MAX_DEFENSIVE_ACTIONS and _retreat_is_meaningful(context):
			# After ordinary hesitation is spent, one emergency survival
			# retreat remains. Hold/Reposition cannot loop forever and the
			# emergency retreat itself cannot repeat indefinitely.
			_add_local_moves(options, context, true, false)

	var wait := TacticalChoice.new(WaitAction.new(), &"wait", 0)
	wait.add_reason(&"no_meaningful_action")
	if not context.target_alive:
		wait.add_reason(&"target_unavailable")
	if not context.can_attack:
		wait.add_reason(&"attack_function_lost")
	if not context.can_move:
		wait.add_reason(&"locomotion_lost")
	if context.target_alive and context.can_attack and context.can_move 			and not context.in_melee_range and context.route_action == null:
		wait.add_reason(&"route_blocked")
	options.append(wait)
	return options


static func _add_pressure(options: Array[TacticalChoice], context: MeleeContext) -> void:
	if context.in_melee_range and context.can_attack:
		for option: MeleeAttackOption in context.attack_options:
			var choice := _attack_choice(option, context)
			if context.caution_spent >= MAX_CAUTION_ACTIONS:
				choice.add_reason(&"progress_required")
			options.append(choice)
		return

	if context.route_action == null:
		return
	var route := TacticalChoice.new(context.route_action, &"approach_target", 35)
	route.add_reason(&"door_blocks_route" if context.route_action is InteractAction else &"close_distance")
	route.add_factor(&"aggression", context.aggression / 2)
	route.add_factor(&"fear", -context.fear / 2)
	route.add_factor(&"self_condition", -_injury(context))
	route.add_factor(&"maintain_pressure", maxi(0, 1 - route.score))
	if context.caution_spent >= MAX_CAUTION_ACTIONS:
		route.add_reason(&"progress_required")
	options.append(route)


static func _attack_choice(option: MeleeAttackOption, context: MeleeContext) -> TacticalChoice:
	var choice := TacticalChoice.new(option.action, &"fight_target", 60)
	choice.identify(option.id, option.display_name)
	choice.add_reason(&"target_adjacent")
	if context.self_condition == &"healthy":
		choice.add_factor(&"self_healthy", 10)
	if context.target_condition != &"healthy":
		choice.add_factor(&"target_vulnerable", 20 if context.target_condition == &"critical" else 10)
	choice.add_factor(&"aggression", context.aggression / 2)
	choice.add_factor(&"fear", -context.fear / 2)
	choice.add_factor(&"self_condition", -_injury(context))
	_apply_attack_option_factors(choice, option, context)
	choice.add_factor(&"maintain_pressure", maxi(0, 1 - choice.score))
	return choice


static func _apply_attack_option_factors(choice: TacticalChoice, option: MeleeAttackOption,
		context: MeleeContext) -> void:
	# Matchups are deliberately coarse. The policy sees profile identity but not
	# exact armor value or a computed damage expectation.
	if context.target_armor_profile != &"" and context.target_armor_coverage != MeleeContext.ARMOR_NONE:
		var multiplier := ArmorProfileCatalog.multiplier_for(context.target_armor_profile, option.damage_type)
		var matchup_weight := 14 if context.target_armor_coverage == MeleeContext.ARMOR_SUBSTANTIAL else 6
		if multiplier <= 0.85:
			choice.add_factor(&"armor_match_favorable", matchup_weight)
		elif multiplier >= 1.15:
			choice.add_factor(&"armor_match_poor", -matchup_weight)

	# Penetration-specific commitment is only justified when a meaningful share
	# of likely hit locations is armored. A helmet alone is not "an armored target".
	if context.target_armor_coverage == MeleeContext.ARMOR_SUBSTANTIAL:
		var gain := option.penetration_gain()
		if gain >= 20.0:
			choice.add_factor(&"penetration_option", 12)
		elif gain >= 10.0:
			choice.add_factor(&"penetration_option", 8)

	if option.damage_modifier != 0:
		choice.add_factor(&"damage_tradeoff", clampi(option.damage_modifier * 4, -12, 12))
	if option.situation_modifier != 0:
		choice.add_factor(&"accuracy_tradeoff", clampi(option.situation_modifier * 4, -12, 12))

	match option.commitment_band():
		&"quick":
			var tempo := 4
			if context.target_condition == &"critical":
				tempo += 6
			if context.self_condition == &"wounded":
				tempo += 2
			elif context.self_condition == &"critical":
				tempo += 4
			choice.add_factor(&"quick_tempo", tempo)
		&"committed":
			var commitment := -5 + roundi(context.aggression / 30.0) 				- roundi(context.fear / 20.0) - _injury(context) / 2
			choice.add_factor(&"action_commitment", commitment)
		&"heavy":
			var heavy := -12 + roundi(context.aggression / 15.0) 				- roundi(context.fear / 8.0) - _injury(context)
			choice.add_factor(&"action_commitment", heavy)


static func _add_hold(options: Array[TacticalChoice], context: MeleeContext) -> void:
	if context.in_melee_range or context.route_action == null:
		return
	var hold := TacticalChoice.new(WaitAction.new(), &"hold_position", 40)
	hold.add_reason(&"await_target")
	hold.add_factor(&"aggression", -context.aggression / 2)
	hold.add_factor(&"fear", context.fear / 4)
	hold.add_factor(&"self_condition", _injury(context))
	options.append(hold)


static func _add_local_moves(options: Array[TacticalChoice], context: MeleeContext,
		allow_retreat: bool, allow_reposition: bool) -> void:
	for step: Dictionary in context.steps:
		if allow_retreat and _retreat_is_meaningful(context) \
				and context.distance <= 2 and int(step.distance) > context.distance:
			var retreat := TacticalChoice.new(MoveAction.new(step.direction), &"survive", 0)
			retreat.add_factor(&"fear", context.fear)
			retreat.add_factor(&"aggression", -context.aggression / 2)
			retreat.add_factor(&"self_condition", _injury(context))
			retreat.add_factor(&"distance_pressure", 4)
			retreat.add_factor(&"exposure", (context.exposure - int(step.exposure)) * 6)
			if not context.can_attack:
				retreat.add_factor(&"attack_function_lost", 60)
			if context.caution_spent >= MAX_CAUTION_ACTIONS:
				retreat.add_reason(&"survival_override")
			retreat.add_reason(&"open_distance")
			retreat.visible_cue = &"retreat"
			options.append(retreat)
		elif allow_reposition and int(step.distance) == context.distance 				and int(step.congestion) < context.congestion:
			var reposition := TacticalChoice.new(MoveAction.new(step.direction), &"reposition", 30)
			reposition.add_factor(&"congestion_relief",
				(context.congestion - int(step.congestion)) * 20)
			reposition.add_factor(&"aggression", -context.aggression / 4)
			reposition.add_factor(&"fear", context.fear / 4)
			reposition.add_factor(&"exposure", (context.exposure - int(step.exposure)) * 8)
			reposition.add_reason(&"clear_crowding")
			options.append(reposition)


static func _retreat_pressure(context: MeleeContext) -> int:
	return context.fear + _injury(context) - context.aggression / 2


static func _retreat_is_meaningful(context: MeleeContext) -> bool:
	return not context.can_attack or _retreat_pressure(context) >= RETREAT_PRESSURE_THRESHOLD


static func _injury(context: MeleeContext) -> int:
	if context.self_condition == &"critical":
		return 20
	return 10 if context.self_condition == &"wounded" else 0


# Called only after production execution succeeds. Querying or rejecting a
# candidate cannot consume caution state.
static func record_action(actor: Actor, action: TimeAction) -> void:
	if actor.melee_caution_target != actor.target_id:
		actor.melee_caution_target = actor.target_id
		actor.melee_caution_spent = 0
	if action is AttackAction:
		actor.melee_caution_spent = 0
	elif action.ai_goal in [&"hold_position", &"survive", &"reposition"]:
		actor.melee_caution_spent = mini(MAX_DEFENSIVE_ACTIONS, actor.melee_caution_spent + 1)
