class_name SimpleMapGenerator
extends RefCounted

const GROUND := "."
const TREE := "T"

var width: int
var height: int
var tree_probability: float


func _init(map_width: int = 40, map_height: int = 30, probability: float = 0.30) -> void:
	assert(map_width > 0)
	assert(map_height > 0)
	assert(probability >= 0.0 and probability <= 1.0)

	width = map_width
	height = map_height
	tree_probability = probability


func generate(seed_value: int) -> PackedStringArray:
	var rng := RandomNumberGenerator.new()
	rng.seed = seed_value

	var rows := PackedStringArray()
	for y in range(height):
		var row := ""
		for x in range(width):
			row += TREE if rng.randf() < tree_probability else GROUND
		rows.append(row)

	return rows


func to_text(rows: PackedStringArray) -> String:
	return "\n".join(rows)
