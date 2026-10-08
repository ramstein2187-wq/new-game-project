class_name HistoryV6SiteReoccupation
extends HistoryEventRule

func _init() -> void:
	id = "site_reoccupation"; weight = 3.0

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for site_id: String in s.sites:
		var site := s.sites[site_id]
		if not site.owner_id.is_empty() or not site.accessible: continue
		for faction_id in s.active_ids():
			var residents := s.residents(site_id, faction_id)
			if not residents.is_empty(): out.append(Candidate.new(faction_id, site_id, residents[0]))
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target, c.location])
	e.effects.append(HistoryV6Event.Effect.new(HistoryV6Event.Operation.SITE_OWNER, c.target, c.actor))
	e.cite(s, ["population:" + c.location, "site_owner:" + c.target])
	return e
