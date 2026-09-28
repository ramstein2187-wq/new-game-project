extends SceneTree

const DEFAULTS := {
	"run_count": CombatBatchRunner.DEFAULT_RUN_COUNT,
	"base_seed": CombatBatchRunner.DEFAULT_BASE_SEED,
	"max_actions": CombatBatchRunner.DEFAULT_MAX_ACTIONS,
	"max_world_time": CombatBatchRunner.DEFAULT_MAX_WORLD_TIME,
}


func _init() -> void:
	var parsed := _parse_arguments(OS.get_cmdline_user_args())
	if parsed.has("error"):
		push_error(parsed.error)
		_print_usage()
		quit(2)
		return
	var config: Dictionary = parsed.config
	var started_usec := Time.get_ticks_usec()
	var runner := CombatBatchRunner.new()
	var result := (
		runner.run_matchup(ActorDefinition.rat_common(), ActorDefinition.rat_common(), config)
		if parsed.paired
		else runner.run(config)
	)
	var elapsed_seconds := (Time.get_ticks_usec() - started_usec) / 1000000.0
	if result.has("configuration_error"):
		push_error(result.configuration_error)
		quit(2)
		return
	if parsed.json:
		print(JSON.stringify(result))
	elif parsed.paired:
		_print_paired_summary(result, elapsed_seconds)
	else:
		_print_summary(result, elapsed_seconds)
	quit(1 if result.simulation_errors > 0 else 0)


func _parse_arguments(arguments: PackedStringArray) -> Dictionary:
	var config := DEFAULTS.duplicate()
	var json := false
	var paired := false
	for argument in arguments:
		if argument == "--json":
			json = true
			continue
		if argument == "--paired":
			paired = true
			continue
		if not argument.begins_with("--") or not argument.contains("="):
			return {"error": "Unknown argument: %s" % argument}
		var pieces := argument.trim_prefix("--").split("=", true, 1)
		var key := String(pieces[0])
		var value_text := String(pieces[1])
		var config_key: String = {
			"runs": "run_count",
			"base-seed": "base_seed",
			"max-actions": "max_actions",
			"max-world-time": "max_world_time",
		}.get(key, "")
		if config_key.is_empty():
			return {"error": "Unknown option: --%s" % key}
		if not value_text.is_valid_int():
			return {"error": "--%s requires an integer, got: %s" % [key, value_text]}
		var value := value_text.to_int()
		if config_key != "base_seed" and value <= 0:
			return {"error": "--%s must be positive" % key}
		config[config_key] = value
	return {"config": config, "json": json, "paired": paired}


func _print_summary(result: Dictionary, elapsed_seconds: float) -> void:
	print("Combat Batch — %s" % result.scenario)
	print("")
	print("Seeds: %d..%d" % [result.base_seed, result.seed_end])
	print("Runs: %d" % result.run_count)
	print("Completed: %d" % result.completed_runs)
	print("Errors: %d" % result.simulation_errors)
	print("Stalled: %d" % result.stalled_runs)
	print("")
	print("Side A wins: %d (%.2f%%)" % [result.side_a_wins, result.side_a_win_rate * 100.0])
	print("Side B wins: %d (%.2f%%)" % [result.side_b_wins, result.side_b_win_rate * 100.0])
	print("")
	print("Mean actions: %.3f" % result.mean_actions)
	print("Mean world time: %.3f" % result.mean_world_time)
	print("")
	print("Mean damage:")
	print("  Side A: %.3f" % result.mean_damage_side_a)
	print("  Side B: %.3f" % result.mean_damage_side_b)
	print("")
	print("Actions (total / per encounter):")
	_print_action_counts("Side A", result.side_a_actions, result.side_a_actions_per_encounter)
	_print_action_counts("Side B", result.side_b_actions, result.side_b_actions_per_encounter)
	print("")
	print("Wall time: %.3f s" % elapsed_seconds)
	var throughput: float = float(result.run_count) / elapsed_seconds if elapsed_seconds > 0.0 else 0.0
	print("Throughput: %.2f encounters/sec" % throughput)


func _print_paired_summary(result: Dictionary, elapsed_seconds: float) -> void:
	print("Combat Matchup — %s" % result.protocol)
	print("")
	print("Combatants: %s vs %s" % [result.combatant_a.display_name, result.combatant_b.display_name])
	print("Seeds: %d..%d" % [result.base_seed, result.seed_end])
	print("Pairs: %d | Encounters: %d" % [result.pair_count, result.requested_encounters])
	print("Completed: %d | Errors: %d | Stalled: %d" % [result.completed_encounters, result.simulation_errors, result.stalled_encounters])
	print("")
	print("Combatant A wins: %d (all %.2f%% / decisive %.2f%%)" % [result.combatant_a_wins, result.combatant_a_win_rate * 100.0, result.combatant_a_decisive_win_rate * 100.0])
	print("Combatant B wins: %d (all %.2f%% / decisive %.2f%%)" % [result.combatant_b_wins, result.combatant_b_win_rate * 100.0, result.combatant_b_decisive_win_rate * 100.0])
	print("Slot A decisive win rate: %.2f%%" % (result.slot_a_decisive_win_rate * 100.0))
	print("Slot B decisive win rate: %.2f%%" % (result.slot_b_decisive_win_rate * 100.0))
	print("")
	print("Mean damage: A %.3f / B %.3f" % [result.mean_damage_combatant_a, result.mean_damage_combatant_b])
	print("Attack metrics A: %s" % JSON.stringify(result.combatant_a_combat))
	print("Attack metrics B: %s" % JSON.stringify(result.combatant_b_combat))
	print("")
	print("Wall time: %.3f s" % elapsed_seconds)
	var throughput: float = float(result.requested_encounters) / elapsed_seconds if elapsed_seconds > 0.0 else 0.0
	print("Throughput: %.2f encounters/sec" % throughput)


func _print_action_counts(label: String, counts: Dictionary, means: Dictionary) -> void:
	var parts: Array[String] = []
	for action_type in ["move", "attack", "interact", "wait"]:
		parts.append("%s %d / %.3f" % [action_type, counts[action_type], means[action_type]])
	print("  %s: %s" % [label, ", ".join(parts)])


func _print_usage() -> void:
	print("Usage: --runs=N --base-seed=N --max-actions=N --max-world-time=N [--paired] [--json]")
