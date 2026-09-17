extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")


func _init() -> void:
	call_deferred("_run")


func _run() -> void:
	var packed_scene := load("res://procgen/procedural_playground.tscn") as PackedScene
	if packed_scene == null:
		_fail("Could not load procedural playground scene")
		return

	var playground := packed_scene.instantiate()
	root.add_child(playground)
	await physics_frame

	var generated_map: PackedStringArray = playground.get("generated_map")
	if generated_map.size() != 30:
		_fail("Playground did not generate the default map height")
		return

	var player := playground.get_node_or_null("Player") as CharacterBody2D
	var blocking_cells := playground.get_node_or_null("BlockingCells") as StaticBody2D
	if player == null or blocking_cells == null:
		_fail("Playground is missing player or blocking collision body")
		return

	var player_cell: Vector2i = playground.call("world_to_cell", player.position)
	if generated_map[player_cell.y][player_cell.x] != SimpleMapGeneratorScript.PATH:
		_fail("Player did not spawn on the generated path")
		return

	var expected_blocking_cells := (
		_count_character(generated_map, SimpleMapGeneratorScript.TREE)
		+ _count_character(generated_map, SimpleMapGeneratorScript.RUIN)
	)
	var blocking_cell_count: int = playground.get("blocking_cell_count")
	if blocking_cell_count != expected_blocking_cells:
		_fail("Blocking collision count did not match tree and ruin cells")
		return
	if blocking_cells.get_child_count() != expected_blocking_cells:
		_fail("CollisionShape2D child count did not match blocking cells")
		return

	var collision_test_cell := _find_blocking_cell_with_open_left(playground, generated_map)
	if collision_test_cell.x == -1:
		_fail("Could not find a blocking cell suitable for collision test")
		return

	var left_cell := collision_test_cell + Vector2i.LEFT
	player.position = playground.call("cell_to_world", left_cell)
	await physics_frame

	var motion := Vector2(float(playground.get("cell_size")), 0.0)
	var collision := player.move_and_collide(motion, true)
	if collision == null:
		_fail("Player motion was not blocked by generated tree/ruin collision")
		return

	print("PASS: procedural playground")
	quit(0)


func _find_blocking_cell_with_open_left(playground: Node, rows: PackedStringArray) -> Vector2i:
	for y in range(rows.size()):
		for x in range(1, rows[y].length()):
			var cell := Vector2i(x, y)
			var left_cell := cell + Vector2i.LEFT
			if playground.call("is_blocking_cell", cell) and not playground.call("is_blocking_cell", left_cell):
				return cell
	return Vector2i(-1, -1)


func _count_character(rows: PackedStringArray, character: String) -> int:
	var count := 0
	for row in rows:
		for cell in row:
			if cell == character:
				count += 1
	return count


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
