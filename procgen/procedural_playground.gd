class_name ProceduralPlayground
extends Node2D

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")

const GROUND_COLOR := Color("#6f8f4e")
const TREE_COLOR := Color("#284d32")
const PATH_COLOR := Color("#b79a67")
const RUIN_COLOR := Color("#777777")

@export var world_seed: int = 1234
@export var generation_settings: GenerationSettings = preload("res://procgen/default_generation_settings.tres")
@export_range(8, 64, 1) var cell_size: int = 16

var generated_map := PackedStringArray()
var blocking_cell_count: int = 0

@onready var blocking_cells: StaticBody2D = $BlockingCells
@onready var player: CharacterBody2D = $Player
@onready var info_label: Label = $CanvasLayer/InfoLabel


func _ready() -> void:
	regenerate(world_seed)


func regenerate(next_seed: int) -> void:
	world_seed = next_seed
	var generator := SimpleMapGeneratorScript.new(generation_settings)
	generated_map = generator.generate(world_seed)
	_rebuild_blocking_collisions()
	_place_player_on_path()
	_update_info_label()
	queue_redraw()


func _draw() -> void:
	if generated_map.is_empty():
		return

	for y in range(generated_map.size()):
		var row := generated_map[y]
		for x in range(row.length()):
			var cell := row[x]
			var cell_rect := Rect2(
				Vector2(x * cell_size, y * cell_size),
				Vector2(cell_size, cell_size)
			)

			draw_rect(cell_rect, GROUND_COLOR)
			if cell == SimpleMapGeneratorScript.TREE:
				draw_rect(cell_rect.grow(-2.0), TREE_COLOR)
			elif cell == SimpleMapGeneratorScript.PATH:
				draw_rect(cell_rect.grow(-3.0), PATH_COLOR)
			elif cell == SimpleMapGeneratorScript.RUIN:
				draw_rect(cell_rect.grow(-1.0), RUIN_COLOR)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_R:
		regenerate(world_seed + 1)


func cell_to_world(cell: Vector2i) -> Vector2:
	return Vector2(
		(cell.x + 0.5) * cell_size,
		(cell.y + 0.5) * cell_size
	)


func world_to_cell(world_position: Vector2) -> Vector2i:
	return Vector2i(
		floori(world_position.x / cell_size),
		floori(world_position.y / cell_size)
	)


func is_blocking_cell(cell: Vector2i) -> bool:
	if cell.y < 0 or cell.y >= generated_map.size():
		return false
	if cell.x < 0 or cell.x >= generated_map[cell.y].length():
		return false

	var character := generated_map[cell.y][cell.x]
	return (
		character == SimpleMapGeneratorScript.TREE
		or character == SimpleMapGeneratorScript.RUIN
	)


func _rebuild_blocking_collisions() -> void:
	for child in blocking_cells.get_children():
		child.free()

	blocking_cell_count = 0
	for y in range(generated_map.size()):
		var row := generated_map[y]
		for x in range(row.length()):
			var cell := Vector2i(x, y)
			if not is_blocking_cell(cell):
				continue

			var shape := RectangleShape2D.new()
			shape.size = Vector2(cell_size, cell_size)

			var collision := CollisionShape2D.new()
			collision.position = cell_to_world(cell)
			collision.shape = shape
			blocking_cells.add_child(collision)
			blocking_cell_count += 1


func _place_player_on_path() -> void:
	if generated_map.is_empty():
		return

	var spawn_row := mini(1, generated_map.size() - 1)
	var spawn_x := generated_map[spawn_row].find(SimpleMapGeneratorScript.PATH)
	if spawn_x == -1:
		spawn_row = 0
		spawn_x = generated_map[0].find(SimpleMapGeneratorScript.PATH)

	if spawn_x != -1:
		player.position = cell_to_world(Vector2i(spawn_x, spawn_row))
		player.velocity = Vector2.ZERO


func _update_info_label() -> void:
	if info_label == null:
		return
	info_label.text = (
		"Seed %d | WASD/Arrows: move | R: next seed | Trees/Ruins block movement"
		% world_seed
	)
