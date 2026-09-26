extends SceneTree

# Automated presentation evidence, not a manual play acceptance test.
# Run without --headless; screenshot capture requires a rendering backend.
func _init() -> void:
	call_deferred("_capture")

func _capture() -> void:
	root.size = Vector2i(1152, 648)
	var scene: Node = load("res://time_cost/generated_map_combat_playground.tscn").instantiate()
	root.add_child(scene)
	await process_frame
	await process_frame
	await RenderingServer.frame_post_draw
	var result := root.get_texture().get_image().save_png("res://docs/reviews/2026-09-22-m019-scene.png")
	if result != OK:
		push_error("Presentation capture failed: %s" % result)
	quit(0 if result == OK else 1)
