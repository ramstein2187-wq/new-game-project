class_name HistoryState
extends RefCounted

# All entries carry source_event_ids. No separate decorative scar log.
var active_factions: Array[Dictionary] = []
var faction_ancestry: Array[Dictionary] = []
var relationships: Array[Dictionary] = []
var settlements: Array[Dictionary] = []
var ruins: Array[Dictionary] = []
var discoveries: Array[Dictionary] = []
var system_traces: Array[Dictionary] = []
var historical_factions: Array[Dictionary] = []
var population_history: Array[Dictionary] = []
var population_fates: Array[Dictionary] = []
var social_history: Array[Dictionary] = []
var social_facts: Array[Dictionary] = []
var civilizational_projects: Array[Dictionary] = []
var civilizational_scars: Array[Dictionary] = []
var history_records: Array[Dictionary] = []
var historical_facilities: Array[Dictionary] = []

func to_dict() -> Dictionary:
	var row := {"active_factions": active_factions.duplicate(true), "faction_ancestry": faction_ancestry.duplicate(true),
		"relationships": relationships.duplicate(true), "settlements": settlements.duplicate(true),
		"ruins": ruins.duplicate(true), "discoveries": discoveries.duplicate(true),
		"system_traces": system_traces.duplicate(true)}
	if not historical_factions.is_empty():
		row.merge({"historical_factions": historical_factions.duplicate(true), "population_history": population_history.duplicate(true), "population_fates": population_fates.duplicate(true)})
	if not social_history.is_empty():
		row.merge({"social_history": social_history.duplicate(true), "social_facts": social_facts.duplicate(true)})
	if not history_records.is_empty():
		row.merge({"civilizational_projects": civilizational_projects.duplicate(true), "civilizational_scars": civilizational_scars.duplicate(true),
			"history_records": history_records.duplicate(true), "historical_facilities": historical_facilities.duplicate(true)})
	return row

func direct_scar_event_ids() -> Array[String]:
	var ids: Array[String] = []
	for collection: Array in [active_factions, faction_ancestry, relationships, settlements, ruins, discoveries, system_traces, historical_factions, population_history, population_fates, social_history, social_facts, civilizational_projects, civilizational_scars, history_records, historical_facilities]:
		for item: Dictionary in collection:
			for source: String in item.source_event_ids:
				if source not in ids:
					ids.append(source)
	ids.sort()
	return ids
