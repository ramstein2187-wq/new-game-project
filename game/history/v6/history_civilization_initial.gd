class_name HistoryCivilizationInitial
extends RefCounted

static func build(seed: int) -> HistoryWorldState:
	var s := HistoryWorldState.new()
	s.civilization = HistoryCivilizationState.new()
	var b := s.civilization
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history_v6", HistoryCivilizationContent.VERSION, "geography"])
	var count := rng.randi_range(6, 9)
	for i in range(count):
		var l := HistoryCivilizationState.Locality.new()
		l.id = "locality_%d" % i; l.capacity = rng.randi_range(70, 130)
		l.terrain = "innerworld_entry" if i == count - 1 else "surface"
		b.localities[l.id] = l
	for i in range(count - 1):
		b.localities["locality_%d" % i].neighbors.append("locality_%d" % (i + 1))
		b.localities["locality_%d" % (i + 1)].neighbors.append("locality_%d" % i)
	for i in range(count - 2):
		if rng.randf() < 0.4:
			b.localities["locality_%d" % i].neighbors.append("locality_%d" % (i + 2))
			b.localities["locality_%d" % (i + 2)].neighbors.append("locality_%d" % i)
	var predecessor := HistoryWorldState.Faction.new()
	predecessor.id = "collapsed_regional_polity"; predecessor.active = false; predecessor.founded_year = -120
	s.factions[predecessor.id] = predecessor
	var factions := rng.randi_range(3, mini(count, 5))
	for i in range(factions):
		var f := HistoryWorldState.Faction.new()
		f.id = "faction_%d" % i; f.parent_id = predecessor.id; f.founded_year = -rng.randi_range(1, 30)
		f.split_capacity = rng.randi_range(1, 3); s.factions[f.id] = f
		b.faction_predecessors[f.id] = [predecessor.id]
		for j in range(2):
			var p := HistoryWorldState.Population.new()
			p.id = "population_%d_%d" % [i, j]; p.source_id = "source_%d" % i
			p.faction_id = f.id; p.site_id = "locality_%d" % i; p.size = rng.randi_range(20, 40)
			s.populations[p.id] = p; s.source_totals[p.source_id] = s.source_totals.get(p.source_id, 0) + p.size
			s.source_origins[p.source_id] = "human_derived"; b.losses[p.source_id] = 0
			b.population_lineage[p.id] = [p.id]
	for i in range(count):
		var site := HistoryWorldState.Site.new()
		site.id = "site_%d" % i
		site.owner_id = "faction_%d" % i if i < factions else ""
		site.condition = "damaged" if rng.randf() < 0.3 else "intact"
		var f := HistoryCivilizationState.Facility.new()
		f.id = site.id; f.locality_id = "locality_%d" % i
		f.kind = "shelter"; f.function = "shelter"
		if i >= factions:
			f.ancient = true; f.kind = "unknown_remains"; site.technology_observed = "inert_remains"
		f.materials = rng.randi_range(5, 12); f.equipment = rng.randi_range(1, 3)
		f.salvage = rng.randi_range(4, 9)
		if i == 0:
			f.records = rng.randi_range(1, 4); f.samples = rng.randi_range(1, 3)
		# Local, human-built power links, never the unknown planetary control network.
		if i == 1: f.function = "power"; f.kind = "local_generator"
		if i == 2: f.dependency = "site_1"
		s.sites[site.id] = site; b.facilities[f.id] = f
		if i < 2:
			var a := HistoryWorldState.Artifact.new()
			a.id = "artifact_%d" % i; a.site_id = site.id; a.owner_id = site.owner_id
			s.artifacts[a.id] = a
	# An authored, local human entry camp can coexist with unknown ancient remains.
	# Its crew is relocated from an existing group; neither people nor a Project are minted.
	if rng.randf() < 0.65:
		var owner := "faction_%d" % (factions - 1)
		var region := "locality_%d" % (count - 1)
		s.populations["population_%d_1" % (factions - 1)].site_id = region
		var physical := HistoryWorldState.Site.new(); physical.id = "entry_camp"; physical.owner_id = owner
		physical.condition = "damaged" if rng.randf() < 0.25 else "intact"
		var camp := HistoryCivilizationState.Facility.new()
		camp.id = physical.id; camp.locality_id = region; camp.kind = "entry_camp"; camp.function = "survey"
		camp.materials = rng.randi_range(3, 9); camp.equipment = rng.randi_range(1, 3)
		camp.salvage = 3; s.sites[physical.id] = physical; b.facilities[camp.id] = camp
	for f in b.facilities.values():
		var quantities := [f.materials, f.equipment, f.records, f.samples, f.salvage, f.survey_records]
		for i in range(6):
			if quantities[i] > 0: f.historical_assets.append(["materials", "equipment", "genomic_records", "samples", "inert_salvage", "survey_records"][i])
	return s
