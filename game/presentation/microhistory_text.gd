class_name MicrohistoryText
extends RefCounted
## Evidence-only player view. Objective records are available only in debug/report.

static func describe(o: Dictionary, learned: bool = false) -> String:
	var definition: Dictionary = MicrohistoryPlanner.catalog.evidence[o.evidence_kind]
	var text := GameText.text(definition.observation_key)
	if o.evidence_kind == "snare" and not o.active:
		text = GameText.text("micro.inactive_trap")
		if learned: text += "\n" + GameText.text("micro.inactive_trap_detail")
	elif learned: text += "\n" + GameText.text(definition.inspection_key)
	if o.used: text += "\n" + GameText.text("micro.state.used")
	else: text += "\n" + GameText.text("micro.verb."+str(o.verb))
	return text

static func debug_incident(incident: Dictionary) -> String:
	var defs: Array = MicrohistoryPlanner.catalog.definitions.filter(func(d: Dictionary)->bool:return d.id==incident.definition_id)
	var d: Dictionary = defs[0]
	var outcome: Dictionary = d.outcomes.filter(func(o: Dictionary)->bool:return o.id==incident.outcome_id)[0]
	var observed: Array[String]=[]
	for e in incident.evidence: observed.append(GameText.text(MicrohistoryPlanner.catalog.evidence[e.kind].observation_key))
	return "%s\n%s · %s\n%s\nEvidence: %s\nUnknown: %s" % [GameText.text("micro.debug"),GameText.text(d.title_key),GameText.text("micro.age."+incident.age_band),GameText.text(outcome.fact_key),", ".join(observed),str(incident.unknown)]
