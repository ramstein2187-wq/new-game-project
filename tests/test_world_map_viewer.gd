extends SceneTree

const ViewerScene := preload("res://procgen/world/world_map_viewer.tscn")


func _init() -> void:
	call_deferred("_run")


func _run() -> void:
	var viewer = ViewerScene.instantiate()
	root.add_child(viewer)
	if viewer.world_data == null:
		_fail("Viewer did not generate an initial world")
		return
	if viewer.world_data.width != 128 or viewer.world_data.height != 96:
		_fail("Viewer did not load the default world dimensions")
		return
	if viewer.map_image.get_width() != 128 or viewer.map_image.get_height() != 96:
		_fail("Viewer image dimensions do not match the world")
		return

	var original_world_checksum: int = int(viewer.world_data.checksum())
	var original_biome_pixel: Color = viewer.map_image.get_pixel(2, 2)
	viewer.select_layer(1)
	if viewer.current_layer != 1 or viewer.map_image.get_pixel(2, 2) == original_biome_pixel:
		_fail("Switching layers did not change the rendered map")
		return
	viewer.set_river_overlay(false)
	viewer.select_layer(7)
	viewer.select_layer(0)
	if int(viewer.world_data.checksum()) != original_world_checksum:
		_fail("Rendering a layer changed the generated world")
		return

	viewer.regenerate(64, 48, 9876)
	if viewer.world_data.width != 64 or viewer.world_data.height != 48:
		_fail("Viewer did not apply variable dimensions")
		return
	if viewer.map_image.get_width() != 64 or viewer.map_image.get_height() != 48:
		_fail("Regeneration did not resize the rendered image")
		return
	if viewer.map_texture.custom_minimum_size != Vector2(256, 192):
		_fail("Texture view did not preserve zoom after regeneration")
		return
	if viewer.cell_description(5, 5).find("(5,5)") == -1:
		_fail("Hovered cell data is missing coordinates")
		return
	if viewer.cell_description(-1, 5) != "범위 밖":
		_fail("Out-of-bounds cell inspection was not guarded")
		return

	var current_checksum: int = int(viewer.world_data.checksum())
	viewer.regenerate(64, 48, 9876)
	if int(viewer.world_data.checksum()) != current_checksum:
		_fail("Viewer regeneration did not reproduce the same world")
		return

	viewer.seed_input.text = "not_a_number"
	viewer._on_generate_pressed()
	if viewer.status_label.text.find("정수") == -1:
		_fail("Invalid seed did not show a validation message")
		return
	if int(viewer.world_data.checksum()) != current_checksum:
		_fail("Invalid input unexpectedly regenerated the world")
		return

	print("PASS: world map viewer layers, dimensions, replay, hover, validation")
	quit(0)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
