class_name ActiveEffect
extends RefCounted

# EffectStore supplies an owned definition; external instances are snapshots.
# Authored data and application provenance are distinct. No timers/stacks/state.
var definition: GameplayEffectDefinition
var source_id: StringName

func _init(effect_definition: GameplayEffectDefinition, provenance: StringName) -> void:
	definition = effect_definition
	source_id = provenance
