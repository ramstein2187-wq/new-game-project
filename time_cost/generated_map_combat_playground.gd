extends Node2D

const MapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const CombatGameScript := preload("res://time_cost/generated_map_combat_game.gd")
const CELL_SIZE := 16.0
const MAP_ORIGIN := Vector2(24.0, 112.0)
const GROUND_COLOR := Color("#6f8f4e")
const TREE_COLOR := Color("#284d32")
const PATH_COLOR := Color("#b79a67")
const RUIN_COLOR := Color("#777777")
const PLAYER_COLOR := Color("#69b7ff")
const RAT_COLOR := Color("#d36b6b")

@export var world_seed: int = 1234
@export var generation_settings: GenerationSettings = preload("res://procgen/default_generation_settings.tres")

var game: GeneratedMapCombatGame
var generated_map := PackedStringArray()
var detailed_log := false
var debug_log := false
var combat_panel: CombatDebugPanel

@onready var status_label: Label = $CanvasLayer/Status
@onready var help_label: Label = $CanvasLayer/Help
@onready var message_label: Label = $CanvasLayer/Message
@onready var log_label: Label = $CanvasLayer/LogScroll/Log


func _ready() -> void:
	combat_panel = CombatDebugPanel.new()
	combat_panel.position = Vector2(686, 112)
	combat_panel.size.x = 450
	$CanvasLayer.add_child(combat_panel)
	combat_panel.changed.connect(_refresh)
	regenerate(world_seed)


func regenerate(seed_value: int) -> void:
	var rows: PackedStringArray = MapGeneratorScript.new(generation_settings).generate(seed_value)
	var next_game: GeneratedMapCombatGame = CombatGameScript.new()
	if not next_game.configure(rows):
		push_error("Generated map has no valid path spawns for turn combat.")
		return
	world_seed = seed_value
	generated_map = rows
	game = next_game
	if combat_panel != null:
		combat_panel.game = game
	_refresh()


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey) or not event.pressed or event.echo or game == null:
		return
	var handled := true
	if event.keycode == KEY_R:
		regenerate(world_seed + 1)
	elif event.keycode == KEY_L:
		detailed_log = not detailed_log
	elif event.keycode == KEY_F3:
		debug_log = not debug_log
	elif event.keycode == KEY_KP_8:
		game.player_move(Vector2i.UP)
	elif event.keycode == KEY_KP_2:
		game.player_move(Vector2i.DOWN)
	elif event.keycode == KEY_KP_4:
		game.player_move(Vector2i.LEFT)
	elif event.keycode == KEY_KP_6:
		game.player_move(Vector2i.RIGHT)
	elif event.keycode == KEY_KP_7:
		game.player_move(Vector2i(-1, -1))
	elif event.keycode == KEY_KP_9:
		game.player_move(Vector2i(1, -1))
	elif event.keycode == KEY_KP_1:
		game.player_move(Vector2i(-1, 1))
	elif event.keycode == KEY_KP_3:
		game.player_move(Vector2i(1, 1))
	elif event.is_action_pressed("move_left"):
		game.player_move(Vector2i.LEFT)
	elif event.is_action_pressed("move_right"):
		game.player_move(Vector2i.RIGHT)
	elif event.is_action_pressed("move_up"):
		game.player_move(Vector2i.UP)
	elif event.is_action_pressed("move_down"):
		game.player_move(Vector2i.DOWN)
	elif event.is_action_pressed("ui_accept"):
		game.player_wait()
	else:
		handled = false
	if handled:
		get_viewport().set_input_as_handled()
		_refresh()


func _draw() -> void:
	if game == null:
		return
	for y in range(generated_map.size()):
		var row := generated_map[y]
		for x in range(row.length()):
			var tile := row[x]
			var bounds := Rect2(MAP_ORIGIN + Vector2(x, y) * CELL_SIZE, Vector2.ONE * CELL_SIZE)
			draw_rect(bounds, GROUND_COLOR)
			if tile == MapGeneratorScript.TREE:
				draw_rect(bounds.grow(-2), TREE_COLOR)
			elif tile == MapGeneratorScript.PATH:
				draw_rect(bounds.grow(-3), PATH_COLOR)
			elif tile == MapGeneratorScript.RUIN:
				draw_rect(bounds.grow(-1), RUIN_COLOR)
	var npc_index := 0
	for actor in game.actors.all():
		if actor.id == &"player":
			draw_circle(_cell_center(actor.position), 6.0, PLAYER_COLOR)
			continue
		npc_index += 1
		if not actor.is_alive():
			continue
		var center := _cell_center(actor.position)
		draw_circle(center, 6.0, RAT_COLOR)
		draw_string(ThemeDB.fallback_font, center + Vector2(-4, 4), str(npc_index), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.WHITE)
	draw_line(
		_cell_center(game.player_position),
		_cell_center(game.player_position) + Vector2(game.facing) * 6.0,
		Color.WHITE, 1.5
	)


func _cell_center(cell: Vector2i) -> Vector2:
	return MAP_ORIGIN + (Vector2(cell) + Vector2.ONE * 0.5) * CELL_SIZE


func _refresh() -> void:
	if game == null:
		return
	status_label.text = "Seed %d | t=%d | %s" % [world_seed, game.world_time, game.get_actor_status_text()]
	help_label.text = "WASD/Arrows: 4-way | Numpad 1-9: 8-way | Bump NPC: attack | Space/Enter: wait | R: next seed | L: details | F3: debug"
	message_label.text = game.message
	log_label.text = ("Developer trace:\n" + game.get_recent_debug_text()) if debug_log else ("Combat log:\n" + game.get_recent_event_text(detailed_log))
	if combat_panel != null:
		combat_panel.refresh()
	queue_redraw()
