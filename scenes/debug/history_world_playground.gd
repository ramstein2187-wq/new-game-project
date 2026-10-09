extends Node2D
## Explicit F6/scene opt-in. F5 and the fixed/generated combat rooms stay intact.
@export var world_seed := 1839602582
@export var save_path := "user://history_world_slice.json"
const CELL := 16.0
var game := HistoryPlayableGame.new()
var character: CharacterScreen
var header: Label
var feedback: Label
var nearby: RichTextLabel
var records: RichTextLabel
var seed_input: LineEdit
var map_canvas: Node2D
var map_clip: Control
var records_visible := false
var developer_visible := false

func _ready() -> void:
	GameText.apply_preference()
	var layer := CanvasLayer.new(); add_child(layer)
	var margin := MarginContainer.new(); layer.add_child(margin)
	margin.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	for edge in ["left", "right", "top", "bottom"]: margin.add_theme_constant_override("margin_" + edge, 12)
	margin.theme = Theme.new(); margin.theme.default_font = GameText.FONT; margin.theme.default_font_size = 15
	var root_box := VBoxContainer.new(); root_box.add_theme_constant_override("separation", 8); margin.add_child(root_box)
	var top := VBoxContainer.new(); root_box.add_child(top)
	header = Label.new(); header.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; top.add_child(header)
	var buttons := HFlowContainer.new(); top.add_child(buttons)
	seed_input = LineEdit.new(); seed_input.text = str(world_seed); seed_input.custom_minimum_size.x = 145; seed_input.tooltip_text = tr("World seed"); buttons.add_child(seed_input)
	_button(buttons, "Generate", _generate)
	_button(buttons, "Save [F5]", func() -> void: game.save_file(save_path); _refresh())
	_button(buttons, "Load [F9]", func() -> void: game.load_file(save_path); _refresh())
	_button(buttons, "Character [C]", func() -> void: character.open())
	_button(buttons, "Learned records [H]", _toggle_records)
	var help := Label.new(); help.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	help.text = "WASD/arrows + numpad: move / bump attack   Space: wait   E: door   G: recover   X: clear   T: travel\nI: inspect   P: repair   U: shelter   V: stabilize (optional record)   O: restitution   F3: developer view"
	top.add_child(help)
	feedback = Label.new(); feedback.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; top.add_child(feedback)
	feedback.add_theme_color_override("font_color", Color("69b7ff"))
	var lower := HBoxContainer.new(); lower.size_flags_vertical = Control.SIZE_EXPAND_FILL; root_box.add_child(lower)
	lower.add_theme_constant_override("separation", 12)
	map_clip = Control.new(); map_clip.size_flags_horizontal = Control.SIZE_EXPAND_FILL; map_clip.size_flags_stretch_ratio = 1.5
	map_clip.clip_contents = true; lower.add_child(map_clip)
	map_canvas = Node2D.new(); map_clip.add_child(map_canvas); map_canvas.draw.connect(_draw_map)
	var side := VBoxContainer.new(); side.size_flags_horizontal = Control.SIZE_EXPAND_FILL; side.size_flags_stretch_ratio = 1.0; lower.add_child(side)
	nearby = RichTextLabel.new(); nearby.size_flags_vertical = Control.SIZE_EXPAND_FILL; nearby.size_flags_stretch_ratio = 1.4; side.add_child(nearby)
	records = RichTextLabel.new(); records.size_flags_vertical = Control.SIZE_EXPAND_FILL; side.add_child(records)
	for pane in [nearby, records]:
		pane.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; pane.scroll_active = true; pane.bbcode_enabled = false
	character = preload("res://scenes/ui/character_screen.tscn").instantiate(); layer.add_child(character); character.game = game
	map_clip.resized.connect(_position_map)
	_generate()

func _button(parent: Node, text: String, action: Callable) -> void:
	var b := Button.new(); b.text = text; b.pressed.connect(action); parent.add_child(b)

func _generate() -> void:
	if not seed_input.text.is_valid_int(): feedback.text = tr("Enter an integer world seed."); return
	world_seed = int(seed_input.text)
	var result := HistoryEngine.new().generate_civilization(world_seed)
	if not result.errors.is_empty(): feedback.text = tr("World generation failed. Try another seed."); return
	game.start(HistoryWorldManifest.build(result)); _refresh()

func _toggle_records() -> void:
	records_visible = not records_visible; _refresh()

func _unhandled_input(event: InputEvent) -> void:
	if character.visible or seed_input.has_focus() or not event is InputEventKey or not event.pressed or event.echo: return
	var directions := {KEY_KP_8: Vector2i.UP, KEY_KP_2: Vector2i.DOWN, KEY_KP_4: Vector2i.LEFT, KEY_KP_6: Vector2i.RIGHT,
		KEY_KP_7: Vector2i(-1, -1), KEY_KP_9: Vector2i(1, -1), KEY_KP_1: Vector2i(-1, 1), KEY_KP_3: Vector2i(1, 1),
		KEY_W: Vector2i.UP, KEY_UP: Vector2i.UP, KEY_S: Vector2i.DOWN, KEY_DOWN: Vector2i.DOWN,
		KEY_A: Vector2i.LEFT, KEY_LEFT: Vector2i.LEFT, KEY_D: Vector2i.RIGHT, KEY_RIGHT: Vector2i.RIGHT}
	var operations := {KEY_E: &"interact", KEY_G: &"recover", KEY_X: &"clear", KEY_T: &"travel", KEY_I: &"inspect",
		KEY_P: &"repair", KEY_U: &"use", KEY_V: &"stabilize", KEY_O: &"offer"}
	var code: int = event.physical_keycode if event.physical_keycode != 0 else event.keycode
	if directions.has(code): game.player_move(directions[code])
	elif operations.has(code): game.player_operation(operations[code])
	elif code in [KEY_SPACE, KEY_ENTER, KEY_KP_5]: game.player_wait()
	elif code == KEY_F5: game.save_file(save_path)
	elif code == KEY_F9: game.load_file(save_path)
	elif code == KEY_H: records_visible = not records_visible
	elif code == KEY_F3: developer_visible = not developer_visible
	else: return
	get_viewport().set_input_as_handled(); _refresh()

func _notification(what: int) -> void:
	if what == NOTIFICATION_TRANSLATION_CHANGED and is_node_ready():
		_refresh()
		if character.visible:
			character.refresh(); character._responsive_layout()

func _refresh() -> void:
	if game.runtime == null: feedback.text = GameText.notice(game); return
	character.game = game
	header.text = GameText.text("{region} · seed {seed} · world time {time}\n{status}", {"region": GameText.locality(game, game.runtime.current_zone), "seed": int(game.initial_world.manifest.seed), "time": game.world_time, "status": GameText.actor_status(game)})
	feedback.text = GameText.notice(game)
	var lines: Array[String] = [tr("Current expedition"), tr("Recover supplies, find a safe shelter, or follow an exit."),
		GameText.text("Carried: {inventory}", {"inventory": GameText.inventory(game)}),
		GameText.text("Unknown objects carried: {count}", {"count": game.runtime.unique_owners.values().count("player")}), tr("Facing target:")]
	var targets := game.objects_at(game.player_position + game.facing)
	for o in targets: lines.append(GameText.describe(game, o))
	if targets.is_empty(): lines.append(tr("None — face an object to act."))
	for o in game.objects_at(game.player_position):
		if o.kind == "exit": lines.append(GameText.text("[T] Travel to {region}", {"region": GameText.locality(game, o.destination)}))
	lines.append(tr("\nLegend: blue = you; red = fauna; orange = hazard\nD = door, X = rubble, M = material, ? = unknown object\nF = facility, i = record, > = exit, s = Scar, W = worksite"))
	nearby.text = "\n".join(lines)
	if developer_visible: records.text = "DEVELOPER: " + str(game.initial_world.selected) + "\n" + game.message + "\n" + game.get_recent_debug_text()
	elif records_visible:
		var learned: Array[String] = [tr("Learned on site (not an omniscient history dossier):")]
		for id in game.runtime.knowledge:
			if game.initial_world.zones[game.runtime.current_zone].objects.has(id): learned.append(GameText.describe(game, game.runtime.object(game.runtime.current_zone, id), true))
		if learned.size() == 1: learned.append(tr("No on-site records learned here yet. Face a physical record and inspect with I."))
		records.text = "\n\n".join(learned)
	else: records.text = tr("Records are optional. Inspect [I] a physical record to learn about this site.") + "\n\n" + GameText.recent_events(game)
	_position_map(); map_canvas.queue_redraw()

func _position_map() -> void:
	if map_canvas == null or game.runtime == null: return
	var scale_factor := clampf(map_clip.size.x / (game.map_width * CELL), 0.5, 1.8)
	map_canvas.scale = Vector2.ONE * scale_factor
	map_canvas.position.y = -maxf(0, game.player_position.y * CELL * scale_factor - map_clip.size.y * 0.6) if game.map_height * CELL * scale_factor > map_clip.size.y else 0

func _draw_map() -> void:
	if game.runtime == null: return
	for y in range(game.map_height):
		for x in range(game.map_width):
			var cell := Vector2i(x, y); var tile: String = game.terrain_rows[y][x]
			var color := Color("6f8f4e")
			if tile == "T": color = Color("284d32")
			elif tile == "R": color = Color("66676b")
			elif tile == "#": color = Color("b79a67")
			map_canvas.draw_rect(Rect2(Vector2(cell) * CELL, Vector2.ONE * CELL), color)
			if game.hazard_at(cell) > 0: map_canvas.draw_rect(Rect2(Vector2(cell) * CELL + Vector2.ONE * 2, Vector2.ONE * 12), Color("d37932"))
	var symbols := {"door": "D", "rubble": "X", "sealed": "!", "resource": "M", "unique": "?", "control": "F", "record": "i", "scar": "s", "worksite": "W", "exit": ">", "route": "X"}
	for id in game.initial_world.zones[game.runtime.current_zone].objects:
		var o := game.runtime.object(game.runtime.current_zone, id)
		if o.get("taken", false) or o.get("removed", false): continue
		if o.kind == "record" and not game.record_present(o): continue
		var center := (Vector2(HistoryWorldRealization.vector(o.cell)) + Vector2.ONE * 0.5) * CELL
		var symbol: String = symbols.get(o.kind, ".")
		if o.kind == "door" and o.open: symbol = "/"
		map_canvas.draw_string(ThemeDB.fallback_font, center + Vector2(-4, 4), symbol, HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.WHITE)
	for a in game.actors.all():
		if not a.is_alive(): continue
		var center := (Vector2(a.position) + Vector2.ONE * 0.5) * CELL
		map_canvas.draw_circle(center, 6, Color("69b7ff") if a.id == &"player" else Color("d36b6b"))
	var player_center := (Vector2(game.player_position) + Vector2.ONE * 0.5) * CELL
	map_canvas.draw_line(player_center, player_center + Vector2(game.facing) * 7, Color.WHITE)
