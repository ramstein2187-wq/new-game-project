class_name HistoryV6FactionSplit
extends HistoryEventRule

const Op = HistoryV6Event.Operation

func _init() -> void:
	id = "faction_split"; weight = 0.4

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []
	for faction_id in s.active_ids():
		var groups := s.groups(faction_id)
		if s.factions[faction_id].split_capacity <= 0 or groups.size() < 2: continue
		for group in groups:
			out.append(Candidate.new(faction_id, group, "", "retain"))
			out.append(Candidate.new(faction_id, group, "", "replace"))
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := event(c.actor, [c.target])
	var child := "faction_%d" % s.factions.size()
	var other := "faction_%d" % (s.factions.size() + 1)
	var capacity := s.factions[c.actor].split_capacity - 1
	e.effects.append(HistoryV6Event.Effect.new(Op.CREATE_FACTION, child, c.actor, "", capacity))
	if c.variant == "replace": e.effects.append(HistoryV6Event.Effect.new(Op.CREATE_FACTION, other, c.actor, "", capacity))
	e.effects.append(HistoryV6Event.Effect.new(Op.SPEND_SPLIT_CAPACITY, c.actor))
	var moved := s.copy()
	for group in s.groups(c.actor):
		if c.variant == "retain" and group != c.target: continue
		var destination := child if group == c.target else other
		e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_POPULATION, group, destination, s.populations[group].site_id))
		moved.populations[group].faction_id = destination
	for site_id: String in HistoryWorldState.sorted_ids(s.sites):
		if c.variant != "replace" or s.sites[site_id].owner_id != c.actor: continue
		e.effects.append(HistoryV6Event.Effect.new(Op.SITE_OWNER, site_id))
		for successor in [child, other]:
			if not moved.residents(site_id, successor).is_empty() and s.sites[site_id].accessible:
				e.effects.append(HistoryV6Event.Effect.new(Op.SITE_OWNER, site_id, successor))
				break
	for artifact_id: String in HistoryWorldState.sorted_ids(s.artifacts):
		var artifact := s.artifacts[artifact_id]
		if artifact.owner_id != c.actor or not moved.residents(artifact.site_id, c.actor).is_empty(): continue
		var custodian := child if not moved.residents(artifact.site_id, child).is_empty() else other
		if s.sites[artifact.site_id].accessible:
			e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_ARTIFACT, artifact_id, custodian, artifact.site_id, 0, "held"))
		else:
			e.effects.append(HistoryV6Event.Effect.new(Op.MOVE_ARTIFACT, artifact_id, "", artifact.site_id, 0, "lost"))
	if c.variant == "replace": e.effects.append(HistoryV6Event.Effect.new(Op.RETIRE_FACTION, c.actor))
	# Birth can establish an eligible faction. A group's earlier movement does
	# not explain its later political secession; do not cite that movement.
	e.cite(s, ["faction:" + c.actor])
	return e
