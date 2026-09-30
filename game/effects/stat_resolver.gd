class_name StatResolver
extends RefCounted

# Order: ADD phase, MULTIPLY phase; effect IDs lexical, then authored array order.
# Actor supplies borrowed internal refs in ID order; never mutate them. No cache.
static func resolve(stat: StringName, base: float, effects: Array[GameplayEffectDefinition], source: StringName) -> Dictionary:
	var result := base
	var steps: Array[Dictionary] = [{"source": source, "operation": &"BASE", "value": base, "result": base}]
	for operation in [StatModifier.Operation.ADD, StatModifier.Operation.MULTIPLY]:
		for effect in effects:
			for modifier in effect.stat_modifiers:
				if modifier.target_stat == stat and modifier.operation == operation:
					result = modifier.apply(result)
					steps.append({"source": modifier.source_id, "effect_id": effect.id,
						"operation": modifier.operation_name(), "value": modifier.value, "result": result})
	return {"stat": stat, "base": base, "value": result, "valid": is_finite(result), "steps": steps}
