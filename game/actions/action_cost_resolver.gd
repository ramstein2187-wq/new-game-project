class_name ActionCostResolver
extends RefCounted

const MAX_COST := 2147483647

# Pure query: no time, RNG, events or mutations. Invalid inputs return cost 0.
static func resolve(action: TimeAction, game: RefCounted, actor_id: StringName, include_steps: bool = true) -> Dictionary:
	var actor: Actor = game.get_actor(actor_id)
	if actor == null:
		if include_steps:
			var missing_steps: Array[Dictionary] = []
			return _invalid(missing_steps, &"missing_actor")
		return _invalid(null, &"missing_actor")
	var base := action.base_cost()
	var result := base
	var steps: Variant = null
	if include_steps:
		var detailed_steps: Array[Dictionary] = [{"source": action.cost_source(), "operation": &"BASE", "value": base, "result": base}]
		steps = detailed_steps
	var intrinsic := action.intrinsic_cost(game, actor_id)
	if base <= 0.0 or not is_finite(base) or not intrinsic.valid or not is_finite(float(intrinsic.value)):
		return _invalid(steps, &"invalid_action_cost")
	if action.get_tags().has(&"MOVE"):
		var speed := actor.stat_breakdown(StatCatalog.MOVEMENT_SPEED, include_steps)
		var efficiency: float = game.movement_efficiency(actor_id)
		if not speed.valid or speed.value <= 0.0 or not is_finite(efficiency) or efficiency <= 0.0:
			return _invalid(steps, &"movement_unavailable")
		result /= float(speed.value)
		if include_steps:
			steps.append({"source": &"movement_speed", "operation": &"DIVIDE", "value": speed.value,
				"result": result, "stat_breakdown": speed})
		result /= efficiency
		if include_steps:
			steps.append({"source": &"body:locomotion", "operation": &"DIVIDE", "value": efficiency, "result": result})
	var adjusted_base := result
	var external := actor.apply_action_cost_modifiers(adjusted_base, action.get_tags(), float(intrinsic.value), intrinsic.source, include_steps)
	result = float(external.value)
	if include_steps:
		steps.append_array(external.steps)
	if not is_finite(result) or absf(result) > MAX_COST:
		return _invalid(steps, &"nonfinite_or_overflow")
	# Suppress only floating-point noise at an integer boundary, at final rounding.
	# e.g. 1400 / (1000 / 1100) / 0.5 must stay 3080, never 3081.
	var nearest := roundf(result)
	var tolerance := 8.0 * 2.220446049250313e-16 * maxf(1.0, absf(result))
	var rounding_input := nearest if absf(result - nearest) <= tolerance else result
	var rounded := ceili(rounding_input)
	if include_steps:
		steps.append({"source": &"final_rounding", "operation": &"CEIL", "value": result, "result": rounded})
	var cost := maxi(1, rounded)
	if include_steps:
		steps.append({"source": &"minimum_cost", "operation": &"MAX", "value": 1, "result": cost})
	return {"valid": true, "base": base, "adjusted_base": adjusted_base, "cost": cost, "rounded": rounded,
		"unrounded": result, "percent_total": external.percent_total, "flat_total": external.flat_total, "steps": steps}

static func _invalid(steps: Variant, reason: StringName) -> Dictionary:
	return {"valid": false, "cost": 0, "reason": reason, "steps": steps}
