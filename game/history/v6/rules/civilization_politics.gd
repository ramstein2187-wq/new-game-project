class_name HistoryCivilizationPolitics
extends HistoryCivilizationRule

func _init() -> void: id = "civil_politics"; weight = 0.65

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []; var b := s.civilization
	for actor in s.active_ids():
		var groups := s.groups(actor); var regions: Array[String] = []
		for group in groups:
			if s.populations[group].site_id not in regions: regions.append(s.populations[group].site_id)
		if s.factions[actor].split_capacity > 0 and regions.size() > 1:
			add(out, actor, groups.back(), "", "split", 1.5)
			if s.year > 100: add(out, actor, groups.back(), "", "successor", 0.5)
		for other in s.active_ids():
			if actor >= other: continue
			for f in b.facilities.values():
				if s.residents(f.id, actor).is_empty() or s.residents(f.id, other).is_empty(): continue
				var physical := s.sites[f.id]
				if physical.owner_id in [actor, other] and physical.condition == "damaged" and f.materials >= 2 and b.localities[f.locality_id].hazard == 0: add(out, actor, other, f.id, "cooperate", 2.0)
				if physical.owner_id in [actor, other] and s.relationships.get(HistoryWorldState.pair(actor, other), 0) != -1 and b.headcount(s, f.locality_id) > b.localities[f.locality_id].capacity: add(out, physical.owner_id, other if physical.owner_id == actor else actor, f.id, "dispute")
				if s.relationships.get(HistoryWorldState.pair(actor, other), 0) == 1 and groups.size() <= 2: add(out, actor, other, f.id, "absorb", 0.3)
				if s.relationships.get(HistoryWorldState.pair(actor, other), 0) == -1 and physical.owner_id in [actor, other]:
					var claimant: String = other if physical.owner_id == actor else actor
					if b.headcount(s, f.locality_id, claimant) > b.headcount(s, f.locality_id, physical.owner_id): add(out, claimant, physical.owner_id, f.id, "contest", 0.5)
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "political_" + c.variant)
	if c.variant in ["cooperate", "dispute", "absorb", "contest"]: e.participants.append(c.target)
	if c.variant in ["split", "successor"]:
		var child := unique_id(s, "polity_")
		effect(e, Op.CREATE_FACTION, child, c.actor)
		effect(e, Op.SPEND_SPLIT_CAPACITY, c.actor)
		var groups: Array[String] = []
		if c.variant == "successor": groups = s.groups(c.actor)
		else: groups.append(c.target)
		for group in groups: effect(e, Op.RELOCATE_POPULATION, group, child, s.populations[group].site_id)
		for site in s.sites.values():
			if site.owner_id != c.actor: continue
			var child_present := false; var parent_present := false
			for group in s.residents(site.id, c.actor):
				if group in groups: child_present = true
				else: parent_present = true
			if child_present and not parent_present: effect(e, Op.CIVIL_SITE_OWNER, site.id, child, "", 0, "successor")
			elif c.variant == "successor": effect(e, Op.CIVIL_SITE_OWNER, site.id)
		for artifact in s.artifacts.values():
			if artifact.owner_id == c.actor and artifact.status == "held" and not s.residents(artifact.site_id, c.actor).is_empty():
				var stays := false
				for group in s.residents(artifact.site_id, c.actor):
					if group not in groups: stays = true
				if not stays: effect(e, Op.MOVE_ARTIFACT, artifact.id, child, artifact.site_id, 0, "held")
		if c.variant == "successor": effect(e, Op.RETIRE_FACTION, c.actor)
		cite(e, s, "faction", c.actor)
	elif c.variant == "absorb":
		effect(e, Op.ABSORB_FACTION, c.actor, c.target)
	elif c.variant in ["cooperate", "dispute"]:
		effect(e, Op.SHARE_MAINTENANCE if c.variant == "cooperate" else Op.CONTEST_CUSTODY, c.location, c.actor, "", 0, c.target)
		cite(e, s, "facility", c.location); cite(e, s, "site_condition", c.location)
	else:
		effect(e, Op.CIVIL_SITE_OWNER, c.location, c.actor, "", 0, "contest")
		cite(e, s, "site_owner", c.location)
	return e
