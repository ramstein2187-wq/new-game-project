extends SceneTree

# Supplemental balance evidence; deterministic rule tests remain authoritative.
# Adjacent start, default traits/stats/armor. Stop on separation or incapacity;
# these are encounter samples, not estimates of full-game victory probability.
func _init() -> void:
	var totals := {"attacks": 0, "miss": 0, "full": 0, "partial": 0, "bypass": 0, "unarmored": 0,
		"player_arm_wounded": 0, "rat_leg_wounded": 0, "rat_bite_impaired": 0,
		"rat_defeated": 0, "player_defeated": 0, "separated": 0, "player_attack_lost": 0}
	for seed_value in range(500):
		var game := TimeCostGame.new()
		game.combat_seed = seed_value
		game.reset()
		game.player_position = Vector2i(7, 3)
		for turn in range(30):
			if game.game_over or game.rat_hp <= 0 or not game.can_attack(&"player"):
				break
			if game._manhattan_distance(game.player_position, game.rat_position) != 1:
				totals.separated += 1
				break
			game.player_move(game.rat_position - game.player_position)
		for event in game.combat_log.events:
			if event.type == &"attack":
				totals.attacks += 1
				var key: String = String(event.data.armor_result) if event.data.hit else "miss"
				totals[key] += 1
		if game.bodies[&"player"].state(&"right_arm") != &"healthy":
			totals.player_arm_wounded += 1
		if game.movement_efficiency(&"rat") < 1:
			totals.rat_leg_wounded += 1
		if game.bodies[&"rat"].attack_efficiency(&"bite") < 1:
			totals.rat_bite_impaired += 1
		if game.rat_hp == 0:
			totals.rat_defeated += 1
		if game.game_over:
			totals.player_defeated += 1
		if not game.can_attack(&"player"):
			totals.player_attack_lost += 1
	print("500 adjacent-start encounter samples, combat seeds 0..499: ", totals)
	quit()
