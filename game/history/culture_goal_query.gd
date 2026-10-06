class_name CultureGoalQuery
extends RefCounted

# Intent candidates only. No target IDs, execution, facts, capability assertions,
# territory claims or post-start state are created here.
func candidates(profile: Dictionary) -> Array[Dictionary]:
	var rows: Array[Dictionary] = []
	for doctrine: Dictionary in profile.doctrines:
		for goal: Dictionary in doctrine.goal_candidates:
			assert(goal.desire in doctrine.desires)
			rows.append({"id": goal.id, "desire": goal.desire, "source_doctrine_id": doctrine.id,
				"intensity": doctrine.intensity.level, "status": "candidate", "explanation": goal.explanation,
				"provenance": doctrine.provenance.duplicate(true)})
	rows.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return a.source_doctrine_id + "/" + a.id < b.source_doctrine_id + "/" + b.id)
	return rows
