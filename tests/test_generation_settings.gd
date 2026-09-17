extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const GenerationSettingsScript := preload("res://procgen/generation_settings.gd")
const DefaultGenerationSettings := preload("res://procgen/default_generation_settings.tres")


func _init() -> void:
	if DefaultGenerationSettings.map_width != 40 or DefaultGenerationSettings.map_height != 30:
		_fail("Default generation settings dimensions changed unexpectedly")
		return

	var custom_settings := GenerationSettingsScript.new()
	custom_settings.map_width = 48
	custom_settings.map_height = 24
	custom_settings.forest_threshold = 0.08
	custom_settings.noise_frequency = 0.09
	custom_settings.noise_octaves = 3
	custom_settings.path_wander_probability = 0.45

	var custom_map: PackedStringArray = SimpleMapGeneratorScript.new(custom_settings).generate(1234)
	if custom_map.size() != 24:
		_fail("Custom map height was not applied")
		return
	for row in custom_map:
		if row.length() != 48:
			_fail("Custom map width was not applied")
			return

	var dense_settings := GenerationSettingsScript.new()
	dense_settings.forest_threshold = -0.20
	var sparse_settings := GenerationSettingsScript.new()
	sparse_settings.forest_threshold = 0.30

	var dense_map: PackedStringArray = SimpleMapGeneratorScript.new(dense_settings).generate(4242)
	var sparse_map: PackedStringArray = SimpleMapGeneratorScript.new(sparse_settings).generate(4242)
	var dense_tree_count := _count_character(dense_map, SimpleMapGeneratorScript.TREE)
	var sparse_tree_count := _count_character(sparse_map, SimpleMapGeneratorScript.TREE)

	if dense_tree_count <= sparse_tree_count:
		_fail("Lower forest threshold did not produce a denser forest")
		return

	print("PASS: generation settings")
	quit(0)


func _count_character(rows: PackedStringArray, character: String) -> int:
	var count := 0
	for row in rows:
		for cell in row:
			if cell == character:
				count += 1
	return count


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
