class_name ForestRuinsRegion
extends RefCounted

# Authored geometry + seeded vegetation; terrain codes match GeneratedMapCombatGame.
const WIDTH := 96
const HEIGHT := 96
const SITES := [
	{"name": "북쪽 진입로", "cell": Vector2i(47, 3)},
	{"name": "버려진 야영지", "cell": Vector2i(22, 20)},
	{"name": "연못가", "cell": Vector2i(25, 46)},
	{"name": "중앙 폐허", "cell": Vector2i(47, 44)},
	{"name": "동쪽 석실", "cell": Vector2i(75, 30)},
	{"name": "남쪽 석주", "cell": Vector2i(56, 78)},
	{"name": "동굴 어귀", "cell": Vector2i(81, 75)}
]

var cells: Array[PackedStringArray] = []
var water: Dictionary = {}
var stone: Dictionary = {}


func build(seed: int = 1234) -> Dictionary:
	cells.clear()
	water.clear()
	stone.clear()
	var noise := FastNoiseLite.new()
	noise.seed = seed
	noise.frequency = 0.075
	noise.fractal_type = FastNoiseLite.FRACTAL_FBM
	noise.fractal_octaves = 3
	for y in HEIGHT:
		var row := PackedStringArray()
		for x in WIDTH:
			var n := noise.get_noise_2d(float(x), float(y))
			var jitter := ((x * 73856093) ^ (y * 19349663) ^ seed) & 0x7fffffff
			row.append("T" if n > 0.13 or (n > -0.10 and jitter % 100 < 19) else ".")
		cells.append(row)

	pond(Vector2i(15, 46), Vector2i(8, 6))
	for clearing in [
		[Vector2i(47, 3), Vector2i(8, 7)],
		[Vector2i(22, 20), Vector2i(10, 8)],
		[Vector2i(47, 44), Vector2i(18, 15)],
		[Vector2i(75, 30), Vector2i(11, 9)],
		[Vector2i(56, 78), Vector2i(10, 9)],
		[Vector2i(81, 75), Vector2i(9, 7)],
		[Vector2i(25, 46), Vector2i(4, 5)]
	]:
		clear_ellipse(clearing[0], clearing[1])
	for route in [
		[Vector2i(47, 0), Vector2i(47, 20), Vector2i(45, 30), Vector2i(47, 44), Vector2i(48, 62), Vector2i(56, 78), Vector2i(56, 95)],
		[Vector2i(47, 20), Vector2i(36, 19), Vector2i(22, 20)],
		[Vector2i(47, 45), Vector2i(35, 43), Vector2i(25, 46)],
		[Vector2i(46, 29), Vector2i(62, 25), Vector2i(75, 30)],
		[Vector2i(56, 78), Vector2i(68, 74), Vector2i(81, 75)],
		[Vector2i(75, 30), Vector2i(85, 38), Vector2i(83, 57), Vector2i(81, 75)]
	]:
		route_cells(route)

	ruin(Rect2i(37, 34, 23, 20), [Vector2i(47, 34), Vector2i(47, 53), Vector2i(59, 44)])
	ruin(Rect2i(69, 25, 13, 11), [Vector2i(75, 25), Vector2i(75, 35)])
	for offset in [Vector2i(-5, -3), Vector2i(5, -3), Vector2i(-6, 2), Vector2i(6, 2), Vector2i(-3, 5), Vector2i(3, 5)]:
		put(Vector2i(56, 78) + offset, "R")
	for y in range(75, 82):
		for x in range(53, 60):
			stone[Vector2i(x, y)] = true
	# Doorways and a safe trunk route through both ruins.
	route_cells([Vector2i(47, 30), Vector2i(47, 62)])
	route_cells([Vector2i(62, 25), Vector2i(75, 25), Vector2i(75, 30)])
	route_cells([Vector2i(75, 35), Vector2i(75, 38)])
	route_cells([Vector2i(45, 44), Vector2i(59, 44)])
	var rows := PackedStringArray()
	for row in cells:
		rows.append("".join(row))
	return {"rows": rows, "water": water.duplicate(), "stone": stone.duplicate(), "sites": SITES.duplicate(true), "seed": seed}


func inside(pos: Vector2i) -> bool:
	return pos.x >= 0 and pos.y >= 0 and pos.x < WIDTH and pos.y < HEIGHT


func put(pos: Vector2i, tile: String) -> void:
	if inside(pos):
		cells[pos.y][pos.x] = tile


func pond(center: Vector2i, radius: Vector2i) -> void:
	for y in range(center.y - radius.y, center.y + radius.y + 1):
		for x in range(center.x - radius.x, center.x + radius.x + 1):
			var pos := Vector2i(x, y)
			var delta := Vector2(float(x - center.x) / radius.x, float(y - center.y) / radius.y)
			if inside(pos) and delta.length_squared() <= 1.0:
				water[pos] = true
				put(pos, "T")


func clear_ellipse(center: Vector2i, radius: Vector2i) -> void:
	for y in range(center.y - radius.y, center.y + radius.y + 1):
		for x in range(center.x - radius.x, center.x + radius.x + 1):
			var pos := Vector2i(x, y)
			var delta := Vector2(float(x - center.x) / radius.x, float(y - center.y) / radius.y)
			if delta.length_squared() <= 1.0 and not water.has(pos):
				put(pos, ".")


func carve(pos: Vector2i) -> void:
	for dy in range(-1, 2):
		for dx in range(-1, 2):
			var next := pos + Vector2i(dx, dy)
			if not water.has(next):
				put(next, "#")


func route_cells(points: Array) -> void:
	for i in range(points.size() - 1):
		var at: Vector2i = points[i]
		var target: Vector2i = points[i + 1]
		carve(at)
		while at != target:
			var delta := target - at
			if abs(delta.x) >= abs(delta.y) and delta.x != 0:
				at.x += 1 if delta.x > 0 else -1
			else:
				at.y += 1 if delta.y > 0 else -1
			carve(at)


func ruin(bounds: Rect2i, doors: Array) -> void:
	for y in range(bounds.position.y, bounds.end.y):
		for x in range(bounds.position.x, bounds.end.x):
			var pos := Vector2i(x, y)
			var edge := x == bounds.position.x or x == bounds.end.x - 1 or y == bounds.position.y or y == bounds.end.y - 1
			put(pos, "R" if edge else ".")
			if not edge:
				stone[pos] = true
	for y in range(bounds.position.y + 5, bounds.end.y - 4):
		for x in [bounds.position.x + 5, bounds.end.x - 6]:
			if y % 4 != 0:
				put(Vector2i(x, y), "R")
	for door in doors:
		put(door, "#")
