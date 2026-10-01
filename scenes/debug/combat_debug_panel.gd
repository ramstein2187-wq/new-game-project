class_name CombatDebugPanel
extends VBoxContainer

signal changed
var game: TimeCostGame
var points: Label
var rows: Dictionary = {}
var weapon_selector: OptionButton
var weapon_actions: HBoxContainer
var weapon_ids: Array = []
var body_status: Label

func _ready() -> void:
	add_theme_constant_override("separation", 2)
	points = Label.new()
	add_child(points)
	var abilities_grid := GridContainer.new()
	abilities_grid.columns = 2
	add_child(abilities_grid)
	for ability in AbilityScores.NAMES:
		var row := HBoxContainer.new()
		abilities_grid.add_child(row)
		var minus := _button("-", row)
		minus.name = String(ability) + "Minus"
		minus.pressed.connect(_allocate.bind(ability, -1))
		var label := Label.new()
		label.custom_minimum_size.x = 130
		row.add_child(label)
		rows[ability] = label
		var plus := _button("+", row)
		plus.name = String(ability) + "Plus"
		plus.pressed.connect(_allocate.bind(ability, 1))
	var reset_button := _button("Reset abilities (keeps wounds / HP)", self)
	reset_button.name = "ResetAbilities"
	reset_button.pressed.connect(_reset_scores)
	var weapon_row := HBoxContainer.new()
	add_child(weapon_row)
	var weapon_label := Label.new()
	weapon_label.text = "Test weapon:"
	weapon_row.add_child(weapon_label)
	weapon_selector = OptionButton.new()
	weapon_selector.focus_mode = Control.FOCUS_NONE
	weapon_ids = CombatContentCatalog.all_weapons().keys()
	for id in weapon_ids:
		var weapon := CombatContentCatalog.weapon(id)
		weapon_selector.add_item("%s (%dH)" % [weapon.display_name, weapon.required_hands])
	weapon_row.add_child(weapon_selector)
	weapon_selector.item_selected.connect(_select_weapon)
	weapon_actions = HBoxContainer.new()
	add_child(weapon_actions)
	body_status = Label.new()
	body_status.add_theme_font_size_override("font_size", 14)
	add_child(body_status)
	refresh()

func _button(caption: String, parent: Node) -> Button:
	var button := Button.new()
	button.text = caption
	# Buttons must not swallow subsequent Space/Enter movement/wait input.
	button.focus_mode = Control.FOCUS_NONE
	parent.add_child(button)
	return button

func _allocate(ability: StringName, delta: int) -> void:
	if game != null and game.get_actor(&"player").allocate_ability(ability, delta):
		refresh()
		changed.emit()

func _reset_scores() -> void:
	if game != null:
		game.get_actor(&"player").reset_abilities()
		refresh()
		changed.emit()

func _select_weapon(index: int) -> void:
	if game != null:
		game.get_actor(&"player").set_weapon(CombatContentCatalog.weapon(weapon_ids[index]))
		refresh()
		changed.emit()

func _weapon_action(action_id: StringName) -> void:
	game.player_weapon_action(action_id)
	refresh()
	changed.emit()

func refresh() -> void:
	if game == null or points == null:
		return
	var player := game.get_actor(&"player")
	weapon_selector.select(weapon_ids.find(player.weapon_id))
	for child in weapon_actions.get_children():
		weapon_actions.remove_child(child)
		child.queue_free()
	if player.equipped_weapon != null:
		for action in player.equipped_weapon.actions:
			var sign_prefix := "+" if action.cost_percent >= 0.0 else ""
			var button := _button("%s (%s%d%% time)" % [action.display_name, sign_prefix, roundi(action.cost_percent * 100.0)], weapon_actions)
			button.name = String(action.id)
			# Keep clickable to explain unavailable body/range through game.message.
			button.tooltip_text = "Use on first adjacent living NPC. Bump for basic attack."
			button.pressed.connect(_weapon_action.bind(action.id))
		if player.equipped_weapon.actions.is_empty():
			var label := Label.new()
			label.text = "Basic attack only (bump)"
			weapon_actions.add_child(label)
	var scores: AbilityScores = game.get_actor(&"player").abilities
	points.text = "Test abilities — points: %d / 12" % scores.remaining
	for ability: StringName in rows:
		rows[ability].text = "%s: %d (%+d)" % [ability, scores.scores[ability], scores.get_modifier(ability)]
	var lines: Array[String] = []
	var details: Array[String] = []
	for instance in game.actors.all():
		var actor := instance.id
		var body := instance.body
		var move_cost := MoveAction.new(Vector2i.RIGHT).get_cost(game, actor)
		var diagonal_cost := MoveAction.new(Vector2i(1, 1)).get_cost(game, actor)
		lines.append("%s %d/%d: %s | move %s" % [instance.display_name, instance.hp, instance.max_hp,
			"dead" if not instance.is_alive() else "unavailable" if not game.can_attack(actor) else ("impaired (-2)" if game.attack_efficiency(actor) < 1 else "ready"),
			"%d/%d" % [move_cost, diagonal_cost] if move_cost > 0 else "unavailable"])
		details.append("%s: %s requires %d; functional %d; efficiency %.2f" % [actor,
			instance.attack_capability(), instance.attack_capability_count(), body.functional_count(instance.attack_capability()), game.attack_efficiency(actor)])
		var reason := game.attack_unavailable_reason(actor, &"", true)
		if not reason.is_empty():
			details.append(reason)
		for part: Dictionary in body.parts.values():
			details.append("%s %s: %d/%d (%s)" % [actor, part.name, part.current, part.maximum, body.state(part.id)])
	body_status.text = "\n".join(lines) + "\nMove: straight/diagonal. Hover for body parts."
	body_status.tooltip_text = "\n".join(details)
	body_status.mouse_filter = Control.MOUSE_FILTER_STOP
