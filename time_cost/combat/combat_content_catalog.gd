class_name CombatContentCatalog
extends RefCounted

const CONTENT_PATH := "res://time_cost/content/catalog.tres"
static var _data: CombatContentData
# Compatibility listing: Rat is accessible via actor(), but remains outside this list.
static var HOSTILE_IDS: Array[StringName]:
	get:
		var ids: Array[StringName] = []
		for id in all_hostiles():
			ids.append(id)
		return ids

static func content() -> CombatContentData:
	if _data == null:
		var candidate := load(CONTENT_PATH) as CombatContentData
		if candidate == null:
			push_error("Cannot load combat content: " + CONTENT_PATH)
			return null
		var errors := candidate.validation_errors()
		if not errors.is_empty():
			push_error("Invalid combat content: " + "; ".join(errors))
			return null
		_data = candidate
	return _data

static func weapon(id: StringName) -> WeaponDefinition:
	return all_weapons().get(id)

static func all_weapons() -> Dictionary:
	var result := {}
	var data := content()
	if data != null:
		for item in data.weapons:
			result[item.id] = item.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	return result

static func armor(id: StringName) -> ArmorDefinition:
	return all_armor().get(id)

static func all_armor() -> Dictionary:
	var result := {}
	var data := content()
	if data != null:
		for item in data.armor:
			result[item.id] = item.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	return result

static func natural_attack(id: StringName) -> AttackDefinition:
	return all_natural_attacks().get(id)

static func all_natural_attacks() -> Dictionary:
	var result := {}
	var data := content()
	if data != null:
		for item in data.natural_attacks:
			result[StringName(item.resource_name)] = item.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	return result

static func actor(id: StringName) -> ActorDefinition:
	var data := content()
	if data != null:
		for item in data.actors:
			if item.definition.type_id == id:
				return item.instantiate_definition()
	return null

static func all_hostiles() -> Dictionary:
	var result := {}
	var data := content()
	if data != null:
		for item in data.actors:
			if item.list_in_hostiles:
				result[item.definition.type_id] = item.instantiate_definition()
	return result
