extends Node2D

const GeneratorScript := preload("res://procgen/world/world_generator.gd")

@export var settings: WorldGenSettings = WorldGenSettings.new()
@export var world_seed: int = 12345
@export_enum("Biome", "Elevation", "Temperature", "Rainfall", "Drainage", "Rivers") var display_layer: int = 0


func _ready() -> void:
	var world: WorldData = GeneratorScript.new().generate(world_seed, settings)
	if world == null:
		return
	var image := Image.create(world.width, world.height, false, Image.FORMAT_RGB8)
	for y in range(world.height):
		for x in range(world.width):
			var i := world.index_of(x, y)
			image.set_pixel(x, y, _color_at(world, i))
	var sprite := Sprite2D.new()
	sprite.texture = ImageTexture.create_from_image(image)
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	# Entire world fits inside a 1100x600 preview canvas, including rectangular worlds.
	var zoom := minf(1100.0 / float(world.width), 600.0 / float(world.height))
	sprite.scale = Vector2(zoom, zoom)
	sprite.position = Vector2(576.0, 324.0)
	add_child(sprite)
	print("World preview: %dx%d seed=%d generator=v%d" % [world.width, world.height, world.seed, world.generator_version])


func _color_at(world: WorldData, i: int) -> Color:
	if display_layer == 1:
		var h: float = world.elevation[i]
		return Color(h, h, h)
	if display_layer == 2:
		var t: float = world.temperature[i]
		return Color(t, 0.15 + 0.35 * (1.0 - absf(0.5 - t)), 1.0 - t)
	if display_layer == 3:
		var p: float = world.rainfall[i]
		return Color(1.0 - p, 0.9 - 0.45 * p, 0.35 + 0.65 * p)
	if display_layer == 4:
		var d: float = world.drainage[i]
		return Color(d, d, d)
	if display_layer == 5:
		if world.elevation[i] < world.sea_level:
			return Color(0.12, 0.3, 0.55)
		if world.lake[i] == 1:
			return Color(0.1, 0.62, 0.85)
		if world.river[i] == 1:
			return Color(0.2, 0.49, 0.94)
		return Color(0.69, 0.73, 0.60)
	match world.biome[i]:
		WorldData.OCEAN: return Color(0.13, 0.33, 0.57)
		WorldData.ICE: return Color(0.86, 0.9, 0.91)
		WorldData.DESERT: return Color(0.83, 0.69, 0.42)
		WorldData.GRASSLAND: return Color(0.60, 0.71, 0.37)
		WorldData.FOREST: return Color(0.19, 0.43, 0.28)
		WorldData.WETLAND: return Color(0.30, 0.49, 0.43)
		WorldData.ALPINE: return Color(0.56, 0.55, 0.51)
	return Color.MAGENTA
