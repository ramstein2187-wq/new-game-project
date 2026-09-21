extends Node2D

const TimeCostGameScript := preload("res://time_cost/time_cost_game.gd")
const MoveInput := preload("res://time_cost/grid_movement_input.gd")

const CELL_SIZE := 48.0
const ROOM_ORIGIN := Vector2(64.0, 280.0)

const FLOOR_COLOR := Color("#252b33")
const WALL_COLOR := Color("#59636f")
const GRID_COLOR := Color("#3a424d")
const DOOR_CLOSED_COLOR := Color("#9a6b3f")
const DOOR_OPEN_COLOR := Color("#c69a6b")
const PLAYER_COLOR := Color("#69b7ff")
const RAT_COLOR := Color("#d36b6b")
const FACING_COLOR := Color("#d7e7f5")

var game: TimeCostGame
var detailed_log := false
var debug_log := false
var combat_panel: CombatDebugPanel

@onready var status_label: Label = $CanvasLayer/UI/VBox/Status
@onready var timeline_label: Label = $CanvasLayer/UI/VBox/Timeline
@onready var help_label: Label = $CanvasLayer/UI/VBox/Help
@onready var message_label: Label = $CanvasLayer/UI/VBox/Message
@onready var event_log_label: Label = $CanvasLayer/LogScroll/EventLog


func _ready() -> void:
	game = TimeCostGameScript.new()
	combat_panel = CombatDebugPanel.new()
	combat_panel.position = Vector2(680, 220)
	combat_panel.size.x = 440
	combat_panel.game = game
	$CanvasLayer.add_child(combat_panel)
	combat_panel.changed.connect(_refresh)
	_refresh()


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey):
		return
	if not event.pressed or event.echo:
		return

	var handled := false
	var movement := MoveInput.direction(event)

	if event.keycode == KEY_R:
		game.reset()
		handled = true
	elif event.keycode == KEY_L:
		detailed_log = not detailed_log
		handled = true
	elif event.keycode == KEY_F3:
		debug_log = not debug_log
		handled = true
	elif movement != Vector2i.ZERO:
		game.player_move(movement)
		handled = true
	elif event.is_action_pressed("interact"):
		game.player_interact()
		handled = true
	elif event.is_action_pressed("ui_accept"):
		game.player_wait()
		handled = true

	if handled:
		get_viewport().set_input_as_handled()
		_refresh()


func _draw() -> void:
	if game == null:
		return

	for y in range(TimeCostGame.GRID_HEIGHT):
		for x in range(TimeCostGame.GRID_WIDTH):
			var cell := Vector2i(x, y)
			var rect := _cell_rect(cell)
			var fill_color := WALL_COLOR if game.is_wall(cell) else FLOOR_COLOR
			draw_rect(rect, fill_color)
			draw_rect(rect, GRID_COLOR, false, 1.0)

	var door_rect := _cell_rect(game.door_position)
	if game.door_open:
		draw_rect(door_rect.grow(-18.0), DOOR_OPEN_COLOR)
	else:
		draw_rect(door_rect.grow(-5.0), DOOR_CLOSED_COLOR)

	if game.rat_hp > 0:
		draw_circle(_cell_center(game.rat_position), 14.0, RAT_COLOR)

	draw_circle(_cell_center(game.player_position), 15.0, PLAYER_COLOR)

	var facing_start := _cell_center(game.player_position)
	var facing_end := facing_start + Vector2(game.facing) * 18.0
	draw_line(facing_start, facing_end, FACING_COLOR, 3.0)


func _refresh() -> void:
	if game == null:
		return

	status_label.text = (
		"World time %d   HP %d/%d   Rat HP %d/%d   Door %s"
		% [
			game.world_time,
			game.player_hp,
			TimeCostGame.PLAYER_MAX_HP,
			game.rat_hp,
			TimeCostGame.RAT_MAX_HP,
			"OPEN" if game.door_open else "CLOSED",
		]
	)
	timeline_label.text = game.get_timeline_text()
	help_label.text = (
		"WASD/Arrows: move | Numpad 1/3/7/9: diagonal | E: door\n"
		+ "Space/Enter: wait | R: reset | L: details | F3: trace\n"
		+ "Injuries change costs and available actions. Ties favor you."
	)
	message_label.text = game.message
	if debug_log:
		event_log_label.text = "Developer trace (last 6):\n" + game.get_recent_debug_text()
	else:
		event_log_label.text = "Combat log:\n" + game.get_recent_event_text(detailed_log)
	combat_panel.refresh()
	queue_redraw()


func _cell_rect(cell: Vector2i) -> Rect2:
	return Rect2(
		ROOM_ORIGIN + Vector2(cell) * CELL_SIZE,
		Vector2(CELL_SIZE, CELL_SIZE)
	)


func _cell_center(cell: Vector2i) -> Vector2:
	return ROOM_ORIGIN + (Vector2(cell) + Vector2(0.5, 0.5)) * CELL_SIZE
