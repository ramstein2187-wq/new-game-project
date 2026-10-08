class_name HistoryReducer
extends RefCounted
## A transaction returns a new state. Caller-owned state/log never change on failure.

const Op = HistoryV6Event.Operation

class Transition extends RefCounted:
	var state: HistoryWorldState
	var errors: Array[String] = []
	func ok() -> bool:
		return errors.is_empty() and state != null

func apply(state: HistoryWorldState, event: HistoryV6Event, log: HistoricalEventLog) -> Transition:
	var result := Transition.new()
	result.errors = state.errors()
	if event.id.is_empty() or log.has_id(event.id): result.errors.append("Duplicate/empty event ID")
	if event.rule_id.is_empty() or event.effects.is_empty(): result.errors.append("Empty rule/effects")
	if event.year <= state.year: result.errors.append("Event time must advance")
	for id in event.participants + event.targets:
		if not state.contains(id): result.errors.append("Unknown event reference: " + id)
	var causes: Array[String] = []
	for key in event.evidence_keys:
		var cause: String = state.fact_events.get(key, "")
		if cause.is_empty() or not log.has_id(cause): result.errors.append("Unproven enabling fact: " + key)
		elif not _evidence_used(state, event, key): result.errors.append("Unrelated enabling fact: " + key)
		elif cause not in causes: causes.append(cause)
	causes.sort()
	if causes != event.cause_ids: result.errors.append("Cause IDs must match explicit enabling facts")
	if not result.errors.is_empty(): return result
	var next := state.copy()
	next.year = event.year
	for effect in event.effects:
		var error := _effect(next, effect, event.id)
		if not error.is_empty():
			result.errors.append(error)
			return result
	# New political identities cannot mint institutional splitting capacity.
	var before_capacity := 0
	var after_capacity := 0
	for f in state.factions.values():
		if f.active: before_capacity += f.split_capacity
	for f in next.factions.values():
		if f.active: after_capacity += f.split_capacity
	if after_capacity > before_capacity: result.errors.append("Institutional capacity created")
	result.errors.append_array(next.errors())
	if result.errors.is_empty(): result.state = next
	return result

func _evidence_used(s: HistoryWorldState, event: HistoryV6Event, key: String) -> bool:
	var parts := key.split(":")
	if parts.size() != 2: return false
	var id := parts[1]
	for e in event.effects:
		match parts[0]:
			"faction":
				if e.operation == Op.CREATE_FACTION and e.target == id: return true
			"population":
				if not s.populations.has(id): continue
				var p := s.populations[id]
				if e.operation == Op.SITE_OWNER and e.subject == p.site_id and e.target == p.faction_id: return true
			"site_owner":
				if e.operation == Op.SITE_OWNER and e.subject == id and s.sites.has(id) and s.sites[id].owner_id.is_empty(): return true
			"site_condition":
				if e.operation == Op.MOVE_POPULATION and s.populations.has(e.subject) and s.populations[e.subject].site_id == id and not s.sites[id].accessible: return true
			"artifact":
				if e.operation == Op.MOVE_ARTIFACT and e.subject == id and s.artifacts.has(id) and s.artifacts[id].status == "lost" and e.detail == "held": return true
	return false

func replay(initial: HistoryWorldState, log: HistoricalEventLog) -> Transition:
	var result := Transition.new()
	result.state = initial.copy()
	result.errors = initial.errors()
	if not result.errors.is_empty():
		result.state = null
		return result
	var prefix := HistoricalEventLog.new()
	for event in log.events():
		var step := apply(result.state, event, prefix)
		if not step.ok(): return step
		result.state = step.state
		prefix.append_committed(event)
	return result

func _active(s: HistoryWorldState, id: String) -> bool:
	return s.factions.has(id) and s.factions[id].active

func _effect(s: HistoryWorldState, e: HistoryV6Event.Effect, event_id: String) -> String:
	# Reject surplus arguments too: no hidden Origin, intent or knowledge payload.
	var allowed: Array[String] = []
	match e.operation:
		Op.CREATE_FACTION: allowed = ["target", "value"]
		Op.RETIRE_FACTION, Op.SPEND_SPLIT_CAPACITY: allowed = []
		Op.MOVE_POPULATION: allowed = ["target", "location"]
		Op.SITE_OWNER: allowed = ["target"]
		Op.SITE_CONDITION: allowed = ["detail"]
		Op.RELATIONSHIP: allowed = ["target", "value", "detail"]
		Op.MOVE_ARTIFACT: allowed = ["target", "location", "detail"]
		_: return "Unknown or forbidden objective operation"
	if (not e.target.is_empty() and "target" not in allowed) or (not e.location.is_empty() and "location" not in allowed) or (e.value != 0 and "value" not in allowed) or (not e.detail.is_empty() and "detail" not in allowed):
		return "Forbidden effect argument"
	var key := ""
	match e.operation:
		Op.CREATE_FACTION:
			if s.contains(e.subject) or e.subject.is_empty() or not _active(s, e.target): return "Invalid faction creation reference"
			var parent := s.factions[e.target]
			if parent.split_capacity <= 0 or e.value < 0 or e.value >= parent.split_capacity: return "Faction creation lacks institutional basis"
			var f := HistoryWorldState.Faction.new()
			f.id = e.subject; f.parent_id = e.target; f.founded_year = s.year; f.split_capacity = e.value
			s.factions[f.id] = f
			key = "faction:" + f.id
		Op.RETIRE_FACTION:
			if not _active(s, e.subject) or not s.groups(e.subject).is_empty(): return "Retirement requires distributed population"
			s.factions[e.subject].active = false
			key = "faction:" + e.subject
		Op.SPEND_SPLIT_CAPACITY:
			if not _active(s, e.subject) or s.factions[e.subject].split_capacity <= 0: return "No split capacity"
			s.factions[e.subject].split_capacity -= 1
			key = "split_capacity:" + e.subject
		Op.MOVE_POPULATION:
			if not s.populations.has(e.subject) or not _active(s, e.target) or not s.sites.has(e.location): return "Population move reference"
			var p := s.populations[e.subject]
			if p.site_id != e.location and not s.sites[e.location].accessible: return "Destination inaccessible"
			if p.faction_id == e.target and p.site_id == e.location: return "No-op population move"
			p.faction_id = e.target; p.site_id = e.location
			key = "population:" + e.subject
		Op.SITE_OWNER:
			if not s.sites.has(e.subject): return "Unknown site"
			var site := s.sites[e.subject]
			if site.owner_id == e.target: return "No-op ownership"
			if not e.target.is_empty():
				if not _active(s, e.target) or not site.accessible or s.residents(e.subject, e.target).is_empty(): return "Occupation lacks accessible resident faction"
				if not site.owner_id.is_empty() and _active(s, site.owner_id) and s.relationships.get(HistoryWorldState.pair(e.target, site.owner_id), 0) != -1:
					return "Contested transfer lacks hostility"
			site.owner_id = e.target
			key = "site_owner:" + e.subject
		Op.SITE_CONDITION:
			if not s.sites.has(e.subject): return "Unknown incident site"
			var site := s.sites[e.subject]
			if not ((site.condition == "intact" and e.detail == "damaged") or (site.condition == "damaged" and e.detail == "ruined")):
				return "Impossible condition change or unauthorized repair"
			site.condition = e.detail; site.accessible = e.detail != "ruined"
			key = "site_condition:" + e.subject
		Op.RELATIONSHIP:
			if not _active(s, e.subject) or not _active(s, e.target) or e.subject == e.target or e.value < -1 or e.value > 1: return "Invalid relationship"
			var pair := HistoryWorldState.pair(e.subject, e.target)
			if e.detail != str(s.relationships.get(pair, 0)): return "Stale previous relationship"
			if s.relationships.get(pair, 0) == e.value: return "No-op relationship"
			s.relationships[pair] = e.value
			key = "relationship:" + pair
		Op.MOVE_ARTIFACT:
			if not s.artifacts.has(e.subject) or not s.sites.has(e.location): return "Artifact move reference"
			var a := s.artifacts[e.subject]
			if e.detail == "lost":
				if a.status != "held" or not e.target.is_empty() or a.site_id != e.location: return "Invalid loss"
			elif e.detail == "held":
				if not _active(s, e.target) or s.residents(e.location, e.target).is_empty() or not s.sites[e.location].accessible: return "Invalid custody"
				if a.status == "lost" and a.site_id != e.location: return "Recovery must occur at loss location"
			else: return "Unknown artifact state"
			if a.owner_id == e.target and a.site_id == e.location and a.status == e.detail: return "No-op artifact move"
			a.owner_id = e.target; a.site_id = e.location; a.status = e.detail
			key = "artifact:" + e.subject
	s.fact_events[key] = event_id
	return ""
