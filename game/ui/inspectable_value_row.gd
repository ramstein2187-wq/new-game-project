class_name InspectableValueRow
extends Button

signal inspect_requested(key: StringName)

var inspection_key: StringName
var caption: Label
var hint_label: Label
var value_label: Label
var selection_marker: Label
var bracket: Label
var _dense := false

func _init() -> void:
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	custom_minimum_size.y = 40
	var margin := MarginContainer.new()
	margin.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	margin.add_theme_constant_override("margin_left", 10)
	margin.add_theme_constant_override("margin_right", 10)
	margin.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(margin)
	var box := HBoxContainer.new()
	box.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_theme_constant_override("separation", 8)
	margin.add_child(box)
	selection_marker = Label.new()
	selection_marker.text = " "
	selection_marker.custom_minimum_size.x = 8
	selection_marker.add_theme_color_override("font_color", InspectorNumberStyle.RESULT)
	selection_marker.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(selection_marker)
	caption = Label.new()
	caption.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	caption.autowrap_mode = TextServer.AUTOWRAP_OFF
	caption.text_overrun_behavior = TextServer.OVERRUN_TRIM_ELLIPSIS
	caption.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(caption)
	hint_label = Label.new()
	hint_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	hint_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(hint_label)
	value_label = Label.new()
	value_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	value_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	value_label.add_theme_color_override("font_color", InspectorNumberStyle.RESULT)
	value_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(value_label)
	bracket = Label.new()
	bracket.text = "›"
	bracket.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(bracket)
	pressed.connect(func(): inspect_requested.emit(inspection_key))
	# Labels compute wrapped height after their container assigns the width.
	caption.resized.connect(_fit_height)
	hint_label.resized.connect(_fit_height)
	value_label.resized.connect(_fit_height)

func present(key: StringName, label: String, value: String, hint: String, hint_tone: InspectorNumberStyle.Tone, explanation: String) -> void:
	inspection_key = key
	caption.text = label
	caption.visible = not label.is_empty()
	hint_label.text = hint
	hint_label.add_theme_color_override("font_color", InspectorNumberStyle.color_for(hint_tone))
	value_label.text = value
	tooltip_text = explanation + "\n" + tr("Click or press Enter to inspect.")
	_fit_height()

func set_selected(selected: bool) -> void:
	selection_marker.text = "▏" if selected else " "

func set_dense(enabled: bool) -> void:
	_dense = enabled
	flat = enabled
	_fit_height()

func set_column_widths(hint_width: float, value_width: float) -> void:
	hint_label.custom_minimum_size.x = hint_width
	value_label.custom_minimum_size.x = value_width
	_fit_height()

func _fit_height() -> void:
	var base_height := 34.0 if _dense else 40.0
	custom_minimum_size.y = maxf(base_height, maxf(caption.get_minimum_size().y,
		maxf(hint_label.get_minimum_size().y, value_label.get_minimum_size().y)) + (10.0 if _dense else 16.0))
