extends RefCounted

# Captured on main e375455 before M031; no fixture recapture in the test path.
static func collect() -> Dictionary:
	var result := {"movement": {}, "paired": {}}
	var definitions: Array[ActorDefinition] = [ActorDefinition.human_default()]
	for entry in CombatContentCatalog.content().actors:
		definitions.append(CombatContentCatalog.actor(entry.definition.type_id))
	for definition in definitions:
		var game := TimeCostGame.new()
		game.actors = ActorRegistry.new()
		var actor := Actor.new(&"player", definition, Vector2i(2, 3))
		game.actors.register(actor)
		var moves: Array = [_costs(game)]
		# Each species: one damaged leg, one disabled leg, all legs disabled.
		var legs := actor.body.functional_parts(&"locomotion", false)
		if not legs.is_empty():
			actor.body.parts[legs[0]].current = 1
			moves.append(_costs(game))
			actor.body.parts[legs[0]].current = 0
			moves.append(_costs(game))
			for leg in legs:
				actor.body.parts[leg].current = 0
			moves.append(_costs(game))
		result.movement[definition.type_id] = moves
	for pair in [[&"rat", &"rat"], [&"feral_dog", &"wolf"], [&"raider", &"giant_beetle"], [&"raider", &"armored_raider"]]:
		var batch := CombatBatchRunner.new().run_matchup(
			CombatContentCatalog.actor(pair[0]), CombatContentCatalog.actor(pair[1]),
			{"run_count": 20, "base_seed": 31000, "max_actions": 500, "max_world_time": 500000})
		result.paired["%s_vs_%s" % pair] = {
			"sha256": JSON.stringify(batch).sha256_text(),
			"errors": batch.simulation_errors, "stalls": batch.stalled_encounters,
			"wins": [batch.combatant_a_wins, batch.combatant_b_wins]}
	return result

static func _costs(game: TimeCostGame) -> Array:
	return [MoveAction.new(Vector2i.RIGHT).get_cost(game, &"player"),
		MoveAction.new(Vector2i(1, 1)).get_cost(game, &"player")]
