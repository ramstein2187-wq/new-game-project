extends SceneTree


func _init() -> void:
	var packed_scene := load("res://procgen/procedural_map_preview.tscn") as PackedScene
	if packed_scene == null:
		_fail("Could not load procedural map preview scene")
		return

	var preview := packed_scene.instantiate()
	root.add_child(preview)
	preview.call("regenerate", 1234)

	var generated_map: PackedStringArray = preview.get("generated_map")
	if generated_map.size() != 30:
		_fail("Preview did not generate 30 rows")
		return

	for row in generated_map:
		if row.length() != 40:
			_fail("Preview row width was not 40")
			return

	var info_label := preview.get_node_or_null("InfoLabel") as Label
	if info_label == null:
		_fail("Preview info label is missing")
		return

	if not info_label.text.contains("Seed 1234"):
		_fail("Preview label did not display the active seed")
		return

	print("PASS: procedural map preview")
	quit(0)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
