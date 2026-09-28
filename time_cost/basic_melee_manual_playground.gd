extends Node2D

const CELL_SIZE := 48.0
const ROOM_ORIGIN := Vector2(64.0, 330.0)

const FLOOR_COLOR := Color("#252b33")
const WALL_COLOR := Color("#59636f")
const GRID_COLOR := Color("#3a424d")
const DOOR_CLOSED_COLOR := Color("#9a6b3f")
const DOOR_OPEN_COLOR := Color("#c69a6b")
const PLAYER_COLOR := Color("#69b7ff")
const HOSTILE_COLOR := Color("#d36b6b")
const FACING_COLOR := Color("#d7e7f5")

var game: TimeCostGame
var current_config: Dictionary = {}
var current_scenario := ""
var detailed_log := false
var debug_log := true

var status_label: Label
var timeline_label: Label
var help_label: Label
var message_label: Label
var log_label: Label
var actor_state_label: Label
var hostile_select: OptionButton
var aggression_slider: HSlider
var aggression_value: Label
var condition_select: OptionButton
var count_spin: SpinBox


func _ready() -> void:
	_build_ui()
	_apply_preset(&"aggressive")


func _build_ui() -> void:
	var layer := CanvasLayer.new()
	add_child(layer)

	var info := VBoxContainer.new()
	info.position = Vector2(20, 16)
	info.size = Vector2(640, 285)
	info.add_theme_constant_override("separation", 4)
	layer.add_child(info)

	var title := Label.new()
	title.text = "M026 — Basic Melee v2 Manual Playground"
	title.add_theme_font_size_override("font_size", 20)
	info.add_child(title)

	status_label = Label.new()
	status_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	info.add_child(status_label)

	timeline_label = Label.new()
	timeline_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	info.add_child(timeline_label)

	help_label = Label.new()
	help_label.text = (
		"WASD/Arrows: 4-way | Numpad 1-9: 8-way | Bump NPC: attack | Space/Enter: wait\n"
		+ "R: reset current scenario | L: player log detail | F3: developer trace"
	)
	help_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	info.add_child(help_label)

	message_label = Label.new()
	message_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	info.add_child(message_label)

	var controls := VBoxContainer.new()
	controls.position = Vector2(680, 16)
	controls.size = Vector2(456, 300)
	controls.add_theme_constant_override("separation", 4)
	layer.add_child(controls)

	var controls_title := Label.new()
	controls_title.text = "Scenario presets"
	controls_title.add_theme_font_size_override("font_size", 17)
	controls.add_child(controls_title)

	var preset_grid := GridContainer.new()
	preset_grid.columns = 2
	controls.add_child(preset_grid)
	_add_button("Aggressive adjacent", preset_grid, _apply_preset.bind(&"aggressive"))
	_add_button("Cautious approach", preset_grid, _apply_preset.bind(&"cautious"))
	_add_button("Wounded retreat", preset_grid, _apply_preset.bind(&"wounded"))
	_add_button("Blocked retreat", preset_grid, _apply_preset.bind(&"blocked"))
	_add_button("Crowd / reposition", preset_grid, _apply_preset.bind(&"crowd"))
	_add_button("Door / interact", preset_grid, _apply_preset.bind(&"door"))

	var separator := HSeparator.new()
	controls.add_child(separator)

	var custom_title := Label.new()
	custom_title.text = "Custom basic_melee roster"
	controls.add_child(custom_title)

	hostile_select = OptionButton.new()
	hostile_select.focus_mode = Control.FOCUS_NONE
	var ids: Array = CombatContentCatalog.all_hostiles().keys()
	ids.sort()
	for hostile_id in ids:
		var definition: ActorDefinition = CombatContentCatalog.actor(hostile_id)
		hostile_select.add_item(definition.display_name)
		hostile_select.set_item_metadata(hostile_select.item_count - 1, String(hostile_id))
	controls.add_child(hostile_select)

	var aggression_row := HBoxContainer.new()
	controls.add_child(aggression_row)
	var aggression_caption := Label.new()
	aggression_caption.text = "Aggression"
	aggression_caption.custom_minimum_size.x = 90
	aggression_row.add_child(aggression_caption)
	aggression_slider = HSlider.new()
	aggression_slider.min_value = 0
	aggression_slider.max_value = 180
	aggression_slider.step = 10
	aggression_slider.value = 50
	aggression_slider.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	aggression_slider.focus_mode = Control.FOCUS_NONE
	aggression_slider.value_changed.connect(_on_aggression_changed)
	aggression_row.add_child(aggression_slider)
	aggression_value = Label.new()
	aggression_value.text = "50"
	aggression_value.custom_minimum_size.x = 36
	aggression_row.add_child(aggression_value)

	var condition_row := HBoxContainer.new()
	controls.add_child(condition_row)
	var condition_caption := Label.new()
	condition_caption.text = "Condition"
	condition_caption.custom_minimum_size.x = 90
	condition_row.add_child(condition_caption)
	condition_select = OptionButton.new()
	condition_select.focus_mode = Control.FOCUS_NONE
	for condition in ["Healthy", "Wounded", "Critical"]:
		condition_select.add_item(condition)
		condition_select.set_item_metadata(condition_select.item_count - 1, condition.to_lower())
	condition_select.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	condition_row.add_child(condition_select)

	var count_row := HBoxContainer.new()
	controls.add_child(count_row)
	var count_caption := Label.new()
	count_caption.text = "NPC count"
	count_caption.custom_minimum_size.x = 90
	count_row.add_child(count_caption)
	count_spin = SpinBox.new()
	count_spin.min_value = 1
	count_spin.max_value = 4
	count_spin.step = 1
	count_spin.value = 1
	count_spin.allow_greater = false
	count_spin.allow_lesser = false
	count_spin.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	count_row.add_child(count_spin)

	_add_button("Apply custom", controls, _apply_custom)

	actor_state_label = Label.new()
	actor_state_label.position = Vector2(680, 320)
	actor_state_label.size = Vector2(456, 125)
	actor_state_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	layer.add_child(actor_state_label)

	var log_scroll := ScrollContainer.new()
	log_scroll.position = Vector2(680, 455)
	log_scroll.size = Vector2(456, 205)
	log_scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED
	layer.add_child(log_scroll)
	log_label = Label.new()
	log_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	log_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	log_scroll.add_child(log_label)


func _add_button(caption: String, parent: Node, callback: Callable) -> void:
	var button := Button.new()
	button.text = caption
	button.focus_mode = Control.FOCUS_NONE
	button.pressed.connect(callback)
	parent.add_child(button)


func _on_aggression_changed(value: float) -> void:
	aggression_value.text = str(roundi(value))


func _apply_preset(preset: StringName) -> void:
	match preset:
		&"aggressive":
			_build_scenario("Aggressive adjacent", &"wolf", 160, &"healthy", 1,
				Vector2i(2, 3), [Vector2i(3, 3)], true, 0)
		&"cautious":
			_build_scenario("Cautious approach", &"wolf", 0, &"healthy", 1,
				Vector2i(2, 3), [Vector2i(4, 3)], true, 0)
		&"wounded":
			_build_scenario("Wounded retreat", &"wolf", 10, &"critical", 1,
				Vector2i(2, 3), [Vector2i(3, 3)], true, 0)
		&"blocked":
			_build_scenario("Blocked retreat", &"wolf", 0, &"critical", 1,
				Vector2i(2, 1), [Vector2i(1, 1)], true, 0)
		&"crowd":
			_build_scenario("Crowd / reposition", &"raider", 20, &"healthy", 3,
				Vector2i(2, 3), [Vector2i(3, 3), Vector2i(4, 2), Vector2i(4, 3)], true, 0)
		&"door":
			_build_scenario("Door / interact", &"wolf", 0, &"healthy", 1,
				Vector2i(2, 3), [Vector2i(8, 3)], false, 0)


func _apply_custom() -> void:
	if hostile_select.item_count == 0:
		return
	var hostile_id := StringName(hostile_select.get_item_metadata(hostile_select.selected))
	var condition := StringName(condition_select.get_item_metadata(condition_select.selected))
	var count := int(count_spin.value)
	var positions: Array[Vector2i] = [
		Vector2i(4, 3), Vector2i(4, 2), Vector2i(4, 4), Vector2i(3, 4),
	]
	_build_scenario("Custom", hostile_id, roundi(aggression_slider.value), condition, count,
		Vector2i(2, 3), positions.slice(0, count), true, 0)


func _build_scenario(
	scenario_name: String,
	hostile_id: StringName,
	aggression: int,
	condition: StringName,
	count: int,
	player_cell: Vector2i,
	npc_cells: Array,
	door_is_open: bool,
	fear_bonus: int
) -> void:
	current_config = {
		"name": scenario_name,
		"hostile_id": hostile_id,
		"aggression": aggression,
		"condition": condition,
		"count": count,
		"player_cell": player_cell,
		"npc_cells": npc_cells.duplicate(),
		"door_open": door_is_open,
		"fear_bonus": fear_bonus,
	}
	_rebuild_current()


func _rebuild_current() -> void:
	if current_config.is_empty():
		return
	game = TimeCostGame.new()
	game.remove_actor(&"rat")
	game.player_position = current_config.player_cell
	game.facing = Vector2i.RIGHT
	game.door_open = current_config.door_open
	current_scenario = current_config.name

	var definition: ActorDefinition = CombatContentCatalog.actor(current_config.hostile_id)
	for index in range(current_config.count):
		var actor_id := StringName("manual_%02d" % (index + 1))
		var label := "%s %d" % [definition.display_name, index + 1]
		var actor := Actor.new(actor_id, definition, current_config.npc_cells[index], label)
		actor.aggression = current_config.aggression
		actor.fear_bonus = current_config.fear_bonus
		_apply_condition(actor, current_config.condition)
		if not game.register_actor(actor):
			push_error("Manual playground failed to register %s at %s" % [actor_id, actor.position])

	game.message = (
		"M026 manual scenario: %s. Use Space to let NPCs act; F3 shows utility/reasons."
		% current_scenario
	)
	_refresh()


func _apply_condition(actor: Actor, condition: StringName) -> void:
	match condition:
		&"critical":
			actor.hp = maxi(1, actor.max_hp / 4)
		&"wounded":
			actor.hp = maxi(1, actor.max_hp / 2)
		_:
			actor.hp = actor.max_hp


func _unhandled_input(event: InputEvent) -> void:
	if not (event is InputEventKey) or not event.pressed or event.echo or game == null:
		return
	var handled := true
	if event.keycode == KEY_R:
		_rebuild_current()
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
	elif event.is_action_pressed("interact"):
		game.player_interact()
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
	for y in range(TimeCostGame.GRID_HEIGHT):
		for x in range(TimeCostGame.GRID_WIDTH):
			var cell := Vector2i(x, y)
			var rect := Rect2(ROOM_ORIGIN + Vector2(cell) * CELL_SIZE, Vector2.ONE * CELL_SIZE)
			var fill := WALL_COLOR if game.is_wall(cell) else FLOOR_COLOR
			draw_rect(rect, fill)
			draw_rect(rect, GRID_COLOR, false, 1.0)

	var door_rect := Rect2(
		ROOM_ORIGIN + Vector2(game.door_position) * CELL_SIZE,
		Vector2.ONE * CELL_SIZE
	)
	draw_rect(door_rect.grow(-18.0 if game.door_open else -5.0),
		DOOR_OPEN_COLOR if game.door_open else DOOR_CLOSED_COLOR)

	var hostile_index := 0
	for actor: Actor in game.actors.all():
		if actor.id == &"player":
			draw_circle(_cell_center(actor.position), 14.0, PLAYER_COLOR)
			continue
		hostile_index += 1
		if not actor.is_alive():
			continue
		var center := _cell_center(actor.position)
		draw_circle(center, 14.0, HOSTILE_COLOR)
		draw_string(ThemeDB.fallback_font, center + Vector2(-4, 4), str(hostile_index),
			HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.WHITE)

	var facing_start := _cell_center(game.player_position)
	draw_line(facing_start, facing_start + Vector2(game.facing) * 18.0, FACING_COLOR, 3.0)


func _cell_center(cell: Vector2i) -> Vector2:
	return ROOM_ORIGIN + (Vector2(cell) + Vector2.ONE * 0.5) * CELL_SIZE


func _refresh() -> void:
	if game == null or status_label == null:
		return
	status_label.text = "Scenario: %s | t=%d | Door %s" % [
		current_scenario, game.world_time, "OPEN" if game.door_open else "CLOSED"
	]
	timeline_label.text = game.get_timeline_text()
	message_label.text = game.message
	log_label.text = (
		"Developer trace (F3):\n" + game.get_recent_debug_text()
		if debug_log
		else "Player combat log:\n" + game.get_recent_event_text(detailed_log)
	)

	var lines: Array[String] = []
	for actor: Actor in game.actors.all():
		if actor.id == &"player":
			lines.append("You | HP %d/%d" % [actor.hp, actor.max_hp])
			continue
		lines.append("%s | HP %d/%d | agg %d | fear %d | caution %d/%d | %s" % [
			actor.display_name,
			actor.hp,
			actor.max_hp,
			actor.aggression,
			actor.fear(),
			actor.melee_caution_spent,
			BasicMeleeTactics.MAX_CAUTION_ACTIONS,
			BasicMeleeTactics.POLICY_REVISION,
		])
	actor_state_label.text = "\n".join(lines)
	queue_redraw()
