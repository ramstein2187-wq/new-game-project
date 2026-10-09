extends SceneTree

const Builder := preload("res://worldgen/forest_ruins_region.gd")
const ScenePath := "res://scenes/debug/ever_rogue_region_playground.tscn"


func _init() -> void:
	call_deferred("_run")


func _run() -> void:
	var builder := Builder.new()
	for seed in [1234, 1235, 9001]:
		var layout: Dictionary = builder.build(seed)
		var rows: PackedStringArray = layout["rows"]
		if rows.size() != 96 or rows[0].length() != 96:
			_fail("Region dimensions must be exactly 96x96")
			return
		if rows != builder.build(seed)["rows"]:
			_fail("Region must be deterministic for the same seed")
			return
		if not _all_sites_reachable(rows, layout["sites"]):
			_fail("All points of interest must be reachable on cardinal walkable tiles")
			return
		for pos in layout["water"]:
			if rows[pos.y][pos.x] != "T":
				_fail("Water must share the legacy combat blocking contract")
				return
		if layout["water"].size() < 25 or layout["stone"].size() < 100:
			_fail("Authored pond and building floor must exist")
			return

	var scene := load(ScenePath) as PackedScene
	if scene == null:
		_fail("Scene missing")
		return
	var instance := scene.instantiate()
	root.add_child(instance)
	await process_frame
	var game: GeneratedMapCombatGame = instance.game
	if game == null or game.map_width != 96 or game.map_height != 96:
		_fail("Scene did not configure the 96x96 combat model")
		return
	var objects := instance.get_node("Objects") as TileMapLayer
	var camera := instance.get_node("Camera2D") as Camera2D
	if objects == null or objects.get_used_cells().size() < 200 or camera.zoom != Vector2(2, 2):
		_fail("TileMapLayer or exploration camera did not initialize")
		return
	if game.is_wall(Vector2i(15, 46)) == false:
		_fail("Water cell should block tactical movement")
		return
	var first: PackedStringArray = instance.rows.duplicate()
	instance.regenerate(1235)
	if instance.rows == first or instance.world_seed != 1235:
		_fail("Reroll should rebuild terrain with a new seed")
		return
	instance.regenerate(1234)
	if instance.rows != first:
		_fail("Reroll back to a seed should restore its original terrain")
		return
	print("PASS: Ever Rogue 96x96 region generation, reachability, scene and reroll")
	quit(0)


func _all_sites_reachable(rows: PackedStringArray, sites: Array) -> bool:
	var start: Vector2i = sites[0]["cell"]
	var seen: Dictionary = {start: true}
	var queue: Array[Vector2i] = [start]
	var offset := 0
	while offset < queue.size():
		var cell := queue[offset]
		offset += 1
		for direction in [Vector2i.UP, Vector2i.DOWN, Vector2i.LEFT, Vector2i.RIGHT]:
			var next: Vector2i = cell + direction
			if next.x < 0 or next.y < 0 or next.x >= 96 or next.y >= 96 or seen.has(next):
				continue
			if rows[next.y][next.x] == "T" or rows[next.y][next.x] == "R":
				continue
			seen[next] = true
			queue.append(next)
	for site in sites:
		if not seen.has(site["cell"]):
			return false
	return true


func _fail(reason: String) -> void:
	push_error("FAIL: Ever Rogue region: " + reason)
	quit(1)
