class_name HistoryProjector
extends RefCounted

# Caller validates references first. Replay effects; claims are never read here.
func project(entities: Array[HistoricalEntity], timeline: Array[HistoricalEvent]) -> HistoryState:
	var state := HistoryState.new()
	var definitions := {}
	var active := {}
	var relations := {}
	var sites := {}
	var ruins := {}
	var discoveries := {}
	for entity in entities:
		definitions[entity.id] = entity
	for event in timeline:
		for effect in event.effects:
			match effect.kind:
				"activate": active[effect.entity_id] = event.id
				"retire": active.erase(effect.entity_id)
				"settlement":
					sites[effect.entity_id] = {"id": effect.entity_id, "name": definitions[effect.entity_id].name,
						"owner_id": effect.owner_id, "location_id": effect.location_id, "source_event_ids": [event.id]}
				"ruin":
					ruins[effect.id] = {"id": effect.id, "ruin_kind": effect.ruin_kind, "location_id": effect.location_id,
						"occupant_id": "", "source_event_ids": [event.id]}
				"relationship":
					var pair: Array[String] = [effect.a, effect.b]
					pair.sort()
					var key := "/".join(pair)
					if not relations.has(key):
						relations[key] = {"a": pair[0], "b": pair[1], "score": 0, "source_event_ids": []}
					relations[key].score = clampi(relations[key].score + effect.delta, -100, 100)
					relations[key].source_event_ids.append(event.id)
				"reoccupy":
					ruins[effect.ruin_id].occupant_id = effect.owner_id
					ruins[effect.ruin_id].source_event_ids.append(event.id)
					if event.id not in sites[effect.settlement_id].source_event_ids:
						sites[effect.settlement_id].source_event_ids.append(event.id)
				"discovery":
					discoveries[effect.id] = {"id": effect.id, "location_id": effect.location_id,
						"observation": effect.observation, "origin": effect.origin, "source_event_ids": [event.id]}
	for id: String in _keys(active):
		var entity: HistoricalEntity = definitions[id]
		if entity.kind == "faction":
			state.active_factions.append({"id": id, "name": entity.name, "way_of_life": entity.way_of_life,
				"source_event_ids": [active[id]]})
			var ancestors: Array[String] = []
			_collect_ancestors(id, definitions, ancestors)
			ancestors.sort()
			var sources: Array[String] = [active[id]]
			for ancestor_id in ancestors:
				var ancestor: HistoricalEntity = definitions[ancestor_id]
				for source: String in [ancestor.created_event_id, ancestor.retired_event_id]:
					if not source.is_empty() and source not in sources:
						sources.append(source)
			state.faction_ancestry.append({"faction_id": id, "parent_ids": entity.parent_ids.duplicate(),
				"ancestor_ids": ancestors, "source_event_ids": sources})
	for key: String in _keys(relations):
		if active.has(relations[key].a) and active.has(relations[key].b):
			state.relationships.append(relations[key])
	for key: String in _keys(sites):
		if active.has(key):
			state.settlements.append(sites[key])
	for key: String in _keys(ruins):
		state.ruins.append(ruins[key])
	for key: String in _keys(discoveries):
		state.discoveries.append(discoveries[key])
	return state

func _collect_ancestors(id: String, definitions: Dictionary, found: Array[String]) -> void:
	for parent: String in definitions[id].parent_ids:
		if parent not in found:
			found.append(parent)
			_collect_ancestors(parent, definitions, found)

func _keys(values: Dictionary) -> Array:
	var keys := values.keys()
	keys.sort()
	return keys
