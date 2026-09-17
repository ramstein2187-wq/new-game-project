extends SceneTree

func _init() -> void:
	var packed_scene := load("res://main.tscn") as PackedScene
	if packed_scene == null:
		_fail("Could not load main.tscn")
		return

	var main := packed_scene.instantiate()
	root.add_child(main)

	var player: Variant = main.get_node_or_null("Player")
	var chest: Variant = main.get_node_or_null("Chest")

	if player == null:
		_fail("Player node is missing")
		return
	if chest == null:
		_fail("Chest node is missing")
		return
	if not chest.has_method("interact"):
		_fail("Chest does not expose interact()")
		return

	player.call("_on_interaction_detector_area_entered", chest)
	var target: Variant = player.call("_get_interaction_target")
	if target != chest:
		_fail("Player did not select Chest as the interaction target")
		return

	chest.call("interact")

	player.call("_on_interaction_detector_area_exited", chest)
	if player.call("_get_interaction_target") != null:
		_fail("Interaction target was not cleared after exit")
		return

	print("PASS: basic interaction")
	quit(0)

func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
