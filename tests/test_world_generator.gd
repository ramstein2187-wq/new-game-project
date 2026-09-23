extends SceneTree

const WorldGeneratorScript := preload("res://procgen/world/world_generator.gd")
const WorldGenerationSettingsScript := preload("res://procgen/world/world_generation_settings.gd")
const WorldDataScript := preload("res://procgen/world/world_data.gd")


func _init() -> void:
	var small_settings := WorldGenerationSettingsScript.new()
	small_settings.world_width = 48
	small_settings.world_height = 32
	small_settings.river_accumulation_threshold = 5.0

	var generator := WorldGeneratorScript.new(small_settings)
	var first = generator.generate(123456789)
	var second = generator.generate(123456789)
	var different = generator.generate(123456790)

	if first.width != 48 or first.height != 32:
		_fail("Variable world dimensions were not applied")
		return
	if first.elevation.size() != 48 * 32:
		_fail("World fields do not match configured dimensions")
		return
	if first.checksum() != second.checksum():
		_fail("Same seed and settings did not reproduce the same world")
		return
	if first.checksum() == different.checksum():
		_fail("Different seed unexpectedly produced the same world")
		return

	if not _all_finite_and_normalized(first.elevation):
		_fail("Elevation contains invalid values")
		return
	if not _all_finite_and_normalized(first.temperature):
		_fail("Temperature contains invalid values")
		return
	if not _all_finite_and_normalized(first.rainfall):
		_fail("Rainfall contains invalid values")
		return
	if not _all_finite_and_normalized(first.drainage):
		_fail("Drainage contains invalid values")
		return
	if not _all_finite_and_normalized(first.moisture):
		_fail("Moisture contains invalid values")
		return

	var ocean_count := 0
	var land_count := 0
	var biome_ids := {}
	var river_count := 0
	for index in range(first.width * first.height):
		if first.landform[index] == WorldDataScript.Landform.OCEAN:
			ocean_count += 1
		else:
			land_count += 1
			biome_ids[first.biome[index]] = true
		if first.river_mask[index] != 0:
			river_count += 1
			var downstream: int = first.flow_to[index]
			if downstream < 0:
				_fail("River cell has no downstream connection")
				return
			if first.elevation[downstream] >= first.elevation[index]:
				_fail("River flowed uphill or flat")
				return

	if ocean_count == 0 or land_count == 0:
		_fail("Expected both ocean and land")
		return
	if biome_ids.size() < 2:
		_fail("Expected more than one land biome")
		return
	if river_count == 0:
		_fail("Expected at least one river cell in the test world")
		return

	var wide_settings := WorldGenerationSettingsScript.new()
	wide_settings.world_width = 96
	wide_settings.world_height = 40
	var wide_world = WorldGeneratorScript.new(wide_settings).generate(42)
	if wide_world.elevation.size() != 96 * 40:
		_fail("Second world size did not allocate correctly")
		return
	if wide_world.width == first.width and wide_world.height == first.height:
		_fail("Different configured dimensions were ignored")
		return

	print(
		"PASS: world generator v2 (%dx%d, ocean=%d, land=%d, rivers=%d, biomes=%d)"
		% [first.width, first.height, ocean_count, land_count, river_count, biome_ids.size()]
	)
	quit(0)


func _all_finite_and_normalized(values: PackedFloat32Array) -> bool:
	for value in values:
		if is_nan(value) or is_inf(value):
			return false
		if value < 0.0 or value > 1.0:
			return false
	return true


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
