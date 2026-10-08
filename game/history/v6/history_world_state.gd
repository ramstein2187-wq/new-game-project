class_name HistoryWorldState
extends RefCounted
## Objective local state only. Dictionaries are typed ID indexes, never open fact bags.

class Faction extends RefCounted:
	var id: String
	var parent_id: String
	var active: bool = true
	var split_capacity: int = 0
	var founded_year: int
	func data() -> Array:
		return [id, parent_id, active, split_capacity, founded_year]

class Population extends RefCounted:
	var id: String
	var source_id: String
	var faction_id: String
	var site_id: String
	var size: int
	func data() -> Array:
		return [id, source_id, faction_id, site_id, size]

class Site extends RefCounted:
	var id: String
	var owner_id: String
	var condition: String = "intact"
	var accessible: bool = true
	# Observation, understanding and operating capacity are deliberately distinct.
	var technology_observed: String = "unknown"
	var technology_understood: bool = false
	var technology_operable: bool = false
	func data() -> Array:
		return [id, owner_id, condition, accessible, technology_observed,
			technology_understood, technology_operable]

class Artifact extends RefCounted:
	var id: String
	var owner_id: String
	var site_id: String
	var status: String = "held"
	var origin: String = "unknown"
	func data() -> Array:
		return [id, owner_id, site_id, status, origin]

var year: int = 0
var factions: Dictionary[String, Faction] = {}
var populations: Dictionary[String, Population] = {}
var sites: Dictionary[String, Site] = {}
var artifacts: Dictionary[String, Artifact] = {}
var relationships: Dictionary[String, int] = {}
var source_totals: Dictionary[String, int] = {}
var source_origins: Dictionary[String, String] = {}
var fact_events: Dictionary[String, String] = {}
var canon: Dictionary = CanonPolicy.snapshot()

static func pair(a: String, b: String) -> String:
	return a + "|" + b if a < b else b + "|" + a

static func sorted_ids(index: Dictionary) -> Array:
	var ids := index.keys()
	ids.sort()
	return ids

func active_ids() -> Array[String]:
	var ids: Array[String] = []
	for id: String in factions:
		if factions[id].active: ids.append(id)
	ids.sort()
	return ids

func groups(faction_id: String) -> Array[String]:
	var ids: Array[String] = []
	for id: String in populations:
		if populations[id].faction_id == faction_id: ids.append(id)
	ids.sort()
	return ids

func residents(site_id: String, faction_id: String = "") -> Array[String]:
	var ids: Array[String] = []
	for id: String in populations:
		var p := populations[id]
		if p.site_id == site_id and (faction_id.is_empty() or p.faction_id == faction_id): ids.append(id)
	ids.sort()
	return ids

func contains(id: String) -> bool:
	return factions.has(id) or populations.has(id) or sites.has(id) or artifacts.has(id)

func copy() -> HistoryWorldState:
	var result := HistoryWorldState.new()
	result.year = year
	result.canon = canon.duplicate(true)
	result.relationships = relationships.duplicate()
	result.source_totals = source_totals.duplicate()
	result.source_origins = source_origins.duplicate()
	result.fact_events = fact_events.duplicate()
	for id: String in factions:
		var old := factions[id]
		var row := Faction.new()
		row.id = id; row.parent_id = old.parent_id; row.active = old.active
		row.split_capacity = old.split_capacity; row.founded_year = old.founded_year
		result.factions[id] = row
	for id: String in populations:
		var old := populations[id]
		var row := Population.new()
		row.id = id; row.source_id = old.source_id; row.faction_id = old.faction_id
		row.site_id = old.site_id; row.size = old.size
		result.populations[id] = row
	for id: String in sites:
		var old := sites[id]
		var row := Site.new()
		row.id = id; row.owner_id = old.owner_id; row.condition = old.condition
		row.accessible = old.accessible; row.technology_observed = old.technology_observed
		row.technology_understood = old.technology_understood; row.technology_operable = old.technology_operable
		result.sites[id] = row
	for id: String in artifacts:
		var old := artifacts[id]
		var row := Artifact.new()
		row.id = id; row.owner_id = old.owner_id; row.site_id = old.site_id
		row.status = old.status; row.origin = old.origin
		result.artifacts[id] = row
	return result

func data() -> Dictionary:
	var result := {"year": year, "canon": canon.duplicate(true), "factions": {},
		"populations": {}, "sites": {}, "artifacts": {}, "relationships": relationships.duplicate(),
		"source_totals": source_totals.duplicate(), "source_origins": source_origins.duplicate(),
		"fact_events": fact_events.duplicate()}
	for id: String in factions: result.factions[id] = factions[id].data()
	for id: String in populations: result.populations[id] = populations[id].data()
	for id: String in sites: result.sites[id] = sites[id].data()
	for id: String in artifacts: result.artifacts[id] = artifacts[id].data()
	return result

func canonical() -> String:
	return JSON.stringify(data(), "", true)

func errors() -> Array[String]:
	var out: Array[String] = []
	if canon != CanonPolicy.snapshot(): out.append("Canon snapshot changed")
	var totals: Dictionary[String, int] = {}
	var all_ids: Dictionary[String, bool] = {}
	for collection: Dictionary in [factions, populations, sites, artifacts]:
		for id: String in collection:
			if id.is_empty() or "|" in id or ":" in id or all_ids.has(id) or collection[id].id != id:
				out.append("Invalid/duplicate entity ID: " + id)
			all_ids[id] = true
	for id: String in factions:
		var f := factions[id]
		if f.split_capacity < 0 or f.founded_year > year: out.append("Faction lifecycle: " + id)
		if f.active == groups(id).is_empty(): out.append("Active faction must have population: " + id)
		var seen: Array[String] = [id]
		var parent := f.parent_id
		while not parent.is_empty():
			if not factions.has(parent) or parent in seen:
				out.append("Invalid lineage: " + id)
				break
			if factions[parent].founded_year > f.founded_year: out.append("Future parent: " + id)
			seen.append(parent)
			parent = factions[parent].parent_id
	for id: String in populations:
		var p := populations[id]
		if p.size <= 0 or not source_totals.has(p.source_id): out.append("Population source/size: " + id)
		if not factions.has(p.faction_id) or not factions[p.faction_id].active: out.append("Population membership: " + id)
		if not sites.has(p.site_id): out.append("Population location: " + id)
		totals[p.source_id] = totals.get(p.source_id, 0) + p.size
	if totals != source_totals: out.append("Population conservation violated")
	if source_origins.size() != source_totals.size(): out.append("Origin ledger mismatch")
	for id: String in source_totals:
		if source_origins.get(id, "") != "human_derived": out.append("Unsupported population Origin: " + id)
	for id: String in sites:
		var s := sites[id]
		if not s.owner_id.is_empty() and (not factions.has(s.owner_id) or not factions[s.owner_id].active): out.append("Site owner: " + id)
		if s.condition not in ["intact", "damaged", "ruined"]: out.append("Site condition: " + id)
		if s.technology_observed not in ["unknown", "inert_remains"] or s.technology_understood or s.technology_operable:
			out.append("Unsupported technology fact: " + id)
		if s.condition == "ruined" and s.accessible: out.append("Ruined facility accessible: " + id)
	for key: String in relationships:
		var ids := key.split("|")
		if ids.size() != 2 or not factions.has(ids[0]) or not factions.has(ids[1]) or ids[0] >= ids[1]: out.append("Relationship reference: " + key)
		if relationships[key] < -1 or relationships[key] > 1: out.append("Relationship range: " + key)
	for id: String in artifacts:
		var a := artifacts[id]
		if not sites.has(a.site_id) or a.origin != "unknown": out.append("Artifact location/Origin: " + id)
		if a.status not in ["held", "lost"]: out.append("Artifact status: " + id)
		if a.status == "lost" and not a.owner_id.is_empty(): out.append("Lost artifact has owner: " + id)
		if a.status == "held":
			if not factions.has(a.owner_id) or not factions[a.owner_id].active: out.append("Artifact owner: " + id)
			elif residents(a.site_id, a.owner_id).is_empty(): out.append("Custodian absent: " + id)
	return out
