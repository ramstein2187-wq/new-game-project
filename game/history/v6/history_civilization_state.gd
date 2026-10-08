class_name HistoryCivilizationState
extends RefCounted
## Optional, typed Phase B state. Geography survives loss of an individual facility.

class Locality extends RefCounted:
	var id: String
	var terrain: String = "surface"
	var neighbors: Array[String] = []
	var capacity: int = 100
	var hazard: int = 0
	var passage_open: bool = true
	var material_reserve: int = 8
	var gathered_year: int = 0
	func available_materials(year: int) -> int: return mini(8, material_reserve + maxi(0, year - gathered_year) / 40)
	func data() -> Array: return [id, terrain, neighbors.duplicate(), capacity, hazard, passage_open, material_reserve, gathered_year]
	func copy() -> Locality:
		var r := Locality.new()
		r.id = id; r.terrain = terrain; r.neighbors = neighbors.duplicate()
		r.capacity = capacity; r.hazard = hazard; r.passage_open = passage_open
		r.material_reserve = material_reserve; r.gathered_year = gathered_year
		return r

class Facility extends RefCounted:
	var id: String
	var locality_id: String
	var kind: String = "shelter"
	var function: String = "shelter"
	var ancient: bool = false
	var dependency: String
	var materials: int = 0
	var equipment: int = 0
	var records: int = 0
	var samples: int = 0
	var survey_records: int = 0
	var salvage: int = 0
	var last_work_year: int = -100
	var historical_assets: Array[String] = []
	func data() -> Array:
		return [id, locality_id, kind, function, ancient, dependency, materials, equipment,
			records, samples, salvage, last_work_year, historical_assets.duplicate(), survey_records]
	func copy() -> Facility:
		var r := Facility.new()
		r.id = id; r.locality_id = locality_id; r.kind = kind; r.function = function
		r.ancient = ancient; r.dependency = dependency; r.materials = materials
		r.equipment = equipment; r.records = records; r.samples = samples
		r.salvage = salvage; r.last_work_year = last_work_year
		r.historical_assets = historical_assets.duplicate()
		r.survey_records = survey_records
		return r

class Project extends RefCounted:
	var id: String
	var kind: String
	var initiator: String
	var actor: String
	var site_id: String
	var goal: String
	var status: String = "active"
	var started: int
	var changed: int
	var invested: int = 0
	var attempted: bool = false
	var outcome: String = "unresolved"
	var event_ids: Array[String] = []
	func data() -> Array:
		return [id, kind, initiator, actor, site_id, goal, status, started, changed,
			invested, attempted, outcome, event_ids.duplicate()]
	func copy() -> Project:
		var r := Project.new()
		r.id = id; r.kind = kind; r.initiator = initiator; r.actor = actor; r.site_id = site_id
		r.goal = goal; r.status = status; r.started = started; r.changed = changed
		r.invested = invested; r.attempted = attempted; r.outcome = outcome
		r.event_ids = event_ids.duplicate()
		return r

class Scar extends RefCounted:
	var id: String
	var kind: String
	var locality_id: String
	var sites: Array[String] = []
	var project_id: String
	var event_id: String
	var residue: int = 0
	var hazard: int = 0
	var recovered: bool = false
	var later_events: Array[String] = []
	func data() -> Array:
		return [id, kind, locality_id, sites.duplicate(), project_id, event_id,
			residue, hazard, recovered, later_events.duplicate()]
	func copy() -> Scar:
		var r := Scar.new()
		r.id = id; r.kind = kind; r.locality_id = locality_id; r.sites = sites.duplicate()
		r.project_id = project_id; r.event_id = event_id; r.residue = residue
		r.hazard = hazard; r.recovered = recovered; r.later_events = later_events.duplicate()
		return r

var localities: Dictionary[String, Locality] = {}
var facilities: Dictionary[String, Facility] = {}
var projects: Dictionary[String, Project] = {}
var scars: Dictionary[String, Scar] = {}
var losses: Dictionary[String, int] = {}
var population_lineage: Dictionary[String, Array] = {}
var faction_predecessors: Dictionary[String, Array] = {}
var faction_absorptions: Dictionary[String, Array] = {}
var last_moved: Dictionary[String, int] = {}
var retired_populations: Array[String] = []

func copy() -> HistoryCivilizationState:
	var r := HistoryCivilizationState.new()
	for id: String in localities: r.localities[id] = localities[id].copy()
	for id: String in facilities: r.facilities[id] = facilities[id].copy()
	for id: String in projects: r.projects[id] = projects[id].copy()
	for id: String in scars: r.scars[id] = scars[id].copy()
	r.losses = losses.duplicate(); r.population_lineage = population_lineage.duplicate(true)
	r.faction_predecessors = faction_predecessors.duplicate(true); r.last_moved = last_moved.duplicate()
	r.faction_absorptions = faction_absorptions.duplicate(true)
	r.retired_populations = retired_populations.duplicate()
	return r

func data() -> Dictionary:
	var r := {"localities": {}, "facilities": {}, "projects": {}, "scars": {},
		"losses": losses.duplicate(), "population_lineage": population_lineage.duplicate(true),
		"faction_predecessors": faction_predecessors.duplicate(true), "last_moved": last_moved.duplicate(),
		"faction_absorptions": faction_absorptions.duplicate(true),
		"retired_populations": retired_populations.duplicate()}
	for id: String in localities: r.localities[id] = localities[id].data()
	for id: String in facilities: r.facilities[id] = facilities[id].data()
	for id: String in projects: r.projects[id] = projects[id].data()
	for id: String in scars: r.scars[id] = scars[id].data()
	return r

func headcount(s: HistoryWorldState, locality: String, faction: String = "") -> int:
	var total := 0
	for p in s.populations.values():
		if p.site_id == locality and (faction.is_empty() or p.faction_id == faction): total += p.size
	return total

func physical_access(s: HistoryWorldState, site: String) -> bool:
	if not facilities.has(site) or not s.sites.has(site): return false
	var physical := s.sites[site]
	return physical.accessible and physical.condition != "ruined"

func usable(s: HistoryWorldState, site: String) -> bool:
	if not physical_access(s, site): return false
	var f := facilities[site]
	if not f.dependency.is_empty():
		var parent := s.sites[f.dependency]
		if not parent.accessible or parent.condition == "ruined" or facilities[f.dependency].equipment == 0 or facilities[f.dependency].function != "power": return false
	if f.function == "survey" and not localities[f.locality_id].passage_open: return false
	if f.function in ["launch", "power"] and f.equipment == 0: return false
	return true

func need(s: HistoryWorldState, faction: String) -> String:
	for group in s.groups(faction):
		var p := s.populations[group]
		var region := localities[p.site_id]
		if region.hazard > 0 or headcount(s, region.id) > region.capacity: return "survival"
		var shelter := false
		for f in facilities.values():
			if f.locality_id == region.id and f.function == "shelter" and usable(s, f.id): shelter = true
		if not shelter: return "shelter"
	for p in projects.values():
		if p.actor == faction and p.status in ["active", "paused"]: return "project_maintenance"
	for f in facilities.values():
		if s.sites[f.id].owner_id == faction and s.sites[f.id].condition != "intact": return "maintenance"
	return "asset_protection"

func blockers(s: HistoryWorldState, p: Project) -> Array[String]:
	var out: Array[String] = []
	var f := facilities[p.site_id]
	if not s.factions[p.actor].active: out.append("actor_retired")
	if s.sites[p.site_id].owner_id != p.actor: out.append("custody_lost")
	if not usable(s, p.site_id): out.append("facility_unavailable")
	if f.function != HistoryCivilizationContent.project(p.kind).function: out.append("function_changed")
	if headcount(s, f.locality_id, p.actor) < 10: out.append("insufficient_crew")
	if localities[f.locality_id].hazard > 0: out.append("hazard")
	if p.kind == "deep_descent" and not localities[f.locality_id].passage_open: out.append("passage_closed")
	if p.kind == "genome_archive" and f.records + f.samples == 0: out.append("no_archival_material")
	if p.kind != "genome_archive" and f.equipment == 0: out.append("no_equipment")
	if p.invested < HistoryCivilizationContent.project(p.kind).cost and f.materials == 0: out.append("no_materials")
	return out

func next_opportunity(s: HistoryWorldState) -> int:
	# Known time thresholds, not a per-person simulation or quota-filling event.
	var next := 2147483647
	for f in facilities.values():
		if s.residents(f.id).is_empty(): continue
		var l := localities[f.locality_id]
		if f.materials < 2 and l.available_materials(s.year) == 0: next = mini(next, l.gathered_year + 40)
		if s.sites[f.id].condition != "ruined" and f.last_work_year + 31 > s.year: next = mini(next, f.last_work_year + 31)
	for p in projects.values():
		var threshold: int = p.started + HistoryCivilizationContent.project(p.kind).minimum_years if p.status == "active" else p.changed + 50
		if p.status in ["active", "paused"] and threshold > s.year: next = mini(next, threshold)
	for group: String in last_moved:
		if s.populations.has(group) and last_moved[group] + 30 > s.year: next = mini(next, last_moved[group] + 30)
	return next if next > s.year and next != 2147483647 else -1

func errors(s: HistoryWorldState) -> Array[String]:
	var out: Array[String] = []
	for id: String in localities:
		var l := localities[id]
		if l.id != id or l.capacity <= 0 or l.hazard < 0 or l.material_reserve < 0 or l.material_reserve > 8 or l.gathered_year > s.year or l.terrain not in ["surface", "innerworld_entry"]: out.append("Invalid locality: " + id)
		for neighbor in l.neighbors:
			if neighbor == id or not localities.has(neighbor) or id not in localities[neighbor].neighbors: out.append("Invalid geographic edge: " + id)
	if facilities.size() != s.sites.size(): out.append("Facility/site indexes disagree")
	for id: String in facilities:
		var f := facilities[id]
		if f.id != id or not localities.has(f.locality_id) or not s.sites.has(id): out.append("Invalid facility: " + id)
		if f.function not in ["shelter", "archive", "survey", "launch", "power", "salvage"]: out.append("Unsupported function: " + id)
		if mini(mini(f.materials, f.equipment), mini(f.records, f.samples)) < 0 or f.salvage < 0 or f.survey_records < 0: out.append("Negative asset inventory: " + id)
		if f.ancient and f.function not in ["shelter", "salvage"]: out.append("Ancient technology promoted to operability: " + id)
		if not f.dependency.is_empty():
			if not facilities.has(f.dependency) or f.dependency == id: out.append("Invalid facility dependency: " + id)
			else:
				var seen: Array[String] = [id]
				var parent := f.dependency
				while not parent.is_empty() and facilities.has(parent):
					if parent in seen:
						out.append("Cyclic facility dependency: " + id); break
					seen.append(parent); parent = facilities[parent].dependency
	for source: String in losses:
		if losses[source] < 0 or not s.source_totals.has(source): out.append("Invalid loss ledger")
	for id: String in s.populations:
		if not population_lineage.has(id) or population_lineage[id].is_empty(): out.append("Missing population lineage: " + id)
	for index: Dictionary in [faction_predecessors, faction_absorptions]:
		for actor: String in index:
			if not s.factions.has(actor): out.append("Unknown political lineage actor")
			for prior in index[actor]:
				if not s.factions.has(prior) or prior == actor: out.append("Unknown/self political lineage reference")
	for id: String in projects:
		var p := projects[id]
		if p.id != id or HistoryCivilizationContent.project(p.kind) == null or not facilities.has(p.site_id) or not s.factions.has(p.actor) or not s.factions.has(p.initiator): out.append("Invalid project references: " + id)
		if p.status not in ["active", "paused", "completed", "failed", "abandoned", "unknown"] or p.invested < 0 or p.changed > s.year or p.started > p.changed: out.append("Invalid project lifecycle: " + id)
		if p.kind == "ark" and p.outcome not in ["unresolved", "launch_failed", "launch_result_unknown", "abandoned"]: out.append("Canon forbids confirmed escape")
	for id: String in scars:
		var scar := scars[id]
		if scar.id != id or scar.kind not in ["orbital_fall", "infrastructure_cascade", "failed_exodus"] or not localities.has(scar.locality_id) or scar.event_id.is_empty() or scar.residue < 0 or scar.hazard < 0: out.append("Invalid scar: " + id)
		for site in scar.sites:
			if not facilities.has(site): out.append("Scar site reference: " + id)
		if not scar.project_id.is_empty() and not projects.has(scar.project_id): out.append("Scar project reference: " + id)
	return out
