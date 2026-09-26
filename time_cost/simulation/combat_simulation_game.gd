class_name CombatSimulationGame
extends TimeCostGame

const SIDE_A_ID: StringName = &"player"
const SIDE_B_ID: StringName = &"rat"


# The existing scheduler's player slot is side A. Both runtime actors are real
# rat definitions with the production tactical policy and reciprocal targets.
func _create_initial_actors() -> void:
	var side_a := Actor.new(SIDE_A_ID, ActorDefinition.rat_common(), Vector2i(2, 3), "Side A")
	side_a.target_id = SIDE_B_ID
	actors.register(side_a)

	var side_b := Actor.new(SIDE_B_ID, ActorDefinition.rat_common(), Vector2i(8, 3), "Side B")
	side_b.target_id = SIDE_A_ID
	register_actor(side_b)
