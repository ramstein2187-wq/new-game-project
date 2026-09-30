class_name StatResolver
extends RefCounted

# EffectStore owns deterministic iteration; only values/traces cross the boundary.
static func resolve(stat: StringName, base: float, effects: EffectStore, source: StringName) -> Dictionary:
	return effects.resolve_stat(stat, base, source)
