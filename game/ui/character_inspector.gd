class_name CharacterInspector
extends VBoxContainer

var title_label: Label
var value_label: Label
var body_label: RichTextLabel
var scroll: ScrollContainer

func _init() -> void:
	add_theme_constant_override("separation", 12)
	title_label = _label("INSPECTOR")
	add_child(title_label)
	value_label = _label("")
	value_label.add_theme_color_override("font_color", InspectorNumberStyle.RESULT)
	add_child(value_label)
	scroll = ScrollContainer.new()
	scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	scroll.custom_minimum_size.y = 260
	add_child(scroll)
	body_label = RichTextLabel.new()
	body_label.fit_content = true
	body_label.scroll_active = false
	body_label.bbcode_enabled = false
	body_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	body_label.add_theme_color_override("default_color", InspectorNumberStyle.NEUTRAL)
	body_label.add_text("Select a value to see its sources.")
	body_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	scroll.add_child(body_label)

# Reusable value/text Inspector: contains no knowledge of Actors or future tabs.
func show_inspection(details: Dictionary) -> void:
	title_label.text = details.title
	value_label.text = details.value
	body_label.clear()
	var spans: Array = details.get("body_spans", [InspectorNumberStyle.span(details.body)])
	for part: Dictionary in spans:
		var styled: bool = part.tone != InspectorNumberStyle.Tone.NEUTRAL
		if styled:
			body_label.push_color(InspectorNumberStyle.color_for(part.tone))
		# Dynamic names/sources are literal text, never parsed as BBCode.
		var lines: PackedStringArray = part.text.split("\n")
		for index in range(lines.size()):
			if index > 0:
				body_label.newline()
			body_label.add_text(lines[index])
		if styled:
			body_label.pop()
	scroll.scroll_vertical = 0

func _label(text_value: String) -> Label:
	var label := Label.new()
	label.text = text_value
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	return label
