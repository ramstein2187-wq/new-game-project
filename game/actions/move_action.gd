class_name MoveAction
extends TimeAction

const CARDINAL_BASE_COST := 1000
const DIAGONAL_BASE_COST := 1400

var direction: Vector2i


func _init(move_direction: Vector2i = Vector2i.ZERO) -> void:
	direction = move_direction


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	if game.movement_efficiency(actor_id) <= 0:
		return false
	if not game.MOVE_DIRECTIONS.has(direction):
		return false
	var target: Vector2i = game.get_actor_position(actor_id) + direction
	return game.can_step(game.get_actor_position(actor_id), direction) and not game.blocks_actor_movement(target, actor_id)


func base_cost() -> float:
	return DIAGONAL_BASE_COST if direction.x != 0 and direction.y != 0 else CARDINAL_BASE_COST

func cost_source() -> StringName:
	return &"move:diagonal" if direction.x != 0 and direction.y != 0 else &"move:cardinal"

func get_tags() -> Array[StringName]:
	return [&"MOVE", &"PHYSICAL"]


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	var start: Vector2i = game.get_actor_position(actor_id)
	var target := start + direction
	game.set_actor_position(actor_id, target)
	var event: CombatEvent = game.make_action_event(&"move", actor_id, &"move", cost)
	var adjacent: bool = actor_id != &"player" and game.actor_is_alive(game.get_actor(actor_id).target_id) and game.can_melee_reach(target, game.get_actor_position(game.get_actor(actor_id).target_id))
	event.importance = CombatEvent.IMPORTANT if adjacent or visible_cue == &"retreat" else CombatEvent.TRIVIAL
	event.data = {"from": start, "to": target, "in_melee_range": adjacent}
	return event
