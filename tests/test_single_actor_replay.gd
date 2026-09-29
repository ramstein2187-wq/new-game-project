extends SceneTree

# Fixture originated before M019 and is intentionally versioned when a milestone
# changes production combat semantics. --capture remains explicit.
const FIXTURE := "res://tests/fixtures/m027_single_rat_replay.sha256"
const LEGACY_FIXTURE := "res://tests/fixtures/m018_single_rat_replay.sha256"

const ReplayGame := preload("res://tests/support/fixed_combat_game.gd")


func _init() -> void:
	var runs: Array = []
	for seed_value in [17017, 82, 999]:
		var game := ReplayGame.new()
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
	# These unarmored actors must keep the exact M024 mechanics/RNG. Normalize
	# only M027 telemetry and renamed damage types to the prior event schema.
	var legacy_runs: Array = runs.duplicate(true)
	for frames in legacy_runs:
		for frame in frames:
			for event in frame[10]:
				if event[0] != &"attack":
					continue
				var data: Dictionary = event[7]
				for key in ["weapon_name", "weapon_action_id", "attack_name", "required_capability",
					"required_capability_count", "functional_capability_count", "attack_efficiency",
					"cost_multiplier", "damage_modifier", "original_damage_type", "base_armor",
					"armor_profile", "profile_multiplier", "effective_armor", "action_cost"]:
					data.erase(key)
				if data.damage_type in [AttackDefinition.DAMAGE_CUT, AttackDefinition.DAMAGE_PUNCTURE]:
					data.damage_type = "Sharp"
	if JSON.stringify(legacy_runs, "\t").sha256_text() != FileAccess.get_file_as_string(LEGACY_FIXTURE).strip_edges():
		push_error("M027 unarmored mechanics drifted from M024, beyond telemetry/type renaming")
		quit(1)
		return
	var serialized := JSON.stringify(runs, "\t").sha256_text()
	if "--capture" in OS.get_cmdline_user_args():
		var file := FileAccess.open(FIXTURE, FileAccess.WRITE)
		file.store_string(serialized)
	else:
		if FileAccess.get_file_as_string(FIXTURE).strip_edges() != serialized:
			push_error("Single-rat replay changed: positions, damage, body, AI events, clock or RNG (actual %s)" % serialized)
			quit(1)
			return
	print("PASS: M027 replay and normalized M024 mechanics (3 seeds)")
	quit(0)
