class_name HistoryNameSource
extends RefCounted

# Optional pure provider(seed, stable_entity_id, kind) -> String.
# No dependency on NamingCatalog, locale, map generation or global RNG.
var provider: Callable

func _init(custom_provider: Callable = Callable()) -> void:
	provider = custom_provider

func label(seed: int, id: String, kind: String) -> String:
	if provider.is_valid():
		var value: Variant = provider.call(seed, id, kind)
		if value is String and not value.strip_edges().is_empty():
			return value
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history-v0.1", "names", id])
	var first := ["Ash", "Reed", "Salt", "Stone", "Moss", "Tide", "Copper", "Grey"]
	var second := ["Reach", "Haven", "Gate", "Ford", "Vale", "Bank", "Ridge", "Marsh"]
	return "%s %s %s" % [first[rng.randi_range(0, first.size() - 1)], second[rng.randi_range(0, second.size() - 1)], id]
