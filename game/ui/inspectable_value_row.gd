class_name InspectableValueRow
extends Button

signal inspect_requested(key: StringName)
var inspection_key: StringName
var caption: Label
var value_label: Label
var bracket: Label

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
	margin.add_child(box)
	caption = Label.new()
	caption.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	caption.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	caption.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(caption)
	value_label = Label.new()
	value_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	value_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	value_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	value_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(value_label)
	bracket = Label.new()
	bracket.text = "›"
	bracket.mouse_filter = Control.MOUSE_FILTER_IGNORE
	box.add_child(bracket)
	pressed.connect(func(): inspect_requested.emit(inspection_key))
	# Labels compute wrapped height after their container assigns the width.
	caption.resized.connect(_fit_height)
	value_label.resized.connect(_fit_height)

func present(key: StringName, label: String, value: String, explanation: String) -> void:
	inspection_key = key
	caption.text = label
	caption.visible = not label.is_empty()
	value_label.text = value
	tooltip_text = explanation + "\nClick or press Enter to inspect."
	_fit_height()

func _fit_height() -> void:
	custom_minimum_size.y = maxf(40, maxf(caption.get_minimum_size().y, value_label.get_minimum_size().y) + 16)
