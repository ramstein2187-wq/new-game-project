class_name SocialIncidentValidator
extends RefCounted

var _catalog: SocialIncidentCatalog
func _init(catalog: SocialIncidentCatalog = null) -> void:
	_catalog = catalog if catalog != null else SocialIncidentCatalog.new()

func errors(result: HistoryResult) -> Array[String]:
	var issues: Array[String] = []
	var facts := {}
	var sources := {}
	var references := {}
	var sites := {}
	var residences := {}
	var episodes := {}
	var social_count := 0
	var last_topology := -600
	for event in result.objective_timeline:
		if event.id.begins_with("t_"):
			last_topology = maxi(last_topology, event.year)
	for event in result.objective_timeline:
		var definition := _catalog.definition(event.narrative_key)
		if event.event_type == HistoricalEvent.Type.SOCIAL_INCIDENT:
			social_count += 1
			if definition.is_empty():
				issues.append("social: Unknown incident")
				continue
			if event.year < -47 or event.year <= last_topology or event.year >= -28:
				issues.append("chronology: Social event outside post-topology/pre-relation window")
			if not _catalog.gate_open(definition.gate):
				issues.append("content_gate: Unapproved social contact/lineage")
			if event.actor_ids.is_empty() or event.actor_ids.any(func(id: String) -> bool: return result.entity(id).kind != "faction"):
				issues.append("social: Incidents require existing political participants")
			if definition.role == "primary":
				if episodes.has(definition.family):
					issues.append("social: Repeated incident family in bounded budget")
				episodes[definition.family] = event.id
			for actor in event.actor_ids:
				if result.entity(actor).created_event_id not in event.cause_event_ids:
					issues.append("prerequisite: Social incident lacks participant formation source")
				for requirement: String in definition.requires:
					if requirement == "site:owned_home":
						continue
					if not facts.get(actor, {}).has(requirement):
						issues.append("prerequisite: " + event.id + "/" + requirement)
					elif sources[actor][requirement] not in event.cause_event_ids:
						issues.append("prerequisite: Missing causal source " + event.id + "/" + requirement)
				if event.narrative_key == "machine_safety_reform" and not (facts.get(actor, {}).has("scar:machine_war") or facts.get(actor, {}).has("practice:autonomous_machine_harm")):
					issues.append("prerequisite: Machine safety reform without recorded harm")
				if event.narrative_key == "machine_safety_reform":
					var harm: String = "scar:machine_war" if facts.get(actor, {}).has("scar:machine_war") else "practice:autonomous_machine_harm"
					if sources.get(actor, {}).get(harm, "") not in event.cause_event_ids:
						issues.append("prerequisite: Missing causal machine harm source")
			var recorded := {}
			for effect in event.effects:
				if effect.kind == "activate" or effect.kind == "retire":
					if result.entity(effect.entity_id).kind == "faction":
						issues.append("social: Political faction mutation forbidden")
				if effect.kind != "social_record":
					continue
				var specification := {"record_type": effect.record_type, "record_id": effect.record_id, "operation": effect.operation}
				if effect.entity_id not in event.actor_ids or specification not in definition.records:
					issues.append("evidence: Unauthored social record or participant")
				var key: String = effect.entity_id + "/" + JSON.stringify(specification) + "/" + effect.content_id
				if recorded.has(key):
					issues.append("evidence: Duplicate social record")
				recorded[key] = true
				if effect.record_type in ["cohort", "practice", "institution", "scar"] and definition.family == "cloning":
					if definition.role != "support":
						if effect.content_id != "human_baseline" or result.entity(effect.reference_id).kind != "group":
							issues.append("content_gate: Clone cohort must retain authorized human-derived provenance")
						if definition.role == "followup" and references.get(effect.entity_id, {}).get("cohort:clone_born") != effect.reference_id:
							issues.append("prerequisite: Clone consequence references a different or missing cohort")
				if effect.record_type in ["lineage_contact", "personhood_contact"] and not _catalog.authorized(effect.content_id, effect.record_type):
					issues.append("content_gate: Unauthorized contact reference")
				if effect.record_type == "site_history" or (effect.record_type == "scar" and effect.record_id in ["lost_homeland", "deep_exile"]):
					if result.entity(effect.reference_id).kind != "settlement":
						issues.append("prerequisite: Loss/residence requires identifiable settlement")
					if effect.record_id in ["homeland_loss", "lost_homeland"] and sites.get(effect.reference_id) != effect.entity_id:
						issues.append("prerequisite: Homeland loss lacks prior owned home")
					if effect.record_id in ["deep_settlement_loss", "deep_exile"] and residences.get(effect.entity_id) != effect.reference_id:
						issues.append("prerequisite: Deep loss lacks actual prior residence at that site")
			var content_multiplier: int = _catalog.content_ids(definition.gate).size() if definition.gate in ["lineages", "adapted_lineages"] else 1
			if recorded.size() != definition.records.size() * event.actor_ids.size() * content_multiplier:
				issues.append("evidence: Social incident lacks its complete authored consequences")
			_adapter_errors(result, event, definition, references, issues)
		# Replay prerequisites only after all checks, preventing same-event justification.
		for effect in event.effects:
			if effect.kind == "settlement" or effect.kind == "site_owner":
				sites[effect.entity_id] = effect.owner_id
			elif effect.kind == "social_record":
				var actor: String = effect.entity_id
				if not facts.has(actor):
					facts[actor] = {}
					sources[actor] = {}
					references[actor] = {}
				var key: String = effect.record_type + ":" + effect.record_id
				if effect.operation == "abolish":
					facts[actor].erase(key)
				else:
					facts[actor][key] = true
					sources[actor][key] = event.id
					references[actor][key] = effect.reference_id
				if key == "site_history:deep_residence":
					residences[actor] = effect.reference_id
	if episodes.size() > 3 or social_count > 12:
		issues.append("social: Incident budget exceeded")
	return issues

func _adapter_errors(result: HistoryResult, event: HistoricalEvent, definition: Dictionary, references: Dictionary, issues: Array[String]) -> void:
	var activated: Array = []
	var retired: Array = []
	var homes: Array = []
	var ruins := 0
	for effect in event.effects:
		if effect.kind == "activate":
			activated.append(effect.entity_id)
		elif effect.kind == "retire":
			retired.append(effect.entity_id)
		elif effect.kind == "settlement":
			homes.append(effect)
		elif effect.kind == "ruin":
			ruins += 1
	var key: String = event.narrative_key
	if key in ["autonomous_machine_conflict", "defense_network_hostility", "machine_control_failure", "local_population_decline"]:
		if ruins != 1 or not activated.is_empty() or not retired.is_empty() or not homes.is_empty():
			issues.append("evidence: Harm event requires its bounded infrastructure damage")
	elif definition.family == "cloning" and definition.role == "primary":
		if activated.size() != 1 or result.entity(str(activated[0])).kind != "group" or not retired.is_empty():
			issues.append("prerequisite: Clone production requires actual new cohort entity")
		for effect in event.effects:
			if effect.kind == "social_record" and effect.record_type == "cohort" and effect.reference_id not in activated:
				issues.append("prerequisite: Clone record lacks cohort creation")
	elif definition.family == "homeland" and definition.role == "primary":
		if retired.size() != 1 or activated.size() != 1 or homes.size() != 1 or ruins != 1:
			issues.append("prerequisite: Homeland loss requires abandonment, damage and surviving relocation")
		for effect in event.effects:
			if effect.kind == "social_record" and effect.reference_id not in retired:
				issues.append("prerequisite: Homeland scar must reference actual abandoned site")
	elif key == "deep_residence_record":
		if activated.size() != 1 or homes.size() != 1 or event.actor_ids.size() < 1 or not retired.is_empty():
			issues.append("prerequisite: Deep residence requires actual settlement and residents")
		for effect in event.effects:
			if effect.kind == "social_record" and effect.reference_id not in activated:
				issues.append("prerequisite: Deep residence references unoccupied site")
	elif key == "deep_settlement_evacuation":
		if retired.size() != 1 or ruins != 1 or not activated.is_empty():
			issues.append("prerequisite: Deep evacuation requires actual site closure")
		for effect in event.effects:
			if effect.kind == "social_record" and effect.reference_id not in retired:
				issues.append("prerequisite: Deep exile must reference evacuated site")
	else:
		if not activated.is_empty() or not retired.is_empty() or not homes.is_empty() or ruins != 0:
			issues.append("evidence: Unauthored physical consequence in social incident")
	if key in ["homeland_memory_charter", "deep_memory_register"]:
		var prerequisite: String = "scar:lost_homeland" if key == "homeland_memory_charter" else "scar:deep_exile"
		for effect in event.effects:
			if effect.kind == "social_record" and references.get(effect.entity_id, {}).get(prerequisite) != effect.reference_id:
				issues.append("prerequisite: Memory register references a different lost site")
