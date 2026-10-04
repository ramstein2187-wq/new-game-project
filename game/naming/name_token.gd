class_name NameToken
extends Resource

enum Kind { PHONETIC, SEMANTIC }

@export var id: String = ""
@export var kind: Kind = Kind.PHONETIC
@export var forms: Dictionary = {}
