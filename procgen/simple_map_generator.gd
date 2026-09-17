class_name SimpleMapGenerator
extends RefCounted

const SeedDeriverScript := preload("res://procgen/seed_deriver.gd")

const GROUND := "."
const TREE := "T"
const PATH := "#"
const RUIN := "R"

const RUIN_STAMP := [
	"RRRRR",
	"R...R",
	"R.R.R",
	"R...R",
	"RR.RR",
]

var settings: GenerationSettings
var width: int
var height: int


func _init(generation_settings: GenerationSettings = null) -> void:
	settings = generation_settings if generation_settings != null else GenerationSettings.new()

	assert(settings.map_width > 1)
	assert(settings.map_height > 1)
	assert(settings.forest_threshold >= -1.0 and settings.forest_threshold <= 1.0)
	assert(settings.noise_frequency > 0.0)
	assert(settings.noise_octaves > 0)
	assert(settings.path_wander_probability >= 0.0 and settings.path_wander_probability <= 1.0)
	assert(settings.ruin_min_path_distance >= 0)
	assert(settings.ruin_max_path_distance >= settings.ruin_min_path_distance)

	width = settings.map_width
	height = settings.map_height


func generate(seed_value: int) -> PackedStringArray:
	var cells := _generate_base_terrain(seed_value)
	_carve_north_south_path(cells, seed_value)
	_place_ruin_landmark(cells, seed_value)
	return _cells_to_rows(cells)


func to_text(rows: PackedStringArray) -> String:
	return "\n".join(rows)


func _generate_base_terrain(seed_value: int) -> Array[PackedStringArray]:
	var noise := FastNoiseLite.new()
	var terrain_seed := SeedDeriverScript.derive(seed_value, ["terrain"])
	noise.seed = _to_noise_seed(terrain_seed)
	noise.noise_type = FastNoiseLite.TYPE_SIMPLEX_SMOOTH
	noise.frequency = settings.noise_frequency
	noise.fractal_type = FastNoiseLite.FRACTAL_FBM
	noise.fractal_octaves = settings.noise_octaves

	var cells: Array[PackedStringArray] = []
	for y in range(height):
		var row := PackedStringArray()
		for x in range(width):
			var noise_value := noise.get_noise_2d(float(x), float(y))
			row.append(TREE if noise_value > settings.forest_threshold else GROUND)
		cells.append(row)

	return cells


func _to_noise_seed(seed_value: int) -> int:
	var folded := seed_value ^ (seed_value >> 32)
	var low_32_bits := folded & 0xFFFFFFFF
	if low_32_bits > 0x7FFFFFFF:
		return low_32_bits - 0x100000000
	return low_32_bits


func _carve_north_south_path(cells: Array[PackedStringArray], seed_value: int) -> void:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriverScript.derive(seed_value, ["path"])

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
			elif rng.randf() < settings.path_wander_probability:
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


func _place_ruin_landmark(cells: Array[PackedStringArray], seed_value: int) -> void:
	var candidates := _find_ruin_candidates(cells)
	if candidates.is_empty():
		return

	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriverScript.derive(seed_value, ["landmark", "ruin"])
	var origin: Vector2i = candidates[rng.randi_range(0, candidates.size() - 1)]
	_stamp_ruin(cells, origin)


func _find_ruin_candidates(cells: Array[PackedStringArray]) -> Array[Vector2i]:
	var candidates: Array[Vector2i] = []
	var stamp_width := RUIN_STAMP[0].length()
	var stamp_height := RUIN_STAMP.size()
	var edge_margin := settings.ruin_edge_margin

	for origin_y in range(edge_margin, height - stamp_height - edge_margin + 1):
		for origin_x in range(edge_margin, width - stamp_width - edge_margin + 1):
			if _can_place_ruin(cells, Vector2i(origin_x, origin_y)):
				candidates.append(Vector2i(origin_x, origin_y))

	return candidates


func _can_place_ruin(cells: Array[PackedStringArray], origin: Vector2i) -> bool:
	var nearest_path_distance := 999999

	for stamp_y in range(RUIN_STAMP.size()):
		for stamp_x in range(RUIN_STAMP[stamp_y].length()):
			var map_x := origin.x + stamp_x
			var map_y := origin.y + stamp_y
			if cells[map_y][map_x] == PATH:
				return false

	var search_distance := settings.ruin_max_path_distance
	for map_y in range(maxi(0, origin.y - search_distance), mini(height, origin.y + RUIN_STAMP.size() + search_distance)):
		for map_x in range(maxi(0, origin.x - search_distance), mini(width, origin.x + RUIN_STAMP[0].length() + search_distance)):
			if cells[map_y][map_x] != PATH:
				continue
			var distance := _distance_to_rect(
				Vector2i(map_x, map_y),
				origin,
				Vector2i(RUIN_STAMP[0].length(), RUIN_STAMP.size())
			)
			nearest_path_distance = mini(nearest_path_distance, distance)

	return (
		nearest_path_distance >= settings.ruin_min_path_distance
		and nearest_path_distance <= settings.ruin_max_path_distance
	)


func _distance_to_rect(point: Vector2i, origin: Vector2i, size: Vector2i) -> int:
	var max_x := origin.x + size.x - 1
	var max_y := origin.y + size.y - 1
	var dx := maxi(maxi(origin.x - point.x, 0), point.x - max_x)
	var dy := maxi(maxi(origin.y - point.y, 0), point.y - max_y)
	return dx + dy


func _stamp_ruin(cells: Array[PackedStringArray], origin: Vector2i) -> void:
	for stamp_y in range(RUIN_STAMP.size()):
		var stamp_row: String = RUIN_STAMP[stamp_y]
		for stamp_x in range(stamp_row.length()):
			if stamp_row[stamp_x] == RUIN:
				cells[origin.y + stamp_y][origin.x + stamp_x] = RUIN


func _cells_to_rows(cells: Array[PackedStringArray]) -> PackedStringArray:
	var rows := PackedStringArray()
	for cell_row in cells:
		rows.append("".join(cell_row))
	return rows
