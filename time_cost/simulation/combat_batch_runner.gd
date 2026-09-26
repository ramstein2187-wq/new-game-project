class_name CombatBatchRunner
extends RefCounted

const SCENARIO := "rat_vs_rat"
const DEFAULT_RUN_COUNT := 1000
const DEFAULT_BASE_SEED := 0
const DEFAULT_MAX_ACTIONS := 500
const DEFAULT_MAX_WORLD_TIME := 500000

const SIDE_A_ID: StringName = CombatSimulationGame.SIDE_A_ID
const SIDE_B_ID: StringName = CombatSimulationGame.SIDE_B_ID


func run(config: Dictionary = {}) -> Dictionary:
	var run_count := int(config.get("run_count", DEFAULT_RUN_COUNT))
	var base_seed := int(config.get("base_seed", DEFAULT_BASE_SEED))
	var max_actions := int(config.get("max_actions", DEFAULT_MAX_ACTIONS))
	var max_world_time := int(config.get("max_world_time", DEFAULT_MAX_WORLD_TIME))
	if run_count <= 0 or max_actions <= 0 or max_world_time <= 0:
		return {"configuration_error": "run_count, max_actions and max_world_time must be positive"}

	var result := {
		"scenario": SCENARIO,
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
		"side_a_actions": _empty_action_counts(),
		"side_b_actions": _empty_action_counts(),
		"side_a_actions_per_encounter": _empty_action_means(),
		"side_b_actions_per_encounter": _empty_action_means(),
		"encounter_seeds": [],
		"error_details": [],
	}
	var total_actions := 0
	var total_world_time := 0
	var total_damage_side_a := 0
	var total_damage_side_b := 0

	for run_index in range(run_count):
		var encounter_seed := base_seed + run_index
		result.encounter_seeds.append(encounter_seed)
		var encounter := run_encounter(encounter_seed, max_actions, max_world_time)
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
		total_actions += int(encounter.actions)
		total_world_time += int(encounter.world_time)
		total_damage_side_a += int(encounter.damage_side_a)
		total_damage_side_b += int(encounter.damage_side_b)
		_add_action_counts(result.side_a_actions, encounter.side_a_actions)
		_add_action_counts(result.side_b_actions, encounter.side_b_actions)

	var completed: int = result.completed_runs
	if completed > 0:
		result.side_a_win_rate = float(result.side_a_wins) / completed
		result.side_b_win_rate = float(result.side_b_wins) / completed
		result.mean_actions = float(total_actions) / completed
		result.mean_world_time = float(total_world_time) / completed
		result.mean_damage_side_a = float(total_damage_side_a) / completed
		result.mean_damage_side_b = float(total_damage_side_b) / completed
		result.side_a_actions_per_encounter = _action_means(result.side_a_actions, completed)
		result.side_b_actions_per_encounter = _action_means(result.side_b_actions, completed)
	return result


func run_encounter(encounter_seed: int, max_actions: int, max_world_time: int) -> Dictionary:
	var game := CombatSimulationGame.new()
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
		"side_a_actions": _empty_action_counts(),
		"side_b_actions": _empty_action_counts(),
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
		if event.type != &"attack" or not known_hp.has(event.target_id):
			continue
		var before := int(known_hp[event.target_id])
		var after := int(event.data.get("remaining_hp", before))
		var actual_damage := maxi(0, before - after)
		known_hp[event.target_id] = after
		if event.actor_id == SIDE_A_ID:
			encounter.damage_side_a += actual_damage
		elif event.actor_id == SIDE_B_ID:
			encounter.damage_side_b += actual_damage


func _empty_action_counts() -> Dictionary:
	return {"move": 0, "attack": 0, "interact": 0, "wait": 0}


func _empty_action_means() -> Dictionary:
	return {"move": 0.0, "attack": 0.0, "interact": 0.0, "wait": 0.0}


func _add_action_counts(total: Dictionary, values: Dictionary) -> void:
	for action_type in values:
		total[action_type] = int(total.get(action_type, 0)) + int(values[action_type])


func _action_means(counts: Dictionary, completed: int) -> Dictionary:
	var means := {}
	for action_type in counts:
		means[action_type] = float(counts[action_type]) / completed
	return means
