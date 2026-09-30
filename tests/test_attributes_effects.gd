extends SceneTree

const Snapshot := preload("res://tests/support/m031_regression_snapshot.gd")
var failures := 0
var assertions := 0

# Spy on the public copy boundary and internal collection, without timing tests.
class SnapshotSpyActor extends Actor:
	var snapshot_calls := 0
	var effect_collections := 0

	func active_effects() -> Array[GameplayEffectDefinition]:
		snapshot_calls += 1
		return super.active_effects()

	func _ordered_effect_refs() -> Array[GameplayEffectDefinition]:
		effect_collections += 1
		return super._ordered_effect_refs()

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	_attributes()
	_golden()
	_effects_and_costs()
	_rejections_and_scheduler()
	_validation()
	_zero_copy_resolution()
	if failures == 0:
		print("PASS: M031 attributes/effects, movement and paired golden (%d assertions)" % assertions)
	quit(1 if failures else 0)

func _attributes() -> void:
	expect(AbilityScores.NAMES == [&"STR", &"DEX", &"CON", &"PER", &"INT", &"WIL"], "Exactly six primary attributes in required order")
	var scores := AbilityScores.new()
	expect(scores.scores.size() == 6 and scores.remaining == 12, "Same six defaults / point budget")
	for score in range(1, 21):
		expect(AbilityScores.modifier(score) == floori((score - 10) / 2.0), "Original modifier including negative floor")
	for attribute in [&"PER", &"WIL"]:
		for point in range(6):
			expect(scores.allocate(attribute, 1), "New attribute accepts existing allocation")
		expect(not scores.allocate(attribute, 1), "Original allocation upper bound")
	expect(scores.remaining == 0 and not scores.allocate(&"STR", 1), "Original total allocation cap")
	expect(scores.allocate(&"PER", -1) and scores.remaining == 1, "Refund unchanged")
	expect(not scores.allocate(&"STR", -1) and not scores.allocate(&"PER", 2), "Lower bound and delta unchanged")
	for obsolete in [&"WIS", &"CHA"]:
		expect(not scores.allocate(obsolete, 1) and not scores.scores.has(obsolete), "Obsolete attributes absent and unallocatable")
		scores.scores[obsolete] = 10
	scores.reset()
	expect(scores.scores.size() == 6, "Reset clears obsolete keys")
	for entry in CombatContentCatalog.content().actors:
		expect(entry.instantiate_definition().is_valid(), "All migrated production attributes validate")

func _golden() -> void:
	var golden: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/m031_no_effect_golden.json"))
	var actual := Snapshot.collect()
	for id in golden.movement:
		for state in range(golden.movement[id].size()):
			for direction in range(2):
				expect(actual.movement[id][state][direction] == int(golden.movement[id][state][direction]), "Movement golden %s state %d direction %d" % [id, state, direction])
		expect(actual.movement[id][0][1] * 10 == actual.movement[id][0][0] * 14, "Healthy diagonal exactly 1.4x: " + id)
	for pair in golden.paired:
		expect(actual.paired[pair].sha256 == golden.paired[pair].sha256, "Exact production paired metrics golden: " + pair)
		expect(actual.paired[pair].errors == 0, "No simulation errors: " + pair)

func _stat(source: StringName, stat: StringName, operation: StatModifier.Operation, value: float) -> StatModifier:
	var modifier := StatModifier.new()
	modifier.source_id = source
	modifier.target_stat = stat
	modifier.operation = operation
	modifier.value = value
	return modifier

func _cost(source: StringName, tags: Array[StringName], value: float, operation: StatModifier.Operation = StatModifier.Operation.MULTIPLY) -> ActionCostModifier:
	var modifier := ActionCostModifier.new()
	modifier.source_id = source
	modifier.required_tags = tags
	modifier.operation = operation
	modifier.value = value
	return modifier

func _effect(id: StringName, stats: Array[StatModifier] = [], costs: Array[ActionCostModifier] = []) -> GameplayEffectDefinition:
	var effect := GameplayEffectDefinition.new()
	effect.id = id
	effect.stat_modifiers = stats
	effect.action_cost_modifiers = costs
	return effect

func _effects_and_costs() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	var move := MoveAction.new(Vector2i.RIGHT)
	var attack := AttackAction.new(&"rat")
	expect(move.get_cost(game, actor.id) == 1000 and attack.get_cost(game, actor.id) == 1000, "No-effect standard costs")
	expect(InteractAction.new().get_cost(game, actor.id) == 500 and WaitAction.new().get_cost(game, actor.id) == 1000, "Action-owned interact/wait costs")
	var a := _effect(&"a", [_stat(&"boots", &"movement_speed", StatModifier.Operation.ADD, 0.25)])
	var b := _effect(&"b", [_stat(&"haste", &"movement_speed", StatModifier.Operation.MULTIPLY, 2.0),
		_stat(&"study", &"INT", StatModifier.Operation.ADD, 2.0)])
	expect(actor.add_effect(b) and actor.add_effect(a), "Actor accepts multiple valid effects")
	expect(actor.resolved_stat(&"movement_speed") == 2.5 and actor.resolved_stat(&"INT") == 12.0, "Stat ADD then MULTIPLY; multi-modifier effect")
	expect(actor.definition.movement_speed == 1.0 and actor.abilities.scores[&"INT"] == 10, "Base remains distinct from resolved query")
	expect(move.get_cost(game, actor.id) == 400 and attack.get_cost(game, actor.id) == 1000, "Movement speed affects only Move")
	var speed_trace := actor.stat_breakdown(&"movement_speed")
	expect(speed_trace.steps[1].source == &"boots" and speed_trace.steps[1].result == 1.25 and speed_trace.steps[2].source == &"haste" and speed_trace.steps[2].result == 2.5, "Source / operation / intermediate stat trace")
	var sibling := Actor.new(&"sibling", ActorDefinition.human_default(), Vector2i.ZERO)
	sibling.add_effect(a)
	sibling.add_effect(b)
	expect(actor.stat_breakdown(&"movement_speed") == sibling.stat_breakdown(&"movement_speed"), "Insertion order independent deterministic stat trace")
	a.stat_modifiers[0].value = 999
	actor.active_effects()[0].stat_modifiers[0].value = 555
	expect(actor.resolved_stat(&"movement_speed") == 2.5 and sibling.resolved_stat(&"movement_speed") == 2.5, "Effect insertion/query snapshots isolated")
	expect(not actor.add_effect(b), "Duplicate effect IDs reject without stacking")
	expect(actor.remove_effect(&"a") and actor.resolved_stat(&"movement_speed") == 2.0, "Removal resolves immediately without stale cache")
	actor.remove_effect(&"b")
	var melee := _effect(&"melee", [], [_cost(&"training", [&"ATTACK", &"MELEE"], 0.5)])
	actor.add_effect(melee)
	expect(attack.get_cost(game, actor.id) == 500 and move.get_cost(game, actor.id) == 1000, "Melee x0.5 all-tag selector")
	actor.add_effect(_effect(&"travel", [], [_cost(&"travel", [&"MOVE"], 0.8)]))
	expect(move.get_cost(game, actor.id) == 800 and attack.get_cost(game, actor.id) == 500, "Move-only effect filters Attack")
	actor.add_effect(_effect(&"physical", [], [_cost(&"burden", [&"PHYSICAL"], 1.1)]))
	expect(move.get_cost(game, actor.id) == 880 and attack.get_cost(game, actor.id) == 550 and InteractAction.new().get_cost(game, actor.id) == 550, "Physical x1.1 includes movement/melee/interact")
	expect(WaitAction.new().get_cost(game, actor.id) == 1000, "Wait has no PHYSICAL tag")
	actor.remove_effect(&"physical")
	actor.remove_effect(&"melee")
	actor.add_effect(_effect(&"speed", [_stat(&"species_boost", &"movement_speed", StatModifier.Operation.ADD, 1.0 / 3.0)]))
	actor.body.parts[&"left_leg"].current = 1
	var trace := move.cost_breakdown(game, actor.id)
	expect(trace.cost == 800 and trace.steps[1].operation == &"DIVIDE" and trace.steps[2].value == 0.75, "Speed/body/external order: 1000 / 1.3333 / .75 x .8 = 800")
	expect(trace.steps[3].source == &"travel" and trace.steps[3].effect_id == &"travel" and trace.steps[3].result == 800.0, "Cost trace keeps effect source and intermediate")
	expect(trace == move.cost_breakdown(game, actor.id), "Repeated cost trace deterministic")
	actor.remove_effect(&"speed")
	actor.remove_effect(&"travel")
	actor.body.parts[&"left_leg"].current = 25
	# Weapon intrinsic and external fractions compose BEFORE a single ceil.
	actor.equipped_weapon.actions.append(WeaponActionDefinition.create(&"fraction", "Fraction", 0.5001))
	actor.add_effect(_effect(&"fraction_effect", [], [_cost(&"fraction_effect", [&"MELEE"], 0.5)]))
	var special := AttackAction.new(&"rat", &"fraction")
	expect(special.get_cost(game, actor.id) == 251, "One final ceil: 1000 x .5001 x .5 = 250.05 -> 251")
	var special_trace := special.cost_breakdown(game, actor.id)
	expect(special_trace.steps[1].source == &"weapon_action:fraction" and special_trace.steps[2].source == &"fraction_effect", "Weapon intrinsic precedes external cost modifier")
	actor.remove_effect(&"fraction_effect")
	actor.add_effect(_effect(&"discount", [], [_cost(&"discount", [&"MOVE"], -2000.0, StatModifier.Operation.ADD)]))
	expect(move.get_cost(game, actor.id) == 1, "Minimum positive cost after additive discount")
	game.reset()
	expect(game.get_actor(actor.id).active_effects().is_empty() and move.get_cost(game, actor.id) == 1000, "Reset recreates clean effect state")

func _unchanged_rejection(game: TimeCostGame, action: TimeAction, label: String) -> void:
	var before := [game.world_time, game.player_next_ready_time, game.rat_next_ready_time, game.combat_rng.state, game.combat_log.events.size()]
	expect(not game.perform_action(&"player", action), "Reject: " + label)
	expect(before == [game.world_time, game.player_next_ready_time, game.rat_next_ready_time, game.combat_rng.state, game.combat_log.events.size()], "Rejected time/RNG/events unchanged: " + label)

func _rejections_and_scheduler() -> void:
	var game := TimeCostGame.new()
	_unchanged_rejection(game, AttackAction.new(&"rat"), "out of range")
	_unchanged_rejection(game, MoveAction.new(Vector2i.ZERO), "invalid direction")
	_unchanged_rejection(game, InteractAction.new(Vector2i.ZERO), "invalid interaction")
	game.get_actor(&"player").add_effect(_effect(&"immobile", [_stat(&"immobile", &"movement_speed", StatModifier.Operation.ADD, -1.0)]))
	_unchanged_rejection(game, MoveAction.new(Vector2i.RIGHT), "nonpositive resolved speed")
	game.get_actor(&"player").remove_effect(&"immobile")
	game.get_actor(&"player").add_effect(_effect(&"overflow", [], [_cost(&"overflow", [&"MOVE"], 1e308)]))
	_unchanged_rejection(game, MoveAction.new(Vector2i.RIGHT), "overflow cost")
	game.reset()
	game.rat_hp = 0
	game.scheduler.unregister_actor(&"rat")
	game.get_actor(&"player").add_effect(_effect(&"travel", [], [_cost(&"travel", [&"MOVE"], 0.8)]))
	expect(game.perform_action(&"player", MoveAction.new(Vector2i.RIGHT)) and game.player_next_ready_time == 800 and game.world_time == 800, "Resolved Move cost reaches real scheduler")
	game.reset()
	game.rat_position = game.player_position + Vector2i.RIGHT
	game.get_actor(&"player").add_effect(_effect(&"training", [], [_cost(&"training", [&"MELEE"], 0.5)]))
	expect(game.perform_action(&"player", AttackAction.new(&"rat")) and game.last_action_cost == 500 and game.combat_log.events[0].action_cost == 500, "Resolved melee cost reaches real execution/event/scheduler")
	var scheduler := TimeScheduler.new()
	scheduler.reset()
	scheduler.register_actor(&"first")
	scheduler.register_actor(&"second")
	scheduler.advance_actor(&"player", 500)
	expect(scheduler.take_next_actor_before_player() == &"first", "Registration priority preserved")
	scheduler.advance_actor(&"first", 500)
	expect(scheduler.take_next_actor_before_player() == &"second", "Second ready NPC still executes")
	scheduler.advance_actor(&"second", 500)
	expect(scheduler.take_next_actor_before_player() == &"" and scheduler.world_time == 500, "Player wins exact tie without removing pending NPCs")

func _validation() -> void:
	var definition := ActorDefinition.human_default()
	for bad in [0.0, -1.0, INF, NAN]:
		definition.movement_speed = bad
		expect(not definition.is_valid(), "Invalid base movement speed rejected")
	definition.movement_speed = 1.0
	definition.initial_scores[&"WIS"] = 10
	expect(not definition.is_valid(), "Obsolete authored ability rejected")
	var actor := Actor.new(&"test", ActorDefinition.human_default(), Vector2i.ZERO)
	expect(not actor.stat_breakdown(&"unknown").valid, "Unknown stat rejected")
	expect(not actor.add_effect(_effect(&"empty")), "Empty effect rejected")
	for bad in [0.0, -1.0, INF, NAN]:
		expect(not actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [&"MELEE"], bad)])), "Invalid cost multiplier rejected")
		expect(not actor.add_effect(_effect(&"bad", [_stat(&"bad", &"movement_speed", StatModifier.Operation.MULTIPLY, bad)])), "Invalid stat multiplier rejected")
	expect(not actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [], 1.0)])), "Empty/global selector rejected")
	expect(not actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [&"TYPO"], 1.0)])), "Unknown tag rejected")
	expect(not actor.add_effect(_effect(&"bad", [_stat(&"", &"movement_speed", StatModifier.Operation.ADD, 1.0)])), "Missing source rejected")

func _zero_copy_resolution() -> void:
	var game := TimeCostGame.new()
	var other_game := TimeCostGame.new()
	var actor := SnapshotSpyActor.new(&"player", ActorDefinition.human_default(), game.player_position)
	game.actors.remove(&"player")
	game.actors.register(actor)
	var sibling := other_game.get_actor(&"player")
	var a := _effect(&"a", [
		_stat(&"first_add", &"movement_speed", StatModifier.Operation.ADD, 0.25),
		_stat(&"second_add", &"movement_speed", StatModifier.Operation.ADD, 0.125),
		_stat(&"first_mul", &"movement_speed", StatModifier.Operation.MULTIPLY, 1.2)], [
		_cost(&"move_add", [&"MOVE"], -11.25, StatModifier.Operation.ADD),
		_cost(&"move_mul", [&"MOVE"], 0.8)])
	var z := _effect(&"z", [_stat(&"last_mul", &"movement_speed", StatModifier.Operation.MULTIPLY, 1.1)], [
		_cost(&"physical", [&"PHYSICAL"], 1.05), _cost(&"melee", [&"MELEE"], 0.5)])
	actor.add_effect(z)
	actor.add_effect(a)
	sibling.add_effect(a)
	sibling.add_effect(z)
	for combatant: Actor in [actor, sibling]:
		combatant.equipped_weapon.actions.append(WeaponActionDefinition.create(&"fraction", "Fraction", 0.5001))
	var before := [game.world_time, game.combat_rng.state, game.combat_log.events.size()]
	var move := MoveAction.new(Vector2i.RIGHT)
	var stat_trace := actor.stat_breakdown(&"movement_speed")
	expect(actor.snapshot_calls == 0 and actor.effect_collections == 1, "Stat query borrows once without public snapshot calls")
	actor.effect_collections = 0
	var cost_trace := move.cost_breakdown(game, actor.id)
	expect(actor.snapshot_calls == 0 and actor.effect_collections == 1, "Move shares one borrowed view across stat and both cost phases")
	expect(stat_trace == sibling.stat_breakdown(&"movement_speed") and cost_trace == move.cost_breakdown(other_game, sibling.id), "Stat/cost trace independent of effect insertion order")
	var refs := actor._ordered_effect_refs()
	expect(refs.is_read_only() and refs[0].id == &"a" and refs[1].id == &"z", "Internal view container is read-only and explicitly ID-sorted")
	expect(refs[0] == actor._ordered_effect_refs()[0], "Internal queries return same owned Resource refs rather than duplicates")
	var snapshot := actor.active_effects()
	expect(snapshot[0] != refs[0] and snapshot[0].stat_modifiers[0] != refs[0].stat_modifiers[0] and snapshot[0].action_cost_modifiers[0] != refs[0].action_cost_modifiers[0], "Public snapshots deeply isolate both modifier families")
	snapshot[0].id = &"poison"
	snapshot[0].stat_modifiers[0].value = 999.0
	snapshot[0].action_cost_modifiers[0].value = 888.0
	snapshot[1].action_cost_modifiers[0].required_tags.clear()
	snapshot.clear()
	a.stat_modifiers[0].value = 777.0
	a.action_cost_modifiers[0].value = 666.0
	actor.snapshot_calls = 0
	for query in range(3):
		expect(actor.stat_breakdown(&"movement_speed") == stat_trace and move.cost_breakdown(game, actor.id) == cost_trace, "Caller/snapshot mutations cannot alter repeated resolver traces")
	expect(actor.snapshot_calls == 0, "Repeated internal resolution never calls public snapshot API")
	var first := _followup_trace_records(game)
	var second := _followup_trace_records(other_game)
	expect(JSON.stringify(first, "  ") == JSON.stringify(second, "  "), "Stat/cost source ordering and authored modifier order identical across insertion orders")
	# Captured with b5eced0 BEFORE this optimization (33,120 bytes), not recaptured.
	expect((JSON.stringify(first, "  ") + "\n").sha256_text() == "22e1a215b0c217a4c9df42dbbaace239f3c0704eff5dd32b256f9f8a3cef34c0", "Exact pre-follow-up stat/cost breakdown golden including injury and removals")
	expect(actor.snapshot_calls == 0, "Whole golden trace uses the internal zero-copy path")
	expect(actor.active_effects().is_empty() and actor.resolved_stat(&"movement_speed") == 1.0, "Removals restore base immediately without cache")
	actor.add_effect(z)
	expect(actor.resolved_stat(&"movement_speed") == 1.1, "Add after removal immediately affects resolved value")
	actor.remove_effect(z.id)
	expect(before == [game.world_time, game.combat_rng.state, game.combat_log.events.size()], "Zero-copy queries consume no time, RNG or events")

func _followup_trace_records(game: TimeCostGame) -> Array:
	var actor := game.get_actor(&"player")
	var records: Array = []
	for integrity in [25, 1, 0]:
		actor.body.parts[&"left_leg"].current = integrity
		var costs: Array = []
		for action: TimeAction in [MoveAction.new(Vector2i.RIGHT), MoveAction.new(Vector2i(1, 1)), AttackAction.new(&"rat"), AttackAction.new(&"rat", &"fraction"), InteractAction.new(), WaitAction.new()]:
			costs.append(action.cost_breakdown(game, actor.id))
		records.append({"stat": actor.stat_breakdown(&"movement_speed"), "costs": costs})
	actor.remove_effect(&"a")
	records.append({"stat": actor.stat_breakdown(&"movement_speed"), "cost": MoveAction.new(Vector2i.RIGHT).cost_breakdown(game, actor.id)})
	actor.remove_effect(&"z")
	records.append({"stat": actor.stat_breakdown(&"movement_speed"), "cost": MoveAction.new(Vector2i.RIGHT).cost_breakdown(game, actor.id)})
	return records
