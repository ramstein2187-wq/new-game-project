class_name HistoryCivilizationPopulation
extends HistoryCivilizationRule

func _init() -> void: id = "civil_population"; weight = 1.4

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []; var b := s.civilization
	for pid: String in s.populations:
		var p := s.populations[pid]; var l := b.localities[p.site_id]
		var pressure := b.headcount(s, l.id) > l.capacity or l.hazard > 0
		if pressure and s.year - b.last_moved.get(pid, -100) >= 30:
			for destination in l.neighbors:
				var d := b.localities[destination]
				# A real improvement in safety/space, not arbitrary round-trip wandering.
				if d.passage_open and d.hazard < l.hazard or (d.passage_open and d.hazard == 0 and pressure and b.headcount(s, d.id) + p.size / 2 <= d.capacity and b.headcount(s, d.id) < b.headcount(s, l.id) / 2):
					add(out, p.faction_id, pid, d.id, "partial" if p.size >= 30 else "move", 2.0 if l.hazard > 0 else 1.2)
		for other: String in s.populations:
			var q := s.populations[other]
			if pid < other and p.source_id == q.source_id and p.faction_id == q.faction_id and p.site_id == q.site_id and (p.size < 20 or q.size < 20): add(out, p.faction_id, pid, other, "join")
	return out

func propose(s: HistoryWorldState, c: Candidate, rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "survival_pressure" if c.variant != "join" else "compatible_household_consolidation")
	if c.variant == "partial":
		var p := s.populations[c.target]
		effect(e, Op.DIVIDE_POPULATION, unique_id(s, "group_"), p.id, c.location, rng.randi_range(10, p.size - 10), p.faction_id)
	elif c.variant == "move": effect(e, Op.RELOCATE_POPULATION, c.target, c.actor, c.location)
	else: effect(e, Op.JOIN_POPULATION, c.target, c.location)
	cite(e, s, "population", c.target)
	return e
