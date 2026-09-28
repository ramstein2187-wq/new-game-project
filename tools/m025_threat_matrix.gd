extends SceneTree

const ACTOR_IDS: Array[StringName] = [
	&"rat",
	&"feral_dog",
	&"wolf",
	&"boar",
	&"giant_beetle",
	&"cave_lizard",
	&"giant_spider",
	&"giant_crab",
	&"feral_ape",
	&"raider",
	&"armored_raider",
]

const DEFAULT_RUNS := 200
const DEFAULT_BASE_SEED := 25000
const DEFAULT_MAX_ACTIONS := 500
const DEFAULT_MAX_WORLD_TIME := 500000


func _init() -> void:
	var config := _parse_arguments(OS.get_cmdline_user_args())
	if config.has("error"):
		push_error(config.error)
		quit(2)
		return

	var definitions := _definitions()
	var summary := {}
	for id in ACTOR_IDS:
		summary[String(id)] = {
			"opponents": 0,
			"decisive_wins": 0,
			"decisive_losses": 0,
			"stalls": 0,
			"errors": 0,
			"mean_decisive_win_rate_sum": 0.0,
		}

	var pair_count := (ACTOR_IDS.size() * (ACTOR_IDS.size() - 1)) / 2
	print("M025 Threat Matrix — protocol=%s pairs=%s paired_seeds=%s range=%s..%s" % [
		String(CombatBatchRunner.PAIRED_PROTOCOL),
		str(pair_count),
		str(config.run_count),
		str(config.base_seed),
		str(config.base_seed + config.run_count - 1),
	])

	for i in range(ACTOR_IDS.size()):
		for j in range(i + 1, ACTOR_IDS.size()):
			var a_id: StringName = ACTOR_IDS[i]
			var b_id: StringName = ACTOR_IDS[j]
			var result := CombatBatchRunner.new().run_matchup(
				definitions[a_id],
				definitions[b_id],
				config
			)
			if result.has("configuration_error"):
				push_error(result.configuration_error)
				quit(2)
				return

			var a_key := String(a_id)
			var b_key := String(b_id)
			var decisive := int(result.decisive_encounters)
			var a_rate := float(result.combatant_a_decisive_win_rate)
			var b_rate := float(result.combatant_b_decisive_win_rate)
			summary[a_key].opponents += 1
			summary[b_key].opponents += 1
			summary[a_key].decisive_wins += int(result.combatant_a_wins)
			summary[a_key].decisive_losses += int(result.combatant_b_wins)
			summary[b_key].decisive_wins += int(result.combatant_b_wins)
			summary[b_key].decisive_losses += int(result.combatant_a_wins)
			summary[a_key].stalls += int(result.stalled_encounters)
			summary[b_key].stalls += int(result.stalled_encounters)
			summary[a_key].errors += int(result.simulation_errors)
			summary[b_key].errors += int(result.simulation_errors)
			summary[a_key].mean_decisive_win_rate_sum += a_rate
			summary[b_key].mean_decisive_win_rate_sum += b_rate

			print("PAIR %s %s wins=%d:%d decisive=%d stalls=%d errors=%d rates=%.4f:%.4f slotA=%.4f slotB=%.4f" % [
				a_key,
				b_key,
				int(result.combatant_a_wins),
				int(result.combatant_b_wins),
				decisive,
				int(result.stalled_encounters),
				int(result.simulation_errors),
				a_rate,
				b_rate,
				float(result.slot_a_decisive_win_rate),
				float(result.slot_b_decisive_win_rate),
			])

	print("")
	print("SUMMARY")
	for id in ACTOR_IDS:
		var key := String(id)
		var row: Dictionary = summary[key]
		var mean_pairwise := (
			float(row.mean_decisive_win_rate_sum) / int(row.opponents)
			if int(row.opponents) > 0 else 0.0
		)
		var all_decisive := int(row.decisive_wins) + int(row.decisive_losses)
		var pooled := (
			float(row.decisive_wins) / all_decisive
			if all_decisive > 0 else 0.0
		)
		print("ACTOR %s pooled=%.4f mean_pairwise=%.4f W=%d L=%d stalls=%d errors=%d" % [
			key,
			pooled,
			mean_pairwise,
			int(row.decisive_wins),
			int(row.decisive_losses),
			int(row.stalls),
			int(row.errors),
		])

	quit(0)


func _definitions() -> Dictionary:
	var values := {&"rat": ActorDefinition.rat_common()}
	for id in CombatContentCatalog.HOSTILE_IDS:
		values[id] = CombatContentCatalog.actor(id)
	return values


func _parse_arguments(arguments: PackedStringArray) -> Dictionary:
	var config := {
		"run_count": DEFAULT_RUNS,
		"base_seed": DEFAULT_BASE_SEED,
		"max_actions": DEFAULT_MAX_ACTIONS,
		"max_world_time": DEFAULT_MAX_WORLD_TIME,
	}
	for argument in arguments:
		if not argument.begins_with("--") or not argument.contains("="):
			return {"error": "Unknown argument: %s" % argument}
		var pieces := argument.trim_prefix("--").split("=", true, 1)
		var key := String(pieces[0])
		var value_text := String(pieces[1])
		if not value_text.is_valid_int():
			return {"error": "--%s requires an integer" % key}
		var value := value_text.to_int()
		match key:
			"runs":
				if value <= 0:
					return {"error": "--runs must be positive"}
				config.run_count = value
			"base-seed":
				config.base_seed = value
			"max-actions":
				if value <= 0:
					return {"error": "--max-actions must be positive"}
				config.max_actions = value
			"max-world-time":
				if value <= 0:
					return {"error": "--max-world-time must be positive"}
				config.max_world_time = value
			_:
				return {"error": "Unknown option: --%s" % key}
	return config
