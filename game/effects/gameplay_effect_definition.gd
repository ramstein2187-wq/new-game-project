class_name GameplayEffectDefinition
extends Resource

# Authored static data. Applied state/provenance belong to ActiveEffect, and
# EffectStore owns an isolated definition copy that resolvers only read.
@export var id: StringName = &""
@export var stat_modifiers: Array[StatModifier] = []
@export var action_cost_modifiers: Array[ActionCostModifier] = []

func is_valid() -> bool:
	if id == &"" or (stat_modifiers.is_empty() and action_cost_modifiers.is_empty()):
		return false
	for modifier in stat_modifiers:
		if modifier == null or not modifier.is_valid():
			return false
	for modifier in action_cost_modifiers:
		if modifier == null or not modifier.is_valid():
			return false
	return true
