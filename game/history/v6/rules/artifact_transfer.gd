class_name HistoryV6ArtifactTransfer
extends HistoryEventRule

func _init() -> void:
	id = "artifact_transfer_loss"

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for artifact_id: String in s.artifacts:
		var a := s.artifacts[artifact_id]
		if a.status == "held": out.append(Candidate.new(a.owner_id, artifact_id, a.site_id, "lost"))
		for p in s.populations.values():
			if not s.sites[p.site_id].accessible: continue
			if a.status == "lost" and p.site_id != a.site_id: continue
			if a.owner_id == p.faction_id and a.site_id == p.site_id: continue
			var c := Candidate.new(p.faction_id, artifact_id, p.site_id, "held")
			if out.any(func(row: Candidate) -> bool: return row.key == c.key): continue
			out.append(c)
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target, c.location])
	var owner := c.actor if c.variant == "held" else ""
	e.effects.append(HistoryV6Event.Effect.new(HistoryV6Event.Operation.MOVE_ARTIFACT, c.target, owner, c.location, 0, c.variant))
	if s.artifacts[c.target].status == "lost": e.cite(s, ["artifact:" + c.target])
	return e
