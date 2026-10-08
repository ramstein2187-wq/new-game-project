class_name HistoryInitialWorld
extends RefCounted
## Small local test world, not an assertion about global chronology or new lineages.

static func build(seed: int) -> HistoryWorldState:
	var state := HistoryWorldState.new()
	for i in range(5):
		var site := HistoryWorldState.Site.new()
		site.id = "site_%d" % i
		site.owner_id = "faction_%d" % i if i < 2 else ""
		if i >= 2:
			site.condition = "damaged"
			site.technology_observed = "inert_remains"
		state.sites[site.id] = site
	for i in range(2):
		var f := HistoryWorldState.Faction.new()
		f.id = "faction_%d" % i; f.founded_year = 0; f.split_capacity = 2
		state.factions[f.id] = f
		var source := "source_%d" % i
		state.source_totals[source] = 0; state.source_origins[source] = "human_derived"
		for j in range(3):
			var p := HistoryWorldState.Population.new()
			p.id = "population_%d_%d" % [i, j]; p.source_id = source
			p.faction_id = f.id; p.site_id = "site_%d" % i
			var rng := RandomNumberGenerator.new()
			rng.seed = SeedDeriver.derive(seed, ["history_v6", "initial", p.id])
			p.size = rng.randi_range(20, 45)
			state.source_totals[source] += p.size
			state.populations[p.id] = p
		var a := HistoryWorldState.Artifact.new()
		a.id = "artifact_%d" % i; a.owner_id = f.id; a.site_id = "site_%d" % i
		state.artifacts[a.id] = a
	return state
