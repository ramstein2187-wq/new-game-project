extends SceneTree

const Snapshot := preload("res://tests/support/m031_regression_snapshot.gd")
var failures := 0
var assertions := 0

# Spy on public copy boundaries, without timing tests or live-reference access.
class SnapshotSpyActor extends Actor:
	var snapshot_calls := 0
	var instance_snapshot_calls := 0

	func active_effects() -> Array[GameplayEffectDefinition]:
		snapshot_calls += 1
		return super.active_effects()

	func active_effect_instances() -> Array[ActiveEffect]:
		instance_snapshot_calls += 1
		return super.active_effect_instances()

class SnapshotSpyStore extends EffectStore:
	var snapshot_calls := 0

	func snapshots() -> Array[ActiveEffect]:
		snapshot_calls += 1
		return super.snapshots()

# Synthetic physical input for the documented 1000 / 1.25 / .8 example.
class FixedLocomotionGame extends TimeCostGame:
	func movement_efficiency(_actor_id: StringName) -> float:
		return 0.8

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	_attributes()
	_primary_runtime_checks()
	_golden()
	_effects_and_costs()
	_percent_phases()
	_flat_percent_contract()
	_rejections_and_scheduler()
	_validation()
	_zero_copy_resolution()
	_ownership_and_provenance()
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
	var expected_domains := {
		&"STR": "Force", &"DEX": "Execution", &"CON": "Endurance",
		&"PER": "Awareness", &"INT": "Understanding", &"WIL": "Control",
	}
	for stat in StatCatalog.PRIMARY:
		expect(StatCatalog.is_primary(stat) and StatCatalog.primary_domain(stat) == expected_domains[stat], "Primary domain is queryable and stable: " + stat)
	expect(not StatCatalog.is_primary(StatCatalog.MOVEMENT_SPEED) and StatCatalog.primary_domain(StatCatalog.MOVEMENT_SPEED).is_empty(), "Movement speed is not a primary attribute domain")
	for entry in CombatContentCatalog.content().actors:
		expect(entry.instantiate_definition().is_valid(), "All migrated production attributes validate")

func _primary_runtime_checks() -> void:
	var game := TimeCostGame.new()
	var player := game.get_actor(&"player")
	var rat := game.get_actor(&"rat")
	var direct := player.primary_attribute_check(StatCatalog.STR)
	expect(direct.valid and direct.primary == StatCatalog.STR and direct.alternate == &"" and direct.selected == StatCatalog.STR, "A normal check owns exactly one authored primary attribute")
	expect(not player.primary_attribute_check(StatCatalog.MOVEMENT_SPEED).valid, "Non-primary stats cannot enter the primary check path")
	expect(not player.primary_attribute_check(StatCatalog.STR, StatCatalog.STR).valid, "Alternate must be a distinct explicit primary attribute")

	var base_move := MoveAction.new(Vector2i.RIGHT).get_cost(game, player.id)
	player.add_effect(_effect(&"force_training", [_stat(&"training", StatCatalog.STR, ModifierOperation.Kind.FLAT, 4.0)]), &"trait:force_training")
	var force_attack := game.attack_breakdown(player.id)
	expect(force_attack.ability == StatCatalog.STR and force_attack.ability_score == 14.0 and force_attack.ability_modifier == 2, "Combat consumes resolved STR through the shared primary check")
	expect(force_attack.attack_bonus == player.definition.proficiency_bonus + 2, "Resolved primary modifier feeds the existing attack formula")
	expect(MoveAction.new(Vector2i.RIGHT).get_cost(game, player.id) == base_move, "STR changes do not leak into movement speed")
	player.clear_effects()

	player.set_weapon(CombatContentCatalog.weapon(&"hunting_knife"))
	var tied_finesse := game.attack_breakdown(player.id)
	expect(tied_finesse.ability == StatCatalog.STR and tied_finesse.ability_alternate == StatCatalog.DEX, "Explicit alternate ties keep the authored primary deterministically")
	player.add_effect(_effect(&"execution_training", [_stat(&"training", StatCatalog.DEX, ModifierOperation.Kind.FLAT, 4.0)]), &"trait:execution_training")
	var finesse := game.attack_breakdown(player.id)
	expect(finesse.ability == StatCatalog.DEX and finesse.ability_domain == "Execution" and finesse.ability_modifier == 2, "Explicit best STR/DEX rule may select resolved DEX without combining modifiers")
	expect(MoveAction.new(Vector2i.RIGHT).get_cost(game, player.id) == base_move, "DEX/Execution remains separate from movement_speed")
	player.clear_effects()

	rat.add_effect(_effect(&"evasive_execution", [_stat(&"training", StatCatalog.DEX, ModifierOperation.Kind.FLAT, 4.0)]), &"trait:evasive_execution")
	var defense := rat.primary_attribute_check(StatCatalog.DEX)
	var result := game.resolve_attack(player.id, rat.id)
	expect(result.difficulty == 10 + defense.modifier, "Defender difficulty uses resolved DEX through the same one-primary path")

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

func _stat(source: StringName, stat: StringName, operation: ModifierOperation.Kind, value: float) -> StatModifier:
	var modifier := StatModifier.new()
	modifier.source_id = source
	modifier.target_stat = stat
	modifier.operation = operation
	modifier.value = value
	return modifier

func _cost(source: StringName, tags: Array[StringName], value: float, operation: ModifierOperation.Kind = ModifierOperation.Kind.PERCENT) -> ActionCostModifier:
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
	var a := _effect(&"a", [_stat(&"boots", &"movement_speed", ModifierOperation.Kind.FLAT, 0.25)])
	var b := _effect(&"b", [_stat(&"haste", &"movement_speed", ModifierOperation.Kind.PERCENT, 1.0),
		_stat(&"study", &"INT", ModifierOperation.Kind.FLAT, 2.0)])
	expect(actor.add_effect(b) and actor.add_effect(a), "Actor accepts multiple valid effects")
	expect(actor.resolved_stat(&"movement_speed") == 2.25 and actor.resolved_stat(&"INT") == 12.0, "Stat multiplies base then adds flat bonuses; multi-modifier effect")
	expect(actor.definition.movement_speed == 1.0 and actor.abilities.scores[&"INT"] == 10, "Base remains distinct from resolved query")
	expect(move.get_cost(game, actor.id) == 445 and attack.get_cost(game, actor.id) == 1000, "Movement speed affects only Move")
	var speed_trace := actor.stat_breakdown(&"movement_speed")
	expect(speed_trace.steps[1].source == &"haste" and speed_trace.steps[1].result == 2.0 and speed_trace.steps[2].source == &"boots" and speed_trace.steps[2].result == 2.25, "Trace shows base multiplication before flat addition")
	var sibling := Actor.new(&"sibling", ActorDefinition.human_default(), Vector2i.ZERO)
	sibling.add_effect(a)
	sibling.add_effect(b)
	expect(actor.stat_breakdown(&"movement_speed") == sibling.stat_breakdown(&"movement_speed"), "Insertion order independent deterministic stat trace")
	a.stat_modifiers[0].value = 999
	actor.active_effects()[0].stat_modifiers[0].value = 555
	expect(actor.resolved_stat(&"movement_speed") == 2.25 and sibling.resolved_stat(&"movement_speed") == 2.25, "Effect insertion/query snapshots isolated")
	expect(not actor.add_effect(b), "Duplicate effect IDs reject without stacking")
	expect(actor.remove_effect(&"a") and actor.resolved_stat(&"movement_speed") == 2.0, "Removal resolves immediately without stale cache")
	actor.remove_effect(&"b")
	var melee := _effect(&"melee", [], [_cost(&"training", [&"ATTACK", &"MELEE"], -0.5)])
	actor.add_effect(melee)
	expect(attack.get_cost(game, actor.id) == 500 and move.get_cost(game, actor.id) == 1000, "Melee x0.5 all-tag selector")
	actor.add_effect(_effect(&"travel", [], [_cost(&"travel", [&"MOVE"], -0.2)]))
	expect(move.get_cost(game, actor.id) == 800 and attack.get_cost(game, actor.id) == 500, "Move-only effect filters Attack")
	actor.add_effect(_effect(&"physical", [], [_cost(&"burden", [&"PHYSICAL"], 0.1)]))
	expect(move.get_cost(game, actor.id) == 900 and attack.get_cost(game, actor.id) == 600 and InteractAction.new().get_cost(game, actor.id) == 550, "Physical +10% joins each matching action's additive percent pool")
	expect(WaitAction.new().get_cost(game, actor.id) == 1000, "Wait has no PHYSICAL tag")
	actor.remove_effect(&"physical")
	actor.remove_effect(&"melee")
	actor.add_effect(_effect(&"speed", [_stat(&"species_boost", &"movement_speed", ModifierOperation.Kind.FLAT, 1.0 / 3.0)]))
	actor.body.parts[&"left_leg"].current = 1
	var trace := move.cost_breakdown(game, actor.id)
	expect(trace.cost == 800 and trace.steps[1].operation == &"DIVIDE" and trace.steps[2].value == 0.75, "Speed/body/external order: 1000 / 1.3333 / .75 x .8 = 800")
	expect(trace.steps[3].source == &"travel" and trace.steps[3].effect_id == &"travel" and trace.steps[3].result == 800.0, "Cost trace keeps effect source and intermediate")
	expect(trace == move.cost_breakdown(game, actor.id), "Repeated cost trace deterministic")
	actor.remove_effect(&"speed")
	actor.remove_effect(&"travel")
	actor.body.parts[&"left_leg"].current = 25
	# Weapon intrinsic and external deltas sum BEFORE a single ceil.
	actor.equipped_weapon.actions.append(WeaponActionDefinition.create(&"fraction", "Fraction", -0.2499))
	actor.add_effect(_effect(&"fraction_effect", [], [_cost(&"fraction_effect", [&"MELEE"], -0.25)]))
	var special := AttackAction.new(&"rat", &"fraction")
	expect(special.get_cost(game, actor.id) == 501, "One final ceil: 1000 * (1 - .2499 - .25) = 500.1 -> 501")
	var special_trace := special.cost_breakdown(game, actor.id)
	expect(special_trace.steps[1].source == &"weapon_action:fraction" and special_trace.steps[2].source == &"fraction_effect", "Weapon intrinsic precedes external cost modifier")
	actor.remove_effect(&"fraction_effect")
	actor.add_effect(_effect(&"discount", [], [_cost(&"discount", [&"MOVE"], -2000.0, ModifierOperation.Kind.FLAT)]))
	expect(move.get_cost(game, actor.id) == 1, "Minimum positive cost after additive discount")
	game.reset()
	expect(game.get_actor(actor.id).active_effects().is_empty() and move.get_cost(game, actor.id) == 1000, "Reset recreates clean effect state")

func _percent_phases() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	actor.add_effect(_effect(&"a_bonus", [_stat(&"bonus", StatCatalog.STR, ModifierOperation.Kind.FLAT, 4.0)]), &"equipment:test")
	actor.add_effect(_effect(&"z_multiplier", [_stat(&"multiplier", StatCatalog.STR, ModifierOperation.Kind.PERCENT, 0.5)]), &"skill:test")
	var simple := actor.stat_breakdown(StatCatalog.STR)
	expect(simple.base == 10.0 and simple.value == 19.0, "Base STR 10 * 1.5 + 4 = 19, never 21")
	expect(simple.steps.map(func(step): return step.operation) == [&"BASE", &"PERCENT", &"FLAT"], "Stat breakdown phases are BASE, PERCENT, FLAT; final value is explicit")
	expect(simple.steps.map(func(step): return step.result) == [10.0, 15.0, 19.0], "Simple breakdown exposes each intermediate and final result")
	expect(simple.steps[1].effect_id == &"z_multiplier" and simple.steps[1].source_id == &"skill:test" and simple.steps[2].effect_id == &"a_bonus" and simple.steps[2].source_id == &"equipment:test", "Provenance follows multiplier/additive phase order, not global ID order")
	actor.clear_effects()
	# These prefixed IDs also exercise textual rather than native StringName order.
	var a := _effect(&"cost_a")
	var z := _effect(&"cost_z")
	for stat in StatCatalog.ALL:
		# Interleave authored operations to verify phase filtering preserves order.
		a.stat_modifiers.append(_stat(&"a_add1", stat, ModifierOperation.Kind.FLAT, 4.0))
		a.stat_modifiers.append(_stat(&"a_m1", stat, ModifierOperation.Kind.PERCENT, 0.5))
		a.stat_modifiers.append(_stat(&"a_m2", stat, ModifierOperation.Kind.PERCENT, 1.0))
		a.stat_modifiers.append(_stat(&"a_add2", stat, ModifierOperation.Kind.FLAT, -1.0))
		z.stat_modifiers.append(_stat(&"z_add1", stat, ModifierOperation.Kind.FLAT, 3.0))
		z.stat_modifiers.append(_stat(&"z_m1", stat, ModifierOperation.Kind.PERCENT, -0.5))
		z.stat_modifiers.append(_stat(&"z_add2", stat, ModifierOperation.Kind.FLAT, 2.0))
		z.stat_modifiers.append(_stat(&"z_m2", stat, ModifierOperation.Kind.PERCENT, 1.0))
	actor.add_effect(z, &"trait:test")
	actor.add_effect(a, &"skill:test")
	var sibling := Actor.new(&"sibling", ActorDefinition.human_default(), Vector2i.ZERO)
	sibling.add_effect(a, &"skill:test")
	sibling.add_effect(z, &"trait:test")
	for stat in StatCatalog.ALL:
		var trace := actor.stat_breakdown(stat)
		var is_speed: bool = stat == StatCatalog.MOVEMENT_SPEED
		expect(trace.value == (11.0 if is_speed else 38.0), "Percent deltas sum against base; positive/negative flats remain flat: " + stat)
		expect(trace == sibling.stat_breakdown(stat), "Both phases and traces independent of insertion order: " + stat)
		expect(trace.steps.slice(1).map(func(step): return step.source) == [&"a_m1", &"a_m2", &"z_m1", &"z_m2", &"a_add1", &"a_add2", &"z_add1", &"z_add2"], "Lexical effect IDs and authored order preserved within each stat phase: " + stat)
		expect(trace.steps.map(func(step): return step.result) == ([1.0, 1.5, 2.5, 2.0, 3.0, 7.0, 6.0, 9.0, 11.0] if is_speed else [10.0, 15.0, 25.0, 20.0, 30.0, 34.0, 33.0, 36.0, 38.0]), "Each percent contributes base * delta without compounding: " + stat)
	expect(MoveAction.new(Vector2i.RIGHT).get_cost(game, actor.id) == 91, "Move consumes the new movement_speed stat with existing final ceil")
	# Cost flat bonuses are not amplified; intrinsic/external percent deltas sum.
	actor.clear_effects()
	actor.equipped_weapon.actions.append(WeaponActionDefinition.create(&"formula_cost", "Formula cost", 0.5))
	actor.add_effect(_effect(&"cost_a", [], [_cost(&"cost_add", [&"MELEE"], -100.0, ModifierOperation.Kind.FLAT), _cost(&"cost_m1", [&"MELEE"], -0.5)]))
	actor.add_effect(_effect(&"cost_z", [], [_cost(&"cost_m2", [&"MELEE"], 0.25)]))
	var cost := AttackAction.new(&"rat", &"formula_cost").cost_breakdown(game, actor.id)
	expect(cost.unrounded == 1150.0 and cost.cost == 1150, "Cost = 1000 * (1 + .5 - .5 + .25) - 100")
	expect(cost.steps.map(func(step): return float(step.result)) == [1000.0, 1500.0, 1000.0, 1250.0, 1150.0, 1150.0, 1150.0], "Cost shows shared percent pool followed by flat, ceil and minimum")
	expect(cost.steps.map(func(step): return step.operation) == [&"BASE", &"PERCENT", &"PERCENT", &"PERCENT", &"FLAT", &"CEIL", &"MAX"], "Action cost vocabulary and percent-before-flat order")

func _flat_percent_contract() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	for sample in [
		{"p": [], "f": [2.0], "expected": 12.0},
		{"p": [], "f": [2.0, -3.0], "expected": 9.0},
		{"p": [0.2], "f": [], "expected": 12.0},
		{"p": [-0.2], "f": [], "expected": 8.0},
		{"p": [0.2, 0.3], "f": [], "expected": 15.0},
		{"p": [0.5], "f": [4.0], "expected": 19.0},
		{"p": [0.2, 0.3], "f": [4.0, 3.0], "expected": 22.0}]:
		actor.clear_effects()
		var effect := _effect(&"stat_case")
		for i in sample.p.size():
			effect.stat_modifiers.append(_stat(StringName("percent_%d" % i), StatCatalog.STR, ModifierOperation.Kind.PERCENT, sample.p[i]))
		for i in sample.f.size():
			effect.stat_modifiers.append(_stat(StringName("flat_%d" % i), StatCatalog.STR, ModifierOperation.Kind.FLAT, sample.f[i]))
		actor.add_effect(effect, &"system:stat_case")
		var trace := actor.stat_breakdown(StatCatalog.STR)
		expect(is_equal_approx(trace.value, sample.expected), "Stat FLAT/PERCENT example: " + str(sample))
		expect(is_equal_approx(trace.percent_total, sample.p.reduce(func(total, value): return total + value, 0.0)) and trace.flat_total == sample.f.reduce(func(total, value): return total + value, 0.0), "Stat exposes both additive totals")
		expect(trace.base == 10.0 and trace.unrounded == trace.value and trace.steps[-1].result == trace.value, "Stat base, unrounded and final trace agree")
		effect.stat_modifiers.reverse()
		actor.remove_effect(effect.id)
		actor.add_effect(effect)
		expect(is_equal_approx(actor.resolved_stat(StatCatalog.STR), sample.expected), "Reordering authored modifier set does not alter final stat")
	var attack := AttackAction.new(&"rat")
	for sample in [
		{"p": [-0.25, -0.2], "f": [], "expected": 550},
		{"p": [-0.25, 0.1], "f": [], "expected": 850},
		{"p": [], "f": [-100.0], "expected": 900},
		{"p": [-0.2], "f": [100.0], "expected": 900},
		{"p": [-0.6, -0.5], "f": [], "expected": 1},
		{"p": [-1.2], "f": [], "expected": 1}]:
		actor.clear_effects()
		var effect := _effect(&"cost_case")
		for i in sample.p.size():
			effect.action_cost_modifiers.append(_cost(StringName("percent_%d" % i), [&"MELEE"], sample.p[i]))
		for i in sample.f.size():
			effect.action_cost_modifiers.append(_cost(StringName("flat_%d" % i), [&"MELEE"], sample.f[i], ModifierOperation.Kind.FLAT))
		expect(actor.add_effect(effect, &"skill:cost_case"), "Finite action percentages are accepted without caps")
		var trace := attack.cost_breakdown(game, actor.id)
		expect(trace.cost == sample.expected and trace.adjusted_base == 1000.0, "Action cost additive-percent/flat example: " + str(sample))
		expect(is_equal_approx(trace.percent_total, sample.p.reduce(func(total, value): return total + value, 0.0)) and trace.flat_total == sample.f.reduce(func(total, value): return total + value, 0.0), "Cost exposes both additive totals")
		expect(trace.steps[-2].operation == &"CEIL" and trace.steps[-1].operation == &"MAX" and trace.steps[-1].result == trace.cost, "One final ceil then minimum protects all action percentages")
		effect.action_cost_modifiers.reverse()
		actor.remove_effect(effect.id)
		actor.add_effect(effect)
		expect(attack.get_cost(game, actor.id) == sample.expected, "Reordering authored modifier set does not alter delivered cost")
	actor.clear_effects()
	actor.equipped_weapon.actions.append(WeaponActionDefinition.create(&"quick_test", "Quick test", -0.25))
	var quick := AttackAction.new(&"rat", &"quick_test")
	expect(quick.get_cost(game, actor.id) == 750, "Migrated intrinsic -25% has unchanged standalone time")
	var skill := _effect(&"a_skill", [], [_cost(&"training", [&"MELEE"], -0.2)])
	var status := _effect(&"z_status", [], [_cost(&"fatigue", [&"MELEE"], 0.1), _cost(&"other", [&"MELEE"], 50.0, ModifierOperation.Kind.FLAT)])
	actor.add_effect(status, &"status:fatigue")
	actor.add_effect(skill, &"skill:training")
	var combined := quick.cost_breakdown(game, actor.id)
	expect(combined.cost == 700 and is_equal_approx(combined.percent_total, -0.35) and combined.flat_total == 50.0, "Intrinsic -25%, external -20%/+10%, flat +50 -> 700")
	expect(combined.steps[1].source == &"weapon_action:quick_test" and combined.steps[1].operation == &"PERCENT" and combined.steps[1].value == -0.25, "Intrinsic origin and percent delta remain explainable")
	expect(combined.steps[2].effect_id == &"a_skill" and combined.steps[2].source_id == &"skill:training" and combined.steps[2].source == &"training", "External definition/origin/modifier provenance survives shared pool")
	actor.clear_effects()
	actor.add_effect(skill, &"skill:training")
	actor.add_effect(status, &"status:fatigue")
	expect(quick.cost_breakdown(game, actor.id) == combined, "Reversed effect insertion gives identical canonical cost trace")
	actor.clear_effects()
	actor.add_effect(skill)
	expect(quick.get_cost(game, actor.id) == 550, "Weapon -25% plus external -20% gives 550, not 600")
	var move_game := FixedLocomotionGame.new()
	var mover := move_game.get_actor(&"player")
	mover.add_effect(_effect(&"speed", [_stat(&"long_legs", StatCatalog.MOVEMENT_SPEED, ModifierOperation.Kind.PERCENT, 0.25)]))
	mover.add_effect(_effect(&"travel", [], [_cost(&"travel", [&"MOVE"], -0.2), _cost(&"extra", [&"MOVE"], 50.0, ModifierOperation.Kind.FLAT)]))
	var move := MoveAction.new(Vector2i.RIGHT)
	var trace := move.cost_breakdown(move_game, mover.id)
	expect(trace.adjusted_base == 1000.0 and trace.unrounded == 850.0 and trace.cost == 850, "1000 / speed1.25 / Body.8 = adjusted1000; -20% + flat50 =850")
	expect(trace.steps[1].source == &"movement_speed" and trace.steps[2].source == &"body:locomotion" and trace.steps[3].operation == &"PERCENT" and trace.steps[4].operation == &"FLAT", "Physical stages precede action percent/flat pool")
	var invalid_game := TimeCostGame.new()
	var invalid_actor := invalid_game.get_actor(&"player")
	invalid_actor.add_effect(_effect(&"speed_reductions", [_stat(&"slow1", StatCatalog.MOVEMENT_SPEED, ModifierOperation.Kind.PERCENT, -0.6), _stat(&"slow2", StatCatalog.MOVEMENT_SPEED, ModifierOperation.Kind.PERCENT, -0.5)]))
	expect(invalid_actor.resolved_stat(StatCatalog.MOVEMENT_SPEED) < 0.0 and not move.cost_breakdown(invalid_game, invalid_actor.id).valid, "Nonpositive resolved speed rejects Move instead of minimum resurrection")
	_unchanged_rejection(invalid_game, move, "negative percent-resolved movement speed")
	invalid_actor.clear_effects()
	invalid_actor.add_effect(_effect(&"cost_reduction", [], [_cost(&"rare", [&"WAIT"], -1.2)]))
	expect(invalid_game.perform_action(invalid_actor.id, WaitAction.new()) and invalid_game.last_action_cost == 1, "Below -100% action reduction still delivers minimum1 through real scheduler")

func _unchanged_rejection(game: TimeCostGame, action: TimeAction, label: String) -> void:
	var before := [game.world_time, game.player_next_ready_time, game.rat_next_ready_time, game.combat_rng.state, game.combat_log.events.size()]
	expect(not game.perform_action(&"player", action), "Reject: " + label)
	expect(before == [game.world_time, game.player_next_ready_time, game.rat_next_ready_time, game.combat_rng.state, game.combat_log.events.size()], "Rejected time/RNG/events unchanged: " + label)

func _rejections_and_scheduler() -> void:
	var game := TimeCostGame.new()
	_unchanged_rejection(game, AttackAction.new(&"rat"), "out of range")
	_unchanged_rejection(game, MoveAction.new(Vector2i.ZERO), "invalid direction")
	_unchanged_rejection(game, InteractAction.new(Vector2i.ZERO), "invalid interaction")
	game.get_actor(&"player").add_effect(_effect(&"immobile", [_stat(&"immobile", &"movement_speed", ModifierOperation.Kind.FLAT, -1.0)]))
	_unchanged_rejection(game, MoveAction.new(Vector2i.RIGHT), "nonpositive resolved speed")
	game.get_actor(&"player").remove_effect(&"immobile")
	game.get_actor(&"player").add_effect(_effect(&"overflow", [], [_cost(&"overflow", [&"MOVE"], 1e308)]))
	_unchanged_rejection(game, MoveAction.new(Vector2i.RIGHT), "overflow cost")
	game.reset()
	game.rat_hp = 0
	game.scheduler.unregister_actor(&"rat")
	game.get_actor(&"player").add_effect(_effect(&"travel", [], [_cost(&"travel", [&"MOVE"], -0.2)]))
	expect(game.perform_action(&"player", MoveAction.new(Vector2i.RIGHT)) and game.player_next_ready_time == 800 and game.world_time == 800, "Resolved Move cost reaches real scheduler")
	game.reset()
	game.rat_position = game.player_position + Vector2i.RIGHT
	game.get_actor(&"player").add_effect(_effect(&"training", [], [_cost(&"training", [&"MELEE"], -0.5)]))
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
		expect(actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [&"MELEE"], bad)])) == is_finite(bad), "Cost percent accepts finite values without caps and rejects nonfinite data")
		actor.clear_effects()
		expect(actor.add_effect(_effect(&"bad", [_stat(&"bad", &"movement_speed", ModifierOperation.Kind.PERCENT, bad)])) == is_finite(bad), "Stat percent accepts finite values without caps and rejects nonfinite data")
		actor.clear_effects()
	expect(not actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [], 0.0)])), "Empty/global selector rejected")
	expect(not actor.add_effect(_effect(&"bad", [], [_cost(&"bad", [&"TYPO"], 0.0)])), "Unknown tag rejected")
	expect(not actor.add_effect(_effect(&"bad", [_stat(&"", &"movement_speed", ModifierOperation.Kind.FLAT, 1.0)])), "Missing source rejected")

func _zero_copy_resolution() -> void:
	var game := TimeCostGame.new()
	var other_game := TimeCostGame.new()
	var actor := SnapshotSpyActor.new(&"player", ActorDefinition.human_default(), game.player_position)
	game.actors.remove(&"player")
	game.actors.register(actor)
	var sibling := other_game.get_actor(&"player")
	var a := _effect(&"a", [
		_stat(&"first_add", &"movement_speed", ModifierOperation.Kind.FLAT, 0.25),
		_stat(&"second_add", &"movement_speed", ModifierOperation.Kind.FLAT, 0.125),
		_stat(&"first_mul", &"movement_speed", ModifierOperation.Kind.PERCENT, 0.2)], [
		_cost(&"move_add", [&"MOVE"], -11.25, ModifierOperation.Kind.FLAT),
		_cost(&"move_mul", [&"MOVE"], -0.2)])
	var z := _effect(&"z", [_stat(&"last_mul", &"movement_speed", ModifierOperation.Kind.PERCENT, 0.1)], [
		_cost(&"physical", [&"PHYSICAL"], 0.05), _cost(&"melee", [&"MELEE"], -0.5)])
	actor.add_effect(z)
	actor.add_effect(a)
	sibling.add_effect(a)
	sibling.add_effect(z)
	for combatant: Actor in [actor, sibling]:
		combatant.equipped_weapon.actions.append(WeaponActionDefinition.create(&"fraction", "Fraction", -0.4999))
	var before := [game.world_time, game.combat_rng.state, game.combat_log.events.size()]
	var move := MoveAction.new(Vector2i.RIGHT)
	var stat_trace := actor.stat_breakdown(&"movement_speed")
	expect(actor.snapshot_calls == 0 and actor.instance_snapshot_calls == 0, "Stat query resolves without either public snapshot API")
	var cost_trace := move.cost_breakdown(game, actor.id)
	expect(actor.snapshot_calls == 0 and actor.instance_snapshot_calls == 0, "Move resolves stat and external cost phases without snapshots")
	expect(stat_trace == sibling.stat_breakdown(&"movement_speed") and cost_trace == move.cost_breakdown(other_game, sibling.id), "Stat/cost trace independent of effect insertion order")
	expect(not actor.has_method("_ordered_effect_refs") and not actor.has_method("_stat_breakdown_with_effects"), "Actor has no borrowed Resource collection or resolver bridge")
	var first_snapshot := actor.active_effects()
	expect(first_snapshot[0].id == &"a" and first_snapshot[1].id == &"z", "Public snapshots retain deterministic definition ordering")
	var snapshot := actor.active_effects()
	expect(snapshot[0] != first_snapshot[0] and snapshot[0].stat_modifiers[0] != first_snapshot[0].stat_modifiers[0] and snapshot[0].action_cost_modifiers[0] != first_snapshot[0].action_cost_modifiers[0], "Public snapshots deeply isolate both modifier families")
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
	# New semantic golden intentionally replaces legacy arithmetic/schema traces.
	var semantic_hash := (JSON.stringify(first, "  ") + "\n").sha256_text()
	expect(semantic_hash == FileAccess.get_file_as_string("res://tests/fixtures/m031_flat_percent_breakdown.sha256").strip_edges(), "FLAT/PERCENT stat/cost semantic golden: " + semantic_hash)
	expect(actor.snapshot_calls == 0, "Whole golden trace uses the internal zero-copy path")
	expect(actor.active_effects().is_empty() and actor.resolved_stat(&"movement_speed") == 1.0, "Removals restore base immediately without cache")
	actor.add_effect(z)
	expect(actor.resolved_stat(&"movement_speed") == 1.1, "Add after removal immediately affects resolved value")
	actor.remove_effect(z.id)
	expect(before == [game.world_time, game.combat_rng.state, game.combat_log.events.size()], "Zero-copy queries consume no time, RNG or events")

func _ownership_and_provenance() -> void:
	expect(StatCatalog.ALL == [&"STR", &"DEX", &"CON", &"PER", &"INT", &"WIL", &"movement_speed"], "Catalog contains exactly the current seven stat IDs")
	expect(AbilityScores.NAMES == StatCatalog.PRIMARY, "Primary storage/allocation retains catalog's six primary IDs")
	for stat in StatCatalog.ALL:
		expect(StatCatalog.is_known(stat), "Known catalog stat: " + stat)
		expect(_stat(&"catalog_test", stat, ModifierOperation.Kind.FLAT, 1.0).is_valid(), "Modifier accepts catalog stat: " + stat)
	for stat in [&"", &"unknown", &"max_hp", &"accuracy", &"dodge", &"carry_capacity", &"WIS", &"CHA"]:
		expect(not StatCatalog.is_known(stat) and not _stat(&"catalog_test", stat, ModifierOperation.Kind.FLAT, 1.0).is_valid(), "Unknown/future stat remains rejected: " + stat)
	var definition := _effect(&"rapid_attack_discount", [
		_stat(&"training", StatCatalog.STR, ModifierOperation.Kind.FLAT, 2.0)], [
		_cost(&"training", [&"MELEE"], -0.5)])
	var caller_source: StringName = &"skill:rapid_strike"
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	var sibling := Actor.new(&"sibling", ActorDefinition.human_default(), Vector2i.ZERO)
	expect(actor.get("_effect_store") is EffectStore, "Actor delegates ownership to EffectStore")
	expect(actor.add_effect(definition, caller_source), "Apply definition with explicit provenance")
	expect(sibling.add_effect(definition, &"trait:stoic"), "Same authored definition can be applied to another actor")
	expect(actor.has_effect(definition.id) and sibling.has_effect(definition.id), "Both actors own an independent applied instance")
	var snapshot := actor.active_effect_instances()[0]
	expect(snapshot is ActiveEffect and snapshot.definition is GameplayEffectDefinition, "Applied instance and authored definition are distinct types")
	expect(snapshot.definition.id == &"rapid_attack_discount" and snapshot.source_id == caller_source, "Definition identity is distinct from origin")
	expect(sibling.active_effect_instances()[0].source_id == &"trait:stoic", "Sibling has independent provenance")
	var stat := actor.stat_breakdown(StatCatalog.STR)
	var attack := AttackAction.new(&"rat")
	var cost := attack.cost_breakdown(game, actor.id)
	expect(stat.value == 12.0 and cost.cost == 500, "Provenance does not alter stat/cost calculation")
	var stat_step: Dictionary = stat.steps[1]
	expect(stat_step.effect_id == &"rapid_attack_discount" and stat_step.source_id == &"skill:rapid_strike" and stat_step.source == &"training", "Stat breakdown preserves definition, origin and authored modifier label")
	var cost_steps: Array = cost.steps.filter(func(step): return step.has("effect_id"))
	expect(cost_steps.size() == 1 and cost_steps[0].effect_id == &"rapid_attack_discount" and cost_steps[0].source_id == &"skill:rapid_strike" and cost_steps[0].source == &"training", "Action cost breakdown preserves all three provenance identities")
	expect(not _contains_object(stat) and not _contains_object(cost), "Breakdowns expose only value data, never live objects")
	expect(not actor.add_effect(definition, &"equipment:plate_armor"), "Duplicate definition rejects even with a different source; no source stacking")
	expect(actor.active_effect_instances().size() == 1 and actor.active_effect_instances()[0].source_id == &"skill:rapid_strike", "Duplicate rejection leaves original instance/provenance intact")
	caller_source = &"status:changed"
	definition.id = &"changed_definition"
	definition.stat_modifiers[0].value = 999.0
	definition.action_cost_modifiers[0].value = 9.0
	expect(actor.stat_breakdown(StatCatalog.STR) == stat and attack.cost_breakdown(game, actor.id) == cost, "Caller definition edits and source reassignment cannot change applied state")
	expect(sibling.resolved_stat(StatCatalog.STR) == 12.0 and sibling.active_effect_instances()[0].source_id == &"trait:stoic", "Caller mutation does not leak to the sibling")
	snapshot.source_id = &"thought:changed"
	snapshot.definition.id = &"snapshot_id"
	snapshot.definition.stat_modifiers[0].value = 777.0
	snapshot.definition.action_cost_modifiers[0].required_tags.clear()
	expect(actor.stat_breakdown(StatCatalog.STR) == stat and attack.cost_breakdown(game, actor.id) == cost, "ActiveEffect snapshot edits isolate provenance, definition and nested modifiers")
	expect(actor.active_effect_instances()[0] != snapshot and actor.active_effect_instances()[0].source_id == &"skill:rapid_strike", "Every instance query creates an independent safe snapshot")
	stat_step.source_id = &"fake"
	cost_steps[0].value = 666.0
	expect(actor.stat_breakdown(StatCatalog.STR).steps[1].source_id == &"skill:rapid_strike" and attack.cost_breakdown(game, actor.id).cost == 500, "Breakdown mutation cannot change subsequent resolution")
	expect(actor.remove_effect(&"rapid_attack_discount") and not actor.has_effect(&"rapid_attack_discount"), "Explicit removal targets definition identity")
	expect(actor.resolved_stat(StatCatalog.STR) == 10.0 and attack.cost_breakdown(game, actor.id).cost == 1000, "Removal immediately restores stat and cost without cache")
	var fresh := _effect(&"rapid_attack_discount", [_stat(&"training", StatCatalog.STR, ModifierOperation.Kind.FLAT, 2.0)], [_cost(&"training", [&"MELEE"], -0.5)])
	expect(actor.add_effect(fresh, &"equipment:plate_armor") and actor.resolved_stat(StatCatalog.STR) == 12.0, "After removal, a different source can apply the definition")
	actor.clear_effects()
	expect(actor.active_effects().is_empty() and actor.active_effect_instances().is_empty() and not actor.has_effect(fresh.id), "Clear removes every owned instance and both snapshot views")
	expect(actor.resolved_stat(StatCatalog.STR) == 10.0 and attack.cost_breakdown(game, actor.id).cost == 1000, "Clear immediately restores uncached stat/cost results")
	expect(sibling.resolved_stat(StatCatalog.STR) == 12.0, "Actor removal/clear never affects another actor")
	expect(not actor.add_effect(fresh, &""), "Empty instance provenance is rejected")
	expect(actor.add_effect(fresh) and actor.active_effect_instances()[0].source_id == &"system", "Legacy callers receive explicit system provenance")
	var store := SnapshotSpyStore.new()
	expect(store.add(fresh, &"skill:rapid_strike") and store.has(fresh.id), "Standalone EffectStore owns a valid applied instance")
	expect(store.resolve_stat(StatCatalog.STR, 10.0, &"base").value == 12.0, "Store owns stat resolution")
	expect(store.apply_action_cost_modifiers(1000.0, [&"MELEE"]).value == 500.0, "Store owns external cost resolution")
	expect(store.snapshot_calls == 0, "Both store resolutions avoid snapshot/deep-copy APIs")
	var store_snapshot := store.snapshots()[0]
	store_snapshot.definition.stat_modifiers[0].value = 888.0
	store_snapshot.definition.action_cost_modifiers[0].value = 8.0
	store_snapshot.source_id = &"changed"
	expect(store.resolve_stat(StatCatalog.STR, 10.0, &"base").value == 12.0 and store.apply_action_cost_modifiers(1000.0, [&"MELEE"]).value == 500.0, "Direct store snapshots also cannot mutate live state")
	expect(not store.resolve_stat(&"max_hp", 10.0, &"base").valid, "Store rejects unknown stat resolution")
	store.clear()
	expect(not store.has(fresh.id) and store.snapshots().is_empty() and store.resolve_stat(StatCatalog.STR, 10.0, &"base").value == 10.0, "Store clear applies immediately")
	expect(store.add(fresh) and store.remove(fresh.id) and not store.remove(fresh.id), "Store explicit add/remove semantics are immediate and stable")
	expect(not store.has_method("_ordered_effect_refs"), "Store has no live Resource collection getter")

func _contains_object(value: Variant) -> bool:
	if value is Object:
		return true
	if value is Dictionary:
		for key in value:
			if _contains_object(key) or _contains_object(value[key]):
				return true
	elif value is Array:
		for entry in value:
			if _contains_object(entry):
				return true
	return false

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
