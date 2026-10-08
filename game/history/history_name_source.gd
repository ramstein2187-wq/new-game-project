class_name HistoryNameSource
extends RefCounted

# Optional pure provider(seed, stable_entity_id, kind) -> String or GeneratedName.
# Default uses M035; per-result collision blocking is passed in, never global.
var provider: Callable
var _catalog: NamingCatalog
var _generator: NameGenerator
var _renderer: NameRenderer

func _init(custom_provider: Callable = Callable(), catalog: NamingCatalog = null) -> void:
	provider = custom_provider
	_catalog = catalog if catalog != null else NamingCatalog.default_catalog()
	_generator = NameGenerator.new(_catalog)
	_renderer = NameRenderer.new(_catalog)

func assign(entity: HistoricalEntity, seed: int, used: Dictionary, version: int = 2) -> void:
	var canonical: GeneratedName
	var label := ""
	if provider.is_valid():
		var value: Variant = provider.call(seed, entity.id, entity.kind)
		if value is GeneratedName:
			canonical = value.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
		elif value is String:
			label = value.strip_edges()
	else:
		var type := "settlement" if entity.kind in ["settlement", "group"] else "mixed_location"
		var blocked := {}
		for locale in _catalog.locales():
			blocked[locale] = used.get(locale, []).duplicate()
		canonical = _generator.generate(seed, "history/v%d/" % version + entity.naming_lineage_id + "/" + entity.id,
			entity.naming_culture_id, type, {"max_attempts": 32, "blocked_display_names": blocked})
	if canonical != null and _renderer.validation_errors(canonical).is_empty():
		label = _renderer.render(canonical, "en")
		entity.generated_name = canonical
		for locale in _catalog.locales():
			if not used.has(locale):
				used[locale] = []
			used[locale].append(_renderer.render(canonical, locale))
	entity.name = label if not label.is_empty() else entity.id
