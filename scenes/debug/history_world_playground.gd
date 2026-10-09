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
	var layer := CanvasLayer.new(); add_child(layer)
	var top := VBoxContainer.new(); top.position = Vector2(16, 10); top.size = Vector2(1100, 160); layer.add_child(top)
	header = Label.new(); top.add_child(header)
	var buttons := HBoxContainer.new(); top.add_child(buttons)
	seed_input = LineEdit.new(); seed_input.text = str(world_seed); seed_input.custom_minimum_size.x = 180; buttons.add_child(seed_input)
	_button(buttons, "Generate", _generate)
	_button(buttons, "Save [F5]", func() -> void: game.save_file(save_path); _refresh())
	_button(buttons, "Load [F9]", func() -> void: game.load_file(save_path); _refresh())
	_button(buttons, "Character [C]", func() -> void: character.open())
	_button(buttons, "Learned records [H]", _toggle_records)
	var help := Label.new(); help.text = "WASD/arrows + numpad: move / bump attack   Space: wait   E: door   G: recover   X: clear   T: travel\nI: inspect   P: repair   U: shelter   V: stabilize (optional record)   O: restitution   F3: developer view"; top.add_child(help)
	feedback = Label.new(); feedback.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; feedback.custom_minimum_size = Vector2(1100, 54); top.add_child(feedback)
	map_clip = Control.new(); map_clip.position = Vector2(16, 180); map_clip.size = Vector2(640, 432); map_clip.clip_contents = true; layer.add_child(map_clip)
	map_canvas = Node2D.new(); map_clip.add_child(map_canvas); map_canvas.draw.connect(_draw_map)
	var side := VBoxContainer.new(); side.position = Vector2(676, 180); side.size = Vector2(444, 432); layer.add_child(side)
	nearby = RichTextLabel.new(); nearby.custom_minimum_size = Vector2(440, 245); side.add_child(nearby)
	records = RichTextLabel.new(); records.custom_minimum_size = Vector2(440, 165); side.add_child(records)
	character = preload("res://scenes/ui/character_screen.tscn").instantiate(); layer.add_child(character); character.game = game
	_generate()

func _button(parent: Node, text: String, action: Callable) -> void:
	var b := Button.new(); b.text = text; b.pressed.connect(action); parent.add_child(b)

func _generate() -> void:
	if not seed_input.text.is_valid_int(): feedback.text = "Enter an integer world seed."; return
	world_seed = int(seed_input.text)
	var result := HistoryEngine.new().generate_civilization(world_seed)
	if not result.errors.is_empty(): feedback.text = str(result.errors); return
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
	if directions.has(event.keycode): game.player_move(directions[event.keycode])
	elif operations.has(event.keycode): game.player_operation(operations[event.keycode])
	elif event.keycode in [KEY_SPACE, KEY_ENTER, KEY_KP_5]: game.player_wait()
	elif event.keycode == KEY_F5: game.save_file(save_path)
	elif event.keycode == KEY_F9: game.load_file(save_path)
	elif event.keycode == KEY_H: records_visible = not records_visible
	elif event.keycode == KEY_F3: developer_visible = not developer_visible
	else: return
	get_viewport().set_input_as_handled(); _refresh()

func _refresh() -> void:
	if game.runtime == null: feedback.text = game.message; return
	character.game = game
	header.text = "Locality %s | seed %d | world time %d | %s" % [game.runtime.current_zone, game.initial_world.manifest.seed, game.world_time, game.get_actor_status_text()]
	feedback.text = game.message
	var lines: Array[String] = ["Current expedition", "Recover supplies, find a safe shelter, or follow an exit.",
		"Carried: " + str(game.runtime.inventory), "Unknown objects carried: " + str(game.runtime.unique_owners.values().count("player")),
		"Facing target:"]
	var targets := game.objects_at(game.player_position + game.facing)
	for o in targets: lines.append(game.describe(o))
	if targets.is_empty(): lines.append("None — face an object to act.")
	for o in game.objects_at(game.player_position):
		if o.kind == "exit": lines.append("[T] Travel to " + o.destination)
	lines.append("\nLegend: blue = you; red = fauna; orange = hazard\nD = door, X = rubble, M = material, ? = unknown object\nF = facility, i = record, > = exit, s = Scar")
	nearby.text = "\n".join(lines)
	if developer_visible: records.text = "DEVELOPER: " + str(game.initial_world.selected) + "\n" + game.get_recent_debug_text()
	elif records_visible:
		var learned: Array[String] = ["Learned on site (not an omniscient history dossier):"]
		for id in game.runtime.knowledge:
			if game.initial_world.zones[game.runtime.current_zone].objects.has(id): learned.append(game.describe(game.runtime.object(game.runtime.current_zone, id), true))
		records.text = "\n".join(learned)
	else: records.text = "Records are optional. Inspect [I] a physical record to learn about this site.\n\n" + game.get_recent_event_text()
	map_canvas.position.y = -maxf(0, game.player_position.y * CELL - 320) if game.map_height * CELL > map_clip.size.y else 0
	map_canvas.queue_redraw()

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
