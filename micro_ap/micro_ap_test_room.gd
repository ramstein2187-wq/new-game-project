extends Node2D

const MicroApGameScript := preload("res://micro_ap/micro_ap_game.gd")

const CELL_SIZE := 48.0
const ROOM_ORIGIN := Vector2(64.0, 132.0)

const FLOOR_COLOR := Color("#252b33")
const WALL_COLOR := Color("#59636f")
const GRID_COLOR := Color("#3a424d")
const DOOR_CLOSED_COLOR := Color("#9a6b3f")
const DOOR_OPEN_COLOR := Color("#c69a6b")
const PLAYER_COLOR := Color("#69b7ff")
const RAT_COLOR := Color("#d36b6b")
const FACING_COLOR := Color("#d7e7f5")

var game: MicroApGame

@onready var status_label: Label = $CanvasLayer/UI/VBox/Status
@onready var help_label: Label = $CanvasLayer/UI/VBox/Help
@onready var message_label: Label = $CanvasLayer/UI/VBox/Message


func _ready() -> void:
	game = MicroApGameScript.new()
	_refresh()


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey):
		return
	if not event.pressed or event.echo:
		return

	var handled := false

	if event.keycode == KEY_R:
		game.reset()
		handled = true
	elif event.is_action_pressed("move_left"):
		game.player_move(Vector2i.LEFT)
		handled = true
	elif event.is_action_pressed("move_right"):
		game.player_move(Vector2i.RIGHT)
		handled = true
	elif event.is_action_pressed("move_up"):
		game.player_move(Vector2i.UP)
		handled = true
	elif event.is_action_pressed("move_down"):
		game.player_move(Vector2i.DOWN)
		handled = true
	elif event.is_action_pressed("interact"):
		game.player_interact()
		handled = true
	elif event.is_action_pressed("ui_accept"):
		game.player_end_turn()
		handled = true

	if handled:
		get_viewport().set_input_as_handled()
		_refresh()


func _draw() -> void:
	if game == null:
		return

	for y in range(MicroApGame.GRID_HEIGHT):
		for x in range(MicroApGame.GRID_WIDTH):
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
		"Round %d   AP %d/%d   HP %d/%d   Rat HP %d/%d   Door %s"
		% [
			game.round_number,
			game.player_ap,
			MicroApGame.MAX_AP,
			game.player_hp,
			MicroApGame.PLAYER_MAX_HP,
			game.rat_hp,
			MicroApGame.RAT_MAX_HP,
			"OPEN" if game.door_open else "CLOSED",
		]
	)
	help_label.text = (
		"WASD/Arrows: move (1 AP)  |  Bump rat: attack (2 AP)  |  "
		+ "E: interact with facing tile (1 AP)  |  Space/Enter: end turn  |  R: reset"
	)
	message_label.text = game.message
	queue_redraw()


func _cell_rect(cell: Vector2i) -> Rect2:
	return Rect2(
		ROOM_ORIGIN + Vector2(cell) * CELL_SIZE,
		Vector2(CELL_SIZE, CELL_SIZE)
	)


func _cell_center(cell: Vector2i) -> Vector2:
	return ROOM_ORIGIN + (Vector2(cell) + Vector2(0.5, 0.5)) * CELL_SIZE
