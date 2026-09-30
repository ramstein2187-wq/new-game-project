extends SceneTree

# Automated rendered evidence, not a manual readability/play acceptance test.
# Run with a graphical renderer (omit --headless), then inspect the saved PNGs.
func _init() -> void:
	call_deferred("_capture")

func _capture() -> void:
	var output := "res://.godot/character-overview-captures"
	DirAccess.make_dir_recursive_absolute(output)
	var scene := preload("res://scenes/debug/generated_map_combat_playground.tscn").instantiate()
	root.add_child(scene)
	await process_frame
	var screen: CharacterScreen = scene.character_screen
	screen.open()
	for resolution in [Vector2i(1920, 1080), Vector2i(2560, 1440), Vector2i(3840, 2160), Vector2i(640, 480)]:
		root.size = resolution
		root.content_scale_size = resolution
		root.content_scale_aspect = Window.CONTENT_SCALE_ASPECT_IGNORE
		screen.inspect(&"armor")
		for frame in range(8):
			await process_frame
		await RenderingServer.frame_post_draw
		var path := "%s/overview-%dx%d.png" % [output, resolution.x, resolution.y]
		var error := root.get_texture().get_image().save_png(path)
		if error != OK:
			push_error("Capture failed: " + path)
			quit(1)
			return
		print("Captured: ", ProjectSettings.globalize_path(path))
	scene.queue_free()
	quit()
