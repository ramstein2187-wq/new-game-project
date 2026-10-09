extends Node2D

# Playable fixed-layout visual benchmark: original Ever Rogue sprites, not AI art.
const RegionScript := preload("res://worldgen/forest_ruins_region.gd")
const GameScript := preload("res://game/generated_map_combat_game.gd")
const ATLAS := preload("res://assets/tilesets/ever_rogue/EverRogueTileset 1.0/EverRogueTileset 1.0 Packed Alpha.png")
const CELL := 16
const TREE_TILE := Vector2i(9, 4)
const WATER_TILE := Vector2i(2, 4)
const WALL_TILE := Vector2i(3, 2)
const PLANT_TILE := Vector2i(10, 1)
const PROP_TILE := Vector2i(5, 9)
const PLAYER_TILE := Vector2i(2, 7)
const RAT_TILE := Vector2i(1, 8)

@export var world_seed := 1234
var layout: Dictionary = {}
var rows := PackedStringArray()
var game: GeneratedMapCombatGame
var actor_sprites: Dictionary = {}
var detailed_log := false
var overview_mode := false

@onready var objects: TileMapLayer = $Objects
@onready var details: TileMapLayer = $Details
@onready var actors_node: Node2D = $Actors
@onready var camera: Camera2D = $Camera2D
@onready var status: Label = $CanvasLayer/Status
@onready var help: Label = $CanvasLayer/Help
@onready var message: Label = $CanvasLayer/Message
@onready var log_label: Label = $CanvasLayer/CombatLog


func _ready() -> void:
	_setup_tileset()
	regenerate(world_seed)


func _setup_tileset() -> void:
	var tile_set := TileSet.new()
	tile_set.tile_size = Vector2i(CELL, CELL)
	var atlas := TileSetAtlasSource.new()
	atlas.texture = ATLAS
	atlas.texture_region_size = Vector2i(CELL, CELL)
	for y in range(13):
		for x in range(14):
			atlas.create_tile(Vector2i(x, y))
	tile_set.add_source(atlas, 0)
	objects.tile_set = tile_set
	details.tile_set = tile_set
	objects.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	details.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST


func regenerate(seed_value: int) -> void:
	var candidate: Dictionary = RegionScript.new().build(seed_value)
	var candidate_rows: PackedStringArray = candidate["rows"]
	var next_game: GeneratedMapCombatGame = GameScript.new()
	if not next_game.configure(candidate_rows, 1):
		push_error("Forest ruins layout failed combat spawn connectivity.")
		return
	world_seed = seed_value
	layout = candidate
	rows = candidate_rows
	game = next_game
	_repaint()
	_sync_actors()
	_update_hud()
	queue_redraw()


func _repaint() -> void:
	objects.clear()
	details.clear()
	var water: Dictionary = layout["water"]
	var stone: Dictionary = layout["stone"]
	for y in rows.size():
		for x in rows[y].length():
			var pos := Vector2i(x, y)
			var tile: String = rows[y][x]
			if water.has(pos):
				objects.set_cell(pos, 0, WATER_TILE)
			elif tile == "T":
				objects.set_cell(pos, 0, TREE_TILE)
			elif tile == "R":
				objects.set_cell(pos, 0, WALL_TILE)
			elif tile == "." and not stone.has(pos):
				var hash_value := ((x * 92821) ^ (y * 68917) ^ world_seed) & 0xffff
				if hash_value % 31 == 0:
					details.set_cell(pos, 0, PLANT_TILE)
				elif hash_value % 167 == 0:
					details.set_cell(pos, 0, PROP_TILE)
	# Landmarks have visual anchors. Decorations do not create collisions.
	for anchor in [Vector2i(22, 18), Vector2i(24, 21), Vector2i(78, 31), Vector2i(80, 74)]:
		details.set_cell(anchor, 0, PROP_TILE)


func _draw() -> void:
	if rows.is_empty():
		return
	var water: Dictionary = layout["water"]
	var stone: Dictionary = layout["stone"]
	for y in rows.size():
		for x in rows[y].length():
			var pos := Vector2i(x, y)
			var tile: String = rows[y][x]
			var alternate := ((x * 31 + y * 17) % 7) < 2
			var color := Color("#425e43") if alternate else Color("#3b553c")
			if tile == "#":
				color = Color("#978364") if alternate else Color("#8b775b")
			elif stone.has(pos):
				color = Color("#74776a") if alternate else Color("#656b62")
			elif water.has(pos):
				color = Color("#285674") if alternate else Color("#21465f")
			draw_rect(Rect2(x * CELL, y * CELL, CELL, CELL), color)


func _sprite_for(tile: Vector2i) -> Sprite2D:
	var sprite := Sprite2D.new()
	sprite.texture = ATLAS
	sprite.region_enabled = true
	sprite.region_rect = Rect2(tile * CELL, Vector2i(CELL, CELL))
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	return sprite


func _sync_actors() -> void:
	for sprite in actor_sprites.values():
		sprite.visible = false
	for actor in game.actors.all():
		var id: StringName = actor.id
		if not actor_sprites.has(id):
			var sprite := _sprite_for(PLAYER_TILE if id == &"player" else RAT_TILE)
			actors_node.add_child(sprite)
			actor_sprites[id] = sprite
		var visual: Sprite2D = actor_sprites[id]
		visual.visible = actor.is_alive()
		visual.position = Vector2(actor.position * CELL) + Vector2.ONE * 8.0
	if overview_mode:
		camera.zoom = Vector2(0.4, 0.4)
		camera.position = Vector2(RegionScript.WIDTH, RegionScript.HEIGHT) * CELL * 0.5
	else:
		camera.zoom = Vector2(2, 2)
		camera.position = Vector2(game.player_position * CELL) + Vector2.ONE * 8.0


func _update_hud() -> void:
	status.text = "숲속 폐허  |  Seed %d  |  Time %d  |  (%d, %d)" % [
		world_seed, game.world_time, game.player_position.x, game.player_position.y
	]
	help.text = "WASD/방향키: 이동  |  숫자패드: 8방향  |  Space: 대기  |  M: 전체 맵  |  R: 새 시드  |  L: 로그"
	var nearest_name := ""
	var nearest_distance := 9999
	for site in layout["sites"]:
		var distance: int = absi(site["cell"].x - game.player_position.x) + absi(site["cell"].y - game.player_position.y)
		if distance < nearest_distance:
			nearest_distance = distance
			nearest_name = site["name"]
	message.text = "%s  |  가까운 지점: %s (%d칸)" % [game.message, nearest_name, nearest_distance]
	log_label.text = game.get_recent_event_text(detailed_log)


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey) or not event.pressed or event.echo or game == null:
		return
	var direction := Vector2i.ZERO
	if event.keycode == KEY_R:
		regenerate(world_seed + 1)
	elif event.keycode == KEY_M:
		overview_mode = not overview_mode
	elif event.keycode == KEY_L:
		detailed_log = not detailed_log
	elif event.keycode == KEY_KP_8 or event.is_action_pressed("move_up"):
		direction = Vector2i.UP
	elif event.keycode == KEY_KP_2 or event.is_action_pressed("move_down"):
		direction = Vector2i.DOWN
	elif event.keycode == KEY_KP_4 or event.is_action_pressed("move_left"):
		direction = Vector2i.LEFT
	elif event.keycode == KEY_KP_6 or event.is_action_pressed("move_right"):
		direction = Vector2i.RIGHT
	elif event.keycode == KEY_KP_7:
		direction = Vector2i(-1, -1)
	elif event.keycode == KEY_KP_9:
		direction = Vector2i(1, -1)
	elif event.keycode == KEY_KP_1:
		direction = Vector2i(-1, 1)
	elif event.keycode == KEY_KP_3:
		direction = Vector2i(1, 1)
	elif event.is_action_pressed("ui_accept"):
		game.player_wait()
	else:
		return
	if direction != Vector2i.ZERO:
		game.player_move(direction)
	get_viewport().set_input_as_handled()
	_sync_actors()
	_update_hud()
