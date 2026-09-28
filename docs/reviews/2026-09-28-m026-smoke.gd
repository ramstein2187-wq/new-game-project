extends SceneTree

# Reproduce M024's three smoke matchups using unchanged production definitions.
# This is a behavior/performance diagnostic, never a TR calibration or tuning objective.
func _init() -> void:
	var started := Time.get_ticks_usec()
	var runner := CombatBatchRunner.new()
	var config := {"run_count": 20, "base_seed": 24000, "max_actions": 500, "max_world_time": 500000}
	var errors := 0
	for pair in [[&"feral_dog", &"wolf"], [&"raider", &"giant_beetle"], [&"raider", &"armored_raider"]]:
		var result := runner.run_matchup(CombatContentCatalog.actor(pair[0]), CombatContentCatalog.actor(pair[1]), config)
		errors += int(result.simulation_errors)
		print(JSON.stringify({"matchup": pair, "revision": BasicMeleeTactics.POLICY_REVISION,
			"config": config, "protocol": result.protocol,
			"completed": result.completed_encounters, "errors": result.simulation_errors,
			"stalled": result.stalled_encounters,
			"forward_actions": [result.forward.side_a_actions, result.forward.side_b_actions],
			"reverse_actions": [result.reverse.side_a_actions, result.reverse.side_b_actions]}))
	print("Smoke elapsed seconds: %.3f" % ((Time.get_ticks_usec() - started) / 1000000.0))
	quit(1 if errors else 0)
