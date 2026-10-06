class_name HistoricalEvent
extends RefCounted

enum Type { FOUNDING, SPLIT, MERGE, WAR, MIGRATION, DISASTER, SCHISM, COLLAPSE, RUIN_REOCCUPIED, ANOMALOUS_DISCOVERY, NEWCOMER, REORGANIZATION, EXTINCTION, SOCIAL_INCIDENT }

var id: String = ""
var year: int = 0
var event_type: Type = Type.FOUNDING
var actor_ids: Array[String] = []
var location_ids: Array[String] = []
var entity_ids: Array[String] = []
var cause_event_ids: Array[String] = []
var effects: Array[Dictionary] = []
var importance: int = 2
# Reviewed local observation template, never arbitrary objective prose.
var narrative_key: String = ""
var scope: String = "regional"
var cause_domain: String = "human"

func type_name() -> String:
	return Type.keys()[event_type] if event_type >= 0 and event_type < Type.size() else "INVALID"

func to_dict() -> Dictionary:
	return {"id": id, "year": year, "event_type": type_name(),
		"actor_ids": actor_ids.duplicate(), "location_ids": location_ids.duplicate(),
		"entity_ids": entity_ids.duplicate(), "cause_event_ids": cause_event_ids.duplicate(),
		"effects": effects.duplicate(true), "importance": importance, "narrative_key": narrative_key,
		"scope": scope, "cause_domain": cause_domain}
