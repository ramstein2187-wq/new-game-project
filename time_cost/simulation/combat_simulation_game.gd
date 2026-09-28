class_name CombatSimulationGame
extends TimeCostGame

const SIDE_A_ID: StringName = &"player"
const SIDE_B_ID: StringName = &"rat"
const DEFAULT_SIDE_A_START := Vector2i(2, 3)
const DEFAULT_SIDE_B_START := Vector2i(8, 3)

var side_a_definition: ActorDefinition
var side_b_definition: ActorDefinition
var side_a_start := DEFAULT_SIDE_A_START
var side_b_start := DEFAULT_SIDE_B_START


# Matchup configuration changes only scenario setup. Combat resolution, action
# selection, scheduling and event production continue through TimeCostGame.
func configure_matchup(
	combatant_a: ActorDefinition,
	combatant_b: ActorDefinition,
	combatant_a_start: Vector2i = DEFAULT_SIDE_A_START,
	combatant_b_start: Vector2i = DEFAULT_SIDE_B_START
) -> void:
	side_a_definition = combatant_a
	side_b_definition = combatant_b
	side_a_start = combatant_a_start
	side_b_start = combatant_b_start


# The existing scheduler's player slot is side A. Definitions are injectable so
# the batch layer can compare arbitrary production actors without duplicating combat.
func _create_initial_actors() -> void:
	var definition_a := side_a_definition if side_a_definition != null else ActorDefinition.rat_common()
	var definition_b := side_b_definition if side_b_definition != null else ActorDefinition.rat_common()
	var side_a := Actor.new(SIDE_A_ID, definition_a, side_a_start, "Side A")
	side_a.target_id = SIDE_B_ID
	actors.register(side_a)

	var side_b := Actor.new(SIDE_B_ID, definition_b, side_b_start, "Side B")
	side_b.target_id = SIDE_A_ID
	register_actor(side_b)
