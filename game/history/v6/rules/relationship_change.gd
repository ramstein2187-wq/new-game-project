class_name HistoryV6RelationshipChange
extends HistoryEventRule

const Op = HistoryV6Event.Operation

func _init() -> void:
	id = "relationship_change"

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	var ids := s.active_ids()
	for a in ids:
		for b in ids:
			if a >= b: continue
			# Contact is an observable condition, not a retroactive motive.
			for site_id: String in HistoryWorldState.sorted_ids(s.sites):
				if not s.residents(site_id, a).is_empty() and not s.residents(site_id, b).is_empty():
					out.append(Candidate.new(a, b, site_id))
					break
	return out

func propose(s: HistoryWorldState, c: Candidate, rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target, c.location])
	var old: int = s.relationships.get(HistoryWorldState.pair(c.actor, c.target), 0)
	var options: Array[int] = [-1, 0, 1]
	options.erase(old)
	var value := options[rng.randi_range(0, options.size() - 1)]
	e.effects.append(HistoryV6Event.Effect.new(Op.RELATIONSHIP, c.actor, c.target, "", value, str(old)))
	# A hostile resident can seize contested local use rights; no faction-count target.
	if value == -1 and s.sites[c.location].accessible:
		var owner := s.sites[c.location].owner_id
		if owner in [c.actor, c.target]:
			var taker := c.target if owner == c.actor else c.actor
			e.effects.append(HistoryV6Event.Effect.new(Op.SITE_OWNER, c.location, taker))
	# Changing a relation alone does not prove why it changed. No automatic cause.
	return e
