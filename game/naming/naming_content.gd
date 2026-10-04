class_name NamingContent
extends Resource

@export var required_locales: PackedStringArray = ["en", "ko"]
@export var capitalize_phonetic_locales: PackedStringArray = ["en"]
@export var tokens: Array[NameToken] = []
@export var templates: Array[NameTemplate] = []
@export var cultures: Array[NameCulture] = []
@export var reserved_canonical_keys: PackedStringArray = []
# locale -> Array[String]; compared after strip_edges/to_lower, across cultures.
@export var reserved_display_names: Dictionary = {}
