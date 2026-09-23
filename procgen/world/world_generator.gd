class_name WorldGenerator
extends RefCounted

const GENERATOR_VERSION := 1
const SeedDeriverScript := preload("res://procgen/seed_deriver.gd")
const WorldDataScript := preload("res://procgen/world/world_data.gd")
const WorldGenerationSettingsScript := preload("res://procgen/world/world_generation_settings.gd")

const D8_DIRECTIONS: Array[Vector2i] = [
	Vector2i(-1, -1),
	Vector2i(0, -1),
	Vector2i(1, -1),
	Vector2i(-1, 0),
	Vector2i(1, 0),
	Vector2i(-1, 1),
	Vector2i(0, 1),
	Vector2i(1, 1),
]

var settings


func _init(p_settings = null) -> void:
	settings = p_settings if p_settings != null else WorldGenerationSettingsScript.new()
	settings.validate()


func generate(world_seed: int):
	var world = WorldDataScript.new(
		int(settings.world_width),
		int(settings.world_height),
		world_seed,
		GENERATOR_VERSION
	)

	_generate_elevation(world)
	_generate_climate(world)
	_generate_drainage(world)
	_generate_hydrology(world)
	_generate_surface_moisture(world)
	_classify_landforms_and_biomes(world)
	return world


func _generate_elevation(world) -> void:
	var max_dimension: float = float(maxi(int(world.width), int(world.height)))
	var continent_noise: FastNoiseLite = _make_noise(
		SeedDeriverScript.derive(int(world.world_seed), ["world", "terrain", "continent"]),
		float(settings.continent_scale) / max_dimension,
		int(settings.terrain_octaves)
	)
	var detail_noise: FastNoiseLite = _make_noise(
		SeedDeriverScript.derive(int(world.world_seed), ["world", "terrain", "detail"]),
		float(settings.detail_scale) / max_dimension,
		int(settings.terrain_octaves)
	)
	var ridge_noise: FastNoiseLite = _make_noise(
		SeedDeriverScript.derive(int(world.world_seed), ["world", "terrain", "mountain_ridges"]),
		(float(settings.continent_scale) * 2.4) / max_dimension,
		3
	)

	for y in range(int(world.height)):
		for x in range(int(world.width)):
			var index: int = int(world.index_of(x, y))
			var continent: float = _noise_01(continent_noise, x, y)
			var detail: float = _noise_01(detail_noise, x, y)
			var ridge: float = 1.0 - absf(ridge_noise.get_noise_2d(float(x), float(y)))
			var ridge_weight: float = clampf(
				(ridge - float(settings.mountain_ridge_threshold))
				/ maxf(0.001, 1.0 - float(settings.mountain_ridge_threshold)),
				0.0,
				1.0
			)

			var height_value: float = continent * 0.70 + detail * 0.30
			height_value += ridge_weight * float(settings.mountain_strength) * maxf(
				0.0,
				(height_value - float(settings.sea_level) + 0.10) / 0.64
			)
			height_value -= _edge_ocean_penalty(
				x,
				y,
				int(world.width),
				int(world.height)
			)
			world.elevation[index] = clampf(height_value, 0.0, 1.0)


func _generate_climate(world) -> void:
	var max_dimension: float = float(maxi(int(world.width), int(world.height)))
	var rainfall_noise: FastNoiseLite = _make_noise(
		SeedDeriverScript.derive(int(world.world_seed), ["world", "climate", "rainfall"]),
		float(settings.climate_noise_scale) / max_dimension,
		4
	)

	for y in range(int(world.height)):
		var latitude: float = float(y) / float(maxi(1, int(world.height) - 1))
		var latitude_temperature: float = 1.0 - absf(latitude * 2.0 - 1.0)
		for x in range(int(world.width)):
			var index: int = int(world.index_of(x, y))
			var above_sea: float = maxf(
				0.0,
				float(world.elevation[index]) - float(settings.sea_level)
			)
			world.temperature[index] = clampf(
				latitude_temperature - above_sea * float(settings.elevation_temperature_penalty),
				0.0,
				1.0
			)

		var moisture_air: float = 0.75
		var previous_height: float = float(settings.sea_level)
		for step in range(int(world.width)):
			var x: int = step if bool(settings.prevailing_wind_from_west) else int(world.width) - 1 - step
			var index: int = int(world.index_of(x, y))
			var elevation: float = float(world.elevation[index])
			var noise_component: float = _noise_01(rainfall_noise, x, y)

			if elevation <= float(settings.sea_level):
				moisture_air = maxf(moisture_air, 0.95)

			var rise: float = maxf(0.0, elevation - previous_height)
			var orographic_rain: float = rise * float(settings.orographic_rain_strength)
			var rainfall_value: float = (
				noise_component * 0.35
				+ moisture_air * 0.45
				+ orographic_rain
			)
			world.rainfall[index] = clampf(rainfall_value, 0.0, 1.0)

			moisture_air *= float(settings.atmospheric_moisture_retention)
			moisture_air = maxf(0.05, moisture_air - orographic_rain * 0.55)
			previous_height = elevation


func _generate_drainage(world) -> void:
	var max_dimension: float = float(maxi(int(world.width), int(world.height)))
	var drainage_noise: FastNoiseLite = _make_noise(
		SeedDeriverScript.derive(int(world.world_seed), ["world", "geology", "drainage"]),
		(float(settings.climate_noise_scale) * 1.7) / max_dimension,
		3
	)

	for y in range(int(world.height)):
		for x in range(int(world.width)):
			var index: int = int(world.index_of(x, y))
			var noise_value: float = _noise_01(drainage_noise, x, y)
			var slope: float = _local_slope(world, x, y)
			world.drainage[index] = clampf(noise_value * 0.75 + slope * 0.90, 0.0, 1.0)


func _generate_hydrology(world) -> void:
	var land_indices: Array[int] = []

	for y in range(int(world.height)):
		for x in range(int(world.width)):
			var index: int = int(world.index_of(x, y))
			var elevation: float = float(world.elevation[index])
			if elevation <= float(settings.sea_level):
				world.flow_accumulation[index] = 0.0
				continue

			land_indices.append(index)
			var best_index: int = -1
			var best_elevation: float = elevation

			for direction in D8_DIRECTIONS:
				var nx: int = x + direction.x
				var ny: int = y + direction.y
				if nx < 0 or nx >= int(world.width) or ny < 0 or ny >= int(world.height):
					continue

				var neighbor_index: int = int(world.index_of(nx, ny))
				var neighbor_elevation: float = float(world.elevation[neighbor_index])
				if neighbor_elevation < best_elevation:
					best_elevation = neighbor_elevation
					best_index = neighbor_index

			world.flow_to[index] = best_index
			if best_index == -1:
				world.basin_mask[index] = 1

			var runoff: float = maxf(
				float(settings.runoff_floor),
				float(world.rainfall[index])
				* (1.0 - float(world.drainage[index]) * float(settings.drainage_runoff_reduction))
			)
			world.flow_accumulation[index] = runoff

	land_indices.sort_custom(
		func(a: int, b: int) -> bool:
			return float(world.elevation[a]) > float(world.elevation[b])
	)

	for index in land_indices:
		var downstream: int = int(world.flow_to[index])
		if downstream >= 0:
			world.flow_accumulation[downstream] = (
				float(world.flow_accumulation[downstream])
				+ float(world.flow_accumulation[index])
			)

	var river_threshold: float = maxf(
		1.0,
		float(settings.river_accumulation_threshold)
		* float(maxi(int(world.width), int(world.height)))
		/ float(settings.river_threshold_reference_size)
	)
	for index in land_indices:
		if (
			int(world.flow_to[index]) >= 0
			and float(world.flow_accumulation[index]) >= river_threshold
		):
			world.river_mask[index] = 1


func _generate_surface_moisture(world) -> void:
	for index in range(int(world.width) * int(world.height)):
		if float(world.elevation[index]) <= float(settings.sea_level):
			world.moisture[index] = 1.0
			continue

		var retained_water: float = (1.0 - float(world.drainage[index])) * 0.25
		var river_bonus: float = float(settings.river_moisture_bonus) if int(world.river_mask[index]) != 0 else 0.0
		var basin_bonus: float = float(settings.basin_moisture_bonus) if int(world.basin_mask[index]) != 0 else 0.0
		world.moisture[index] = clampf(
			float(world.rainfall[index]) * 0.65 + retained_water + river_bonus + basin_bonus,
			0.0,
			1.0
		)


func _classify_landforms_and_biomes(world) -> void:
	for y in range(int(world.height)):
		for x in range(int(world.width)):
			var index: int = int(world.index_of(x, y))
			var elevation: float = float(world.elevation[index])
			if elevation <= float(settings.sea_level):
				world.landform[index] = WorldDataScript.Landform.OCEAN
				world.biome[index] = WorldDataScript.Biome.OCEAN
				continue

			var slope: float = _local_slope(world, x, y)
			if elevation >= float(settings.mountain_elevation) or slope >= float(settings.mountain_slope):
				world.landform[index] = WorldDataScript.Landform.MOUNTAINS
			elif elevation >= float(settings.hill_elevation) or slope >= float(settings.hill_slope):
				world.landform[index] = WorldDataScript.Landform.HILLS
			else:
				world.landform[index] = WorldDataScript.Landform.PLAINS

			world.biome[index] = _resolve_biome(
				float(world.temperature[index]),
				float(world.moisture[index]),
				int(world.landform[index])
			)


func _resolve_biome(temperature: float, moisture: float, landform_id: int) -> int:
	if landform_id == WorldDataScript.Landform.MOUNTAINS and temperature < 0.48:
		return WorldDataScript.Biome.ALPINE
	if temperature < 0.22:
		return WorldDataScript.Biome.TUNDRA
	if moisture < 0.22:
		return WorldDataScript.Biome.DESERT
	if moisture > 0.78 and temperature > 0.66:
		return WorldDataScript.Biome.RAINFOREST
	if moisture > 0.78:
		return WorldDataScript.Biome.WETLAND
	if moisture > 0.50:
		return WorldDataScript.Biome.TEMPERATE_FOREST
	return WorldDataScript.Biome.GRASSLAND


func _local_slope(world, x: int, y: int) -> float:
	var center: float = float(world.elevation[int(world.index_of(x, y))])
	var max_difference: float = 0.0
	for direction in D8_DIRECTIONS:
		var nx: int = x + direction.x
		var ny: int = y + direction.y
		if nx < 0 or nx >= int(world.width) or ny < 0 or ny >= int(world.height):
			continue
		max_difference = maxf(
			max_difference,
			absf(center - float(world.elevation[int(world.index_of(nx, ny))]))
		)
	return max_difference


func _edge_ocean_penalty(x: int, y: int, width: int, height: int) -> float:
	if float(settings.edge_ocean_strength) <= 0.0:
		return 0.0

	var x_fraction: float = float(mini(x, width - 1 - x)) / float(maxi(1, width - 1))
	var y_fraction: float = float(mini(y, height - 1 - y)) / float(maxi(1, height - 1))
	var edge_distance: float = minf(x_fraction, y_fraction)
	var edge_weight: float = 1.0 - clampf(
		edge_distance / float(settings.edge_falloff_fraction),
		0.0,
		1.0
	)
	return edge_weight * float(settings.edge_ocean_strength)


func _make_noise(seed_value: int, frequency: float, octaves: int) -> FastNoiseLite:
	var noise := FastNoiseLite.new()
	noise.seed = _to_noise_seed(seed_value)
	noise.noise_type = FastNoiseLite.TYPE_SIMPLEX_SMOOTH
	noise.frequency = frequency
	noise.fractal_type = FastNoiseLite.FRACTAL_FBM
	noise.fractal_octaves = octaves
	return noise


func _noise_01(noise: FastNoiseLite, x: int, y: int) -> float:
	return clampf(noise.get_noise_2d(float(x), float(y)) * 0.5 + 0.5, 0.0, 1.0)


func _to_noise_seed(seed_value: int) -> int:
	var folded := seed_value ^ (seed_value >> 32)
	var low_32_bits := folded & 0xFFFFFFFF
	if low_32_bits > 0x7FFFFFFF:
		return low_32_bits - 0x100000000
	return low_32_bits
