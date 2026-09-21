extends RefCounted

# Scheduling/death regression fixtures deliberately guarantee unarmored hits.
# Production D20/armor behavior is tested separately with actual seeded RNG.
static func guaranteed_hits(game: TimeCostGame) -> void:
	for actor: StringName in [&"player", &"rat"]:
		game.species[actor].attack_ability = &"STR"
		game.abilities[actor].scores[&"STR"] = 100
		for part: Dictionary in game.bodies[actor].parts.values():
			part.armor = -1
