class_name ProceduralMapPreview
extends Node2D

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")

const GROUND_COLOR := Color("#6f8f4e")
const TREE_COLOR := Color("#284d32")
const PATH_COLOR := Color("#b79a67")
const MAP_ORIGIN := Vector2(24.0, 56.0)

@export var seed_value: int = 1234
@export var map_width: int = 40
@export var map_height: int = 30
@export var cell_size: int = 16

var generated_map := PackedStringArray()


func _ready() -> void:
	regenerate(seed_value)


func regenerate(next_seed: int) -> void:
	seed_value = next_seed
	var generator := SimpleMapGeneratorScript.new(map_width, map_height)
	generated_map = generator.generate(seed_value)

	var info_label := get_node_or_null("InfoLabel") as Label
	if info_label != null:
		info_label.text = "Seed %d  |  .=ground  T=tree  #=path  |  R: next seed" % seed_value

	queue_redraw()


func _draw() -> void:
	if generated_map.is_empty():
		return

	for y in range(generated_map.size()):
		var row := generated_map[y]
		for x in range(row.length()):
			var top_left := MAP_ORIGIN + Vector2(x * cell_size, y * cell_size)
			var cell_rect := Rect2(top_left, Vector2(cell_size, cell_size))
			var cell := row[x]

			draw_rect(cell_rect, GROUND_COLOR)
			if cell == SimpleMapGeneratorScript.TREE:
				draw_rect(cell_rect.grow(-2.0), TREE_COLOR)
			elif cell == SimpleMapGeneratorScript.PATH:
				draw_rect(cell_rect.grow(-3.0), PATH_COLOR)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_R:
		regenerate(seed_value + 1)
