class_name HistoryCivilizationCustody
extends HistoryCivilizationRule

func _init() -> void: id = "civil_custody"; weight = 0.7

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for a in s.artifacts.values():
		if a.status != "lost" or not s.civilization.physical_access(s, a.site_id): continue
		var actor := s.sites[a.site_id].owner_id
		if actor.is_empty() or s.residents(a.site_id, actor).is_empty() or s.civilization.localities[s.civilization.facilities[a.site_id].locality_id].hazard > 0: continue
		add(out, actor, a.id, a.site_id, "recover")
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "recover_actual_local_object")
	effect(e, Op.MOVE_ARTIFACT, c.target, c.actor, c.location, 0, "held")
	cite(e, s, "artifact", c.target)
	return e
