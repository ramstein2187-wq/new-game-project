class_name NameSlot
extends Resource

enum Kind { PHONETIC, SEMANTIC, NUMBER }

@export var id: String = ""
@export var kind: Kind = Kind.PHONETIC
# Phonetic: one pool per ordered component; semantic: exactly one pool.
@export var token_pools: Array[PackedStringArray] = []
@export var number_min: int = 0
@export var number_max: int = 0

func kind_id() -> String:
	return ["phonetic", "semantic", "number"][kind]
