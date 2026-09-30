class_name CharacterInspector
extends VBoxContainer

var title_label: Label
var value_label: Label
var body_label: Label
var scroll: ScrollContainer

func _init() -> void:
	add_theme_constant_override("separation", 12)
	title_label = _label("INSPECTOR")
	add_child(title_label)
	value_label = _label("")
	add_child(value_label)
	scroll = ScrollContainer.new()
	scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	scroll.custom_minimum_size.y = 260
	add_child(scroll)
	body_label = _label("Select a value to see its sources.")
	body_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	scroll.add_child(body_label)

# Reusable value/text Inspector: contains no knowledge of Actors or future tabs.
func show_inspection(details: Dictionary) -> void:
	title_label.text = details.title
	value_label.text = details.value
	body_label.text = details.body
	scroll.scroll_vertical = 0

func _label(text_value: String) -> Label:
	var label := Label.new()
	label.text = text_value
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	return label
