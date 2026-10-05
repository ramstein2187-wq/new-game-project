class_name HistoricalClaim
extends RefCounted

var claimant_entity_id: String = ""
var referenced_event_id: String = ""
var topic: String = ""
var interpretation: String = ""
var confidence: float = 0.5
var claim_type: String = "interpretation"

func to_dict() -> Dictionary:
	return {"claimant_entity_id": claimant_entity_id, "referenced_event_id": referenced_event_id,
		"topic": topic, "interpretation": interpretation, "confidence": confidence, "claim_type": claim_type}
