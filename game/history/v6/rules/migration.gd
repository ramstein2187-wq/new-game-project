class_name HistoryV6Migration
extends HistoryEventRule

const Op = HistoryV6Event.Operation

func _init() -> void:
	id = "migration"; weight = 2.0

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for group_id: String in s.populations:
		var p := s.populations[group_id]
		for site_id: String in s.sites:
			if s.sites[site_id].accessible and site_id != p.site_id:
				out.append(Candidate.new(p.faction_id, group_id, site_id))
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target, c.location])
	var origin := s.populations[c.target].site_id
	e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_POPULATION, c.target, c.actor, c.location))
	# Custody cannot persist when the last custodian physically leaves.
	if s.residents(origin, c.actor).size() == 1:
		for artifact_id: String in HistoryWorldState.sorted_ids(s.artifacts):
			var a := s.artifacts[artifact_id]
			if a.owner_id == c.actor and a.site_id == origin:
				e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_ARTIFACT, artifact_id, "", origin, 0, "lost"))
	# Only departure from an inaccessible incident site is a displacement effect.
	# Mere residence in a previously damaged area does not establish a motive.
	if not s.sites[origin].accessible: e.cite(s, ["site_condition:" + origin])
	return e
