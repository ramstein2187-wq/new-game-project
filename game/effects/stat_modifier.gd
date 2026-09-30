class_name StatModifier
extends Resource

enum Operation { ADD, MULTIPLY }

@export var source_id: StringName = &""
@export var target_stat: StringName = &"movement_speed"
@export var operation: Operation = Operation.ADD
@export var value := 0.0

func is_valid() -> bool:
	return source_id != &"" and (target_stat == &"movement_speed" or AbilityScores.NAMES.has(target_stat)) \
		and operation in [Operation.ADD, Operation.MULTIPLY] and is_finite(value) \
		and (operation != Operation.MULTIPLY or value > 0.0)

func apply(input: float) -> float:
	return input + value if operation == Operation.ADD else input * value

func operation_name() -> StringName:
	return &"ADD" if operation == Operation.ADD else &"MULTIPLY"
