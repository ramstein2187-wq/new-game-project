class_name GeneratedMapCombatGame
extends TimeCostGame

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")

# Only terrain, boundaries and initial placements differ from the fixed room.
# All actor actions, routing, AI, turn scheduling and event logging are inherited.
var terrain_rows := PackedStringArray()
var map_width := 0
var map_height := 0
var _player_spawn := Vector2i.ZERO
var _npc_spawns: Array[Vector2i] = []


func configure(rows: PackedStringArray, npc_count: int = 3) -> bool:
	if npc_count < 1 or rows.size() < 4 or rows[0].length() < 4:
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

	var staged_spawns: Array[Vector2i] = []
	for cell in _reachable_cells(rows, opponent):
		if cell != start:
			staged_spawns.append(cell)
		if staged_spawns.size() == npc_count:
			break
	# Small connected maps deliberately use as many distinct cells as fit.
	# Commit only after validation; failed configuration preserves the active game.
	terrain_rows = rows.duplicate()
	map_width = width
	map_height = rows.size()
	_player_spawn = start
	_npc_spawns = staged_spawns
	reset()
	return true


func reset() -> void:
	# Reuse the existing HP/clock/log/AI reset, then restore this map's layout.
	# Before configure(), construction retains the base model's default state.
	super.reset()
	if terrain_rows.is_empty():
		return
	# The generated terrain has no interactive doors yet.
	door_position = Vector2i(-1, -1)
	door_open = true
	message = "Generated terrain: walk the path, fight %d NPCs, or wait." % _npc_spawns.size()


func _create_initial_actors() -> void:
	if terrain_rows.is_empty():
		super._create_initial_actors()
		return
	door_position = Vector2i(-1, -1)
	door_open = true
	actors.register(Actor.new(&"player", ActorDefinition.human_default(), _player_spawn, "You"))
	var definition := ActorDefinition.rat_common()
	for index in range(_npc_spawns.size()):
		var actor_id := &"rat" if index == 0 else StringName("rat_%03d" % (index + 1))
		var label := "The rat" if _npc_spawns.size() == 1 else "Rat %d" % (index + 1)
		var registered := register_actor(Actor.new(actor_id, definition, _npc_spawns[index], label))
		assert(registered, "Validated NPC spawn must register")


func _spawns_connected(rows: PackedStringArray, start: Vector2i, target: Vector2i) -> bool:
	return _reachable_cells(rows, start).has(target)


func _reachable_cells(rows: PackedStringArray, start: Vector2i) -> Array[Vector2i]:
	# Stable cardinal BFS is independent of combat RNG and terrain generation.
	var frontier: Array[Vector2i] = [start]
	var visited: Dictionary = {start: true}
	var index := 0
	while index < frontier.size():
		var cell := frontier[index]
		index += 1
		for direction in CARDINAL_DIRECTIONS:
			var next := cell + direction
			if next.x < 0 or next.y < 0 or next.y >= rows.size() or next.x >= rows[0].length() or visited.has(next):
				continue
			var tile := rows[next.y][next.x]
			if tile == MapGeneratorScript.TREE or tile == MapGeneratorScript.RUIN:
				continue
			visited[next] = true
			frontier.append(next)
	return frontier


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
