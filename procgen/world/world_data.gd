class_name WorldData
extends RefCounted

enum Landform {
	OCEAN,
	PLAINS,
	HILLS,
	MOUNTAINS,
}

enum Biome {
	OCEAN,
	TUNDRA,
	DESERT,
	GRASSLAND,
	TEMPERATE_FOREST,
	RAINFOREST,
	WETLAND,
	ALPINE,
}

var width: int
var height: int
var world_seed: int
var generator_version: int

var elevation := PackedFloat32Array()
var temperature := PackedFloat32Array()
var rainfall := PackedFloat32Array()
var drainage := PackedFloat32Array()
var moisture := PackedFloat32Array()
var flow_accumulation := PackedFloat32Array()

var flow_to := PackedInt32Array()
var landform := PackedByteArray()
var biome := PackedByteArray()
var river_mask := PackedByteArray()
var basin_mask := PackedByteArray()


func _init(p_width: int, p_height: int, p_seed: int, p_generator_version: int) -> void:
	width = p_width
	height = p_height
	world_seed = p_seed
	generator_version = p_generator_version

	var cell_count := width * height
	elevation.resize(cell_count)
	temperature.resize(cell_count)
	rainfall.resize(cell_count)
	drainage.resize(cell_count)
	moisture.resize(cell_count)
	flow_accumulation.resize(cell_count)
	flow_to.resize(cell_count)
	landform.resize(cell_count)
	biome.resize(cell_count)
	river_mask.resize(cell_count)
	basin_mask.resize(cell_count)

	flow_to.fill(-1)


func index_of(x: int, y: int) -> int:
	assert(x >= 0 and x < width)
	assert(y >= 0 and y < height)
	return y * width + x


func position_of(index: int) -> Vector2i:
	assert(index >= 0 and index < width * height)
	return Vector2i(index % width, index / width)


func is_ocean(index: int) -> bool:
	return landform[index] == Landform.OCEAN


func is_river(index: int) -> bool:
	return river_mask[index] != 0


func checksum() -> int:
	var hash_value := 1469598103934665603
	for values in [elevation, temperature, rainfall, drainage, moisture, flow_accumulation]:
		for value in values:
			hash_value = _mix_hash(hash_value, int(round(float(value) * 1000000.0)))
	for values in [flow_to, landform, biome, river_mask, basin_mask]:
		for value in values:
			hash_value = _mix_hash(hash_value, int(value))
	return hash_value


func _mix_hash(current: int, value: int) -> int:
	return (current ^ value) * 1099511628211
