extends SceneTree

const PAIRS: Array = [
	[&"feral_dog", &"wolf"],
	[&"raider", &"giant_beetle"],
	[&"raider", &"armored_raider"],
]


func _init() -> void:
	var config := {"run_count": 20, "base_seed": 24000, "max_actions": 500, "max_world_time": 500000}
	var results := []
	var failed := false
	for pair in PAIRS:
		var result := CombatBatchRunner.new().run_matchup(
			CombatContentCatalog.actor(pair[0]), CombatContentCatalog.actor(pair[1]), config
		)
		results.append({
			"matchup": "%s_vs_%s" % pair,
			"seed_range": "%d-%d" % [result.base_seed, result.seed_end],
			"paired_seeds": result.pair_count,
			"encounters": result.completed_encounters,
			"simulation_errors": result.simulation_errors,
			"stalls": result.stalled_encounters,
			"wins": {
				String(pair[0]): result.combatant_a_wins,
				String(pair[1]): result.combatant_b_wins,
			},
			"damage_dice_rolls": {
				String(pair[0]): result.combatant_a_combat.damage_dice_rolls,
				String(pair[1]): result.combatant_b_combat.damage_dice_rolls,
			},
			"armor_results": {
				String(pair[0]): result.combatant_a_combat.armor_results,
				String(pair[1]): result.combatant_b_combat.armor_results,
			},
			"body_part_disables": {
				String(pair[0]): result.combatant_a_combat.body_part_disables,
				String(pair[1]): result.combatant_b_combat.body_part_disables,
			},
		})
		failed = failed or result.simulation_errors > 0
	print(JSON.stringify({"protocol": CombatBatchRunner.PAIRED_PROTOCOL, "results": results}, "  "))
	quit(1 if failed else 0)
