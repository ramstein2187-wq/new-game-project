extends SceneTree

const WorldGeneratorScript := preload("res://procgen/world/world_generator.gd")
const WorldGenerationSettingsScript := preload("res://procgen/world/world_generation_settings.gd")


func _init() -> void:
	var sizes: Array[Vector2i] = [
		Vector2i(64, 48),
		Vector2i(128, 96),
		Vector2i(256, 192),
		Vector2i(512, 384),
	]

	for size in sizes:
		var settings = WorldGenerationSettingsScript.new()
		settings.world_width = size.x
		settings.world_height = size.y
		var generator = WorldGeneratorScript.new(settings)

		var started_usec := Time.get_ticks_usec()
		var world = generator.generate(123456789)
		var elapsed_msec := float(Time.get_ticks_usec() - started_usec) / 1000.0

		var river_count := 0
		var basin_count := 0
		for index in range(size.x * size.y):
			if int(world.river_mask[index]) != 0:
				river_count += 1
			if int(world.basin_mask[index]) != 0:
				basin_count += 1

		print(
			"%dx%d cells=%d time_ms=%.2f rivers=%d basins=%d"
			% [size.x, size.y, size.x * size.y, elapsed_msec, river_count, basin_count]
		)

	quit(0)
