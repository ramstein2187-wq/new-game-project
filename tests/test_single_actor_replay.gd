extends SceneTree

# Production combat semantics intentionally changed when Human Base HP moved from
# the historical 50-point validation value to 30 with CON-derived Max HP.
# Keep the old M027 replay as a compatibility guard and version the new baseline.
const FIXTURE := "res://tests/fixtures/primary_attribute_hp_single_rat_replay.sha256"
const PRE_HP_FIXTURE := "res://tests/fixtures/m027_single_rat_replay.sha256"

const ReplayGame := preload("res://tests/support/fixed_combat_game.gd")


func _init() -> void:
	# The only intended replay drift here is the Human HP baseline. Re-running the
	# same current code with the historical 50 HP must still reproduce M027 exactly.
	var pre_hp_runs := _collect_runs(50)
	var pre_hp_hash := JSON.stringify(pre_hp_runs, "\t").sha256_text()
	if pre_hp_hash != FileAccess.get_file_as_string(PRE_HP_FIXTURE).strip_edges():
		push_error("Combat replay drifted beyond the intentional Human Base HP change")
		quit(1)
		return

	var runs := _collect_runs()
	var serialized := JSON.stringify(runs, "\t").sha256_text()
	if "--capture" in OS.get_cmdline_user_args():
		var file := FileAccess.open(FIXTURE, FileAccess.WRITE)
		file.store_string(serialized)
	else:
		if FileAccess.get_file_as_string(FIXTURE).strip_edges() != serialized:
			push_error("CON/HP replay changed: positions, damage, body, AI events, clock or RNG (actual %s)" % serialized)
			quit(1)
			return
	print("PASS: CON/HP replay and pre-change M027 compatibility (3 seeds)")
	quit(0)


func _collect_runs(forced_player_max_hp: int = -1) -> Array:
	var runs: Array = []
	for seed_value in [17017, 82, 999]:
		var game := ReplayGame.new()
		game.combat_seed = seed_value
		game.reset()
		if forced_player_max_hp > 0:
			var player := game.get_actor(&"player")
			player.max_hp = forced_player_max_hp
			player.hp = forced_player_max_hp
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
	return runs
