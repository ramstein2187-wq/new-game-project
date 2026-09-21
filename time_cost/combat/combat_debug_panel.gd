class_name CombatDebugPanel
extends VBoxContainer

signal changed
var game: TimeCostGame
var points: Label
var rows: Dictionary = {}
var body_status: Label

func _ready() -> void:
	add_theme_constant_override("separation", 2)
	points = Label.new()
	add_child(points)
	for ability in AbilityScores.NAMES:
		var row := HBoxContainer.new()
		add_child(row)
		var minus := _button("-", row)
		minus.name = String(ability) + "Minus"
		minus.pressed.connect(_allocate.bind(ability, -1))
		var label := Label.new()
		label.custom_minimum_size.x = 170
		row.add_child(label)
		rows[ability] = label
		var plus := _button("+", row)
		plus.name = String(ability) + "Plus"
		plus.pressed.connect(_allocate.bind(ability, 1))
	var reset_button := _button("Reset abilities (keeps wounds / HP)", self)
	reset_button.name = "ResetAbilities"
	reset_button.pressed.connect(_reset_scores)
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
	if game != null and game.abilities[&"player"].allocate(ability, delta):
		refresh()
		changed.emit()

func _reset_scores() -> void:
	if game != null:
		game.abilities[&"player"].reset()
		refresh()
		changed.emit()

func refresh() -> void:
	if game == null or points == null:
		return
	var scores: AbilityScores = game.abilities[&"player"]
	points.text = "Test abilities — points: %d / 12" % scores.remaining
	for ability: StringName in rows:
		rows[ability].text = "%s: %d (%+d)" % [ability, scores.scores[ability], scores.get_modifier(ability)]
	var lines: Array[String] = []
	var details: Array[String] = []
	for actor: StringName in [&"player", &"rat"]:
		var body: BodyInstance = game.bodies[actor]
		var move_cost := MoveAction.new(Vector2i.RIGHT).get_cost(game, actor)
		lines.append("%s: attack %s | move %s" % [actor,
			"unavailable" if not game.can_attack(actor) else ("impaired (-2)" if body.efficiency(body.attack_part) < 1 else "ready"),
			str(move_cost) if move_cost > 0 else "unavailable"])
		for part: Dictionary in body.parts.values():
			details.append("%s %s: %d/%d (%s)" % [actor, part.name, part.current, part.maximum, body.state(part.id)])
	body_status.text = "\n".join(lines) + "\nHover here for all body parts."
	body_status.tooltip_text = "\n".join(details)
	body_status.mouse_filter = Control.MOUSE_FILTER_STOP
