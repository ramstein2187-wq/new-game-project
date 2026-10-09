class_name CharacterScreen
extends Control

var game: TimeCostGame
var actor_id: StringName = &"player"
var inspector: CharacterInspector
var rows: Dictionary = {}
var identity_name: Label
var identity_type: Label
var content: BoxContainer
var overview_region: BoxContainer
var identity_panel: PanelContainer
var inspector_panel: PanelContainer
var margin: MarginContainer
var _selected_key: StringName = &""
var _close_button: Button
var _compact_attribute_names := false
var _scroll: ScrollContainer

func _ready() -> void:
	set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	mouse_filter = Control.MOUSE_FILTER_STOP
	_build_theme()
	var background := Panel.new()
	background.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	background.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(background)
	margin = MarginContainer.new()
	margin.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	add_child(margin)
	var root_box := VBoxContainer.new()
	root_box.add_theme_constant_override("separation", 16)
	margin.add_child(root_box)
	var header := HBoxContainer.new()
	root_box.add_child(header)
	var title := _label("CHARACTER")
	title.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	header.add_child(title)
	_close_button = Button.new()
	_close_button.text = "[Esc] Close"
	_close_button.pressed.connect(close)
	header.add_child(_close_button)
	var tabs := HBoxContainer.new()
	root_box.add_child(tabs)
	for tab_name in ["Overview", "Body", "Equipment", "Abilities", "Traits"]:
		var tab := Button.new()
		tab.text = tab_name
		tab.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		tab.disabled = tab_name != "Overview"
		tab.tooltip_text = tr("Future tab") if tab.disabled else tr("Current tab")
		tabs.add_child(tab)
	var scroll := ScrollContainer.new()
	_scroll = scroll
	scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	root_box.add_child(scroll)
	content = BoxContainer.new()
	content.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content.size_flags_vertical = Control.SIZE_EXPAND_FILL
	content.add_theme_constant_override("separation", 16)
	scroll.add_child(content)
	overview_region = BoxContainer.new()
	overview_region.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	overview_region.size_flags_vertical = Control.SIZE_EXPAND_FILL
	overview_region.size_flags_stretch_ratio = 1.7
	overview_region.add_theme_constant_override("separation", 16)
	content.add_child(overview_region)
	identity_panel = _panel()
	identity_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	identity_panel.size_flags_stretch_ratio = 0.85
	overview_region.add_child(identity_panel)
	var identity := _box(identity_panel)
	identity.add_child(_label("IDENTITY"))
	identity_name = _label("")
	identity.add_child(identity_name)
	identity_type = _label("")
	identity.add_child(identity_type)
	identity.add_child(HSeparator.new())
	identity.add_child(_label("ATTRIBUTES"))
	for stat in AbilityScores.NAMES:
		_row(identity, stat, true)
	var overview_panel := _panel()
	overview_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	overview_panel.size_flags_stretch_ratio = 1.15
	overview_region.add_child(overview_panel)
	var overview := _box(overview_panel)
	for group in [
		["HEALTH", [&"health"]], ["COMBAT", [&"attack", &"damage", &"penetration"]],
		["DEFENSE", [&"armor"]], ["MOVEMENT", [&"move"]], ["CURRENT STATE", [&"state"]]]:
		overview.add_child(_label(group[0]))
		for key: StringName in group[1]:
			_row(overview, key)
		overview.add_child(HSeparator.new())
	inspector_panel = _panel()
	inspector_panel.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	inspector_panel.size_flags_vertical = Control.SIZE_EXPAND_FILL
	inspector_panel.size_flags_stretch_ratio = 1.0
	content.add_child(inspector_panel)
	inspector = CharacterInspector.new()
	_box(inspector_panel).add_child(inspector)
	inspector.size_flags_vertical = Control.SIZE_EXPAND_FILL
	inspector.close_requested.connect(close_inspector)
	inspector_panel.hide()
	root_box.add_child(_label("›  Hover for a quick explanation · Select for sources · C / Esc to close"))
	resized.connect(_responsive_layout)
	_responsive_layout()
	hide()

func open() -> void:
	if game == null or game.get_actor(actor_id) == null:
		return
	_selected_key = &""
	inspector_panel.hide()
	refresh()
	_responsive_layout()
	show()
	_close_button.grab_focus()

func close() -> void:
	var focused := get_viewport().gui_get_focus_owner()
	if focused != null and is_ancestor_of(focused):
		focused.release_focus()
	hide()

# Every open/selection/host refresh reads current authoritative state anew.
func refresh() -> void:
	if game == null or inspector == null:
		return
	var model := CharacterOverviewQuery.read(game, actor_id)
	if model.is_empty():
		close()
		return
	identity_name.text = LocalizedCharacterText.label(model.name)
	identity_type.text = LocalizedCharacterText.label(model.type) if model.type != model.name else ""
	for attribute: Dictionary in model.attributes:
		var hint := "%+d" % int(attribute.modifier)
		rows[attribute.id].present(attribute.id, _attribute_label(attribute.id),
			CharacterOverviewText.number(attribute.value), hint,
			InspectorNumberStyle.modifier_tone(float(attribute.modifier)),
			tr("Current resolved attribute and its D20 ability modifier. Click for sources."))
	rows.health.present(&"health", tr("HP"), "%d / %d" % [model.hp, model.max_hp], "", InspectorNumberStyle.Tone.NEUTRAL,
		tr("Current and maximum health."))
	var attack: Dictionary = model.attack
	var hover := LocalizedCharacterText.attack_hover(attack)
	rows.attack.present(&"attack", tr("Main Attack"), LocalizedCharacterText.label(attack.name) if attack.get("valid", false) else tr("Unavailable"), "", InspectorNumberStyle.Tone.NEUTRAL, hover)
	rows.damage.present(&"damage", tr("Damage"), CharacterOverviewText.damage(attack) if attack.get("valid", false) else tr("Unavailable"), "", InspectorNumberStyle.Tone.NEUTRAL, hover)
	rows.penetration.present(&"penetration", tr("Penetration"), CharacterOverviewText.number(attack.penetration) if attack.get("valid", false) else "—", "", InspectorNumberStyle.Tone.NEUTRAL, hover)
	rows.armor.present(&"armor", tr("Average Armor"), "%.1f" % model.armor.value, "", InspectorNumberStyle.Tone.NEUTRAL,
		tr("Raw armor weighted by part hit probability.\n") + (GameText.text("Select for per-part details.") if LocalizedCharacterText.korean() else CharacterOverviewText.armor_lines(model.armor, false)))
	rows.move.present(&"move", tr("Move Time"), "%d μt" % model.move.cost if model.move.valid else tr("Unavailable"), "", InspectorNumberStyle.Tone.NEUTRAL,
		tr("Time for a standard cardinal move. Includes movement speed, body efficiency and Effects."))
	var state_summary := tr("Healthy") if model.states.is_empty() else GameText.text("Conditions: {count}", {"count": model.states.size()})
	rows.state.present(&"state", tr("Status"), state_summary, "", InspectorNumberStyle.Tone.NEUTRAL,
		tr("Current body integrity and active Effects. Select for details."))
	for key: StringName in rows:
		rows[key].set_selected(inspector_panel.visible and key == _selected_key)
	if inspector_panel.visible and _selected_key != &"":
		inspector.show_inspection(LocalizedCharacterText.inspection(model, _selected_key))

func inspect(key: StringName) -> void:
	_selected_key = key
	inspector_panel.show()
	refresh()
	_responsive_layout()
	if LocalizedCharacterText.korean() and content.vertical: _reveal_inspector()

func _reveal_inspector() -> void:
	await get_tree().process_frame
	if inspector_panel.visible and content.vertical: _scroll.ensure_control_visible(inspector_panel)

func close_inspector() -> void:
	var previous_key := _selected_key
	_selected_key = &""
	inspector_panel.hide()
	for row: InspectableValueRow in rows.values():
		row.set_selected(false)
	_responsive_layout()
	if rows.has(previous_key):
		rows[previous_key].grab_focus()

# _input runs before gameplay _unhandled_input. All open-screen keys are consumed,
# including reset and log toggles; GUI still receives navigation/activation keys.
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("character_screen") and not event.is_echo():
		if visible:
			close()
		else:
			open()
		get_viewport().set_input_as_handled()
	elif visible and event.is_action_pressed("ui_cancel"):
		close()
		get_viewport().set_input_as_handled()
	elif visible and event is InputEventKey:
		var gui_key: bool = event.keycode in [KEY_TAB, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT, KEY_SPACE, KEY_ENTER, KEY_KP_ENTER]
		if not gui_key:
			get_viewport().set_input_as_handled()

func _row(parent: Node, key: StringName, dense: bool = false) -> void:
	var row := InspectableValueRow.new()
	row.name = String(key)
	row.set_dense(dense)
	parent.add_child(row)
	rows[key] = row
	row.inspect_requested.connect(inspect)

func _attribute_label(stat: StringName) -> String:
	return GameText.term(stat) if LocalizedCharacterText.korean() else (String(stat) if _compact_attribute_names else CharacterOverviewText.ATTRIBUTE_NAMES[stat])

func _label(value: String) -> Label:
	var label := Label.new()
	label.text = value
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	return label

func _panel() -> PanelContainer:
	return PanelContainer.new()

func _box(parent: Node) -> VBoxContainer:
	var box := VBoxContainer.new()
	box.add_theme_constant_override("separation", 12)
	parent.add_child(box)
	return box

func _responsive_layout() -> void:
	if content == null:
		return
	var scale_factor := clampf(size.y / 1080.0, 0.8, 2.0)
	theme.default_font_size = roundi(18 * scale_factor)
	var narrow := size.x < (1000.0 if LocalizedCharacterText.korean() else 940 * scale_factor)
	_compact_attribute_names = size.x < 1280 * scale_factor
	content.vertical = narrow
	overview_region.vertical = narrow
	identity_panel.custom_minimum_size.x = 0 if narrow else 320 * scale_factor
	inspector_panel.custom_minimum_size.x = 0 if narrow else 360 * scale_factor
	inspector.scroll.custom_minimum_size.y = 300 * scale_factor
	for edge in ["left", "top", "right", "bottom"]:
		margin.add_theme_constant_override("margin_" + edge, roundi(20 * scale_factor))
	for key: StringName in rows:
		var row: InspectableValueRow = rows[key]
		if AbilityScores.NAMES.has(key):
			row.caption.text = _attribute_label(key)
			row.set_column_widths(44 * scale_factor, 56 * scale_factor)
		else:
			row.set_column_widths(56 * scale_factor, 112 * scale_factor)

func _build_theme() -> void:
	# Existing combat prototypes use fallback font and these muted game colors.
	theme = Theme.new()
	theme.default_font = GameText.FONT
	theme.set_color("font_color", "Label", Color("#d7e7f5"))
	theme.set_color("font_color", "Button", Color("#d7e7f5"))
	theme.set_stylebox("panel", "Panel", _style("#171d24", "#59636f", 0))
	theme.set_stylebox("panel", "PanelContainer", _style("#252b33", "#59636f", 16))
	theme.set_stylebox("normal", "Button", _style("#252b33", "#3a424d", 6))
	theme.set_stylebox("hover", "Button", _style("#3a424d", "#d7e7f5", 6))
	theme.set_stylebox("pressed", "Button", _style("#171d24", "#69b7ff", 6))
	theme.set_stylebox("focus", "Button", _style("#252b3300", "#d7e7f5", 0))
	theme.set_stylebox("disabled", "Button", _style("#171d24", "#3a424d", 6))

func _style(fill: String, border: String, padding: int) -> StyleBoxFlat:
	var style := StyleBoxFlat.new()
	style.bg_color = Color(fill)
	style.border_color = Color(border)
	style.set_border_width_all(1)
	style.set_content_margin_all(padding)
	return style
