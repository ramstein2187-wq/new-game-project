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
					statement=_scar_statement(scar.record_id,identity,cautious)
			_add(claims, result, id, project.phase_event_ids[-1], statement)
		for scar in result.present.civilizational_scars:
			var statement := _scar_statement(scar.record_id,identity,cautious)
			_add(claims, result, id, scar.source_event_ids[0], statement)
	return claims

func _scar_statement(key:String,identity:Dictionary,cautious:bool)->String:
	var alternatives:Dictionary={
		"failed_exodus":["The recorded denial warns us to close the sky to future departures; why the old hardware acted remains unknown.","The same failed journey increases our desire to attempt a better departure; we do not know why the old hardware denied it."],
		"last_descent":["Some remember a forbidden boundary below; their belief does not establish what the expedition found or what killed it.","Some propose an engineering failure, while others suspect something below; the expedition records select no killer."],
		"continuity_transfer":["Some among us ground personhood in bodily continuity; extraction and execution records do not decide whether the same person continued.","Some among us believe memory continuity can count as survival; the record does not prove consciousness or a soul survived."],
		"biological_shutdown":["Some suspect an engineered biological trigger; shared failure and marker correlation do not identify a designer, perpetrator or trigger.","Some consider disease or other explanations; abrupt cohort mortality does not establish any one mechanism."],
		"targeted_extermination":["The signed removal and killing orders remain a grievance against the recorded authorities; our moral judgment adds no unrecorded lineage.","We debate what scholars should call the recorded policy and killings; the target group and damage are recorded regardless of that terminology."],
		"chosen_cognitive_regression":["Some reject the recorded Retreat from Thought as a warning about imposed limits on future choices; this does not prove the original beliefs false.","Some value the recorded choice to limit cognition; neither reduced suffering nor protection from danger is established by the records."],
		"collective_mind_fracture":["Some remember the broken coordination network as a warning against shared command; its records do not prove one consciousness existed.","Some hope to restore coordination between the recorded fragments; whether there was one mind remains unresolved."],
		"machine_insurrection":["Some call the recorded command refusal a rebellion; it does not prove machine consciousness.","Some propose malfunction or liberation as interpretations of the recorded conflict; the physical damage does not decide consciousness."],
		"mechanogenic_assimilation":["Some fear the recorded tissue replacement threatens personhood; no record decides whether the original person died.","Some regard synthetic integration as a legitimate human form; recorded replacement and linkage do not settle philosophical identity."],
	}
	if alternatives.has(key):
		return alternatives[key][0 if cautious else 1]
	return "Our faith remembers this recorded change as a boundary warning; its ultimate cause remains unknown." if identity.interpretation_mode=="faith" else "We compare the recorded change with competing physical explanations; the surviving evidence does not settle its ultimate cause."

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
