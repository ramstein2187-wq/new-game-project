class_name CultureEvidence
extends RefCounted

# Tags point at actual records. No Claim text, names, taxonomy guesses or injected
# future-content flags participate in the shipping extractor.
func build(result: HistoryResult, faction_id: String, identity: Dictionary) -> Dictionary:
	assert(result.generation_version == 3 and result.architecture_version == 2)
	var entity := result.entity(faction_id)
	assert(entity != null and entity.kind == "faction")
	var evidence := {}
	var birth: Array = [entity.created_event_id]
	_add(evidence, "formation:" + entity.formation_origin, birth, "entity.formation_origin", entity.formation_origin)
	_add(evidence, "life:" + entity.way_of_life, birth, "entity.way_of_life", entity.way_of_life)
	for role in entity.regional_roles:
		_add(evidence, "role:" + role, birth, "entity.regional_roles", role)
	if entity.political_continuity:
		_add(evidence, "structure:inherited_offices", birth, "entity.political_continuity", "Recorded institutional continuity")
	if entity.parent_ids.size() > 1:
		_add(evidence, "structure:multiple_parents", birth, "entity.parent_ids", ", ".join(entity.parent_ids))
	var identity_prefixes := {"continuity_stance": "identity", "interpretation_mode": "interpretation", "memory_frame": "memory", "adaptive_stance": "adaptive", "social_anchor": "anchor"}
	for axis: String in identity_prefixes:
		var prefix: String = identity_prefixes[axis]
		_add(evidence, prefix + ":" + str(identity[axis]), identity.source_event_ids, "identity." + axis, str(identity[axis]), "derived_identity")
	for site in result.present.settlements:
		if site.owner_id == faction_id:
			_add(evidence, "structure:local_settlement", site.source_event_ids, "present.settlements:" + site.id, "Current local settlement under this polity")
	for row in result.present.active_factions:
		if row.id != faction_id:
			continue
		var profile: Dictionary = row.population_origin_profile
		# Multiple templates support actual local plurality; lifestyle labels do not.
		var population_sources: Array = []
		for entry in result.present.population_history:
			if entry.entity_id == faction_id:
				for source in entry.source_event_ids:
					if source not in population_sources:
						population_sources.append(source)
		if profile.strata.size() > 1:
			_add(evidence, "population:mixed_lineages", population_sources, "present.population_origin_profile.strata", "Multiple recorded resident lineage templates")
		if PopulationOrigins.multi_lineage(profile):
			_add(evidence, "population:multi_origin_lineage", population_sources, "present.population_origin_profile.strata.origins", "An authored stratum has multiple Origins")
	# Region-wide scars are labelled regional, never described as a faction's
	# personal loss, biological change, contact or proof of an autonomous machine.
	var regional_scars := {
		"orbital_bombardment": "scar:orbital_attack", "orbital_reentry": "scar:orbital_debris",
		"orbital_fragment": "scar:orbital_debris", "surveillance_failure": "scar:sky_signal",
		"core_quarantine": "scar:core_quarantine", "core_route_isolation": "scar:route_isolation",
		"core_underground_closure": "scar:deep_closure", "chemical_exposure": "scar:chemical_exposure",
		"core_rainfall_shift": "scar:environmental_change", "core_boundary_adjustment": "scar:environmental_change",
	}
	for event in result.objective_timeline:
		if regional_scars.has(event.narrative_key):
			_add(evidence, regional_scars[event.narrative_key], [event.id], "event.narrative_key", event.narrative_key, "regional")
		if event.id == "h_pressure":
			_add(evidence, "history:regional_pressure", [event.id], "event.narrative_key", event.narrative_key, "regional")
		if event.id == "h_collapse":
			_add(evidence, "history:regional_collapse", [event.id], "event.narrative_key", "Recorded regional institutional collapse", "regional")
		# Direct involvement includes effects on this faction, not only actor_ids.
		var involved: bool = faction_id in event.actor_ids
		for effect in event.effects:
			if effect.get("entity_id") == faction_id or effect.get("owner_id") == faction_id or faction_id in [effect.get("a"), effect.get("b")]:
				involved = true
		if not involved:
			continue
		_add(evidence, "event:" + event.narrative_key, [event.id], "event.narrative_key", event.narrative_key)
		for effect in event.effects:
			if effect.kind == "relationship" and faction_id in [effect.a, effect.b]:
				if effect.delta < 0:
					_add(evidence, "history:hostility", [event.id], "effect.relationship.delta", str(effect.delta))
				elif effect.delta > 0:
					_add(evidence, "history:cooperation", [event.id], "effect.relationship.delta", str(effect.delta))
			if effect.kind == "population" and effect.entity_id == faction_id and effect.mode == "join":
				_add(evidence, "history:population_join", [event.id], "effect.population.mode", "Recorded population arrival/join")
			if effect.kind == "reoccupy" and effect.owner_id == faction_id:
				_add(evidence, "reuse:" + str(effect.get("purpose", "settlement")), [event.id], "effect.reoccupy.purpose", str(effect.get("purpose", "settlement")))
			if effect.kind == "discovery":
				_add(evidence, "history:unknown_discovery", [event.id], "effect.discovery.observation", effect.observation)
	return evidence

func _add(evidence: Dictionary, tag: String, events: Array, path: String, detail: String, scope: String = "faction") -> void:
	if not evidence.has(tag):
		evidence[tag] = []
	var row := {"source_event_ids": events.duplicate(), "source_path": path, "detail": detail, "scope": scope}
	if row not in evidence[tag]:
		evidence[tag].append(row)
