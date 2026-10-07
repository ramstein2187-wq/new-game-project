extends SceneTree

var assertions := 0
var failures := 0
var examples := {}
var generator := HistoryGenerator.new()

func expect(value: bool, message: String) -> void:
	assertions += 1
	if not value:
		failures += 1
		push_error(message)

func _init() -> void:
	_legacy_replays()
	_shipping()
	_negative()
	_names_and_catalog_order()
	_regression_gate()
	print("%s: History v4 (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _legacy_replays() -> void:
	var baseline: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m043_legacy.json"))
	for version in [2,3]:
		var legacy := HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,version)
		for seed: String in baseline.versions[str(version)]:
			var result := legacy.generate(int(seed))
			expect(result.canonical_output().sha256_text() == baseline.versions[str(version)][seed], "Exact historical replay v%d seed%s" % [version,seed])

func _shipping() -> void:
	var culture := FactionCultureResolver.new()
	for seed in range(1,351):
		var result := generator.generate(seed)
		expect(result.validation_report.errors.is_empty(), "Valid v4 seed%d: %s" % [seed,result.validation_report.errors])
		expect(result.generation_version == 4 and result.architecture_version == 2, "Version contract")
		expect(result.present.civilizational_scars.size() <= 2, "Bounded spectacular events")
		expect(result.present.to_dict() == HistoryProjector.new().project(result.entities,result.objective_timeline).to_dict(), "Authoritative deterministic projection")
		for event in result.objective_timeline:
			if not examples.has(event.narrative_key):
				examples[event.narrative_key] = seed
			for effect in event.effects:
				if effect.kind == "history_record" and effect.data.has("origin"):
					expect(effect.data.origin in ["unknown","human_derived"], "No invented Origin")
		for polity in result.present.historical_factions:
			for stratum: Dictionary in polity.population_origin_profile.strata:
				expect(stratum.template_id == "human_baseline" and stratum.origins == ["human_derived"], "Authorized population survives SF incidents")
		var before := result.canonical_output()
		if seed <= 20:
			for faction in result.present.active_factions:
				var identity := FactionIdentityResolver.new().resolve(result,faction.id)
				expect(identity.social_anchor != "ritual" and identity.interpretation_mode != "ritual", "Faith axes")
				var profile := culture.resolve(result,faction.id)
				expect(culture.errors(result,faction.id,profile).is_empty(), "Evidence-gated v4 culture")
			expect(before == result.canonical_output(), "Culture and Claims never mutate history")
			var replay := generator.generate(seed)
			expect(HistoryValidator.new().validate(result,replay).determinism == "pass", "v4 deterministic replay")
	for key in ["ark_launch","last_descent","continuity_transfer","collective_mind_fracture","machine_insurrection","mechanogenic_assimilation","identity_collapse","targeted_extermination","silent_depopulation","mass_morphogenic_event","reproductive_shutdown","biological_shutdown"]:
		expect(examples.has(key), "Shipping signature reachable: " + key)
	var catalog := HistoryV4Catalog.new()
	expect(catalog.project("ark_project").outcomes.size() > 1, "Projects may succeed without Scar")
	expect(not examples.has("imposed_cognitive_regression"), "Unapproved semi-sapient content stays gated")

func _negative() -> void:
	for key in ["ark_launch","last_descent","continuity_transfer","collective_mind_fracture","machine_insurrection","mechanogenic_assimilation","identity_collapse","targeted_extermination"]:
		if not examples.has(key):
			continue
		var result := generator.generate(int(examples[key]))
		var event := _find(result,key)
		event.cause_event_ids.clear()
		expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Missing prerequisite rejected: " + key)
		result = generator.generate(int(examples[key]))
		event = _find(result,key)
		event.year = -550
		result.objective_timeline.sort_custom(func(a: HistoricalEvent,b: HistoricalEvent)->bool:return a.year < b.year)
		expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Future prerequisites rejected: " + key)
	for key in ["silent_depopulation","last_descent","continuity_transfer","mass_morphogenic_event","unclassified_signal","biological_shutdown"]:
		if not examples.has(key):
			continue
		var result := generator.generate(int(examples[key]))
		var event := _find(result,key)
		var changed := false
		for effect in event.effects:
			if effect.kind != "history_record":
				continue
			for field in effect.data:
				if effect.data[field] is String and effect.data[field] == "unknown":
					effect.data[field] = "preservator_did_it"
					changed = true
					break
			if changed:
				break
		expect(changed and not HistoryValidator.new().validate(result).errors.is_empty(), "Mystery resolution rejected: " + key)
	var result := generator.generate(42)
	result.entity("precursor").population_origin_profile.strata[0].template_id = "invented_lineage"
	expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Invented lineage rejected")
	result = generator.generate(42)
	result.present.history_records[0].data["fake_fact"] = true
	expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Projection cannot introduce fabricated evidence")
	result = generator.generate(42)
	result.configuration.extra_preservator = "core_shutdown"
	expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Legacy canonical ID rejected")
	result = generator.generate(int(examples.targeted_extermination))
	for effect in _find(result,"targeted_extermination").effects:
		if effect.kind=="history_record" and effect.record_id=="targeted_loss":
			effect.data.target_reference="regional_assembly"
	expect(not HistoryValidator.new().validate(result).errors.is_empty(),"An existing unrelated group is not the actual registered target")
	result = generator.generate(42)
	for event in result.objective_timeline:
		for effect in event.effects:
			if effect.kind=="history_record" and effect.record_type=="project":
				effect.reference_id="precursor"
	expect(not HistoryValidator.new().validate(result).errors.is_empty(),"An existing polity cannot substitute for a constructed facility")

func _names_and_catalog_order() -> void:
	var catalog := HistoryV4Catalog.new()
	var reordered := catalog.data.duplicate(true)
	for key in ["projects","events","scenarios","discoveries","pressures","responses"]:
		reordered[key].reverse()
	var builder := HistoryGenerator.new()
	var normal := generator.generate(42)
	var reversed := HistoryV4Planner.new(HistoryV4Catalog.new(reordered)).generate(42,builder)
	expect(normal.canonical_output() == reversed.canonical_output(), "Catalog order does not perturb RNG selection")
	var names := HistoryNameSource.new(func(_seed:int,id:String,_kind:String)->String:return "label_"+id)
	var renamed := HistoryGenerator.new(names).generate(42)
	expect(normal.structural_output() == renamed.structural_output(), "Names cannot create history facts")
	var altered := catalog.data.duplicate(true)
	altered.discoveries.erase("crater_machine")
	var changed := HistoryV4Planner.new(HistoryV4Catalog.new(altered)).generate(42,builder)
	expect(normal.present.civilizational_projects == changed.present.civilizational_projects and normal.present.active_factions == changed.present.active_factions, "Discovery pool cannot perturb topology or project/naming")

func _find(result:HistoryResult,key:String)->HistoricalEvent:
	for event in result.objective_timeline:
		if event.narrative_key == key:
			return event
	return null

func _regression_gate()->void:
	var data:Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_incident_contacts.json"))
	var contact_only:=SocialIncidentCatalog.new({},data)
	expect(not HistoryV4Catalog.gate_open("regression_population",SocialPopulationCatalog.new(),contact_only),"Historical contact alone cannot authorize regression")
	data.contacts[0].cognitive_regression_authorized=true
	data.contacts[0].population_template_id="human_baseline"
	var authorized:=SocialIncidentCatalog.new({},data)
	expect(HistoryV4Catalog.gate_open("regression_population",SocialPopulationCatalog.new(),authorized),"Explicit synthetic regression content opens gate")
	var catalog:=HistoryV4Catalog.new().data.duplicate(true)
	catalog.scenarios=catalog.scenarios.filter(func(row:Dictionary)->bool:return row.id=="imposed_cognitive_regression")
	var custom:=HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,4,null,authorized)
	var found:=false
	for seed in range(1,21):
		var result:=HistoryV4Planner.new(HistoryV4Catalog.new(catalog)).generate(seed,custom)
		expect(result.validation_report.errors.is_empty(),"Synthetic gated regression validates with actual contact/template")
		if _find(result,"imposed_cognitive_regression")!=null:
			found=true
			expect(not HistoryValidator.new().validate(result).errors.is_empty(),"Shipping validator rejects injected contact/template identity")
			break
	expect(found,"Authorized gated regression has an exercised objective path")
