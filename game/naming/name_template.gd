class_name NameTemplate
extends Resource

@export var id: String = ""
@export var name_types: PackedStringArray = []
@export var slots: Array[NameSlot] = []
# Literal text plus named {slot} placeholders, authored per locale.
@export var patterns: Dictionary = {}
