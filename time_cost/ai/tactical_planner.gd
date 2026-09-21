class_name TacticalPlanner
extends RefCounted

# Generic scorer: candidate generation belongs to the NPC's policy, not here.
# The first candidate wins score ties for deterministic results. New TimeAction
# subclasses can be submitted without changing this planner or TimeScheduler.
static func choose(game: RefCounted, actor_id: StringName, candidates: Array[TacticalChoice]) -> TacticalChoice:
	var best: TacticalChoice = null
	var considered: Array[Dictionary] = []
	for candidate in candidates:
		if candidate == null or candidate.action == null:
			continue
		if not candidate.action.can_execute(game, actor_id):
			continue
		if candidate.action.get_cost(game, actor_id) <= 0:
			continue
		var script: Script = candidate.action.get_script() as Script
		var action_name: String = String(script.get_global_name()) if script != null else ""
		if action_name.is_empty():
			action_name = candidate.action.get_class()
		considered.append({"action": action_name, "goal": candidate.goal, "score": candidate.score})
		if best == null or candidate.score > best.score:
			best = candidate
	if best == null:
		return null
	best.action.reason_codes = best.reasons.duplicate()
	best.action.ai_goal = best.goal
	best.action.ai_score = best.score
	best.action.ai_factors = best.factors.duplicate(true)
	best.action.ai_candidates = considered.duplicate(true)
	best.action.visible_cue = best.visible_cue
	return best
