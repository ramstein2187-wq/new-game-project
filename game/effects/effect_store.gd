class_name EffectStore
extends RefCounted

# Sole owner of live ActiveEffects. No method returns live instances/definitions.
# As with other GDScript classes, underscored storage is implementation-only.
var _instances: Dictionary = {}
var _sorted_ids: Array[StringName] = []
var _order_dirty := true

func add(definition: GameplayEffectDefinition, source_id: StringName = &"system") -> bool:
	if definition == null or not definition.is_valid() or source_id == &"" or has(definition.id):
		return false
	var owned: GameplayEffectDefinition = definition.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	_instances[owned.id] = ActiveEffect.new(owned, source_id)
	_order_dirty = true
	return true

func remove(effect_id: StringName) -> bool:
	if not _instances.erase(effect_id):
		return false
	_order_dirty = true
	return true

func clear() -> void:
	_instances.clear()
	_order_dirty = true

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

func resolve_stat(stat: StringName, base: float, source: StringName, include_steps: bool = true) -> Dictionary:
	if not StatCatalog.is_known(stat):
		return {"stat": stat, "valid": false, "value": 0.0, "steps": [] if include_steps else null}
	var result := base
	var percent_total := 0.0
	var flat_total := 0.0
	var steps: Variant = null
	if include_steps:
		var detailed_steps: Array[Dictionary] = [{"source": source, "operation": &"BASE", "value": base, "result": base}]
		steps = detailed_steps
	var ids := _ordered_ids()
	for operation in [ModifierOperation.Kind.PERCENT, ModifierOperation.Kind.FLAT]:
		for effect_id in ids:
			var active: ActiveEffect = _instances[effect_id]
			for modifier in active.definition.stat_modifiers:
				if modifier.target_stat == stat and modifier.operation == operation:
					if operation == ModifierOperation.Kind.PERCENT:
						percent_total += modifier.value
					else:
						flat_total += modifier.value
					result = base * (1.0 + percent_total) + flat_total
					if include_steps:
						steps.append(_step(active, modifier.source_id, modifier.operation_name(), modifier.value, result, percent_total, flat_total))
	return {"stat": stat, "base": base, "value": result, "unrounded": result, "valid": is_finite(result),
		"percent_total": percent_total, "flat_total": flat_total, "steps": steps}

# Pure calculation, no rounding: ActionCostResolver owns final ceil/minimum.
func apply_action_cost_modifiers(base: float, tags: Array[StringName], intrinsic_percent: float = 0.0, intrinsic_source: StringName = &"", include_steps: bool = true) -> Dictionary:
	var percent_total := intrinsic_percent
	var flat_total := 0.0
	var result := base * (1.0 + percent_total)
	var steps: Variant = null
	if include_steps:
		var detailed_steps: Array[Dictionary] = []
		steps = detailed_steps
	if include_steps and intrinsic_source != &"":
		steps.append({"source": intrinsic_source, "operation": &"PERCENT", "value": intrinsic_percent,
			"result": result, "percent_total": percent_total, "flat_total": flat_total})
	var ids := _ordered_ids()
	for operation in [ModifierOperation.Kind.PERCENT, ModifierOperation.Kind.FLAT]:
		for effect_id in ids:
			var active: ActiveEffect = _instances[effect_id]
			for modifier in active.definition.action_cost_modifiers:
				if modifier.operation == operation and modifier.matches(tags):
					if operation == ModifierOperation.Kind.PERCENT:
						percent_total += modifier.value
					else:
						flat_total += modifier.value
					result = base * (1.0 + percent_total) + flat_total
					if include_steps:
						steps.append(_step(active, modifier.source_id, modifier.operation_name(), modifier.value, result, percent_total, flat_total))
	return {"value": result, "percent_total": percent_total, "flat_total": flat_total, "steps": steps}

# Internal read-only scalar order; callers cannot mutate the shared cache.
func _ordered_ids() -> Array[StringName]:
	if _order_dirty:
		_rebuild_ordered_ids()
	return _sorted_ids

func _rebuild_ordered_ids() -> void:
	_sorted_ids = []
	_sorted_ids.assign(_instances.keys())
	_sorted_ids.sort_custom(func(left, right): return String(left) < String(right))
	_sorted_ids.make_read_only()
	_order_dirty = false

func _step(active: ActiveEffect, modifier_source: StringName, operation: StringName, value: float, result: float, percent_total: float, flat_total: float) -> Dictionary:
	return {"source": modifier_source, "effect_id": active.definition.id, "source_id": active.source_id,
		"operation": operation, "value": value, "result": result,
		"percent_total": percent_total, "flat_total": flat_total}
