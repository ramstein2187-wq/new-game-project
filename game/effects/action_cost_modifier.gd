class_name ActionCostModifier
extends Resource

@export var source_id: StringName = &""
# All required tags must match. Empty selectors are invalid, never global speed.
@export var required_tags: Array[StringName] = []
@export var operation: StatModifier.Operation = StatModifier.Operation.MULTIPLY
@export var value := 1.0

func is_valid() -> bool:
	if source_id == &"" or required_tags.is_empty() or not is_finite(value):
		return false
	for tag in required_tags:
		if not TimeAction.TAGS.has(tag):
			return false
	return operation in [StatModifier.Operation.ADD, StatModifier.Operation.MULTIPLY] \
		and (operation != StatModifier.Operation.MULTIPLY or value > 0.0)

func matches(tags: Array[StringName]) -> bool:
	for tag in required_tags:
		if not tags.has(tag):
			return false
	return true

func apply(input: float) -> float:
	return input + value if operation == StatModifier.Operation.ADD else input * value

func operation_name() -> StringName:
	return &"ADD" if operation == StatModifier.Operation.ADD else &"MULTIPLY"
