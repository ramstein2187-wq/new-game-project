class_name StatModifier
extends Resource

@export var source_id: StringName = &""
@export var target_stat: StringName = StatCatalog.MOVEMENT_SPEED
@export var operation: ModifierOperation.Kind = ModifierOperation.Kind.FLAT
@export var value := 0.0

func is_valid() -> bool:
	return source_id != &"" and StatCatalog.is_known(target_stat) \
		and operation in [ModifierOperation.Kind.FLAT, ModifierOperation.Kind.PERCENT] and is_finite(value)

func operation_name() -> StringName:
	return ModifierOperation.label(operation)
