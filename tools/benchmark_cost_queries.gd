extends SceneTree

# Reporting only; never use absolute elapsed times as a test gate.
const ITERATIONS := 2000
const WARMUP := 300
const SAMPLES := 7

func _init() -> void:
	for count in [0, 4, 16]:
		var game := TimeCostGame.new()
		var actor := game.get_actor(&"player")
		for index in range(count):
			var effect := GameplayEffectDefinition.new()
			effect.id = StringName("bench_%02d" % (count - index))
			var speed := StatModifier.new()
			speed.source_id = &"speed"
			speed.target_stat = StatCatalog.MOVEMENT_SPEED
			speed.operation = ModifierOperation.Kind.PERCENT
			speed.value = 0.01
			effect.stat_modifiers.append(speed)
			for operation in [ModifierOperation.Kind.PERCENT, ModifierOperation.Kind.FLAT]:
				var modifier := ActionCostModifier.new()
				modifier.source_id = &"physical"
				modifier.required_tags = [&"PHYSICAL"]
				modifier.operation = operation
				modifier.value = -0.005 if operation == ModifierOperation.Kind.PERCENT else 0.25
				effect.action_cost_modifiers.append(modifier)
			actor.add_effect(effect)
		for action: TimeAction in [MoveAction.new(Vector2i.RIGHT), AttackAction.new(&"rat")]:
			for detailed in [false, true]:
				_query(action, game, detailed, WARMUP)
				var elapsed: Array[int] = []
				var checksum := 0
				for sample in range(SAMPLES):
					var start := Time.get_ticks_usec()
					checksum = _query(action, game, detailed, ITERATIONS)
					elapsed.append(Time.get_ticks_usec() - start)
				var steps := -1
				var rebuilds := -1
				var other_steps := -1
				# BENCH_COUNTERS: runner inserts observation only in a temporary copy.
				elapsed.sort()
				print("BENCH " + JSON.stringify({"effects": count, "action": "move" if action is MoveAction else "attack",
					"detailed": detailed, "iterations": ITERATIONS, "warmup": WARMUP, "samples": SAMPLES,
					"median_us": elapsed[SAMPLES / 2], "min_us": elapsed[0], "max_us": elapsed[-1],
					"steps": steps, "other_steps": other_steps, "rebuilds": rebuilds, "checksum": checksum}))
	quit()

func _query(action: TimeAction, game: TimeCostGame, detailed: bool, iterations: int) -> int:
	var checksum := 0
	for index in range(iterations):
		checksum += int(action.cost_breakdown(game, &"player").cost) if detailed else action.get_cost(game, &"player")
	return checksum
