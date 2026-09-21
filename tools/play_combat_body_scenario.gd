extends SceneTree

# Optional manual diagnostic fixture. These starting wounds are injected;
# subsequent input, attacks, RNG, UI, AI and scheduling use the real scene.
func _init() -> void:
	call_deferred("_start")

func _start() -> void:
	var args := OS.get_cmdline_user_args()
	var scenario := args[0] if not args.is_empty() else "human-arm-damaged"
	var fixtures := {
		"human-arm-damaged": [&"player", &"right_arm", 10],
		"human-arm-disabled": [&"player", &"right_arm", 20],
		"rat-leg-damaged": [&"rat", &"left_foreleg", 3],
		"rat-head-damaged": [&"rat", &"head", 4],
		"rat-head-disabled": [&"rat", &"head", 8],
	}
	if not fixtures.has(scenario):
		push_error("Unknown scenario; choose one of: " + str(fixtures.keys()))
		quit(1)
		return
	var scene := preload("res://time_cost/time_cost_test_room.tscn").instantiate()
	root.add_child(scene)
	var game: TimeCostGame = scene.game
	game.player_position = Vector2i(7, 3)
	game.door_open = true
	var fixture: Array = fixtures[scenario]
	game.bodies[fixture[0]].apply_damage(fixture[1], fixture[2])
	game.message = "Diagnostic starting wound: %s. R returns to a healthy normal room." % scenario
	scene._refresh()
