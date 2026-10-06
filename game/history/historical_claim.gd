class_name HistoricalClaim
extends RefCounted

var claimant_entity_id: String = ""
var referenced_event_id: String = ""
var topic: String = ""
var interpretation: String = ""
var confidence: float = 0.5
var claim_type: String = "interpretation"
var reference_scope: String = ""
var evidence: Dictionary = {}

func to_dict() -> Dictionary:
	var row := {"claimant_entity_id": claimant_entity_id, "referenced_event_id": referenced_event_id,
		"topic": topic, "interpretation": interpretation, "confidence": confidence, "claim_type": claim_type}
	if not reference_scope.is_empty():
		row.merge({"reference_scope": reference_scope, "evidence": evidence.duplicate(true)})
	return row
