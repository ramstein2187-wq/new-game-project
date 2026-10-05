class_name HistoryDebugFormatter
extends RefCounted

func format(result: HistoryResult) -> String:
	var lines: Array[String] = ["History Prototype v0.1 | seed %d | play start 0" % result.seed, "=== CANON ===", "Locked facts:"]
	var keys: Array = result.canon.locked.keys()
	keys.sort()
	for key: String in keys:
		lines.append("  %s: %s" % [key, str(result.canon.locked[key])])
	lines.append("Reserved mysteries: " + ", ".join(result.canon.reserved))
	lines.append("=== OBJECTIVE HISTORY ===")
	for event in result.objective_timeline:
		lines.append("%d %s [%s] %s" % [event.year, event.id, event.type_name(), CanonPolicy.narrative(event)])
		var names: Array[String] = []
		for id in event.actor_ids:
			names.append(result.entity(id).name + " (" + id + ")")
		lines.append("  actors: %s | causes: %s" % [", ".join(names), ", ".join(event.cause_event_ids)])
		lines.append("  effects: " + JSON.stringify(event.effects))
	lines.append("=== PRESENT ===")
	for entity in result.entities:
		if entity.kind == "region":
			lines.append("Region %s: %s" % [entity.id, entity.name])
	for faction in result.present.active_factions:
		lines.append("Faction %s: %s | %s" % [faction.id, faction.name, faction.way_of_life])
	for ancestry in result.present.faction_ancestry:
		lines.append("Ancestry %s: parents=%s; ancestors=%s; sources=%s" % [ancestry.faction_id, ", ".join(ancestry.parent_ids), ", ".join(ancestry.ancestor_ids), ", ".join(ancestry.source_event_ids)])
	for relation in result.present.relationships:
		lines.append("Relationship %s <-> %s: %d; sources=%s" % [relation.a, relation.b, relation.score, ", ".join(relation.source_event_ids)])
	for site in result.present.settlements:
		lines.append("Settlement %s: %s | owner=%s | region=%s | sources=%s" % [site.id, site.name, site.owner_id, site.location_id, ", ".join(site.source_event_ids)])
	for ruin in result.present.ruins:
		lines.append("Ruin %s: %s | occupant=%s | region=%s | sources=%s" % [ruin.id, ruin.ruin_kind, ruin.occupant_id, ruin.location_id, ", ".join(ruin.source_event_ids)])
	for discovery in result.present.discoveries:
		lines.append("Discovery %s: %s | origin=%s | sources=%s" % [discovery.id, discovery.observation, discovery.origin, ", ".join(discovery.source_event_ids)])
	lines.append("=== BELIEFS ===")
	for faction in result.present.active_factions:
		lines.append(faction.name + " (" + faction.id + "):")
		for claim in result.historical_claims:
			if claim.claimant_entity_id == faction.id:
				lines.append("  [%s; confidence %.2f; %s] %s" % [claim.referenced_event_id if not claim.referenced_event_id.is_empty() else claim.topic, claim.confidence, claim.claim_type, claim.interpretation])
	lines.append("=== VALIDATION ===")
	lines.append("Errors: " + JSON.stringify(result.validation_report.errors))
	lines.append("Warnings: " + JSON.stringify(result.validation_report.warnings))
	lines.append("Determinism: " + result.validation_report.determinism)
	lines.append("Scars: " + JSON.stringify(result.validation_report.scars))
	return "\n".join(lines)
