class_name CombatBatchRunner
extends RefCounted

const SCENARIO := "rat_vs_rat"
const PAIRED_PROTOCOL := "side_swap_v1"
const DEFAULT_RUN_COUNT := 1000
const DEFAULT_BASE_SEED := 0
const DEFAULT_MAX_ACTIONS := 500
const DEFAULT_MAX_WORLD_TIME := 500000

const SIDE_A_ID: StringName = CombatSimulationGame.SIDE_A_ID
const SIDE_B_ID: StringName = CombatSimulationGame.SIDE_B_ID


func run(config: Dictionary = {}) -> Dictionary:
	return _run_batch(null, null, config, SCENARIO)


# Runs the same seed set twice with the combatants occupying opposite scheduler/
# room slots. Results are mapped back to combatant identity before aggregation.
func run_matchup(
	combatant_a: ActorDefinition,
	combatant_b: ActorDefinition,
	config: Dictionary = {}
) -> Dictionary:
	if combatant_a == null or combatant_b == null:
		return {"configuration_error": "run_matchup requires two actor definitions"}
	if not combatant_a.is_valid() or not combatant_b.is_valid():
		return {"configuration_error": "run_matchup requires valid actor definitions"}

	var validation := _validated_config(config)
	if validation.has("configuration_error"):
		return validation
	var normalized: Dictionary = validation.config
	var forward := _run_batch(
		combatant_a,
		combatant_b,
		normalized,
		"%s_vs_%s" % [combatant_a.type_id, combatant_b.type_id]
	)
	var reverse := _run_batch(
		combatant_b,
		combatant_a,
		normalized,
		"%s_vs_%s" % [combatant_b.type_id, combatant_a.type_id]
	)
	if forward.has("configuration_error"):
		return forward
	if reverse.has("configuration_error"):
		return reverse

	var completed := int(forward.completed_runs) + int(reverse.completed_runs)
	var decisive := (
		int(forward.side_a_wins) + int(forward.side_b_wins)
		+ int(reverse.side_a_wins) + int(reverse.side_b_wins)
	)
	var combatant_a_wins := int(forward.side_a_wins) + int(reverse.side_b_wins)
	var combatant_b_wins := int(forward.side_b_wins) + int(reverse.side_a_wins)
	var slot_a_wins := int(forward.side_a_wins) + int(reverse.side_a_wins)
	var slot_b_wins := int(forward.side_b_wins) + int(reverse.side_b_wins)
	var combatant_a_damage := int(forward.total_damage_side_a) + int(reverse.total_damage_side_b)
	var combatant_b_damage := int(forward.total_damage_side_b) + int(reverse.total_damage_side_a)
	var combatant_a_combat := _empty_combat_metrics()
	var combatant_b_combat := _empty_combat_metrics()
	_add_combat_metrics(combatant_a_combat, forward.side_a_combat)
	_add_combat_metrics(combatant_a_combat, reverse.side_b_combat)
	_add_combat_metrics(combatant_b_combat, forward.side_b_combat)
	_add_combat_metrics(combatant_b_combat, reverse.side_a_combat)

	return {
		"scenario": "paired_matchup",
		"protocol": PAIRED_PROTOCOL,
		"combatant_a": _definition_summary(combatant_a),
		"combatant_b": _definition_summary(combatant_b),
		"pair_count": int(normalized.run_count),
		"requested_encounters": int(normalized.run_count) * 2,
		"completed_encounters": completed,
		"simulation_errors": int(forward.simulation_errors) + int(reverse.simulation_errors),
		"stalled_encounters": int(forward.stalled_runs) + int(reverse.stalled_runs),
		"decisive_encounters": decisive,
		"combatant_a_wins": combatant_a_wins,
		"combatant_b_wins": combatant_b_wins,
		"combatant_a_win_rate": _ratio(combatant_a_wins, completed),
		"combatant_b_win_rate": _ratio(combatant_b_wins, completed),
		"combatant_a_decisive_win_rate": _ratio(combatant_a_wins, decisive),
		"combatant_b_decisive_win_rate": _ratio(combatant_b_wins, decisive),
		"slot_a_wins": slot_a_wins,
		"slot_b_wins": slot_b_wins,
		"slot_a_decisive_win_rate": _ratio(slot_a_wins, decisive),
		"slot_b_decisive_win_rate": _ratio(slot_b_wins, decisive),
		"mean_damage_combatant_a": _ratio(combatant_a_damage, completed),
		"mean_damage_combatant_b": _ratio(combatant_b_damage, completed),
		"combatant_a_combat": combatant_a_combat,
		"combatant_b_combat": combatant_b_combat,
		"base_seed": int(normalized.base_seed),
		"seed_end": int(normalized.base_seed) + int(normalized.run_count) - 1,
		"forward": forward,
		"reverse": reverse,
	}


func _run_batch(
	side_a_definition: ActorDefinition,
	side_b_definition: ActorDefinition,
	config: Dictionary,
	scenario: String
) -> Dictionary:
	var validation := _validated_config(config)
	if validation.has("configuration_error"):
		return validation
	var normalized: Dictionary = validation.config
	var run_count := int(normalized.run_count)
	var base_seed := int(normalized.base_seed)
	var max_actions := int(normalized.max_actions)
	var max_world_time := int(normalized.max_world_time)

	var result := {
		"scenario": scenario,
		"base_seed": base_seed,
		"seed_end": base_seed + run_count - 1,
		"run_count": run_count,
		"completed_runs": 0,
		"side_a_wins": 0,
		"side_b_wins": 0,
		"stalled_runs": 0,
		"simulation_errors": 0,
		"side_a_win_rate": 0.0,
		"side_b_win_rate": 0.0,
		"mean_actions": 0.0,
		"mean_world_time": 0.0,
		"mean_damage_side_a": 0.0,
		"mean_damage_side_b": 0.0,
		"total_actions": 0,
		"total_world_time": 0,
		"total_damage_side_a": 0,
		"total_damage_side_b": 0,
		"mean_end_hp_side_a": 0.0,
		"mean_end_hp_side_b": 0.0,
		"side_a_actions": _empty_action_counts(),
		"side_b_actions": _empty_action_counts(),
		"side_a_actions_per_encounter": _empty_action_means(),
		"side_b_actions_per_encounter": _empty_action_means(),
		"side_a_combat": _empty_combat_metrics(),
		"side_b_combat": _empty_combat_metrics(),
		"encounter_seeds": [],
		"error_details": [],
	}
	var total_end_hp_side_a := 0
	var total_end_hp_side_b := 0

	for run_index in range(run_count):
		var encounter_seed := base_seed + run_index
		result.encounter_seeds.append(encounter_seed)
		var encounter := run_encounter(
			encounter_seed,
			max_actions,
			max_world_time,
			side_a_definition,
			side_b_definition
		)
		var outcome: String = encounter.outcome
		if outcome == "simulation_error":
			result.simulation_errors += 1
			result.error_details.append({"seed": encounter_seed, "message": encounter.error})
			continue

		result.completed_runs += 1
		match outcome:
			"side_a_win": result.side_a_wins += 1
			"side_b_win": result.side_b_wins += 1
			"stalled": result.stalled_runs += 1
		result.total_actions += int(encounter.actions)
		result.total_world_time += int(encounter.world_time)
		result.total_damage_side_a += int(encounter.damage_side_a)
		result.total_damage_side_b += int(encounter.damage_side_b)
		total_end_hp_side_a += int(encounter.end_hp_side_a)
		total_end_hp_side_b += int(encounter.end_hp_side_b)
		_add_action_counts(result.side_a_actions, encounter.side_a_actions)
		_add_action_counts(result.side_b_actions, encounter.side_b_actions)
		_add_combat_metrics(result.side_a_combat, encounter.side_a_combat)
		_add_combat_metrics(result.side_b_combat, encounter.side_b_combat)

	var completed: int = result.completed_runs
	if completed > 0:
		result.side_a_win_rate = float(result.side_a_wins) / completed
		result.side_b_win_rate = float(result.side_b_wins) / completed
		result.mean_actions = float(result.total_actions) / completed
		result.mean_world_time = float(result.total_world_time) / completed
		result.mean_damage_side_a = float(result.total_damage_side_a) / completed
		result.mean_damage_side_b = float(result.total_damage_side_b) / completed
		result.mean_end_hp_side_a = float(total_end_hp_side_a) / completed
		result.mean_end_hp_side_b = float(total_end_hp_side_b) / completed
		result.side_a_actions_per_encounter = _action_means(result.side_a_actions, completed)
		result.side_b_actions_per_encounter = _action_means(result.side_b_actions, completed)
	return result


func run_encounter(
	encounter_seed: int,
	max_actions: int,
	max_world_time: int,
	side_a_definition: ActorDefinition = null,
	side_b_definition: ActorDefinition = null
) -> Dictionary:
	var game := CombatSimulationGame.new()
	if side_a_definition != null and side_b_definition != null:
		game.configure_matchup(side_a_definition, side_b_definition)
	game.combat_seed = encounter_seed
	game.reset()
	var encounter := {
		"seed": encounter_seed,
		"outcome": "",
		"error": "",
		"actions": 0,
		"world_time": 0,
		"damage_side_a": 0,
		"damage_side_b": 0,
		"end_hp_side_a": 0,
		"end_hp_side_b": 0,
		"side_a_actions": _empty_action_counts(),
		"side_b_actions": _empty_action_counts(),
		"side_a_combat": _empty_combat_metrics(),
		"side_b_combat": _empty_combat_metrics(),
	}
	var known_hp := {
		SIDE_A_ID: game.get_actor(SIDE_A_ID).hp,
		SIDE_B_ID: game.get_actor(SIDE_B_ID).hp,
	}

	while true:
		var terminal := _terminal_outcome(game)
		if not terminal.is_empty():
			encounter.outcome = terminal
			break
		if not game.simulation_error.is_empty():
			encounter.outcome = "simulation_error"
			encounter.error = game.simulation_error
			break
		if encounter.actions >= max_actions or game.world_time >= max_world_time:
			encounter.outcome = "stalled"
			break

		var action := game.choose_ai_action(SIDE_A_ID)
		if action == null:
			encounter.outcome = "simulation_error"
			encounter.error = "Side A could not choose a production action at time %d" % game.world_time
			break
		if not game.perform_action(SIDE_A_ID, action):
			encounter.outcome = "simulation_error"
			encounter.error = "Side A production action failed at time %d" % game.world_time
			break
		_consume_events(game.combat_log.events, encounter, known_hp)
		# Encounters consume events incrementally so CombatEventLog's presentation
		# retention cap cannot truncate batch statistics.
		game.combat_log.clear()

	encounter.world_time = game.world_time
	encounter.end_hp_side_a = game.get_actor(SIDE_A_ID).hp
	encounter.end_hp_side_b = game.get_actor(SIDE_B_ID).hp
	return encounter


func _terminal_outcome(game: CombatSimulationGame) -> String:
	var side_a_alive := game.actor_is_alive(SIDE_A_ID)
	var side_b_alive := game.actor_is_alive(SIDE_B_ID)
	if side_a_alive and not side_b_alive:
		return "side_a_win"
	if side_b_alive and not side_a_alive:
		return "side_b_win"
	if not side_a_alive and not side_b_alive:
		return "simulation_error"
	return ""


func _consume_events(events: Array[CombatEvent], encounter: Dictionary, known_hp: Dictionary) -> void:
	for event in events:
		encounter.actions += 1
		var counts: Dictionary = encounter.side_a_actions if event.actor_id == SIDE_A_ID else encounter.side_b_actions
		var action_type := String(event.type)
		counts[action_type] = int(counts.get(action_type, 0)) + 1
		if event.type != &"attack":
			continue

		var combat: Dictionary = encounter.side_a_combat if event.actor_id == SIDE_A_ID else encounter.side_b_combat
		combat.attack_attempts += 1
		if bool(event.data.get("hit", false)):
			combat.hits += 1
			combat.damage_dice_rolls += event.data.get("damage_rolls", []).size()
			var armor_result := String(event.data.get("armor_result", "unarmored"))
			combat.armor_results[armor_result] = int(combat.armor_results.get(armor_result, 0)) + 1
			if (
				StringName(event.data.get("state_before", &"")) != &"disabled"
				and StringName(event.data.get("state_after", &"")) == &"disabled"
			):
				combat.body_part_disables += 1
		else:
			combat.misses += 1

		if not known_hp.has(event.target_id):
			continue
		var before := int(known_hp[event.target_id])
		var after := int(event.data.get("remaining_hp", before))
		var actual_damage := maxi(0, before - after)
		known_hp[event.target_id] = after
		if event.actor_id == SIDE_A_ID:
			encounter.damage_side_a += actual_damage
		elif event.actor_id == SIDE_B_ID:
			encounter.damage_side_b += actual_damage


func _validated_config(config: Dictionary) -> Dictionary:
	var normalized := {
		"run_count": int(config.get("run_count", DEFAULT_RUN_COUNT)),
		"base_seed": int(config.get("base_seed", DEFAULT_BASE_SEED)),
		"max_actions": int(config.get("max_actions", DEFAULT_MAX_ACTIONS)),
		"max_world_time": int(config.get("max_world_time", DEFAULT_MAX_WORLD_TIME)),
	}
	if normalized.run_count <= 0 or normalized.max_actions <= 0 or normalized.max_world_time <= 0:
		return {"configuration_error": "run_count, max_actions and max_world_time must be positive"}
	return {"config": normalized}


func _definition_summary(definition: ActorDefinition) -> Dictionary:
	return {
		"type_id": String(definition.type_id),
		"display_name": definition.display_name,
		"max_hp": definition.max_hp,
		"ai_policy": String(definition.ai_policy),
	}


func _empty_action_counts() -> Dictionary:
	return {"move": 0, "attack": 0, "interact": 0, "wait": 0}


func _empty_action_means() -> Dictionary:
	return {"move": 0.0, "attack": 0.0, "interact": 0.0, "wait": 0.0}


func _empty_combat_metrics() -> Dictionary:
	return {
		"attack_attempts": 0,
		"hits": 0,
		"misses": 0,
		"body_part_disables": 0,
		"damage_dice_rolls": 0,
		"armor_results": {
			"unarmored": 0,
			"full": 0,
			"partial": 0,
			"bypass": 0,
		},
	}


func _add_action_counts(total: Dictionary, values: Dictionary) -> void:
	for action_type in values:
		total[action_type] = int(total.get(action_type, 0)) + int(values[action_type])


func _action_means(counts: Dictionary, completed: int) -> Dictionary:
	var means := {}
	for action_type in counts:
		means[action_type] = float(counts[action_type]) / completed
	return means


func _add_combat_metrics(total: Dictionary, values: Dictionary) -> void:
	for key in ["attack_attempts", "hits", "misses", "body_part_disables", "damage_dice_rolls"]:
		total[key] = int(total.get(key, 0)) + int(values.get(key, 0))
	for outcome in values.armor_results:
		total.armor_results[outcome] = int(total.armor_results.get(outcome, 0)) + int(values.armor_results[outcome])


func _ratio(numerator: int, denominator: int) -> float:
	return float(numerator) / denominator if denominator > 0 else 0.0
