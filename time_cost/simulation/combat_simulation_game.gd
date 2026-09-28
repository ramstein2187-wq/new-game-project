class_name CombatSimulationGame
extends TimeCostGame

const SIDE_A_ID: StringName = &"player"
const SIDE_B_ID: StringName = &"rat"
const DEFAULT_SIDE_A_START := Vector2i(2, 3)
const DEFAULT_SIDE_B_START := Vector2i(8, 3)
const ARENA_LEGACY_ROOM: StringName = &"legacy_room_v1"
const ARENA_NEUTRAL_OPEN: StringName = &"neutral_open_v1"

var side_a_definition: ActorDefinition
var side_b_definition: ActorDefinition
var side_a_start := DEFAULT_SIDE_A_START
var side_b_start := DEFAULT_SIDE_B_START
var arena_id: StringName = ARENA_LEGACY_ROOM


# Matchup configuration changes only scenario setup. Combat resolution, action
# selection, scheduling and event production continue through TimeCostGame.
func configure_matchup(
	combatant_a: ActorDefinition,
	combatant_b: ActorDefinition,
	combatant_a_start: Vector2i = DEFAULT_SIDE_A_START,
	combatant_b_start: Vector2i = DEFAULT_SIDE_B_START,
	matchup_arena: StringName = ARENA_LEGACY_ROOM
) -> void:
	side_a_definition = combatant_a
	side_b_definition = combatant_b
	side_a_start = combatant_a_start
	side_b_start = combatant_b_start
	arena_id = matchup_arena


func apply_configured_arena() -> void:
	if arena_id != ARENA_NEUTRAL_OPEN:
		return
	_walls.clear()
	for x in range(GRID_WIDTH):
		_walls[Vector2i(x, 0)] = true
		_walls[Vector2i(x, GRID_HEIGHT - 1)] = true
	for y in range(GRID_HEIGHT):
		_walls[Vector2i(0, y)] = true
		_walls[Vector2i(GRID_WIDTH - 1, y)] = true
	# The legacy room's door coordinate remains a harmless compatibility marker.
	# Keep it open so it cannot affect pathing, timing or AI decisions.
	door_open = true


static func ai_policy_revision(policy: StringName) -> String:
	match policy:
		&"basic_melee":
			return BasicMeleeTactics.POLICY_REVISION
		&"rat_tactics":
			return RatTactics.POLICY_REVISION
		_:
			return "unversioned"


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
