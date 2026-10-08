class_name HistoryV4Claims
extends RefCounted

func build(result: HistoryResult) -> Array[HistoricalClaim]:
	var claims: Array[HistoricalClaim] = []
	var view:=HistoryV4Compatibility.legacy_view(result)
	var resolver:=FactionIdentityResolver.new()
	for i in range(result.present.active_factions.size()):
		var id: String = result.present.active_factions[i].id
		var identity:=resolver.resolve_v4(result,id,view)
		var cautious:bool=identity.adaptive_stance in ["preserve","withdraw"]
		_add(claims, result, id, result.entity(id).created_event_id, "Our recorded institutions bind shared obligations; our interpretation does not determine the world's hidden causes.")
		_add(claims, result, id, "h_pressure", "Regional losses remain a warning to our households." if cautious else "The same regional losses are remembered as a reason to rebuild and venture again.")
		var discoveries:Dictionary={"faith":"Some call the recovered patterns sacred signs; that belief does not establish their origin.","technical":"We compare measured manufacture, behavior and memory patterns with surviving records; correspondence does not establish origin or personhood.","skeptical":"Similarities invite competing explanations; no record identifies an original person or proves an external origin.","pragmatic":"We debate safe access and possible uses of the recorded object; usefulness does not identify its maker or settle personhood."}
		_add(claims, result, id, "h_discovery", discoveries[identity.interpretation_mode])
		for project in result.present.civilizational_projects:
			var statement := "We remember the recorded undertaking as an obligation to preserve its lessons." if cautious else "We remember the same undertaking as an invitation to revise inherited choices."
			for scar in result.present.civilizational_scars:
				if scar.source_event_ids[0]==project.phase_event_ids[-1]:
					statement=_scar_statement(scar.record_id,identity,cautious,scar.data)
			_add(claims, result, id, project.phase_event_ids[-1], statement)
		for scar in result.present.civilizational_scars:
			var statement := _scar_statement(scar.record_id,identity,cautious,scar.data)
			_add(claims, result, id, scar.source_event_ids[0], statement)
	return claims

func _scar_statement(key:String,identity:Dictionary,cautious:bool,facts:Dictionary)->String:
	if key=="failed_exodus":
		var observation:String="The failed journey has surviving engineering failure records" if facts.get("cause","")=="launch_failure" else "The attempted departure has incomplete tracking and loss records"
		if facts.get("cause","")=="interception":
			observation="The failed departure has recorded interception evidence, while the intervening hardware's purpose remains unknown"
		return observation+("; we remember it as a reason to limit future departures." if cautious else "; we remember it as a reason to revise future departure plans.")
	var alternatives:Dictionary={
		"last_descent":["Some remember a forbidden boundary below; their belief does not establish what the expedition found or what killed it.","Some propose an engineering failure, while others suspect something below; the expedition records select no killer."],
		"record_severance":["Some defend surviving registry traditions as the basis of legitimacy; missing originals are not thereby recovered.","Some favor new citizenship and ownership settlements; the same broken records do not prove an original title."],
		"habitable_zone_loss":["Some regard the recorded lost territory as a boundary to preserve; that judgment adds no unrecorded system intention.","Some hope to restore habitation or seek new routes; the documented hazard does not identify a hidden purpose."],
		"targeted_extermination":["The signed removal and killing orders remain a grievance against the recorded authorities; our moral judgment adds no unrecorded lineage.","We debate what scholars should call the recorded policy and killings; the target group and damage are recorded regardless of that terminology."],
		"chosen_cognitive_regression":["Some reject the recorded Retreat from Thought as a warning about imposed limits on future choices; this does not prove the original beliefs false.","Some value the recorded choice to limit cognition; neither reduced suffering nor protection from danger is established by the records."],
		"collective_mind_fracture":["Some remember the broken coordination network as a warning against shared command; its records do not prove one consciousness existed.","Some hope to restore coordination between the recorded fragments; whether there was one mind remains unresolved."],
		"autonomous_systems_crisis":["Some call the recorded autonomous behavior and damage a machine rebellion; that interpretation proves neither political intent nor consciousness.","Some propose malfunction or liberation as explanations of the same autonomous behavior; the observations decide neither consciousness nor personhood."],
		"imposed_cognitive_regression":["We remember the documented forced biological diminution as an atrocity against the registered human cohort; our judgment does not invent a new lineage.","We dispute the responsible authorities' justification of the same coercive program; reduced cognition is observed, while its moral defense remains contested."],
		"orbital_fall":["Some remember the falling structures as a warning from the sky; the impact records establish neither one maker nor one intention.","Some see the impact belt as material for rebuilding; that desire does not identify who caused every descent."],
		"mechanogenic_assimilation":["Some fear the recorded irreversible coupling of human bodies, behavior and social organization threatens personhood; no record decides whether the original person died.","Some regard irreversible synthetic coupling as a legitimate human form; recorded bodily, behavioral and social linkage does not settle philosophical identity."],
	}
	if alternatives.has(key):
		return alternatives[key][0 if cautious else 1]
	return "Our faith remembers this recorded change as a boundary warning; its spiritual meaning is a belief." if identity.interpretation_mode=="faith" else "We compare recorded changes and causal observations with competing judgments; those judgments add no unrecorded intention or metaphysical answer."

func _add(claims: Array[HistoricalClaim], result: HistoryResult, id: String, event_id: String, statement: String) -> void:
	# One authored interpretation per claimant/event avoids duplicate evidence.
	if claims.any(func(row: HistoricalClaim) -> bool: return row.claimant_entity_id == id and row.referenced_event_id == event_id):
		return
	var claim := HistoricalClaim.new()
	claim.claimant_entity_id = id
	claim.referenced_event_id = event_id
	claim.reference_scope = "event"
	claim.interpretation = statement
	claim.evidence = {"source_event_ids": [event_id]}
	claim.confidence = float(HistoryV4Catalog.rng(result.seed, "claims/" + id + "/" + event_id).randi_range(35, 80)) / 100.0
	claims.append(claim)
