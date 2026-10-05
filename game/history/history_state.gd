class_name HistoryState
extends RefCounted

# All entries carry source_event_ids. No separate decorative scar log.
var active_factions: Array[Dictionary] = []
var faction_ancestry: Array[Dictionary] = []
var relationships: Array[Dictionary] = []
var settlements: Array[Dictionary] = []
var ruins: Array[Dictionary] = []
var discoveries: Array[Dictionary] = []

func to_dict() -> Dictionary:
	return {"active_factions": active_factions.duplicate(true), "faction_ancestry": faction_ancestry.duplicate(true),
		"relationships": relationships.duplicate(true), "settlements": settlements.duplicate(true),
		"ruins": ruins.duplicate(true), "discoveries": discoveries.duplicate(true)}

func direct_scar_event_ids() -> Array[String]:
	var ids: Array[String] = []
	for collection: Array in [active_factions, faction_ancestry, relationships, settlements, ruins, discoveries]:
		for item: Dictionary in collection:
			for source: String in item.source_event_ids:
				if source not in ids:
					ids.append(source)
	ids.sort()
	return ids
