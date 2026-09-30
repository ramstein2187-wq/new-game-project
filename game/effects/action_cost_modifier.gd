class_name ActionCostModifier
extends Resource

@export var source_id: StringName = &""
# All required tags must match. Empty selectors are invalid, never global speed.
@export var required_tags: Array[StringName] = []
@export var operation: ModifierOperation.Kind = ModifierOperation.Kind.PERCENT
@export var value := 0.0

func is_valid() -> bool:
	if source_id == &"" or required_tags.is_empty() or not is_finite(value):
		return false
	for tag in required_tags:
		if not TimeAction.TAGS.has(tag):
			return false
	return operation in [ModifierOperation.Kind.FLAT, ModifierOperation.Kind.PERCENT]

func matches(tags: Array[StringName]) -> bool:
	for tag in required_tags:
		if not tags.has(tag):
			return false
	return true

func operation_name() -> StringName:
	return ModifierOperation.label(operation)
