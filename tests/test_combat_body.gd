extends SceneTree

var failures := 0
const Fixture := preload("res://tests/support/combat_fixture.gd")

func _init() -> void:
	call_deferred("_run")

func _run() -> void:
	_test_scores_and_checks()
	_test_armor()
	_test_bodies()
	_test_resolution_and_rng()
	_test_actions_and_ai()
	_test_attack_causes_function_changes()
	await _test_ui()
	if failures == 0:
		print("PASS: combat/body rules, RNG, Action/AI, allocation UI and reset")
	quit(1 if failures else 0)

func expect(condition: bool, reason: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + reason)

func _test_scores_and_checks() -> void:
	var scores := AbilityScores.new()
	expect(scores.scores.size() == 6 and scores.remaining == 12, "Six abilities and twelve points")
	for ability in AbilityScores.NAMES:
		expect(scores.scores[ability] == 10 and scores.get_modifier(ability) == 0, "Default 10/0")
	for index in range(6):
		expect(scores.allocate(&"STR", 1), "Allocate STR")
	expect(not scores.allocate(&"STR", 1), "Upper bound 16")
	for index in range(6):
		scores.allocate(&"DEX", 1)
	expect(not scores.allocate(&"CON", 1) and scores.remaining == 0, "Point budget")
	expect(scores.allocate(&"STR", -1) and scores.remaining == 1, "Refund")
	expect(not scores.allocate(&"INT", -1) and not scores.allocate(&"bad", 1), "Lower bound / unknown")
	scores.reset()
	expect(scores.remaining == 12 and scores.scores.STR == 10, "Reset allocation")
	expect(AbilityScores.modifier(9) == -1 and AbilityScores.modifier(7) == -2, "Negative floor")
	expect(CombatRules.check(8, 1, 2, -1, 10).hit, "Equality succeeds")
	expect(not CombatRules.check(7, 1, 2, -1, 10).hit, "Below DV fails")
	expect(CombatRules.check(1, 20, 0, 0, 10).hit and not CombatRules.check(20, 0, 0, 0, 21).hit, "No natural exceptions")
	for difficulty in range(-5, 30):
		var successes := 0
		for roll in range(1, 21):
			if CombatRules.check(roll, 2, 1, -2, difficulty).hit:
				successes += 1
		expect(is_equal_approx(CombatRules.hit_probability(2, 1, -2, difficulty), successes / 20.0), "Exact hit probability")

func _test_armor() -> void:
	var cases := [[0, 0, 0, 100], [80, 40, 40, 20], [100, 50, 50, 0], [150, 75, 25, 0], [200, 100, 0, 0]]
	for row in cases:
		var p := CombatRules.armor_probabilities(row[0], 0)
		expect(p.full == row[1] and p.partial == row[2] and p.bypass == row[3], "Armor probabilities E=%d" % row[0])
	expect(CombatRules.armor_probabilities(10, 50).effective == 0 and CombatRules.armor_probabilities(300, 0).effective == 200, "E clamps")
	var full := CombatRules.armor_result(100, 20, 39.99, 5, &"Sharp")
	var partial := CombatRules.armor_result(100, 20, 40, 5, &"Sharp")
	var bypass := CombatRules.armor_result(100, 20, 80, 5, &"Sharp")
	expect(full.damage == 0 and full.armor_result == &"full", "Full block")
	expect(partial.damage == 3 and partial.damage_type == &"Blunt", "Half damage rounds up and converts")
	expect(bypass.damage == 5 and bypass.damage_type == &"Sharp", "Bypass boundary")
	expect(CombatRules.armor_result(100, 20, 40, 0, &"Sharp").damage == 0, "Zero stays zero")
	expect(CombatRules.armor_result(100, 20, 40, 5, &"Blunt").damage_type == &"Blunt", "Blunt retained")

func _test_bodies() -> void:
	var template := BodyTemplate.create(true)
	var a := BodyInstance.new(template, &"bite")
	var b := BodyInstance.new(template, &"bite")
	a.apply_damage(&"left_foreleg", 3)
	expect(b.parts.left_foreleg.current == 6 and not template.parts[2].has("current"), "Instances and template are isolated")
	expect(a.state(&"left_foreleg") == &"damaged" and a.attack_efficiency(&"bite") == 1, "Foreleg injury does not affect bite")
	expect(is_equal_approx(a.capability(&"locomotion"), 0.875), "Four leg contribution")
	a.apply_damage(&"head", 4)
	expect(a.attack_efficiency(&"bite") == 0.5, "Head midpoint impairs bite")
	a.apply_damage(&"head", 4)
	expect(a.attack_efficiency(&"bite") == 0, "Head zero disables bite")
	var human := BodyInstance.new(BodyTemplate.create(false), &"weapon_manipulation")
	expect(human.attack_part == &"right_arm", "Bound weapon slot")
	human.apply_damage(&"right_arm", 10)
	expect(human.attack_efficiency(&"weapon_manipulation") == 0.5, "Weapon arm midpoint")
	human.apply_damage(&"right_arm", 10)
	expect(human.attack_efficiency(&"weapon_manipulation") == 0, "No automatic offhand fallback")
	human.apply_damage(&"left_leg", 13)
	expect(human.capability(&"locomotion") == 0.75, "Two leg contribution differs")
	human.apply_damage(&"torso", 20)
	expect(human.efficiency(&"left_arm") == 1, "Parent wound does not destroy children")
	human.apply_damage(&"torso", 20)
	expect(human.efficiency(&"left_arm") == 0 and human.parts.left_arm.current == 20, "Disabled parent gates function without duplicating damage")
	var counts := {}
	for index in range(100):
		var id := b.select_part((index + 0.5) / 100.0)
		counts[id] = counts.get(id, 0) + 1
	expect(counts.get(&"torso") == 45 and counts.get(&"head") == 15 and not counts.has(&"tail"), "Normalized exact weights / tail excluded")
	for id in [&"left_foreleg", &"right_foreleg", &"left_hindleg", &"right_hindleg"]:
		expect(counts.get(id) == 10, "Limb weight")
	b.parts.erase(&"head")
	for index in range(100):
		expect(b.select_part(index / 100.0) != &"head", "Absent parts excluded")
	b.parts.clear()
	expect(b.select_part(0.5) == &"", "Empty body safe")
	b = BodyInstance.new(template, &"bite")
	for part: Dictionary in b.parts.values():
		part.weight = 0
	expect(b.select_part(0.5) == &"", "All-zero weights safe")
	var custom := BodyTemplate.create(false)
	custom.parts[3].id = &"extra_grasper"
	var custom_body := BodyInstance.new(custom, &"weapon_manipulation")
	expect(custom_body.attack_part == &"extra_grasper" and custom_body.attack_efficiency(&"weapon_manipulation") == 1, "Capabilities do not require right_arm ID")

func _test_resolution_and_rng() -> void:
	var game := TimeCostGame.new()
	var state := game.combat_rng.state
	CombatRules.hit_probability(0, 0, 0, 10)
	CombatRules.armor_probabilities(100, 20)
	expect(game.combat_rng.state == state, "Probability queries do not consume RNG")
	# Guaranteed miss with real RNG; only the D20 may be consumed.
	game.abilities[&"rat"].scores[&"DEX"] = 100
	var mirror := RandomNumberGenerator.new()
	mirror.state = game.combat_rng.state
	mirror.randi_range(1, 20)
	var miss := game.resolve_attack(&"player", &"rat")
	expect(not miss.hit and not miss.has("part") and game.combat_rng.state == mirror.state, "Miss skips body/armor rolls")
	expect(game.rat_hp == game.RAT_MAX_HP, "Miss HP unchanged")
	var seen := {}
	for seed_value in range(120):
		game.combat_seed = seed_value
		game.reset()
		game.abilities[&"player"].scores[&"STR"] = 100
		mirror.state = game.combat_rng.state
		mirror.randi_range(1, 20)
		mirror.randf()
		var hit := game.resolve_attack(&"player", &"rat")
		seen[hit.armor_result] = true
		if hit.part == &"torso":
			mirror.randf()
			expect(hit.effective == 80, "Torso E")
		else:
			expect(hit.armor_result == &"unarmored" and not hit.has("armor_roll"), "Only torso armored")
		expect(game.combat_rng.state == mirror.state, "Separate conditional random draws")
		expect(game.rat_hp == game.RAT_MAX_HP - hit.damage and hit.part_after == maxi(0, hit.part_before - hit.damage), "Exactly one HP and part deduction")
	expect(seen.has(&"full") and seen.has(&"partial") and seen.has(&"bypass") and seen.has(&"unarmored"), "Seed sample covers all actual armor outcomes")
	# Ability changes affect the next check and never mutate retained results.
	game.reset()
	state = game.combat_rng.state
	var before := game.resolve_attack(&"player", &"rat")
	game.reset()
	game.abilities[&"player"].allocate(&"STR", 1)
	game.abilities[&"player"].allocate(&"STR", 1)
	var after := game.resolve_attack(&"player", &"rat")
	expect(after.d20 == before.d20 and after.total == before.total + 1 and before.ability_mod == 0, "Next attack stat snapshot")
	game.reset()
	game.abilities[&"rat"].allocate(&"DEX", 1)
	game.abilities[&"rat"].allocate(&"DEX", 1)
	var bite := game.resolve_attack(&"rat", &"player")
	expect(bite.ability == &"DEX" and bite.ability_mod == 1, "Rat uses DEX")
	var defended := game.resolve_attack(&"player", &"rat")
	expect(defended.dv == 11, "Target DEX updates actual DV")
	game.reset()
	game.bodies[&"rat"].parts.clear()
	game.abilities[&"player"].scores[&"STR"] = 100
	var empty := game.resolve_attack(&"player", &"rat")
	expect(empty.no_valid_part and empty.damage == 0, "No candidates safe")
	# Full scheduled action replay, not just random-number equality.
	var first := _replay(9821)
	var second := _replay(9821)
	expect(first == second, "Same seed/actions reproduce state, events, costs and AI")

func _replay(seed_value: int) -> Array:
	var game := TimeCostGame.new()
	game.combat_seed = seed_value
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.rat_aggression = 250
	for step in range(8):
		if game.game_over:
			break
		if not game.player_move(Vector2i.RIGHT):
			game.player_wait()
	var events: Array = []
	for event in game.combat_log.events:
		events.append(CombatLogFormatter.format_debug_event(event))
	return [events, game.player_hp, game.rat_hp, game.bodies[&"player"].parts, game.bodies[&"rat"].parts, game.combat_rng.state]

func _test_actions_and_ai() -> void:
	var game := TimeCostGame.new()
	game.player_position = Vector2i(7, 3)
	game.bodies[&"player"].apply_damage(&"right_arm", 10)
	var hit := game.resolve_attack(&"player", &"rat")
	expect(hit.situation == -2 and game.abilities[&"player"].scores.STR == 10, "Actual arm penalty separate from stats")
	game.bodies[&"player"].apply_damage(&"right_arm", 10)
	var count := game.combat_log.events.size()
	var state := game.combat_rng.state
	expect(not game.player_move(Vector2i.RIGHT), "Disabled weapon attack rejected")
	expect(game.world_time == 0 and game.combat_log.events.size() == count and game.combat_rng.state == state, "Rejected action free and no rolls")
	game.reset()
	game.bodies[&"rat"].apply_damage(&"left_foreleg", 3)
	expect(MoveAction.new(Vector2i.LEFT).get_cost(game, &"rat") == 858, "Injured quadruped actual cost")
	game.player_wait()
	expect(game.combat_log.events[1].action_cost == 858 and game.rat_next_ready_time == 1716, "Approach scheduler uses increased costs once")
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.rat_hp = 10
	game.bodies[&"rat"].apply_damage(&"left_foreleg", 3)
	game.player_wait()
	expect(game.combat_log.events[1].data.ai_goal == &"survive" and game.combat_log.events[1].action_cost == 858, "Retreat shares injured movement cost")
	game.reset()
	game.bodies[&"player"].apply_damage(&"left_leg", 13)
	expect(game.player_move(Vector2i.RIGHT) and game.last_action_cost == 1334, "Player leg increases actual movement cost")
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.bodies[&"rat"].apply_damage(&"head", 4)
	hit = game.resolve_attack(&"rat", &"player")
	expect(hit.situation == -2, "Actual bite injury penalty")
	game.bodies[&"rat"].apply_damage(&"head", 4)
	for id: StringName in game.bodies[&"rat"].parts:
		if game.bodies[&"rat"].parts[id].functions.has(&"locomotion"):
			game.bodies[&"rat"].apply_damage(id, 100)
	game.player_wait()
	expect(game.combat_log.events[1].action_id == &"wait" and game.world_time == 1000, "Incapacitated living rat waits without scheduler stall")
	expect(game.rat_hp == game.RAT_MAX_HP and not game.can_attack(&"rat"), "Vital integrity does not duplicate HP death")
	# Miss consumes normal cost; no damage and no fictitious hit log.
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.abilities[&"rat"].scores[&"DEX"] = 100
	game.player_move(Vector2i.RIGHT)
	expect(game.last_action_cost == 1250 and game.combat_log.events[0].data.damage == 0, "Miss consumes one attack cost")
	expect(CombatLogFormatter.format_player_event(game.combat_log.events[0]).contains("miss"), "Honest miss log")
	# Guaranteed full-block torso fixture still uses the real hit/body/armor pipeline.
	game.reset()
	game.player_position = Vector2i(7, 3)
	game.abilities[&"player"].scores[&"STR"] = 100
	for part: Dictionary in game.bodies[&"rat"].parts.values():
		part.weight = 0
	game.bodies[&"rat"].parts.torso.weight = 1
	game.bodies[&"rat"].parts.torso.armor = 220
	game.player_move(Vector2i.RIGHT)
	var block: CombatEvent = game.combat_log.events[0]
	expect(block.data.damage == 0 and block.data.armor_result == &"full" and block.action_cost == 1250, "Full block consumes one cost")
	expect(game.rat_hp == game.RAT_MAX_HP and CombatLogFormatter.format_player_event(block).contains("blocks"), "Block no injury / honest log")
	game.reset()
	game.player_position = Vector2i(7, 3)
	Fixture.guaranteed_hits(game)
	game.rat_hp = 1
	game.player_move(Vector2i.RIGHT)
	expect(not game.scheduler.has_actor(&"rat") and game.combat_log.events.size() == 1 and game.last_response_count == 0, "Rat death once, no postdeath response")
	game.reset()
	game.player_position = Vector2i(7, 3)
	Fixture.guaranteed_hits(game)
	game.player_hp = 1
	game.player_wait()
	expect(game.game_over and game.last_response_count == 1 and game.combat_log.events.size() == 2, "Player death stops responses once")

func _test_attack_causes_function_changes() -> void:
	var game := TimeCostGame.new()
	Fixture.guaranteed_hits(game)
	# Control target selection only; damage and capabilities use production code.
	for part: Dictionary in game.bodies[&"player"].parts.values():
		part.weight = 1 if part.id == &"right_arm" else 0
	game.resolve_attack(&"rat", &"player")
	game.resolve_attack(&"rat", &"player")
	expect(game.resolve_attack(&"player", &"rat").situation == -2, "Two real arm hits impair attack")
	game.resolve_attack(&"rat", &"player")
	game.resolve_attack(&"rat", &"player")
	expect(not game.can_attack(&"player") and game.player_hp == 30, "Four real arm hits disable attack before HP death")
	game.reset()
	Fixture.guaranteed_hits(game)
	for part: Dictionary in game.bodies[&"rat"].parts.values():
		part.weight = 1 if part.id == &"left_foreleg" else 0
	game.resolve_attack(&"player", &"rat")
	expect(MoveAction.new(Vector2i.LEFT).get_cost(game, &"rat") == 858 and game.can_attack(&"rat"), "Real foreleg hit increases movement cost but preserves bite")
	for part: Dictionary in game.bodies[&"rat"].parts.values():
		part.weight = 1 if part.id == &"head" else 0
	game.resolve_attack(&"player", &"rat")
	expect(game.resolve_attack(&"rat", &"player").situation == -2, "Real head hit impairs bite")
	game.resolve_attack(&"player", &"rat")
	expect(not game.can_attack(&"rat") and game.rat_hp > 0, "Real head hits disable bite on living rat")

func _test_ui() -> void:
	for path in ["res://time_cost/time_cost_test_room.tscn", "res://time_cost/generated_map_combat_playground.tscn"]:
		var scene: Node = load(path).instantiate()
		root.add_child(scene)
		await process_frame
		await process_frame
		var panel: CombatDebugPanel = scene.combat_panel
		var game: TimeCostGame = scene.game
		var plus: Button = panel.find_child("STRPlus", true, false)
		var minus: Button = panel.find_child("STRMinus", true, false)
		plus.pressed.emit()
		plus.pressed.emit()
		expect(game.abilities[&"player"].scores.STR == 12 and panel.points.text.contains("10 / 12"), "UI signal allocates and refreshes")
		minus.pressed.emit()
		expect(game.abilities[&"player"].scores.STR == 11, "UI refund")
		game.bodies[&"player"].apply_damage(&"right_arm", 10)
		game.damage_actor(&"player", 5)
		panel.find_child("ResetAbilities", true, false).pressed.emit()
		expect(game.abilities[&"player"].remaining == 12 and game.player_hp == 45 and game.bodies[&"player"].parts.right_arm.current == 10, "UI reset preserves HP/wounds")
		expect(panel.body_status.text.contains("impaired"), "Injury visible in panel")
		expect(plus.focus_mode == Control.FOCUS_NONE, "Allocation cannot capture wait hotkey")
		var scroll: ScrollContainer = scene.get_node("CanvasLayer/LogScroll")
		expect(not panel.get_global_rect().intersects(scroll.get_global_rect()), "Panel and log have separate bounds")
		if scene.has_node("CanvasLayer/UI"):
			var header: Control = scene.get_node("CanvasLayer/UI")
			expect(header.get_global_rect().end.x <= scroll.position.x, "Fixed-room header does not overlap log")
			expect(header.get_global_rect().end.y <= 280, "Fixed-room header does not overlap map")
		else:
			expect(panel.get_global_rect().end.y <= scroll.position.y, "Generated-map panel stays above log")
		game.reset()
		panel.refresh()
		expect(game.bodies[&"player"].parts.right_arm.current == 20 and game.player_hp == 50, "Full reset restores bodies and HP")
		if scene.has_method("regenerate"):
			scene.regenerate(4321)
			expect(panel.game == scene.game and panel.game != game, "Generated map replaces panel's game binding")
		scene.queue_free()
		await process_frame
