class_name InteractAction
extends TimeAction

const BASE_COST := 500

var target_cell: Vector2i
var operation: StringName = &"interact"


func _init(cell: Vector2i = Vector2i.ZERO, verb: StringName = &"interact") -> void:
	target_cell = cell
	operation = verb


func can_execute(game: RefCounted, actor_id: StringName) -> bool:
	return game.interaction_unavailable_reason(actor_id, target_cell, operation).is_empty()


func base_cost() -> float:
	return {&"clear": 1500, &"repair": 2000, &"stabilize": 1500, &"travel": 2000}.get(operation, BASE_COST)

func cost_source() -> StringName:
	return &"interact"

func get_tags() -> Array[StringName]:
	return [&"INTERACT", &"PHYSICAL"]


func execute(game: RefCounted, actor_id: StringName, cost: int) -> CombatEvent:
	return game.execute_interaction(actor_id, target_cell, operation, cost)
