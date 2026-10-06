extends SceneTree

const Statistics = preload("res://tools/history_topology_statistics.gd")
var assertions := 0
var failures := 0
var data: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_population_templates.json"))
var catalog := SocialPopulationCatalog.new(data)
var validator := HistoryValidator.new(catalog)

func expect(value: bool, message: String) -> void:
	assertions += 1
	if not value:
		failures += 1
		push_error(message)

func _init() -> void:
	_profiles()
	_inheritance()
	_generation()
	print("%s: Population strata/content gate (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _profile(id: String) -> Dictionary:
	return PopulationOrigins.from_template(catalog.template(id))

func _profiles() -> void:
	expect(OriginCatalog.ids() == ["planetary", "human_derived", "observer", "innerworld", "outerworld", "unknown"], "One lowercase Origin vocabulary")
	expect(OriginCatalog.display("human_derived") == "Human-derived" and OriginCatalog.display("innerworld", "ko") == "심층계", "Display is separate")
	var human := _profile("human_baseline")
	var inner := _profile("fixture_innerworld")
	var hybrid := _profile("fixture_hybrid")
	var mixed := PopulationOrigins.combine([human, inner])
	expect(mixed != hybrid and mixed.strata.size() == 2 and hybrid.strata.size() == 1, "Mixed society and hybrid lineage are distinct canonical data")
	expect(PopulationOrigins.mixed(mixed) and not PopulationOrigins.multi_lineage(mixed), "Political merge creates co-residence, never a hybrid")
	expect(PopulationOrigins.multi_lineage(hybrid) and not PopulationOrigins.mixed(hybrid), "Explicit hybrid template has one multi-Origin lineage")
	expect(catalog.profile_errors(mixed).is_empty() and catalog.profile_errors(hybrid).is_empty(), "Both authored fixture forms valid")
	expect("mixed society" in PopulationOrigins.format(mixed) and "multi-Origin lineage" in PopulationOrigins.format(hybrid), "Renderer distinguishes semantics")
	expect(PopulationOrigins.combine([inner, human]) == mixed, "Co-residence ordering independent of donor order")
	expect(PopulationOrigins.combine([human, human]) == human, "Identical template collapses deterministically")
	var joined := PopulationOrigins.combine([human, inner], true)
	expect(joined.strata[0].prevalence == "minor" and joined.strata[1].prevalence == "majority", "Arrival minor, existing residents retained")
	for origins: Array in [["Human-derived"], ["composite"], [], ["human_derived", "human_derived"], ["unknown", "human_derived"], ["innerworld", "human_derived"]]:
		var bad := human.duplicate(true)
		bad.strata[0].origins = origins
		expect(not PopulationOrigins.errors(bad).is_empty(), "Reject invalid Origin set " + str(origins))
	for bad in [{"strata": []}, {"strata": ["bad"]}, {}]:
		expect(not PopulationOrigins.errors(bad).is_empty(), "Reject empty/malformed population profile")
	var bad := mixed.duplicate(true)
	for row in bad.strata:
		row.prevalence = "majority"
	expect(not PopulationOrigins.errors(bad).is_empty(), "Reject two majorities")
	bad = mixed.duplicate(true)
	bad.strata.reverse()
	expect(not PopulationOrigins.errors(bad).is_empty(), "Reject noncanonical stratum order")
	bad = human.duplicate(true)
	bad.strata[0].prevalence = "trace"
	expect(not PopulationOrigins.errors(bad).is_empty(), "Trace-only population lacks dominant residents")
	expect(not SocialPopulationCatalog.new().profile_errors(hybrid).is_empty(), "Fixture cannot leak into shipping catalog")
	expect(not catalog.profile_errors(_profile("fixture_denied")).is_empty(), "Disabled template blocked even though its Origin exists")
	expect(catalog.profile_errors(_profile("fixture_local_only")).is_empty() and not catalog.profile_errors(_profile("fixture_local_only"), true).is_empty(), "Newcomer permission independent of membership")

func _effect(child: Dictionary, donors: Dictionary, mode: String, sources: Array) -> Array:
	var entity := HistoricalEntity.new()
	entity.id = "child"
	entity.kind = "faction"
	entity.created_event_id = "formation"
	entity.population_origin_profile = child
	var event := HistoricalEvent.new()
	event.id = "formation"
	var issues: Array = []
	validator._population_effect({"entity_id": "child", "profile": child, "mode": mode, "source_ids": sources}, event,
		donors.duplicate(true), {"child": entity}, {"child": true}, issues)
	return issues

func _inheritance() -> void:
	var human := _profile("human_baseline")
	var inner := _profile("fixture_innerworld")
	var mixed := PopulationOrigins.combine([human, inner])
	var hybrid := _profile("fixture_hybrid")
	expect(_effect(mixed, {"a": human, "b": inner}, "co_residence", ["a", "b"]).is_empty(), "Merge preserves separate resident lineages")
	expect(not _effect(hybrid, {"a": human, "b": inner}, "co_residence", ["a", "b"]).is_empty(), "Merge cannot manufacture hybrid even if that template exists")
	expect(_effect(hybrid, {"a": hybrid}, "inherit", ["a"]).is_empty(), "Authored hybrid inherits intact")
	expect(not _effect(hybrid, {"a": human}, "subset", ["a"]).is_empty(), "Split cannot invent a multi-Origin lineage")
	expect(not _effect(inner, {"a": human}, "subset", ["a"]).is_empty(), "Split cannot invent an Origin")
	var rng := RandomNumberGenerator.new()
	rng.seed = 1
	for i in range(40):
		var child := PopulationOrigins.subset(mixed, rng)
		expect(PopulationOrigins.errors(child).is_empty() and _effect(child, {"a": mixed}, "subset", ["a"]).is_empty(), "Subset keeps complete donor strata and valid prevalence")

func _generation() -> void:
	var shipping := HistoryGenerator.new()
	var fixtures := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, catalog)
	var observed := {}
	var mixed := false
	var hybrid := false
	var subset := false
	var subset_remainder := false
	for seed in range(1, 151):
		var a := shipping.generate(seed)
		var b := fixtures.generate(seed)
		expect(a.architecture_version == 2 and b.architecture_version == 2, "Generation3 uses architecture2")
		expect(not a.configuration.has("target_factions"), "No exact-target canonical configuration")
		expect(validator.validate(b, fixtures.generate(seed)).errors.is_empty(), "Injected social source replay validates")
		expect(not HistoryValidator.new().validate(b).errors.is_empty(), "Default validator refuses injected fixture content")
		for axis in ["precursor_form", "pressure_motif", "topology_family", "response_motif", "collapse_pattern"]:
			expect(a.configuration[axis] == b.configuration[axis], "Catalog change leaves independent " + axis)
		expect(Statistics.political_signature(a) == Statistics.political_signature(b), "Catalog expansion cannot perturb topology choices or stop")
		for row in a.present.historical_factions:
			expect(row.population_origin_profile == _profile("human_baseline"), "Shipping content never invents nonhuman society or mystery filler")
		for row in b.present.historical_factions:
			var last: Dictionary = {}
			for history in b.present.population_history:
				if history.entity_id == row.id:
					last = history.profile
			expect(row.population_origin_profile == last, "Historical last profile follows joins rather than founding metadata")
			expect(row.founding_population_origin_profile == b.entity(row.id).population_origin_profile, "Founding profile remains immutable")
			mixed = mixed or PopulationOrigins.mixed(row.population_origin_profile)
			hybrid = hybrid or PopulationOrigins.multi_lineage(row.population_origin_profile)
			for stratum in row.population_origin_profile.strata:
				for origin in stratum.origins:
					observed[origin] = true
		for fate in b.present.population_fates:
			subset_remainder = subset_remainder or (fate.disposition == "absorbed" and not fate.untracked_template_ids.is_empty())
		for event in b.objective_timeline:
			for effect in event.effects:
				if effect.kind == "population":
					subset = subset or effect.mode == "subset"
		var parsed: Dictionary = JSON.parse_string(b.canonical_output())
		expect(parsed.architecture_version == 2 and _json_equivalent(parsed.present, b.present.to_dict()), "JSON round trip preserves structured fixture strata")
	expect(mixed and hybrid and subset and observed.size() == 6, "All Origins, mixed societies, true hybrids and subset inheritance exercised in fixtures only")
	expect(subset_remainder, "Partial absorption records untracked strata without declaring their death")
	var before := fixtures.generate(42).canonical_output()
	var displays := OriginCatalog._rows.duplicate(true)
	for row in OriginCatalog._rows:
		row.en += " fixture display"
		row.ko += " 표시"
	expect(before == fixtures.generate(42).canonical_output(), "Origin display changes cannot alter canonical data or topology")
	OriginCatalog._rows = displays
	var legacy := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 2).generate(42)
	expect(legacy.architecture_version == 1 and legacy.validation_report.errors.is_empty(), "Legacy2 retains architecture1 and validates")
	expect(not legacy.present.to_dict().has("population_history"), "Legacy serialized shape remains unstructured architecture1")
	legacy.architecture_version = 2
	expect(not HistoryValidator.new().validate(legacy).errors.is_empty(), "Wrong legacy architecture rejected")
	var r := fixtures.generate(42)
	r.architecture_version = 1
	expect(not validator.validate(r).errors.is_empty(), "Wrong generation3 architecture rejected")
	r = fixtures.generate(3)
	var tampered := false
	for event in r.objective_timeline:
		for effect in event.effects:
			if effect.kind == "population_fate" and effect.disposition == "absorbed" and not effect.untracked_template_ids.is_empty():
				effect.untracked_template_ids.clear()
				tampered = true
	expect(tampered and not validator.validate(r).errors.is_empty(), "Partial absorption cannot hide untracked donor strata")
	r = shipping.generate(42)
	r.configuration.target_factions = r.present.active_factions.size()
	expect(not HistoryValidator.new().validate(r).errors.is_empty(), "Removed exact-target input rejected by schema")
	r = shipping.generate(42)
	var builder := HistoryClaimBuilder.new()
	var claims := builder.build(r)
	var original_count := claims.size()
	var claim := claims[0]
	builder._add_v3(claims, r.seed, claim.claimant_entity_id, claim.referenced_event_id, claim.reference_scope, claim.evidence, claim.interpretation, claim.claim_type)
	expect(claims.size() == original_count, "Duplicate event Claim is suppressed by builder")
	r.historical_claims.append(r.historical_claims[0])
	expect(not HistoryValidator.new().validate(r).errors.is_empty(), "Duplicate Claim evidence rejected")

func _json_equivalent(a: Variant, b: Variant) -> bool:
	if (a is float or a is int) and (b is float or b is int):
		return a == b
	if a is Array and b is Array:
		if a.size() != b.size():
			return false
		for i in range(a.size()):
			if not _json_equivalent(a[i], b[i]):
				return false
		return true
	if a is Dictionary and b is Dictionary:
		if a.size() != b.size():
			return false
		for key in a:
			if not b.has(key) or not _json_equivalent(a[key], b[key]):
				return false
		return true
	return a == b
