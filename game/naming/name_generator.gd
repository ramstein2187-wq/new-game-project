class_name NameGenerator
extends RefCounted

const NAMING_ALGORITHM_VERSION := 1
const MAX_ATTEMPTS := 32
const DEFAULT_ATTEMPTS := 8
var last_error: String = ""
var last_attempt_count: int = 0
var _catalog: NamingCatalog
var _renderer: NameRenderer

func _init(catalog: NamingCatalog = null) -> void:
	_catalog = catalog if catalog != null else NamingCatalog.default_catalog()
	_renderer = NameRenderer.new(_catalog)

# options: max_attempts, blocked_canonical_keys, blocked_display_names.
# Returns null plus last_error on invalid input/catalog or bounded exhaustion.
func generate(world_seed: int, entity_key: String, culture_id: String, name_type: String, options: Dictionary = {}) -> GeneratedName:
	last_error = ""
	last_attempt_count = 0
	if not _catalog.is_valid():
		last_error = "; ".join(_catalog.errors)
		return null
	if entity_key.strip_edges().is_empty() or culture_id.strip_edges().is_empty() or name_type.strip_edges().is_empty():
		last_error = "Entity key, culture and name type must not be empty"
		return null
	var candidates: Array[NameTemplate] = []
	for id in _catalog.culture_templates(culture_id):
		var item := _catalog.template(id)
		if name_type in item.name_types:
			candidates.append(item)
	if candidates.is_empty():
		last_error = "Unknown culture or unsupported name type"
		return null
	var attempts: Variant = options.get("max_attempts", DEFAULT_ATTEMPTS)
	var blocked_keys: Variant = options.get("blocked_canonical_keys", PackedStringArray())
	var blocked_displays: Variant = options.get("blocked_display_names", {})
	if not attempts is int or attempts < 1 or attempts > MAX_ATTEMPTS:
		last_error = "max_attempts must be an integer in 1..32"
		return null
	if (not blocked_keys is Array and not blocked_keys is PackedStringArray) or not blocked_displays is Dictionary:
		last_error = "Malformed blocked-name input"
		return null
	for key in blocked_keys:
		if not key is String or String(key).strip_edges().is_empty():
			last_error = "Invalid blocked canonical key"
			return null
	var block_errors := NamingCatalog.display_list_errors(blocked_displays, _catalog.locales())
	if not block_errors.is_empty():
		last_error = "; ".join(block_errors)
		return null
	var keys := {}
	for key in _catalog.reserved_keys():
		keys[key] = true
	for key in blocked_keys:
		keys[key] = true
	var displays := {}
	for lists: Dictionary in [_catalog.reserved_displays(), blocked_displays]:
		for locale in lists:
			if not displays.has(locale):
				displays[locale] = {}
			for value: String in lists[locale]:
				displays[locale][value.strip_edges().to_lower()] = true
	for attempt in range(attempts):
		last_attempt_count = attempt + 1
		var scope: Array[String] = ["naming-v1", str(NAMING_ALGORITHM_VERSION), culture_id, entity_key, name_type, "attempt", str(attempt)]
		var choice_rng := _rng(world_seed, scope, ["template"])
		var item: NameTemplate = candidates[choice_rng.randi_range(0, candidates.size() - 1)]
		var generated := GeneratedName.new()
		generated.naming_version = NAMING_ALGORITHM_VERSION
		generated.culture_id = culture_id
		generated.name_type = name_type
		generated.template_id = item.id
		for slot in item.slots:
			if slot.kind == NameSlot.Kind.NUMBER:
				var number_rng := _rng(world_seed, scope, [item.id, "slot", slot.id, "number"])
				generated.components[slot.id] = {"kind": "number", "value": number_rng.randi_range(slot.number_min, slot.number_max)}
			else:
				var tokens: Array[String] = []
				for index in range(slot.token_pools.size()):
					var pool := slot.token_pools[index]
					var token_rng := _rng(world_seed, scope, [item.id, "slot", slot.id, "token", str(index)])
					tokens.append(pool[token_rng.randi_range(0, pool.size() - 1)])
				generated.components[slot.id] = {"kind": slot.kind_id(), "tokens": tokens}
		if not keys.is_empty() and keys.has(generated.canonical_key()):
			continue
		var blocked := false
		# Check every required locale, independently of the current display language.
		for locale in _catalog.locales():
			var display := _renderer.render(generated, locale)
			if display.is_empty():
				last_error = _renderer.last_error
				return null
			if displays.get(locale, {}).has(display.to_lower()):
				blocked = true
		if not blocked:
			return generated
	last_error = "Reserved/blocked naming results exhausted attempts"
	return null

static func _rng(world_seed: int, scope: Array[String], selection: Array[String]) -> RandomNumberGenerator:
	var parts: Array[String] = scope.duplicate()
	parts.append_array(selection)
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(world_seed, parts)
	return rng
