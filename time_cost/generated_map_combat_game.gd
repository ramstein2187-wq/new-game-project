class_name GeneratedMapCombatGame
extends TimeCostGame

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")

# Only terrain, boundaries and initial placements differ from the fixed room.
# All actor actions, routing, AI, turn scheduling and event logging are inherited.
var terrain_rows := PackedStringArray()
var map_width := 0
var map_height := 0
var _player_spawn := Vector2i.ZERO
var _rat_spawn := Vector2i.ZERO


func configure(rows: PackedStringArray) -> bool:
	if rows.size() < 4 or rows[0].length() < 4:
		return false
	var width := rows[0].length()
	for row in rows:
		if row.length() != width:
			return false

	var start := Vector2i(rows[1].find(MapGeneratorScript.PATH), 1)
	var rat_row := mini(9, rows.size() - 2)
	var opponent := Vector2i(rows[rat_row].find(MapGeneratorScript.PATH), rat_row)
	if start.x < 0 or opponent.x < 0 or start == opponent:
		return false
	if not _spawns_connected(rows, start, opponent):
		return false

	# Commit only after validation; failed configuration preserves the active game.
	terrain_rows = rows.duplicate()
	map_width = width
	map_height = rows.size()
	_player_spawn = start
	_rat_spawn = opponent
	reset()
	return true


func reset() -> void:
	# Reuse the existing HP/clock/log/AI reset, then restore this map's layout.
	# Before configure(), construction retains the base model's default state.
	super.reset()
	if terrain_rows.is_empty():
		return
	player_position = _player_spawn
	rat_position = _rat_spawn
	# The generated terrain has no interactive doors yet.
	door_position = Vector2i(-1, -1)
	door_open = true
	message = "Generated terrain: walk the path, fight the rat, or wait."


func _spawns_connected(rows: PackedStringArray, start: Vector2i, target: Vector2i) -> bool:
	# Validate staged terrain without replacing the current game or running AI.
	var frontier: Array[Vector2i] = [start]
	var visited: Dictionary = {start: true}
	var index := 0
	while index < frontier.size():
		var cell := frontier[index]
		index += 1
		if cell == target:
			return true
		for direction in CARDINAL_DIRECTIONS:
			var next := cell + direction
			if next.x < 0 or next.y < 0 or next.y >= rows.size() or next.x >= rows[0].length() or visited.has(next):
				continue
			var tile := rows[next.y][next.x]
			if tile == MapGeneratorScript.TREE or tile == MapGeneratorScript.RUIN:
				continue
			visited[next] = true
			frontier.append(next)
	return false


func is_inside(cell: Vector2i) -> bool:
	if terrain_rows.is_empty():
		return super.is_inside(cell)
	return cell.x >= 0 and cell.x < map_width and cell.y >= 0 and cell.y < map_height


func is_wall(cell: Vector2i) -> bool:
	if terrain_rows.is_empty():
		return super.is_wall(cell)
	if not is_inside(cell):
		return false
	var tile := terrain_rows[cell.y][cell.x]
	return tile == MapGeneratorScript.TREE or tile == MapGeneratorScript.RUIN
