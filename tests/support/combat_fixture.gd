extends RefCounted

const FIXED_DAMAGE := 5

# Scheduling/death regression fixtures deliberately guarantee unarmored hits.
# Production D20/armor behavior is tested separately with actual seeded RNG.
static func guaranteed_hits(game: TimeCostGame) -> void:
	for actor: StringName in [&"player", &"rat"]:
		game.get_actor(actor).definition.proficiency_bonus = 100
		game.get_actor(actor).attack.damage_dice = DamageDice.create(FIXED_DAMAGE, 1)
		game.get_actor(actor).attack.ability_rule = AttackDefinition.ABILITY_STR
		for part: Dictionary in game.bodies[actor].parts.values():
			part.armor = -1
