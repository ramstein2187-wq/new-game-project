class_name NameRenderer
extends RefCounted

var last_error: String = ""
var _catalog: NamingCatalog

func _init(catalog: NamingCatalog = null) -> void:
	_catalog = catalog if catalog != null else NamingCatalog.default_catalog()

func validation_errors(generated: GeneratedName) -> PackedStringArray:
	var errors := PackedStringArray()
	if not _catalog.is_valid():
		return _catalog.errors.duplicate()
	if generated == null:
		return PackedStringArray(["Missing generated name"])
	if generated.naming_version != NameGenerator.NAMING_ALGORITHM_VERSION:
		errors.append("Unsupported naming version")
	var available := _catalog.culture_templates(generated.culture_id)
	if available.is_empty():
		errors.append("Unknown culture")
	var item := _catalog.template(generated.template_id)
	if item == null:
		errors.append("Unknown template")
		return errors
	if item.id not in available or generated.name_type not in item.name_types:
		errors.append("Template not allowed for culture/name type")
	if generated.components.size() != item.slots.size():
		errors.append("Unexpected component count")
	for slot in item.slots:
		var component: Variant = generated.components.get(slot.id)
		if not component is Dictionary:
			errors.append("Missing component: " + slot.id)
			continue
		if component.size() != 2 or component.get("kind") != slot.kind_id():
			errors.append("Invalid component shape/kind: " + slot.id)
			continue
		if slot.kind == NameSlot.Kind.NUMBER:
			var value: Variant = component.get("value")
			if not value is int or value < slot.number_min or value > slot.number_max:
				errors.append("Invalid numeric component: " + slot.id)
			continue
		var tokens: Variant = component.get("tokens")
		if not tokens is Array or tokens.size() != slot.token_pools.size():
			errors.append("Invalid component token count: " + slot.id)
			continue
		for index in range(tokens.size()):
			if not tokens[index] is String or tokens[index] not in slot.token_pools[index]:
				errors.append("Invalid component token reference: " + slot.id)
	return errors

func render(generated: GeneratedName, locale: String) -> String:
	last_error = ""
	var errors := validation_errors(generated)
	if not errors.is_empty():
		last_error = "; ".join(errors)
		return ""
	if locale not in _catalog.locales():
		last_error = "Unsupported locale: " + locale
		return ""
	var item := _catalog.template(generated.template_id)
	var result: String = item.patterns[locale]
	for slot in item.slots:
		var component: Dictionary = generated.components[slot.id]
		var value := ""
		if slot.kind == NameSlot.Kind.NUMBER:
			value = str(component.value)
		else:
			for token_id: String in component.tokens:
				value += _catalog.token_form(token_id, locale)
			if slot.kind == NameSlot.Kind.PHONETIC and _catalog.capitalize_phonetic(locale):
				value = value.left(1).to_upper() + value.substr(1)
		result = result.replace("{" + slot.id + "}", value)
	result = result.strip_edges()
	if result.is_empty():
		last_error = "Empty rendered name"
	return result
