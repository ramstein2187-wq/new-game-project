extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const DefaultGenerationSettings := preload("res://procgen/default_generation_settings.tres")


func _init() -> void:
	var generator := SimpleMapGeneratorScript.new(DefaultGenerationSettings)
	var first: PackedStringArray = generator.generate(1234)
	var second: PackedStringArray = generator.generate(1234)
	var different: PackedStringArray = generator.generate(1235)

	if first != second:
		_fail("Same seed did not reproduce the same map")
		return

	if first == different:
		_fail("Different seed unexpectedly produced the same map")
		return

	if first.size() != 30:
		_fail("Expected 30 rows, got %d" % first.size())
		return

	var tree_count := 0
	var ground_count := 0
	var path_count := 0
	var ruin_count := 0
	for row in first:
		if row.length() != 40:
			_fail("Expected row width 40, got %d" % row.length())
			return

		for character in row:
			if character == SimpleMapGeneratorScript.TREE:
				tree_count += 1
			elif character == SimpleMapGeneratorScript.GROUND:
				ground_count += 1
			elif character == SimpleMapGeneratorScript.PATH:
				path_count += 1
			elif character == SimpleMapGeneratorScript.RUIN:
				ruin_count += 1
			else:
				_fail("Unexpected map character: %s" % character)
				return

	if tree_count == 0 or ground_count == 0 or path_count == 0 or ruin_count == 0:
		_fail("Generated map must contain trees, ground, a path, and a ruin")
		return

	if ruin_count != 16:
		_fail("Expected one 5x5 ruin stamp with 16 wall cells, got %d" % ruin_count)
		return

	if tree_count + ground_count + path_count + ruin_count != 40 * 30:
		_fail("Cell count did not match map dimensions")
		return

	if first[0].find(SimpleMapGeneratorScript.PATH) == -1:
		_fail("North edge has no path exit")
		return

	if first[first.size() - 1].find(SimpleMapGeneratorScript.PATH) == -1:
		_fail("South edge has no path exit")
		return

	if not _has_connected_path(first):
		_fail("Path does not connect north edge to south edge")
		return

	for seed_value in [1, 2, 42, 9999, 4294967297, 9223372036854775806]:
		var sample: PackedStringArray = generator.generate(seed_value)
		if not _has_connected_path(sample):
			_fail("Path connectivity failed for seed %d" % seed_value)
			return
		if _count_character(sample, SimpleMapGeneratorScript.RUIN) != 16:
			_fail("Ruin placement failed for seed %d" % seed_value)
			return

	print("PASS: simple procedural map generator")
	quit(0)


func _count_character(rows: PackedStringArray, character: String) -> int:
	var count := 0
	for row in rows:
		for cell in row:
			if cell == character:
				count += 1
	return count


func _has_connected_path(rows: PackedStringArray) -> bool:
	var frontier: Array[Vector2i] = []
	var visited: Dictionary = {}

	for x in range(rows[0].length()):
		if rows[0][x] == SimpleMapGeneratorScript.PATH:
			var start := Vector2i(x, 0)
			frontier.append(start)
			visited[start] = true

	var directions: Array[Vector2i] = [Vector2i.LEFT, Vector2i.RIGHT, Vector2i.UP, Vector2i.DOWN]
	while not frontier.is_empty():
		var current: Vector2i = frontier.pop_front()
		if current.y == rows.size() - 1:
			return true

		for direction in directions:
			var next_pos: Vector2i = current + direction
			if next_pos.x < 0 or next_pos.x >= rows[0].length():
				continue
			if next_pos.y < 0 or next_pos.y >= rows.size():
				continue
			if visited.has(next_pos):
				continue
			if rows[next_pos.y][next_pos.x] != SimpleMapGeneratorScript.PATH:
				continue

			visited[next_pos] = true
			frontier.append(next_pos)

	return false


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
