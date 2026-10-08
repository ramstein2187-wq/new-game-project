class_name HistoryCivilizationScarRule
extends HistoryCivilizationRule

func _init() -> void: id = "civil_scar"; weight = 0.45

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []; var b := s.civilization
	for f in b.facilities.values():
		var owner := s.sites[f.id].owner_id
		# External impact exposure is geographic, never evidence of an Ark interception.
		var impacted := false; var failed := false; var cascaded := false
		for scar in b.scars.values():
			if f.id not in scar.sites: continue
			if scar.kind == "orbital_fall": impacted = true
			if scar.kind == "failed_exodus" and scar.project_id.is_empty(): failed = true
			if scar.kind == "infrastructure_cascade": cascaded = true
		if not impacted and b.localities[f.locality_id].terrain == "surface": add(out, f.id, f.id, "", "impact", 0.3)
		if s.sites[f.id].condition != "ruined" and s.year - f.last_work_year > 30: add(out, f.id, f.id, "", "damage", 0.3)
		if not f.dependency.is_empty() and s.sites[f.dependency].condition == "ruined" and s.sites[f.id].condition != "ruined" and not cascaded: add(out, f.id, f.dependency, f.id, "cascade", 2.0)
		if not failed and not owner.is_empty() and not f.ancient and f.function == "launch" and f.equipment > 0 and f.materials >= 2 and b.usable(s, f.id) and b.headcount(s, f.locality_id, owner) > 10: add(out, owner, f.id, "", "exodus", 0.4)
	for scar in b.scars.values():
		if scar.recovered or scar.residue == 0: continue
		for actor in s.active_ids():
			if b.headcount(s, scar.locality_id, actor) >= 10 and b.facilities[scar.sites[0]].materials > 0: add(out, actor, scar.id, "", "recover", 2.0)
	return out

func propose(s: HistoryWorldState, c: Candidate, rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "scar_" + c.variant)
	match c.variant:
		"impact": effect(e, Op.ORBITAL_IMPACT, unique_id(s, "impact_"), c.target, "", rng.randi_range(1, 2))
		"damage": effect(e, Op.DAMAGE_FACILITY, c.target, "", "", 0, "local_failure")
		"cascade":
			effect(e, Op.CASCADE_FAILURE, unique_id(s, "cascade_"), c.target, c.location)
			cite(e, s, "site_condition", c.target)
		"exodus": effect(e, Op.EXODUS_ATTEMPT, unique_id(s, "failed_launch_"), c.target, "", rng.randi_range(1, 4), "physical_launch_failed")
		"recover":
			effect(e, Op.RECOVER_SCAR, c.target, c.actor, "", s.civilization.scars[c.target].residue)
			cite(e, s, "scar", c.target)
	return e
