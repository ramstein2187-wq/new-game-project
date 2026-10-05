class_name HistoryResult
extends RefCounted

var seed: int = 0
var generation_version: int = 1
var canon: Dictionary = {}
var entities: Array[HistoricalEntity] = []
var objective_timeline: Array[HistoricalEvent] = []
var present: HistoryState = HistoryState.new()
var historical_claims: Array[HistoricalClaim] = []
var validation_report: Dictionary = {}

func to_dict() -> Dictionary:
	var entity_rows: Array[Dictionary] = []
	var event_rows: Array[Dictionary] = []
	var claim_rows: Array[Dictionary] = []
	for item in entities:
		entity_rows.append(item.to_dict())
	for item in objective_timeline:
		event_rows.append(item.to_dict())
	for item in historical_claims:
		claim_rows.append(item.to_dict())
	return {"seed": seed, "generation_version": generation_version, "canon": canon.duplicate(true),
		"entities": entity_rows, "objective_timeline": event_rows, "present": present.to_dict(),
		"historical_claims": claim_rows, "validation_report": validation_report.duplicate(true)}

# Godot JSON.stringify sorts dictionary keys by default. Arrays are explicitly ordered.
func canonical_output(include_validation: bool = false) -> String:
	var value := to_dict()
	if not include_validation:
		value.erase("validation_report")
	return JSON.stringify(value)

func entity(id: String) -> HistoricalEntity:
	for item in entities:
		if item.id == id:
			return item
	return null
