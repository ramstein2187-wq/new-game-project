class_name EffectStore
extends RefCounted

# Sole owner of live ActiveEffects. No method returns live instances/definitions.
# As with other GDScript classes, underscored storage is implementation-only.
var _instances: Dictionary = {}

func add(definition: GameplayEffectDefinition, source_id: StringName = &"system") -> bool:
	if definition == null or not definition.is_valid() or source_id == &"" or has(definition.id):
		return false
	var owned: GameplayEffectDefinition = definition.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	_instances[owned.id] = ActiveEffect.new(owned, source_id)
	return true

func remove(effect_id: StringName) -> bool:
	return _instances.erase(effect_id)

func clear() -> void:
	_instances.clear()

func has(effect_id: StringName) -> bool:
	return _instances.has(effect_id)

func snapshots() -> Array[ActiveEffect]:
	var result: Array[ActiveEffect] = []
	for effect_id in _ordered_ids():
		var active: ActiveEffect = _instances[effect_id]
		result.append(ActiveEffect.new(active.definition.duplicate_deep(Resource.DEEP_DUPLICATE_ALL), active.source_id))
	return result

# Compatibility boundary for Actor.active_effects(): isolated Definitions.
func definition_snapshots() -> Array[GameplayEffectDefinition]:
	var result: Array[GameplayEffectDefinition] = []
	for snapshot in snapshots():
		result.append(snapshot.definition)
	return result

func resolve_stat(stat: StringName, base: float, source: StringName) -> Dictionary:
	if not StatCatalog.is_known(stat):
		return {"stat": stat, "valid": false, "value": 0.0, "steps": []}
	var result := base
	var steps: Array[Dictionary] = [{"source": source, "operation": &"BASE", "value": base, "result": base}]
	var ids := _ordered_ids()
	# Stat phases require textual ID order, independent of StringName ordering.
	ids.sort_custom(func(left, right): return String(left) < String(right))
	# Base * product(MULTIPLY) + sum(ADD): flat bonuses are never multiplied.
	for operation in [StatModifier.Operation.MULTIPLY, StatModifier.Operation.ADD]:
		for effect_id in ids:
			var active: ActiveEffect = _instances[effect_id]
			for modifier in active.definition.stat_modifiers:
				if modifier.target_stat == stat and modifier.operation == operation:
					result = modifier.apply(result)
					steps.append(_step(active, modifier.source_id, modifier.operation_name(), modifier.value, result))
	return {"stat": stat, "base": base, "value": result, "valid": is_finite(result), "steps": steps}

# Pure calculation, no rounding: ActionCostResolver owns final ceil/minimum.
func apply_action_cost_modifiers(input: float, tags: Array[StringName]) -> Dictionary:
	var result := input
	var steps: Array[Dictionary] = []
	var ids := _ordered_ids()
	for operation in [StatModifier.Operation.ADD, StatModifier.Operation.MULTIPLY]:
		for effect_id in ids:
			var active: ActiveEffect = _instances[effect_id]
			for modifier in active.definition.action_cost_modifiers:
				if modifier.operation == operation and modifier.matches(tags):
					result = modifier.apply(result)
					steps.append(_step(active, modifier.source_id, modifier.operation_name(), modifier.value, result))
	return {"value": result, "steps": steps}

# Only scalar IDs leave this helper, never a live Resource collection.
func _ordered_ids() -> Array[StringName]:
	var ids: Array[StringName] = []
	ids.assign(_instances.keys())
	ids.sort()
	return ids

func _step(active: ActiveEffect, modifier_source: StringName, operation: StringName, value: float, result: float) -> Dictionary:
	return {"source": modifier_source, "effect_id": active.definition.id, "source_id": active.source_id,
		"operation": operation, "value": value, "result": result}
