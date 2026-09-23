class_name WorldGenerator
extends RefCounted

const SeedDeriverScript := preload("res://procgen/seed_deriver.gd")
const WorldDataScript := preload("res://procgen/world/world_data.gd")
const OFFSETS: Array[Vector2i] = [Vector2i(0, -1), Vector2i(1, 0), Vector2i(0, 1), Vector2i(-1, 0)]


func generate(seed_value: int, settings: WorldGenSettings) -> WorldData:
	var problem := settings.validate()
	if not problem.is_empty():
		push_error("WorldGenSettings: " + problem)
		return null
	var world: WorldData = WorldDataScript.new(
		settings.world_width, settings.world_height, seed_value,
		WorldGenSettings.GENERATOR_VERSION, settings.sea_level
	)
	_generate_elevation(world, settings)
	_generate_climate(world, settings)
	_generate_drainage(world, settings)
	_resolve_biomes(world, settings)
	return world


func _noise(seed_value: int, namespace: String, frequency: float, octaves: int) -> FastNoiseLite:
	var noise := FastNoiseLite.new()
	var derived_seed: int = SeedDeriverScript.derive(seed_value, ["world_v1", namespace])
	var folded: int = (derived_seed ^ (derived_seed >> 32)) & 0xFFFFFFFF
	noise.seed = folded - 0x100000000 if folded > 0x7FFFFFFF else folded
	noise.noise_type = FastNoiseLite.TYPE_SIMPLEX_SMOOTH
	noise.frequency = frequency
	noise.fractal_type = FastNoiseLite.FRACTAL_FBM
	noise.fractal_octaves = octaves
	return noise


func _generate_elevation(world: WorldData, settings: WorldGenSettings) -> void:
	var continental := _noise(world.seed, "continent", settings.continent_scale / 100.0, 3)
	var detail := _noise(world.seed, "detail", settings.detail_frequency, settings.noise_octaves)
	var ridges := _noise(world.seed, "mountains", settings.continent_scale / 65.0, 3)
	var shorter_side := float(mini(world.width, world.height))
	for y in range(world.height):
		for x in range(world.width):
			var i := world.index_of(x, y)
			# Macro noise samples normalized world coordinates; local detail stays in cell units.
			var nx := float(x) * 100.0 / float(world.width)
			var ny := float(y) * 100.0 / float(world.height)
			var base := 0.48 + 0.38 * continental.get_noise_2d(nx, ny)
			var roughness := 0.13 * detail.get_noise_2d(float(x), float(y))
			var ridge := 1.0 - absf(ridges.get_noise_2d(nx, ny))
			var mountains := settings.mountain_strength * pow(ridge, 4.0) * clampf(base + 0.25, 0.0, 1.0)
			var height_value := base + roughness + mountains
			if settings.surround_with_ocean:
				var border_distance := float(mini(mini(x, y), mini(world.width - 1 - x, world.height - 1 - y)))
				var edge_weight := smoothstep(0.0, 0.12, border_distance / shorter_side)
				height_value -= (1.0 - edge_weight) * 0.65
			world.elevation[i] = clampf(height_value, 0.0, 1.0)


func _generate_climate(world: WorldData, settings: WorldGenSettings) -> void:
	var rain_noise := _noise(world.seed, "rain", 0.035, 3)
	var drainage_noise := _noise(world.seed, "soil", 0.04, 3)
	var heat_noise := _noise(world.seed, "heat", 0.022, 2)
	for y in range(world.height):
		var latitude := absf(2.0 * float(y) / float(world.height - 1) - 1.0)
		var humidity := 0.55 # Simplified prevailing wind from west to east.
		var previous_height := 0.0
		for x in range(world.width):
			var i := world.index_of(x, y)
			var h: float = world.elevation[i]
			var is_ocean := h < settings.sea_level
			var heat := 1.0 - latitude * 0.75 - maxf(0.0, h - settings.sea_level) * 0.8
			world.temperature[i] = clampf(heat + heat_noise.get_noise_2d(float(x), float(y)) * 0.09, 0.0, 1.0)
			var uplift := maxf(0.0, h - previous_height)
			var ambient := 0.32 + rain_noise.get_noise_2d(float(x), float(y)) * 0.24
			world.rainfall[i] = clampf(ambient + humidity * 0.35 + uplift * 1.2, 0.0, 1.0)
			world.drainage[i] = clampf(0.5 + drainage_noise.get_noise_2d(float(x), float(y)) * 0.42, 0.0, 1.0)
			# Ocean replenishes incoming air; precipitation and uplift diminish it.
			humidity = clampf(humidity + (0.16 if is_ocean else 0.015) - uplift * 0.75 - world.rainfall[i] * 0.12, 0.08, 1.0)
			previous_height = h


func _generate_drainage(world: WorldData, settings: WorldGenSettings) -> void:
	var count := world.width * world.height
	var incoming := PackedInt32Array()
	incoming.resize(count)
	# Strictly downhill edges form a directed acyclic graph; local sinks become lakes.
	for y in range(world.height):
		for x in range(world.width):
			var i := world.index_of(x, y)
			if world.elevation[i] < settings.sea_level:
				continue
			var best_height: float = world.elevation[i]
			var best := -1
			for offset in OFFSETS:
				var nx := x + offset.x
				var ny := y + offset.y
				if not world.contains(nx, ny):
					continue
				var neighbor := world.index_of(nx, ny)
				var next_height: float = world.elevation[neighbor]
				if next_height < best_height - 0.000001:
					best_height = next_height
					best = neighbor
			world.downstream[i] = best
			world.flow[i] = 0.2 + world.rainfall[i]
			if best == -1:
				world.lake[i] = 1
			else:
				incoming[best] += 1
	# Topological accumulation is O(number of cells + downhill edges), without sorting.
	var queue: Array[int] = []
	for i in range(count):
		if incoming[i] == 0:
			queue.append(i)
	var head := 0
	while head < queue.size():
		var current: int = queue[head]
		head += 1
		var receiver: int = world.downstream[current]
		if receiver < 0:
			continue
		world.flow[receiver] += world.flow[current]
		incoming[receiver] -= 1
		if incoming[receiver] == 0:
			queue.append(receiver)
	if head != count:
		push_error("World drainage contained a cycle or unprocessed cell.")
	for i in range(count):
		if world.elevation[i] >= settings.sea_level and world.downstream[i] >= 0 and world.flow[i] >= settings.river_flow_threshold:
			world.river[i] = 1


func _resolve_biomes(world: WorldData, settings: WorldGenSettings) -> void:
	for y in range(world.height):
		for x in range(world.width):
			var i := world.index_of(x, y)
			var h: float = world.elevation[i]
			if h < settings.sea_level:
				world.biome[i] = WorldData.OCEAN
				continue
			world.landform[i] = WorldData.MOUNTAIN if h >= 0.80 else (WorldData.HILL if h >= 0.63 else WorldData.PLAIN)
			var nearby_water := 0.0
			for offset in OFFSETS:
				var nx := x + offset.x
				var ny := y + offset.y
				if world.contains(nx, ny):
					var neighbor := world.index_of(nx, ny)
					if world.river[neighbor] == 1 or world.lake[neighbor] == 1:
						nearby_water = 0.2
						break
			var t: float = world.temperature[i]
			var p: float = world.rainfall[i]
			var d: float = world.drainage[i]
			var moisture := clampf(p * (1.0 - d * 0.48) + nearby_water - t * 0.07, 0.0, 1.0)
			world.moisture[i] = moisture
			world.vegetation[i] = clampf((moisture - 0.15) * 1.6, 0.0, 1.0) * clampf((t - 0.12) * 3.0, 0.0, 1.0)
			if t < 0.17:
				world.biome[i] = WorldData.ICE
			elif h >= 0.86:
				world.biome[i] = WorldData.ALPINE
			elif moisture > 0.53 and d < 0.36:
				world.biome[i] = WorldData.WETLAND
			elif moisture < 0.20:
				world.biome[i] = WorldData.DESERT
			elif moisture > 0.38:
				world.biome[i] = WorldData.FOREST
			else:
				world.biome[i] = WorldData.GRASSLAND
