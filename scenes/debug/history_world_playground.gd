extends Node2D
## Explicit F6/scene opt-in. F5 and the fixed/generated combat rooms stay intact.
@export var world_seed := 1839602582
@export var save_path := "user://m049_exploration_v2.json"
@export var exploration_enabled := true
var art := ExplorationArt.new()
var zoom := 2
var overview := false
var side: VBoxContainer
var help: Label
var last_repeat := 0
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
	game.exploration_enabled = exploration_enabled
	RenderingServer.set_default_clear_color(Color("15252d"))
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
	_button(buttons, "Map [M]", func() -> void: overview = not overview; _refresh())
	_button(buttons, "−", func() -> void: zoom = maxi(1, zoom - 1); overview = false; _refresh())
	_button(buttons, "+", func() -> void: zoom = mini(4, zoom + 1); overview = false; _refresh())
	help = Label.new(); help.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	help.text = "Move: WASD / arrows · Space wait · E door · G gather · X clear · T travel · U use · P repair\nI inspect · V stabilize · O restitution · C character · H records · M map · +/− zoom · F3 details"
	top.add_child(help)
	feedback = Label.new(); feedback.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; top.add_child(feedback)
	feedback.add_theme_color_override("font_color", Color("69b7ff"))
	var lower := HBoxContainer.new(); lower.size_flags_vertical = Control.SIZE_EXPAND_FILL; root_box.add_child(lower)
	lower.add_theme_constant_override("separation", 12)
	map_clip = Control.new(); map_clip.size_flags_horizontal = Control.SIZE_EXPAND_FILL; map_clip.size_flags_stretch_ratio = 1.5
	map_clip.clip_contents = true; lower.add_child(map_clip)
	map_canvas = Node2D.new(); map_canvas.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST; map_clip.add_child(map_canvas); map_canvas.draw.connect(_draw_map)
	side = VBoxContainer.new(); side.size_flags_horizontal = Control.SIZE_EXPAND_FILL; side.size_flags_stretch_ratio = 0.65; lower.add_child(side)
	nearby = RichTextLabel.new(); nearby.size_flags_vertical = Control.SIZE_EXPAND_FILL; nearby.size_flags_stretch_ratio = 1.4; side.add_child(nearby)
	records = RichTextLabel.new(); records.size_flags_vertical = Control.SIZE_EXPAND_FILL; side.add_child(records)
	for pane in [nearby, records]:
		pane.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART; pane.scroll_active = true; pane.bbcode_enabled = false
	character = preload("res://scenes/ui/character_screen.tscn").instantiate(); layer.add_child(character); character.game = game
	map_clip.resized.connect(_position_map)
	map_clip.gui_input.connect(_map_input)
	_generate()

func _button(parent: Node, text: String, action: Callable) -> void:
	var b := Button.new(); b.text = text; b.pressed.connect(action); parent.add_child(b)

func _generate() -> void:
	if not seed_input.text.is_valid_int(): feedback.text = tr("Enter an integer world seed."); return
	world_seed = int(seed_input.text)
	var result := HistoryEngine.new().generate_civilization(world_seed)
	if not result.errors.is_empty(): feedback.text = tr("World generation failed. Try another seed."); return
	game.exploration_enabled = exploration_enabled
	game.start(HistoryWorldManifest.build(result)); _refresh()

func _toggle_records() -> void:
	records_visible = not records_visible; _refresh()

func _unhandled_input(event: InputEvent) -> void:
	if character.visible or seed_input.has_focus() or not event is InputEventKey or not event.pressed: return
	var directions := {KEY_KP_8: Vector2i.UP, KEY_KP_2: Vector2i.DOWN, KEY_KP_4: Vector2i.LEFT, KEY_KP_6: Vector2i.RIGHT,
		KEY_KP_7: Vector2i(-1, -1), KEY_KP_9: Vector2i(1, -1), KEY_KP_1: Vector2i(-1, 1), KEY_KP_3: Vector2i(1, 1),
		KEY_W: Vector2i.UP, KEY_UP: Vector2i.UP, KEY_S: Vector2i.DOWN, KEY_DOWN: Vector2i.DOWN,
		KEY_A: Vector2i.LEFT, KEY_LEFT: Vector2i.LEFT, KEY_D: Vector2i.RIGHT, KEY_RIGHT: Vector2i.RIGHT}
	var operations := {KEY_E: &"interact", KEY_G: &"recover", KEY_X: &"clear", KEY_T: &"travel", KEY_I: &"inspect",
		KEY_P: &"repair", KEY_U: &"use", KEY_V: &"stabilize", KEY_O: &"offer"}
	var code: int = event.physical_keycode if event.physical_keycode != 0 else event.keycode
	if event.echo:
		if not directions.has(code) or Time.get_ticks_msec() - last_repeat < 110: return
	last_repeat = Time.get_ticks_msec()
	if directions.has(code): overview = false; game.player_move(directions[code])
	elif operations.has(code): game.player_operation(operations[code])
	elif code in [KEY_SPACE, KEY_ENTER, KEY_KP_5]: game.player_wait()
	elif code == KEY_F5: game.save_file(save_path)
	elif code == KEY_F9: game.load_file(save_path)
	elif code == KEY_M: overview = not overview
	elif code in [KEY_EQUAL, KEY_KP_ADD]: zoom = mini(4, zoom + 1); overview = false
	elif code in [KEY_MINUS, KEY_KP_SUBTRACT]: zoom = maxi(1, zoom - 1); overview = false
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
	header.text = GameText.text("{region} · seed {seed} · world time {time}\n{status}", {"region": GameText.locality(game, game.runtime.current_zone), "seed": int(game.initial_world.manifest.seed), "time": game.world_time, "status": GameText.actor_status(game) if game.runtime.exploration.is_empty() else GameText.text("You · HP {hp}/{max} · {weapon}", {"hp": game.player_hp, "max": game.PLAYER_MAX_HP, "weapon": GameText.term(game.get_actor(&"player").equipped_weapon.display_name)})})
	feedback.text = GameText.notice(game)
	var lines: Array[String] = [tr("Current expedition"), tr("Recover supplies, find a safe shelter, or follow an exit."),
		GameText.text("Carried: {inventory}", {"inventory": GameText.inventory(game)}),
		GameText.text("Unknown objects carried: {count}", {"count": game.runtime.unique_owners.values().count("player")}), tr("Facing target:")]
	var targets := game.objects_at(game.player_position + game.facing)
	for o in targets:
		lines.insert(1, GameText.describe(game, o) + "\n" + ExplorationText.hint(o))
	if targets.is_empty(): lines.append(tr("None — face an object to act."))
	for o in game.objects_at(game.player_position):
		if o.kind == "exit": lines.append(GameText.text("[T] Travel to {region}", {"region": GameText.locality(game, o.destination)}))
	if not game.runtime.exploration.is_empty():
		lines.append(ExplorationText.objectives(game))
		lines.remove_at(lines.find(tr("Recover supplies, find a safe shelter, or follow an exit.")))
		lines.append(tr("Cyan underline: unowned opportunity · Amber: managed property\nRed feet: creature · Orange triangle: damaging ground\nTrees, walls, water and solid props block movement."))
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
	var factor := float(zoom)
	if overview: factor = minf(map_clip.size.x / (game.map_width * CELL), map_clip.size.y / (game.map_height * CELL))
	map_canvas.scale = Vector2.ONE * factor
	var extent := Vector2(game.map_width, game.map_height) * CELL * factor
	var center := (Vector2(game.player_position) + Vector2.ONE * 0.5) * CELL * factor
	var offset := map_clip.size * 0.5 - center
	for axis in range(2):
		offset[axis] = (map_clip.size[axis] - extent[axis]) * 0.5 if extent[axis] < map_clip.size[axis] else clampf(offset[axis], map_clip.size[axis] - extent[axis], 0)
	map_canvas.position = offset.round()
	map_canvas.queue_redraw()

func _draw_map() -> void:
	if game.runtime == null: return
	var visible := Rect2(-map_canvas.position / map_canvas.scale, map_clip.size / map_canvas.scale).grow(16)
	art.draw(map_canvas, game, visible)
	if overview:
		var center := (Vector2(game.player_position) + Vector2.ONE * 0.5) * CELL
		map_canvas.draw_circle(center, 7 / map_canvas.scale.x, Color("79d6c1"), false, 2 / map_canvas.scale.x)
		for l in game.initial_world.zones[game.runtime.current_zone].get("landmarks", []):
			var point := Vector2(HistoryWorldRealization.vector(l.cell)) * CELL
			map_canvas.draw_circle(point, 3 / map_canvas.scale.x, Color("e7a252"))

func _map_input(event: InputEvent) -> void:
	if character.visible or not event is InputEventMouseButton or not event.pressed: return
	if event.button_index == MOUSE_BUTTON_WHEEL_UP: zoom = mini(4, zoom + 1); overview = false
	elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN: zoom = maxi(1, zoom - 1); overview = false
	elif event.button_index == MOUSE_BUTTON_LEFT and not overview:
		var cell := Vector2i(((event.position - map_canvas.position) / map_canvas.scale / CELL).floor())
		var delta := cell - game.player_position
		if delta.length_squared() == 1: game.facing = delta
	_refresh()
