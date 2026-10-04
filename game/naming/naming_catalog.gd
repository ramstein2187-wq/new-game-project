class_name NamingCatalog
extends RefCounted

const CONTENT_PATH := "res://content/naming/catalog.tres"
var _errors := PackedStringArray()
var errors: PackedStringArray:
	get:
		return _errors.duplicate()
var _content: NamingContent
var _tokens := {}
var _templates := {}
var _cultures := {}
var _placeholder := RegEx.new()
static var _default_catalog: NamingCatalog

func _init(source: NamingContent = null) -> void:
	_placeholder.compile("\\{([a-z][a-z0-9_]*)\\}")
	if source == null:
		source = load(CONTENT_PATH) as NamingContent
	if source == null:
		_errors.append("Missing naming content")
		return
	# Own a snapshot: caller Resource edits cannot invalidate the lookup indices.
	_content = source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	_validate()
	if not _errors.is_empty():
		_tokens.clear()
		_templates.clear()
		_cultures.clear()

static func default_catalog() -> NamingCatalog:
	if _default_catalog == null:
		_default_catalog = NamingCatalog.new()
	return _default_catalog

func is_valid() -> bool:
	return _errors.is_empty()

func locales() -> PackedStringArray:
	return _content.required_locales.duplicate() if is_valid() else PackedStringArray()

func token_form(id: String, locale: String) -> String:
	var token: NameToken = _tokens.get(id)
	return token.forms.get(locale, "") if token != null else ""

func token_kind(id: String) -> int:
	var token: NameToken = _tokens.get(id)
	return int(token.kind) if token != null else -1

func capitalize_phonetic(locale: String) -> bool:
	return is_valid() and locale in _content.capitalize_phonetic_locales

# Return isolated definitions. Runtime never exposes mutable source Resources.
func template(id: String) -> NameTemplate:
	var item: NameTemplate = _templates.get(id)
	return item.duplicate_deep(Resource.DEEP_DUPLICATE_ALL) if item != null else null

func culture_templates(id: String) -> PackedStringArray:
	var item: NameCulture = _cultures.get(id)
	return item.template_ids.duplicate() if item != null else PackedStringArray()

func reserved_keys() -> PackedStringArray:
	return _content.reserved_canonical_keys.duplicate() if is_valid() else PackedStringArray()

func reserved_displays() -> Dictionary:
	return _content.reserved_display_names.duplicate(true) if is_valid() else {}

func _validate() -> void:
	var locale_ids := {}
	for locale in _content.required_locales:
		if locale.strip_edges().is_empty() or locale_ids.has(locale):
			_errors.append("Empty or duplicate locale: " + locale)
		locale_ids[locale] = true
	if locale_ids.is_empty():
		_errors.append("Required locales must not be empty")
	for locale in _content.capitalize_phonetic_locales:
		if not locale_ids.has(locale):
			_errors.append("Unsupported capitalization locale: " + locale)
	_index(_content.tokens, _tokens, "token")
	_index(_content.templates, _templates, "template")
	_index(_content.cultures, _cultures, "culture")
	if _tokens.is_empty() or _templates.is_empty() or _cultures.is_empty():
		_errors.append("Naming catalog needs tokens, templates and cultures")
	for token: NameToken in _tokens.values():
		if token.kind not in [NameToken.Kind.PHONETIC, NameToken.Kind.SEMANTIC]:
			_errors.append("Invalid token kind: " + token.id)
		_validate_forms(token.forms, "token " + token.id)
		for form in token.forms.values():
			if form is String and ("{" in form or "}" in form):
				_errors.append("Token forms cannot contain template braces: " + token.id)
	for item: NameTemplate in _templates.values():
		_validate_template(item)
	for culture: NameCulture in _cultures.values():
		if culture.template_ids.is_empty():
			_errors.append("Culture has no templates: " + culture.id)
		var seen := {}
		for id in culture.template_ids:
			if not _templates.has(id) or seen.has(id):
				_errors.append("Missing or duplicate culture template: " + id)
			seen[id] = true
	for key in _content.reserved_canonical_keys:
		if key.strip_edges().is_empty():
			_errors.append("Empty reserved canonical key")
	_errors.append_array(display_list_errors(_content.reserved_display_names, _content.required_locales))

func _index(items: Array, target: Dictionary, label: String) -> void:
	for item in items:
		if item == null:
			_errors.append("Missing " + label + " resource")
			continue
		if item.id.strip_edges().is_empty() or target.has(item.id):
			_errors.append("Empty or duplicate " + label + " ID: " + item.id)
		else:
			target[item.id] = item

func _validate_forms(forms: Dictionary, label: String) -> void:
	for locale in _content.required_locales:
		if not forms.get(locale) is String or String(forms.get(locale, "")).strip_edges().is_empty():
			_errors.append("Missing locale form: " + label + "/" + locale)
	for locale in forms:
		if (not locale is String and not locale is StringName) or not forms[locale] is String or String(forms[locale]).strip_edges().is_empty():
			_errors.append("Invalid locale form: " + label)

func _validate_template(item: NameTemplate) -> void:
	if item.name_types.is_empty() or item.slots.is_empty():
		_errors.append("Template needs name types and slots: " + item.id)
	var types := {}
	for name_type in item.name_types:
		if name_type.strip_edges().is_empty() or types.has(name_type):
			_errors.append("Empty or duplicate name type: " + item.id)
		types[name_type] = true
	var slots := {}
	var identifier := RegEx.new()
	identifier.compile("^[a-z][a-z0-9_]*$")
	for slot in item.slots:
		if slot == null:
			_errors.append("Missing template slot: " + item.id)
			continue
		if identifier.search(slot.id) == null or slots.has(slot.id):
			_errors.append("Malformed or duplicate slot ID: " + item.id)
		slots[slot.id] = true
		if slot.kind not in [NameSlot.Kind.PHONETIC, NameSlot.Kind.SEMANTIC, NameSlot.Kind.NUMBER]:
			_errors.append("Invalid slot kind: " + item.id)
			continue
		if slot.kind == NameSlot.Kind.NUMBER:
			if not slot.token_pools.is_empty() or slot.number_min < 0 or slot.number_max < slot.number_min or slot.number_max > 2147483646:
				_errors.append("Invalid numeric range: " + item.id)
			continue
		if slot.token_pools.is_empty() or (slot.kind == NameSlot.Kind.SEMANTIC and slot.token_pools.size() != 1):
			_errors.append("Invalid token pool count: " + item.id)
		for pool in slot.token_pools:
			if pool.is_empty():
				_errors.append("Empty token pool: " + item.id)
			var seen := {}
			for token_id in pool:
				if not _tokens.has(token_id) or token_kind(token_id) != int(slot.kind) or seen.has(token_id):
					_errors.append("Missing, wrong-kind or duplicate token reference: " + token_id)
				seen[token_id] = true
	_validate_forms(item.patterns, "template " + item.id)
	for pattern in item.patterns.values():
		if not pattern is String:
			continue
		var seen := {}
		for match_value in _placeholder.search_all(pattern):
			var id := match_value.get_string(1)
			if not slots.has(id) or seen.has(id):
				_errors.append("Unknown or repeated placeholder: " + item.id + "/" + id)
			seen[id] = true
		var literal := _placeholder.sub(pattern, "", true)
		if "{" in literal or "}" in literal or seen.size() != slots.size():
			_errors.append("Malformed or missing template placeholder: " + item.id)

static func display_list_errors(lists: Dictionary, supported: PackedStringArray) -> PackedStringArray:
	var result := PackedStringArray()
	for locale in lists:
		if (not locale is String and not locale is StringName) or locale not in supported:
			result.append("Unsupported blocked display locale")
		var values: Variant = lists[locale]
		if not values is Array and not values is PackedStringArray:
			result.append("Blocked displays must be string lists")
			continue
		for value in values:
			if not value is String or String(value).strip_edges().is_empty():
				result.append("Empty or invalid blocked display")
	return result
