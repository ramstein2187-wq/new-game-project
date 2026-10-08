class_name HistoryCivilizationFacility
extends HistoryCivilizationRule

func _init() -> void: id = "civil_facility"; weight = 2.0

func candidates(s: HistoryWorldState) -> Array[Candidate]:
	var out: Array[Candidate] = []; var b := s.civilization
	for fid: String in b.facilities:
		var f := b.facilities[fid]; var physical := s.sites[fid]; var region := b.localities[f.locality_id]
		if not physical.owner_id.is_empty() and s.residents(fid, physical.owner_id).is_empty(): add(out, physical.owner_id, fid, "", "abandon")
		for actor in s.active_ids():
			if s.residents(fid, actor).is_empty(): continue
			var need := b.need(s, actor)
			if physical.owner_id.is_empty() and physical.accessible and region.hazard == 0: add(out, actor, fid, "", "occupy", 1.5)
			if physical.owner_id not in ["", actor]: continue
			if f.materials < 2 and region.available_materials(s.year) > 0: add(out, actor, fid, "", "gather", 2.0)
			if physical.condition != "intact" and f.materials >= 2 and region.hazard == 0: add(out, actor, fid, "", "repair", 2.0 if need in ["survival", "shelter", "maintenance"] else 1.0)
			if physical.accessible and f.salvage > 0 and f.materials < 4 and region.hazard == 0: add(out, actor, fid, "", "salvage")
			if physical.owner_id != actor or not b.physical_access(s, fid): continue
			var local_shelter := false
			for shelter in b.facilities.values():
				if shelter.locality_id == f.locality_id and shelter.function == "shelter" and b.usable(s, shelter.id): local_shelter = true
			if not local_shelter and f.function != "shelter" and f.materials >= 3: add(out, actor, fid, "", "build", 2.0)
			var previous := false
			for p in b.projects.values():
				if p.site_id != fid: continue
				previous = true
				if p.status in ["completed", "failed", "abandoned", "unknown"] and s.year - p.changed > 60 and f.function != "shelter" and f.materials > 0: add(out, actor, fid, "shelter", "reuse", 1.5)
			if previous or f.ancient or f.materials < 2 or need in ["survival", "project_maintenance"]: continue
			if f.function == "shelter":
				if f.records + f.samples > 0: add(out, actor, fid, "archive", "prepare")
				if f.equipment > 0:
					add(out, actor, fid, "launch", "prepare", 0.5)
					if region.terrain == "innerworld_entry": add(out, actor, fid, "survey", "prepare", 1.5)
	# Actual information/sample acquisition, through accessible custody at both ends.
	for a in b.facilities.values():
		for z in b.facilities.values():
			if a.id == z.id or z.ancient or z.records + z.samples > 0: continue
			var actor := s.sites[z.id].owner_id
			if actor.is_empty() or not b.physical_access(s, a.id) or not b.physical_access(s, z.id) or s.residents(a.id, actor).is_empty() or s.residents(z.id, actor).is_empty(): continue
			var source_owner := s.sites[a.id].owner_id
			if not source_owner.is_empty() and source_owner != actor and s.relationships.get(HistoryWorldState.pair(source_owner, actor), 0) != 1: continue
			if a.records > 1: add(out, actor, a.id, z.id, "records")
			elif a.samples > 1: add(out, actor, a.id, z.id, "samples")
	return out

func propose(s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
	var e := proposal(s, c, "facility_" + c.variant)
	match c.variant:
		"abandon": effect(e, Op.CIVIL_SITE_OWNER, c.target)
		"occupy": effect(e, Op.CIVIL_SITE_OWNER, c.target, c.actor)
		"repair": effect(e, Op.REPAIR_FACILITY, c.target, c.actor, "", 0, "structural_only" if s.civilization.facilities[c.target].ancient else "local_engineering")
		"salvage": effect(e, Op.RECOVER_MATERIALS, c.target, c.actor, "", mini(3, s.civilization.facilities[c.target].salvage))
		"gather":
			var region := s.civilization.localities[s.civilization.facilities[c.target].locality_id]
			effect(e, Op.GATHER_MATERIALS, c.target, c.actor, "", mini(1 if region.hazard > 1 else 3, region.available_materials(s.year)))
		"build": effect(e, Op.BUILD_FACILITY, unique_id(s, "built_"), c.actor, c.target, 0, "shelter")
		"prepare", "reuse": effect(e, Op.REPURPOSE_FACILITY, c.target, c.actor, "", 0, c.location)
		"records", "samples": effect(e, Op.TRANSFER_RECORDS, c.target, c.location, "", 1, c.variant)
	cite(e, s, "facility", c.target); cite(e, s, "site_condition", c.target); cite(e, s, "site_owner", c.target)
	return e
