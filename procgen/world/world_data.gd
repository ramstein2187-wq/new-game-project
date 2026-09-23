class_name WorldData
extends RefCounted

const OCEAN := 0
const ICE := 1
const DESERT := 2
const GRASSLAND := 3
const FOREST := 4
const WETLAND := 5
const ALPINE := 6

const PLAIN := 0
const HILL := 1
const MOUNTAIN := 2

var width: int
var height: int
var seed: int
var generator_version: int
var sea_level: float

# Dense immutable-after-generation environmental fields, indexed by y * width + x.
var elevation := PackedFloat32Array()
var temperature := PackedFloat32Array()
var rainfall := PackedFloat32Array()
var drainage := PackedFloat32Array()
var moisture := PackedFloat32Array()
var vegetation := PackedFloat32Array()
var biome := PackedByteArray()
var landform := PackedByteArray()
var river := PackedByteArray()
var lake := PackedByteArray()
var downstream := PackedInt32Array()
var flow := PackedFloat32Array()


func _init(size_x: int, size_y: int, world_seed: int, version: int, water_level: float) -> void:
	width = size_x
	height = size_y
	seed = world_seed
	generator_version = version
	sea_level = water_level
	var count := width * height
	for field in [elevation, temperature, rainfall, drainage, moisture, vegetation, flow]:
		field.resize(count)
	for field in [biome, landform, river, lake]:
		field.resize(count)
	downstream.resize(count)
	downstream.fill(-1)


func contains(x: int, y: int) -> bool:
	return x >= 0 and y >= 0 and x < width and y < height


func index_of(x: int, y: int) -> int:
	assert(contains(x, y), "World coordinate is outside the generated world.")
	return y * width + x


func cell_at(x: int, y: int) -> Dictionary:
	if not contains(x, y):
		return {}
	var i := index_of(x, y)
	return {
		"elevation": elevation[i],
		"temperature": temperature[i],
		"rainfall": rainfall[i],
		"drainage": drainage[i],
		"moisture": moisture[i],
		"vegetation": vegetation[i],
		"biome": biome[i],
		"landform": landform[i],
		"river": river[i] == 1,
		"lake": lake[i] == 1,
		"downstream": downstream[i],
		"flow": flow[i],
	}
