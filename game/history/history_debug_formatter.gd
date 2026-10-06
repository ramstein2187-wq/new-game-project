class_name HistoryDebugFormatter
extends RefCounted

func format(result: HistoryResult) -> String:
	var lines: Array[String] = ["History architecture v%d | generation algorithm v%d | seed %d | play start 0" % [result.architecture_version, result.generation_version, result.seed],
		"Configuration: " + JSON.stringify(result.configuration), "=== CANON ===", "Locked facts:"]
	var keys: Array = result.canon.locked.keys()
	keys.sort()
	for key: String in keys:
		lines.append("  %s: %s" % [key, str(result.canon.locked[key])])
	lines.append("Reserved mysteries: " + ", ".join(result.canon.reserved))
	lines.append("=== OBJECTIVE HISTORY ===")
	for event in result.objective_timeline:
		lines.append("%d %s [%s] %s" % [event.year, event.id, event.type_name(), CanonPolicy.narrative(event)])
		lines.append("  scope=%s | objective cause_domain=%s" % [event.scope, event.cause_domain])
		var names: Array[String] = []
		for id in event.actor_ids:
			names.append(result.entity(id).name + " (" + id + ")")
		lines.append(("  actors: %s | causes: %s" % [", ".join(names), ", ".join(event.cause_event_ids)]).strip_edges(false, true))
		lines.append("  effects: " + JSON.stringify(event.effects))
	lines.append("=== PRESENT ===")
	if result.generation_version == 3:
		lines.append("=== HISTORICAL POLITIES (including extinct) ===")
		for row in result.present.historical_factions:
			lines.append("%s: %s | %s..%s | %s | parents=%s | formation=%s | ancestry=%s | institutional_heir=%s | founding_origins=%s | last_origins=%s" % [
				row.id, row.name, row.formation_year, "present" if row.active else str(row.dissolution_year),
				"active" if row.active else "extinct", ", ".join(row.parent_ids), row.formation_origin, row.ancestry_kind,
				row.political_continuity, ", ".join(row.founding_population_origin_profile), ", ".join(row.population_origin_profile)])
		lines.append("=== POPULATION PROVENANCE (distinct from political parents) ===")
		for row in result.present.population_history:
			lines.append("%d %s: %s | mode=%s | donors=%s | events=%s" % [row.year, row.entity_id, ", ".join(row.origin_ids), row.mode, ", ".join(row.source_ids), ", ".join(row.source_event_ids)])
		lines.append("=== CURRENT WORLD ===")
	for entity in result.entities:
		if entity.kind == "region":
			lines.append("Region %s: %s" % [entity.id, entity.name])
	for faction in result.present.active_factions:
		lines.append("Faction %s: %s | %s | knowledge=%s" % [faction.id, faction.name, faction.way_of_life, ", ".join(faction.knowledge_tags)])
		if result.generation_version == 3:
			lines.append("  origins=%s | formation=%s | regional_roles=%s" % [", ".join(faction.population_origin_profile), faction.formation_origin, ", ".join(faction.regional_roles)])
	for ancestry in result.present.faction_ancestry:
		lines.append("Ancestry %s: parents=%s; ancestors=%s; sources=%s" % [ancestry.faction_id, ", ".join(ancestry.parent_ids), ", ".join(ancestry.ancestor_ids), ", ".join(ancestry.source_event_ids)])
	for relation in result.present.relationships:
		lines.append("Relationship %s <-> %s: %d; sources=%s" % [relation.a, relation.b, relation.score, ", ".join(relation.source_event_ids)])
	for site in result.present.settlements:
		lines.append("Settlement %s: %s | owner=%s | region=%s | sources=%s" % [site.id, site.name, site.owner_id, site.location_id, ", ".join(site.source_event_ids)])
	for ruin in result.present.ruins:
		lines.append("Ruin %s: %s | occupant=%s | region=%s | sources=%s" % [ruin.id, ruin.ruin_kind, ruin.occupant_id, ruin.location_id, ", ".join(ruin.source_event_ids)])
		if result.generation_version == 3:
			lines.append("  site_type=%s | hazard=%s | recorded_use=%s" % [ruin.site_type, ruin.hazard, ruin.reuse_purpose])
	for discovery in result.present.discoveries:
		lines.append("Discovery %s: %s | origin=%s | sources=%s" % [discovery.id, discovery.observation, discovery.origin, ", ".join(discovery.source_event_ids)])
	for trace in result.present.system_traces:
		lines.append("System consequence: " + JSON.stringify(trace))
	lines.append("=== BELIEFS ===")
	for faction in result.present.active_factions:
		lines.append(faction.name + " (" + faction.id + "; knowledge=" + ", ".join(faction.knowledge_tags) + "):")
		for claim in result.historical_claims:
			if claim.claimant_entity_id == faction.id:
				lines.append("  [%s; confidence %.2f; %s] %s" % [claim.referenced_event_id if not claim.referenced_event_id.is_empty() else claim.topic, claim.confidence, claim.claim_type, claim.interpretation])
				if result.generation_version == 3:
					lines.append("    reference_scope=%s | evidence=%s" % [claim.reference_scope, JSON.stringify(claim.evidence)])
	lines.append("=== VALIDATION ===")
	lines.append("Errors: " + JSON.stringify(result.validation_report.errors))
	lines.append("Warnings: " + JSON.stringify(result.validation_report.warnings))
	lines.append("Determinism: " + result.validation_report.determinism)
	lines.append("Scars: " + JSON.stringify(result.validation_report.scars))
	return "\n".join(lines)
