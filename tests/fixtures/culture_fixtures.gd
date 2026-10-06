extends RefCounted

# Test-only records. Never preload this from a shipping resolver or catalog.
static func evidence(tags: Array) -> Dictionary:
	var records := {}
	for tag: String in tags:
		records[tag] = [{"scope": "synthetic", "source_event_ids": ["fixture:" + tag], "source_path": "test-only authored evidence", "detail": tag}]
	return records

static func strong_machine_scar() -> Dictionary:
	return evidence(["structure:local_settlement", "life:infrastructure_guild", "role:maintenance",
		"scar:machine_war", "history:recent_machine_hostility", "role:isolation",
		"history:machine_harm_memory", "institution:human_oversight"])
