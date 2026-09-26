extends SceneTree

# Fixture captured from main b232dce before M019. --capture is deliberately
# explicit; normal verification never rewrites expected outcomes.
const FIXTURE := "res://tests/fixtures/m018_single_rat_replay.sha256"

func _init() -> void:
	var runs: Array = []
	for seed_value in [17017, 82, 999]:
		var game := TimeCostGame.new()
		game.combat_seed = seed_value
		game.reset()
		game.door_open = true
		game.player_position = Vector2i(6, 3)
		game.rat_aggression = 180
		var frames: Array = []
		for turn in range(30):
			if game.game_over:
				break
			var direction := game.rat_position - game.player_position
			if game.can_melee_reach(game.player_position, game.rat_position) and game.rat_hp > 0:
				game.player_move(direction)
			else:
				game.player_wait()
			var events: Array = []
			for event in game.combat_log.events:
				events.append([event.type, event.actor_id, event.target_id, event.action_id,
					event.time, event.action_cost, event.reason_codes, event.data])
			frames.append([game.player_position, game.rat_position, game.player_hp, game.rat_hp,
				game.world_time, game.player_next_ready_time, game.rat_next_ready_time,
				str(game.combat_rng.state), game.bodies[&"player"].parts,
				game.bodies[&"rat"].parts, events])
		runs.append(frames)
	var serialized := JSON.stringify(runs, "\t").sha256_text()
	if "--capture" in OS.get_cmdline_user_args():
		var file := FileAccess.open(FIXTURE, FileAccess.WRITE)
		file.store_string(serialized)
	else:
		if FileAccess.get_file_as_string(FIXTURE) != serialized:
			push_error("Single-rat replay changed: positions, damage, body, AI events, clock or RNG")
			quit(1)
			return
	print("PASS: pre-M019 single-rat replay (3 seeds)")
	quit(0)
