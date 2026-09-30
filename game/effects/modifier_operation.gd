class_name ModifierOperation
extends RefCounted

# Shared vocabulary only. PERCENT values are deltas (+0.20 means +20%).
enum Kind { FLAT, PERCENT }

static func label(operation: Kind) -> StringName:
	return &"FLAT" if operation == Kind.FLAT else &"PERCENT"
