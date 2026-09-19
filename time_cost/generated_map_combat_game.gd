class_name GeneratedMapCombatGame
extends TimeCostGame

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")

# Only terrain, boundaries and initial placements differ from the fixed room.
# All actor actions, routing, AI, turn scheduling and event logging are inherited.
var terrain_rows := PackedStringArray()
var map_width := 0
var map_height := 0


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

	reset()
	terrain_rows = rows.duplicate()
	map_width = width
	map_height = rows.size()
	player_position = start
	rat_position = opponent
	# The generated terrain has no interactive doors yet.
	door_position = Vector2i(-1, -1)
	door_open = true
	message = "Generated terrain: walk the path, fight the rat, or wait."
	return true


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
