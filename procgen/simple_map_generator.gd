class_name SimpleMapGenerator
extends RefCounted

const GROUND := "."
const TREE := "T"
const PATH := "#"

var width: int
var height: int
var forest_threshold: float
var noise_frequency: float


func _init(
	map_width: int = 40,
	map_height: int = 30,
	threshold: float = 0.08,
	frequency: float = 0.09
) -> void:
	assert(map_width > 1)
	assert(map_height > 1)
	assert(threshold >= -1.0 and threshold <= 1.0)
	assert(frequency > 0.0)

	width = map_width
	height = map_height
	forest_threshold = threshold
	noise_frequency = frequency


func generate(seed_value: int) -> PackedStringArray:
	var cells := _generate_base_terrain(seed_value)
	_carve_north_south_path(cells, seed_value)
	return _cells_to_rows(cells)


func to_text(rows: PackedStringArray) -> String:
	return "\n".join(rows)


func _generate_base_terrain(seed_value: int) -> Array[PackedStringArray]:
	var noise := FastNoiseLite.new()
	noise.seed = seed_value
	noise.noise_type = FastNoiseLite.TYPE_SIMPLEX_SMOOTH
	noise.frequency = noise_frequency
	noise.fractal_type = FastNoiseLite.FRACTAL_FBM
	noise.fractal_octaves = 3

	var cells: Array[PackedStringArray] = []
	for y in range(height):
		var row := PackedStringArray()
		for x in range(width):
			var noise_value := noise.get_noise_2d(float(x), float(y))
			row.append(TREE if noise_value > forest_threshold else GROUND)
		cells.append(row)

	return cells


func _carve_north_south_path(cells: Array[PackedStringArray], seed_value: int) -> void:
	var rng := RandomNumberGenerator.new()
	rng.seed = seed_value ^ 0x5F3759DF

	var margin := maxi(1, width / 6)
	var current_x := rng.randi_range(margin, width - margin - 1)
	var target_x := rng.randi_range(margin, width - margin - 1)

	cells[0][current_x] = PATH

	for y in range(1, height):
		var previous_x := current_x
		var remaining_rows := height - y

		if remaining_rows > 0:
			var distance_to_target := target_x - current_x
			if abs(distance_to_target) >= remaining_rows:
				current_x += 1 if distance_to_target > 0 else -1
			elif rng.randf() < 0.45:
				current_x += rng.randi_range(-1, 1)

		current_x = clampi(current_x, 1, width - 2)

		var from_x := mini(previous_x, current_x)
		var to_x := maxi(previous_x, current_x)
		for x in range(from_x, to_x + 1):
			cells[y][x] = PATH

	if current_x != target_x:
		var from_x := mini(current_x, target_x)
		var to_x := maxi(current_x, target_x)
		for x in range(from_x, to_x + 1):
			cells[height - 1][x] = PATH


func _cells_to_rows(cells: Array[PackedStringArray]) -> PackedStringArray:
	var rows := PackedStringArray()
	for cell_row in cells:
		rows.append("".join(cell_row))
	return rows
