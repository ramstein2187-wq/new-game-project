extends SceneTree

var failures := 0


func expect(condition: bool, description: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + description)


func _init() -> void:
	_test_production_path()
	_test_deterministic_batch_and_metrics()
	_test_termination_guard()
	if failures == 0:
		print("PASS: deterministic production-combat batch runner, metrics and termination")
	quit(1 if failures else 0)


func _test_production_path() -> void:
	var game := CombatSimulationGame.new()
	game.combat_seed = 71
	game.reset()
	expect(game is TimeCostGame, "Simulation adapter extends the production game")
	expect(game.get_actor(&"player").definition.type_id == &"rat" and game.get_actor(&"rat").definition.type_id == &"rat", "Both sides use rat_common definitions")
	expect(game.get_actor(&"player").ai_policy == &"rat_tactics" and game.get_actor(&"rat").ai_policy == &"rat_tactics", "Both sides use production RatTactics")
	var action := game.choose_ai_action(&"player")
	expect(action is MoveAction, "Side A selects a real production action")
	expect(game.perform_action(&"player", action), "Side A executes through TimeCostGame.perform_action")
	expect(game.combat_log.events.size() >= 2, "Production scheduler emits both sides' CombatEvents")
	for event in game.combat_log.events:
		expect(event.data.has("ai_goal"), "Each AI action retains the production decision trace")
		expect(event.action_cost == 750 or event.action_cost == 1050 or event.action_cost == 1000 or event.action_cost == 500, "Rat action keeps production costs")


func _test_deterministic_batch_and_metrics() -> void:
	var config := {"run_count": 24, "base_seed": 17017, "max_actions": 200, "max_world_time": 200000}
	var runner := CombatBatchRunner.new()
	var first := runner.run(config)
	var second := runner.run(config)
	expect(first == second, "Same settings and seed range produce identical deterministic aggregate results")
	expect(first.encounter_seeds.size() == 24 and first.encounter_seeds[0] == 17017 and first.encounter_seeds[23] == 17040, "Batch uses base_seed + run_index")
	expect(first.run_count == first.completed_runs + first.simulation_errors, "Completed and errors account for every requested run")
	expect(first.completed_runs == first.side_a_wins + first.side_b_wins + first.stalled_runs, "Wins and stalls account for every completed run")
	var action_total := _sum_actions(first.side_a_actions) + _sum_actions(first.side_b_actions)
	expect(is_equal_approx(first.mean_actions * first.completed_runs, action_total), "Mean actions matches event-derived action totals")
	expect(first.mean_world_time >= 0.0, "World-time metric is present")
	expect(first.mean_damage_side_a >= 0.0 and first.mean_damage_side_b >= 0.0, "Actual-damage metrics are present")
	expect(first.mean_damage_side_a <= 30.0 and first.mean_damage_side_b <= 30.0, "Damage uses actual HP loss without overkill")
	expect(first.side_a_actions.attack > 0 and first.side_b_actions.attack > 0, "Both sides' production attacks are counted")


func _test_termination_guard() -> void:
	var action_limited := CombatBatchRunner.new().run_encounter(5, 1, 500000)
	expect(action_limited.outcome == "stalled", "Tiny action limit stops instead of looping")
	expect(action_limited.actions >= 1 and action_limited.world_time >= 0, "Action-limited encounter retains event and time accounting")
	var time_limited := CombatBatchRunner.new().run_encounter(5, 500, 1)
	expect(time_limited.outcome == "stalled", "Tiny world-time limit stops instead of looping")
	expect(time_limited.world_time >= 1, "World-time-limited encounter reports production scheduler time")


func _sum_actions(counts: Dictionary) -> int:
	var total := 0
	for value in counts.values():
		total += int(value)
	return total
