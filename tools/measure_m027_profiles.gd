extends SceneTree

# Repeatable paired sample, usable on M024 baseline and M027 without new APIs.
func _init() -> void:
	var runner := CombatBatchRunner.new()
	var samples: Array = []
	var errors := 0
	for pair in [[&"feral_dog", &"wolf"], [&"raider", &"giant_beetle"], [&"raider", &"armored_raider"]]:
		var result := runner.run_matchup(CombatContentCatalog.actor(pair[0]), CombatContentCatalog.actor(pair[1]),
			{"run_count": 100, "base_seed": 27000, "max_actions": 300, "max_world_time": 300000})
		if result.has("configuration_error"):
			push_error(result.configuration_error)
			quit(2)
			return
		errors += int(result.simulation_errors)
		samples.append({"pair": pair, "errors": result.simulation_errors, "stalls": result.stalled_encounters,
			"wins_a": result.combatant_a_wins, "wins_b": result.combatant_b_wins,
			"damage_a": result.mean_damage_combatant_a, "damage_b": result.mean_damage_combatant_b,
			"armor_a": result.combatant_a_combat.armor_results, "armor_b": result.combatant_b_combat.armor_results})
	print(JSON.stringify(samples))
	quit(1 if errors > 0 else 0)
