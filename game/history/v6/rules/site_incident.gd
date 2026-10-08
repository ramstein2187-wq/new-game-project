class_name HistoryV6SiteIncident
extends HistoryEventRule

const Op = HistoryV6Event.Operation

func _init() -> void:
	id = "site_incident"; weight = 0.4

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for site_id: String in s.sites:
		var site := s.sites[site_id]
		if site.accessible and not site.owner_id.is_empty():
			out.append(Candidate.new(site.owner_id, site_id))
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target])
	var condition := "damaged" if s.sites[c.target].condition == "intact" else "ruined"
	e.effects.append(HistoryV6Event.Effect.new(Op.SITE_CONDITION, c.target, "", "", 0, condition))
	e.effects.append(HistoryV6Event.Effect.new(Op.SITE_OWNER, c.target))
	for artifact_id: String in HistoryWorldState.sorted_ids(s.artifacts):
		var a := s.artifacts[artifact_id]
		if a.site_id == c.target and a.status == "held":
			e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_ARTIFACT, artifact_id, "", c.target, 0, "lost"))
	return e
