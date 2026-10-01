extends SceneTree

var failures := 0
var assertions := 0

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	call_deferred("_run")

func _run() -> void:
	root.size = Vector2i(1152, 648)
	root.content_scale_size = Vector2i(1152, 648)
	root.content_scale_aspect = Window.CONTENT_SCALE_ASPECT_IGNORE
	for scene_path in ["res://scenes/debug/time_cost_test_room.tscn", "res://scenes/debug/generated_map_combat_playground.tscn"]:
		var scene: Node = load(scene_path).instantiate()
		root.add_child(scene)
		await process_frame
		var game: TimeCostGame = scene.game
		var screen: CharacterScreen = scene.character_screen
		expect(not screen.visible, "Screen starts closed")
		var before := _state(game)
		_press(KEY_C)
		await process_frame
		await process_frame
		await process_frame
		expect(screen.visible, "Mapped C opens screen in " + scene_path)
		expect(screen.rows.size() == 13, "Six attributes and seven Overview rows, no extra stats")
		expect(not screen.inspector_panel.visible, "Inspector starts closed so Overview uses the available width")
		expect(screen.rows.health.value_label.text == "%d / %d" % [game.player_hp, game.PLAYER_MAX_HP], "Real runtime HP shown")
		var expected_attribute_names := {&"STR": "STRENGTH", &"DEX": "DEXTERITY", &"CON": "CONSTITUTION",
			&"PER": "PERCEPTION", &"INT": "INTELLIGENCE", &"WIL": "WILLPOWER"}
		for stat: StringName in AbilityScores.NAMES:
			expect(screen.rows[stat].caption.text == expected_attribute_names[stat], "Primary attribute uses project-defined full name: " + String(stat))
			expect(screen.rows[stat].hint_label.text == "%+d" % game.get_actor(&"player").abilities.get_modifier(stat), "Ability modifier is a separate hint: " + String(stat))
		var closed_overview_width := screen.overview_region.size.x
		_click(screen.rows.armor.get_global_rect().get_center())
		await process_frame
		await process_frame
		expect(screen.inspector_panel.visible and screen.overview_region.size.x < closed_overview_width, "Selecting a row opens Inspector and yields Overview width")
		expect(screen.inspector.title_label.text == "AVERAGE ARMOR", "Mouse selects armor Inspector")
		expect(screen.rows.armor.selection_marker.text.strip_edges() != "", "Inspected row has a quiet selection marker")
		_click(screen.inspector.close_button.get_global_rect().get_center())
		await process_frame
		await process_frame
		expect(not screen.inspector_panel.visible and screen.overview_region.size.x >= closed_overview_width - 1.0, "Closing Inspector returns width to Overview")
		expect(screen.rows.armor.selection_marker.text.strip_edges().is_empty(), "Closing Inspector clears row selection")
		_click(screen.rows.armor.get_global_rect().get_center())
		await process_frame
		expect(screen.inspector.title_label.text == "AVERAGE ARMOR", "Inspector can reopen after returning to full Overview")
		for key: StringName in screen.rows:
			var row: InspectableValueRow = screen.rows[key]
			expect(not row.tooltip_text.is_empty() and row.mouse_default_cursor_shape == Control.CURSOR_POINTING_HAND, "Hover explanation and pointer: " + String(key))
			row.grab_focus()
			_press(KEY_ENTER)
			await process_frame
			expect(not screen.inspector.body_label.get_parsed_text().is_empty(), "Keyboard activation opens Inspector: " + String(key))
		screen.rows.damage.grab_focus()
		for key in [KEY_RIGHT, KEY_UP, KEY_W, KEY_D, KEY_KP_6, KEY_SPACE, KEY_R, KEY_L, KEY_F3, KEY_E]:
			_press(key)
		expect(screen.visible and _state(game) == before, "Modal blocks movement, wait, reset, debug and interaction with no time/RNG/events")
		var underlying_plus: Button = scene.combat_panel.find_child("STRPlus", true, false)
		_click(underlying_plus.get_global_rect().get_center())
		await process_frame
		expect(_state(game) == before, "Modal mouse surface blocks underlying debug stat edits")
		for resolution in [Vector2i(1920, 1080), Vector2i(2560, 1440), Vector2i(3840, 2160), Vector2i(1152, 648), Vector2i(640, 480)]:
			root.size = resolution
			# Dummy headless display ignores physical window resize. Set logical
			# canvas size too, exercising real Control/Container geometry.
			root.content_scale_size = resolution
			root.content_scale_aspect = Window.CONTENT_SCALE_ASPECT_IGNORE
			await process_frame
			await process_frame
			expect(is_equal_approx(screen.size.x, resolution.x) and is_equal_approx(screen.size.y, resolution.y), "Full viewport anchors at " + str(resolution))
			var bounds := screen.get_global_rect()
			for panel: Control in screen.content.get_children():
				var rect := panel.get_global_rect()
				expect(rect.position.x >= bounds.position.x and rect.end.x <= bounds.end.x + 1, "No horizontal overflow at " + str(resolution))
			var previous_bottom := -INF
			for key in [&"attack", &"damage", &"penetration"]:
				var rect: Rect2 = screen.rows[key].get_global_rect()
				expect(rect.position.y >= previous_bottom, "Rows do not overlap at " + str(resolution))
				previous_bottom = rect.end.y
			if resolution.x >= 1152:
				expect(not screen.content.vertical and not screen.overview_region.vertical, "Wide layout retains Overview/Inspector split")
			else:
				expect(screen.content.vertical and screen.overview_region.vertical, "Small window stacks Overview and Inspector content")
		root.size = Vector2i(1152, 648)
		root.content_scale_size = Vector2i(1152, 648)
		await process_frame
		_press(KEY_ESCAPE)
		expect(not screen.visible and _state(game) == before, "Escape closes without gameplay mutation")
		var actor := game.get_actor(&"player")
		actor.hp -= 7
		actor.abilities.scores[&"PER"] = 15
		actor.set_weapon(CombatContentCatalog.weapon(&"knife"))
		_press(KEY_C)
		expect(screen.rows.health.value_label.text.begins_with(str(actor.hp)), "Reopen reads changed HP")
		expect(screen.rows[&"PER"].value_label.text == "15" and screen.rows[&"PER"].hint_label.text == "+2", "Reopen separates changed attribute final value and modifier hint")
		expect(screen.rows.attack.value_label.text == actor.equipped_weapon.display_name, "Reopen reads changed weapon")
		_press(KEY_C)
		expect(not screen.visible, "C toggles close")
		_press(KEY_R)
		expect(scene.game.world_time == 0, "Normal reset still works after close")
		_press(KEY_C)
		expect(screen.game == scene.game and screen.rows.health.value_label.text.begins_with(str(scene.game.player_hp)), "Regeneration/reset uses new runtime state")
		_press(KEY_ESCAPE)
		_press(KEY_ENTER)
		expect(scene.game.world_time > 0, "Normal gameplay wait resumes after close")
		scene.queue_free()
		await process_frame
	print("%s: Character Screen input, Inspector and layouts (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _state(game: TimeCostGame) -> String:
	return var_to_str([game.combat_rng.state, game.world_time, game.player_position, game.player_hp,
		game.player_next_ready_time, game.combat_log.events.size(), game.get_actor(&"player").abilities.scores])

func _press(key: Key) -> void:
	var event := InputEventKey.new()
	event.keycode = key
	event.physical_keycode = key
	event.pressed = true
	root.push_input(event)
	event = event.duplicate()
	event.pressed = false
	root.push_input(event)

func _click(position: Vector2) -> void:
	var motion := InputEventMouseMotion.new()
	motion.position = position
	root.push_input(motion, true)
	var event := InputEventMouseButton.new()
	event.position = position
	event.button_index = MOUSE_BUTTON_LEFT
	event.pressed = true
	root.push_input(event, true)
	event = event.duplicate()
	event.pressed = false
	root.push_input(event, true)
