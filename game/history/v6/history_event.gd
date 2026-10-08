class_name HistoryV6Event
extends RefCounted
## Fixed effect grammar; no arbitrary field writes or narrative/claim effects.

enum Operation { CREATE_FACTION, RETIRE_FACTION, MOVE_POPULATION, SITE_OWNER,
	SITE_CONDITION, RELATIONSHIP, MOVE_ARTIFACT, SPEND_SPLIT_CAPACITY,
	DIVIDE_POPULATION, JOIN_POPULATION, RELOCATE_POPULATION, LOSE_POPULATION,
	ABSORB_FACTION, CIVIL_SITE_OWNER, BUILD_FACILITY, REPAIR_FACILITY, DAMAGE_FACILITY,
	REPURPOSE_FACILITY, RECOVER_MATERIALS, SHARE_MAINTENANCE, CONTEST_CUSTODY,
	START_PROJECT, INVEST_PROJECT, PROJECT_STATUS, PROJECT_ACTOR, ATTEMPT_PROJECT,
	RESOLVE_PROJECT, ORBITAL_IMPACT, CASCADE_FAILURE, EXODUS_ATTEMPT, RECOVER_SCAR,
	CLOSE_PASSAGE, TRANSFER_RECORDS, GATHER_MATERIALS }

class Effect extends RefCounted:
	var operation: int
	var subject: String
	var target: String
	var location: String
	var value: int
	var detail: String
	func _init(op: int = -1, who: String = "", to: String = "", where: String = "", number: int = 0, text: String = "") -> void:
		operation = op; subject = who; target = to; location = where; value = number; detail = text
	func data() -> Array:
		return [operation, subject, target, location, value, detail]
	func copy() -> Effect:
		return Effect.new(operation, subject, target, location, value, detail)

var id: String
var year: int
var rule_id: String
var participants: Array[String] = []
var targets: Array[String] = []
var effects: Array[Effect] = []
# Explicit enabling facts read by this rule, not the preceding chronological event.
var evidence_keys: Array[String] = []
var cause_ids: Array[String] = []
var reason: String
var trigger_keys: Array[String] = []
var association_ids: Array[String] = []

func data() -> Dictionary:
	var rows: Array = []
	for effect in effects: rows.append(effect.data())
	var result := {"id": id, "year": year, "rule_id": rule_id, "participants": participants.duplicate(),
		"targets": targets.duplicate(), "effects": rows, "evidence_keys": evidence_keys.duplicate(), "cause_ids": cause_ids.duplicate()}
	if not reason.is_empty():
		result["reason"] = reason; result["trigger_keys"] = trigger_keys.duplicate(); result["association_ids"] = association_ids.duplicate()
	return result

func copy() -> HistoryV6Event:
	var result := HistoryV6Event.new()
	result.id = id; result.year = year; result.rule_id = rule_id
	result.participants = participants.duplicate(); result.targets = targets.duplicate()
	result.evidence_keys = evidence_keys.duplicate(); result.cause_ids = cause_ids.duplicate()
	result.reason = reason; result.trigger_keys = trigger_keys.duplicate(); result.association_ids = association_ids.duplicate()
	for effect in effects: result.effects.append(effect.copy())
	return result

func cite(state: HistoryWorldState, keys: Array[String]) -> void:
	for key in keys:
		var cause: String = state.fact_events.get(key, "")
		if cause.is_empty(): continue
		if key not in evidence_keys: evidence_keys.append(key)
		if cause not in cause_ids: cause_ids.append(cause)
	evidence_keys.sort(); cause_ids.sort()

static func from_data(raw: Variant) -> HistoryV6Event:
	if not raw is Dictionary or raw.size() not in [8, 11]: return null
	if raw.size() == 11:
		if not raw.get("reason") is String or raw.reason.is_empty(): return null
		for field in ["trigger_keys", "association_ids"]:
			if not raw.get(field) is Array: return null
			for item in raw[field]:
				if not item is String: return null
	for field in ["id", "rule_id"]:
		if not raw.get(field) is String: return null
	if not _integer(raw.get("year")): return null
	for field in ["participants", "targets", "evidence_keys", "cause_ids"]:
		if not raw.get(field) is Array: return null
		for item in raw[field]:
			if not item is String: return null
	if not raw.get("effects") is Array: return null
	var result := HistoryV6Event.new()
	result.id = raw.id; result.rule_id = raw.rule_id; result.year = int(raw.year)
	result.participants.assign(raw.participants); result.targets.assign(raw.targets)
	result.evidence_keys.assign(raw.evidence_keys); result.cause_ids.assign(raw.cause_ids)
	if raw.size() == 11:
		result.reason = raw.reason; result.trigger_keys.assign(raw.trigger_keys); result.association_ids.assign(raw.association_ids)
	for row in raw.effects:
		if not row is Array or row.size() != 6 or not _integer(row[0]) or not _integer(row[4]): return null
		for i in [1, 2, 3, 5]:
			if not row[i] is String: return null
		result.effects.append(Effect.new(int(row[0]), row[1], row[2], row[3], int(row[4]), row[5]))
	return result

static func _integer(value: Variant) -> bool:
	return value is int or (value is float and is_finite(value) and value == floor(value) and absf(value) < 9007199254740992.0)
