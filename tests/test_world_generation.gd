extends SceneTree

const SettingsScript := preload("res://procgen/world/world_gen_settings.gd")
const GeneratorScript := preload("res://procgen/world/world_generator.gd")


func _init() -> void:
	for dimensions in [Vector2i(16, 16), Vector2i(48, 24), Vector2i(128, 96)]:
		var settings := SettingsScript.new()
		settings.world_width = dimensions.x
		settings.world_height = dimensions.y
		settings.river_flow_threshold = 3.0
		if not settings.validate().is_empty():
			_fail("Valid world dimensions were rejected: %s" % dimensions)
			return
		var generator := GeneratorScript.new()
		var world: WorldData = generator.generate(12345, settings)
		var again: WorldData = generator.generate(12345, settings)
		if world == null or again == null:
			_fail("World generation returned null")
			return
		if world.width != dimensions.x or world.height != dimensions.y:
			_fail("Generated dimensions differ from settings")
			return
		var count := dimensions.x * dimensions.y
		if world.elevation.size() != count or world.biome.size() != count or world.downstream.size() != count:
			_fail("Packed data dimensions are incorrect")
			return
		if world.elevation != again.elevation or world.rainfall != again.rainfall or world.biome != again.biome or world.flow != again.flow:
			_fail("Same seed and settings did not reproduce identical fields")
			return
		if world.cell_at(-1, 0) != {} or world.cell_at(world.width, 0) != {}:
			_fail("Invalid coordinates did not return an empty cell")
			return
		for y in range(world.height):
			for x in range(world.width):
				var i := world.index_of(x, y)
				var h: float = world.elevation[i]
				if h < 0.0 or h > 1.0:
					_fail("Elevation outside normalized range")
					return
				if x == 0 or y == 0 or x == world.width - 1 or y == world.height - 1:
					if h >= world.sea_level:
						_fail("Ocean border mode left land on the world edge")
						return
				if world.river[i] == 1 and (h < world.sea_level or world.downstream[i] < 0):
					_fail("River is on ocean or is missing an outlet")
					return
				var target: int = world.downstream[i]
				if target >= 0:
					if target >= count or world.elevation[target] >= h:
						_fail("Drainage edge is out of bounds or not downhill")
						return
				elif h >= world.sea_level and world.lake[i] != 1:
					_fail("Inland drainage sink has no lake marker")
					return
	var other_settings := SettingsScript.new()
	var first: WorldData = GeneratorScript.new().generate(12345, other_settings)
	var second: WorldData = GeneratorScript.new().generate(54321, other_settings)
	if first.elevation == second.elevation:
		_fail("Different seeds produced identical terrain")
		return
	var too_large := SettingsScript.new()
	too_large.world_width = 1024
	too_large.world_height = 1025
	if too_large.validate().is_empty():
		_fail("Invalid world size was not rejected")
		return
	print("PASS: variable world generation and drainage invariants")
	quit(0)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
