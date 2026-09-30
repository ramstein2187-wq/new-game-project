class_name TimeAction
extends RefCounted

const TAGS: Array[StringName] = [&"MOVE", &"ATTACK", &"MELEE", &"INTERACT", &"WAIT", &"PHYSICAL"]

# An action decides whether it is legal and applies one atomic game-state change.
# The game records its CombatEvent; the scheduler only advances the actor's time.
var reason_codes: Array[StringName] = []
# Optional NPC decision trace. Only visible_cue may become player-facing text.
var ai_goal: StringName = &""
var ai_score := 0
var ai_factors: Dictionary = {}
var ai_candidates: Array[Dictionary] = []
var visible_cue: StringName = &""


func can_execute(_game: RefCounted, _actor_id: StringName) -> bool:
	return false


func get_cost(game: RefCounted, actor_id: StringName) -> int:
	return int(cost_breakdown(game, actor_id).cost)

func cost_breakdown(game: RefCounted, actor_id: StringName) -> Dictionary:
	return ActionCostResolver.resolve(self, game, actor_id)

func base_cost() -> float:
	return 0.0

func cost_source() -> StringName:
	return &"action"

func get_tags() -> Array[StringName]:
	return []

func intrinsic_cost(_game: RefCounted, _actor_id: StringName) -> Dictionary:
	return {"valid": true, "source": &"", "value": 0.0}


func execute(_game: RefCounted, _actor_id: StringName, _cost: int) -> CombatEvent:
	return null
