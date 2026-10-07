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
	var traces := {}
	var profiles := {}
	var events := {}
	var social := {}
	var projects := {}
	var facilities := {}
	for entity in entities:
		definitions[entity.id] = entity
	for event in timeline:
		events[event.id] = event
		for effect in event.effects:
			match effect.kind:
				"history_record":
					var record := effect.duplicate(true)
					record.erase("kind")
					record.merge({"year": event.year, "source_event_ids": [event.id]})
					state.history_records.append(record)
					if effect.record_type == "project":
						var project_key: String = effect.reference_id
						if not projects.has(project_key):
							projects[project_key] = {"id": project_key, "archetype": effect.record_id, "participant_id": effect.entity_id,
								"status": "in_progress", "start_year": effect.data.start_year, "end_year": event.year, "phase_event_ids": [], "source_event_ids": []}
							var authored_project := HistoryV4Catalog.new().project(effect.record_id)
							projects[project_key].display_name=authored_project.display_name
							projects[project_key].later_historical_name=authored_project.get("later_historical_name","")
							projects[project_key].success_policy=authored_project.success_policy
						projects[project_key].status = effect.data.status
						projects[project_key].end_year = event.year
						projects[project_key].phase_event_ids.append(event.id)
						projects[project_key].source_event_ids.append(event.id)
					elif effect.record_type == "scar":
						state.civilizational_scars.append(record)
					elif effect.record_type == "site":
						var facility_key: String = effect.reference_id
						if not facilities.has(facility_key):
							facilities[facility_key] = {"id": facility_key, "project_id": effect.project_id, "observations": [], "source_event_ids": []}
						facilities[facility_key].observations.append({"record_id": effect.record_id, "year": event.year, "data": effect.data.duplicate(true)})
						facilities[facility_key].source_event_ids.append(event.id)
				"social_record":
					var row := effect.duplicate(true)
					row.erase("kind")
					row.merge({"year": event.year, "source_event_ids": [event.id]})
					state.social_history.append(row)
					var key: String = effect.entity_id + "/" + effect.record_type + "/" + effect.record_id + "/" + effect.reference_id + "/" + effect.content_id
					if effect.operation == "abolish":
						for previous: String in social.keys():
							if social[previous].entity_id == effect.entity_id and social[previous].record_type == effect.record_type and social[previous].record_id == effect.record_id:
								social.erase(previous)
					elif effect.operation == "establish":
						social[key] = row
				"activate": active[effect.entity_id] = event.id
				"retire": active.erase(effect.entity_id)
				"settlement":
					sites[effect.entity_id] = {"id": effect.entity_id, "name": definitions[effect.entity_id].name,
						"owner_id": effect.owner_id, "location_id": effect.location_id, "source_event_ids": [event.id]}
				"site_owner":
					sites[effect.entity_id].owner_id = effect.owner_id
					sites[effect.entity_id].source_event_ids.append(event.id)
				"population":
					profiles[effect.entity_id] = effect.profile.duplicate(true)
					state.population_history.append({"entity_id": effect.entity_id, "profile": effect.profile.duplicate(true),
						"source_ids": effect.source_ids.duplicate(), "mode": effect.mode, "year": event.year, "source_event_ids": [event.id]})
				"population_fate":
					state.population_fates.append({"entity_id": effect.entity_id, "disposition": effect.disposition, "successor_ids": effect.successor_ids.duplicate(), "untracked_template_ids": effect.untracked_template_ids.duplicate(), "year": event.year, "source_event_ids": [event.id]})
				"ruin":
					ruins[effect.id] = {"id": effect.id, "ruin_kind": effect.ruin_kind, "location_id": effect.location_id,
						"occupant_id": "", "source_event_ids": [event.id]}
					if effect.has("hazard"):
						ruins[effect.id].merge({"hazard": effect.hazard, "site_type": effect.site_type, "reuse_purpose": ""})
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
					if effect.has("purpose"):
						ruins[effect.ruin_id].reuse_purpose = effect.purpose
					if event.id not in sites[effect.settlement_id].source_event_ids:
						sites[effect.settlement_id].source_event_ids.append(event.id)
				"discovery":
					discoveries[effect.id] = {"id": effect.id, "location_id": effect.location_id,
						"observation": effect.observation, "origin": effect.origin, "source_event_ids": [event.id]}
				"system_trace":
					var trace := effect.duplicate(true)
					trace.erase("kind")
					trace["cause_domain"] = event.cause_domain
					trace["scope"] = event.scope
					trace["source_event_ids"] = [event.id]
					traces[effect.id] = trace
	for id: String in _keys(active):
		var entity: HistoricalEntity = definitions[id]
		if entity.kind == "faction":
			state.active_factions.append({"id": id, "name": entity.name, "way_of_life": entity.way_of_life,
				"knowledge_tags": entity.knowledge_tags.duplicate(),
				"generated_name": entity.generated_name.to_dict() if entity.generated_name != null else {},
				"source_event_ids": [active[id]]})
			if not entity.formation_origin.is_empty():
				state.active_factions[-1].merge({"formation_origin": entity.formation_origin, "ancestry_kind": entity.ancestry_kind,
					"parent_ids": entity.parent_ids.duplicate(), "political_continuity": entity.political_continuity,
					"regional_roles": entity.regional_roles.duplicate(), "population_origin_profile": profiles[id].duplicate(true),
					"formation_year": events[entity.created_event_id].year})
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
	for id: String in _keys(definitions):
		var entity: HistoricalEntity = definitions[id]
		if entity.kind in ["faction", "precursor_state"] and not entity.formation_origin.is_empty():
			var row := entity.to_dict()
			row.merge({"active": active.has(id), "formation_year": events[entity.created_event_id].year,
				"dissolution_year": null if entity.retired_event_id.is_empty() else events[entity.retired_event_id].year,
				"founding_population_origin_profile": entity.population_origin_profile.duplicate(true),
				"population_origin_profile": profiles[id].duplicate(true), "source_event_ids": [entity.created_event_id]}, true)
			if not entity.retired_event_id.is_empty():
				row.source_event_ids.append(entity.retired_event_id)
			state.historical_factions.append(row)
	for key: String in _keys(ruins):
		state.ruins.append(ruins[key])
	for key: String in _keys(discoveries):
		state.discoveries.append(discoveries[key])
	for key: String in _keys(traces):
		state.system_traces.append(traces[key])
	for key: String in _keys(social):
		state.social_facts.append(social[key])
	for key: String in _keys(projects):
		state.civilizational_projects.append(projects[key])
	for key: String in _keys(facilities):
		state.historical_facilities.append(facilities[key])
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
