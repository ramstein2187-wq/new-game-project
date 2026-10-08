class_name HistoryCivilizationProject
extends HistoryCivilizationRule

func _init() -> void: id = "civil_project"; weight = 1.7

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []; var b := s.civilization
	for f in b.facilities.values():
		var actor := s.sites[f.id].owner_id
		if actor.is_empty() or f.ancient or not b.usable(s, f.id): continue
		for d in HistoryCivilizationContent.definitions():
			if f.function != d.function: continue
			var exists := false
			for p in b.projects.values():
				if p.site_id == f.id and p.kind == d.kind: exists = true
			if exists: continue
			var probe := HistoryCivilizationState.Project.new()
			probe.kind = d.kind; probe.site_id = f.id; probe.actor = actor
			if b.blockers(s, probe).is_empty(): add(out, actor, f.id, d.kind, "start")
	for p in b.projects.values():
		if p.status not in ["active", "paused"]: continue
		var blocked := not b.blockers(s, p).is_empty(); var owner := s.sites[p.site_id].owner_id
		if not owner.is_empty() and owner != p.actor and not s.residents(p.site_id, owner).is_empty(): add(out, owner, p.id, p.site_id, "takeover", 2.0)
		if p.attempted and p.status == "active": add(out, p.actor, p.id, p.site_id, "resolve", 3.0); continue
		if p.status == "active" and blocked: add(out, p.actor, p.id, p.site_id, "pause", 2.0)
		if p.status == "paused":
			if not blocked: add(out, p.actor, p.id, p.site_id, "resume", 2.0)
			elif s.year - p.changed >= 50: add(out, p.actor, p.id, p.site_id, "abandon")
		if p.status != "active" or blocked: continue
		if p.invested < HistoryCivilizationContent.project(p.kind).cost: add(out, p.actor, p.id, p.site_id, "invest", 1.6)
		elif s.year - p.started >= HistoryCivilizationContent.project(p.kind).minimum_years: add(out, p.actor, p.id, p.site_id, "attempt", 2.0)
	return out

func propose(s: HistoryWorldState, c: Candidate, rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "project_" + c.variant)
	match c.variant:
		"start": effect(e, Op.START_PROJECT, unique_id(s, "project_"), c.actor, c.target, 0, c.location)
		"invest": effect(e, Op.INVEST_PROJECT, c.target, c.actor)
		"takeover": effect(e, Op.PROJECT_ACTOR, c.target, c.actor)
		"pause", "resume", "abandon": effect(e, Op.PROJECT_STATUS, c.target, "", "", 0, {"pause": "paused", "resume": "active", "abandon": "abandoned"}[c.variant])
		"resolve": effect(e, Op.RESOLVE_PROJECT, c.target)
		"attempt":
			var p := s.civilization.projects[c.target]
			var outcome := "failure" if rng.randf() < 0.4 else "bounded_success"
			if p.kind == "ark": outcome = "failure" if rng.randf() < 0.7 else "unknown"
			effect(e, Op.ATTEMPT_PROJECT, c.target, "", "", 0 if p.kind == "genome_archive" else rng.randi_range(0, 4), outcome)
	if c.variant == "start": cite(e, s, "facility", c.target)
	else:
		cite(e, s, "project", c.target); cite(e, s, "facility", c.location)
		cite(e, s, "site_condition", c.location); cite(e, s, "site_owner", c.location)
		# A trigger is an observed obstruction, not a claim about political intent.
		if c.variant == "pause" and s.fact_events.has("site_condition:" + c.location): e.trigger_keys.append("site_condition:" + c.location)
	return e
