extends SceneTree

var assertions := 0
var failures := 0
var generator := HistoryGenerator.new()
var resolver := FactionIdentityResolver.new()

func expect(condition: bool, message: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(message)

func _init() -> void:
	_profiles()
	_claims()
	_boundaries()
	print("%s: Faction identity / cultural interpretation (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _profiles() -> void:
	var continuity := {}
	var anchors := {}
	var adaptive := {}
	var modes := {}
	var frames := {}
	var distinct_profiles := {}
	for seed in range(1, 301):
		var result := generator.generate(seed)
		var event_ids := {}
		for event in result.objective_timeline:
			event_ids[event.id] = true
		var before := result.canonical_output()
		for row in result.present.active_factions:
			var profile := resolver.resolve(result, row.id)
			expect(resolver.errors(result, row.id, profile).is_empty(), "Identity profile is closed and references real evidence")
			expect(profile == resolver.resolve(result, row.id), "Identity query is deterministic")
			expect(result.canonical_output() == before, "Identity query does not mutate canonical history")
			continuity[profile.continuity_stance] = true
			anchors[profile.social_anchor] = true
			adaptive[profile.adaptive_stance] = true
			modes[profile.interpretation_mode] = true
			frames[profile.memory_frame] = true
			distinct_profiles[JSON.stringify(profile)] = true
			for event_id in profile.source_event_ids:
				expect(event_ids.has(event_id), "Identity provenance references an objective event")
			expect(result.entity(row.id).created_event_id in profile.source_event_ids, "Formation event always contributes to identity provenance")
	expect(continuity.size() >= 4, "Continuity stance varies across generated factions")
	expect(anchors.size() >= 6, "Social anchors vary across generated factions")
	expect(adaptive.size() >= 4, "Adaptive stances vary across generated factions")
	expect(modes.size() == 4, "All four interpretation modes are exercised")
	expect(frames.size() >= 5, "Historical memory frames vary across generated factions")
	expect(distinct_profiles.size() > 100, "Identity layer does not collapse to a few fixed profiles")

func _claims() -> void:
	var found_shared_event_variation := false
	var found_legacy_variation := false
	for seed in range(1, 201):
		var result := generator.generate(seed)
		var pressure_texts := {}
		var pressure_modes := {}
		for row in result.present.active_factions:
			var identity := resolver.resolve(result, row.id)
			pressure_modes[identity.interpretation_mode] = true
			for claim in result.historical_claims:
				if claim.claimant_entity_id == row.id and claim.referenced_event_id == "h_pressure":
					pressure_texts[claim.interpretation] = true
		if pressure_modes.size() > 1 and pressure_texts.size() > 1:
			found_shared_event_variation = true
		for event in result.objective_timeline:
			if event.cause_domain not in ["observer_legacy", "core_intervention"]:
				continue
			var texts := {}
			var modes_here := {}
			for row in result.present.active_factions:
				modes_here[resolver.resolve(result, row.id).interpretation_mode] = true
				for claim in result.historical_claims:
					if claim.claimant_entity_id == row.id and claim.referenced_event_id == event.id:
						texts[claim.interpretation] = true
						var lower := claim.interpretation.to_lower()
						expect("targeted us because" not in lower and "intended to" not in lower, "Legacy interpretation does not invent reserved motive")
			if modes_here.size() > 1 and texts.size() > 1:
				found_legacy_variation = true
		for claim in result.historical_claims:
			if claim.reference_scope == "event" and not claim.evidence.is_empty() and claim.evidence.has("delta"):
				if claim.evidence.delta > 0:
					expect("increased trust" in claim.interpretation, "Positive event memory preserves event direction")
				elif claim.evidence.delta < 0:
					expect("reduced trust" in claim.interpretation, "Negative event memory preserves event direction")
	expect(found_shared_event_variation, "The same regional pressure receives different cultural interpretations")
	expect(found_legacy_variation, "Rare legacy events can receive different faction interpretations")

func _boundaries() -> void:
	var result := generator.generate(42)
	var parsed: Dictionary = JSON.parse_string(result.canonical_output())
	expect(parsed.architecture_version == 2, "Thin identity layer does not change history architecture version")
	for entity in parsed.entities:
		expect(not entity.has("identity_profile"), "Identity is a derived lens, not objective entity state")
	for row in parsed.present.active_factions:
		expect(not row.has("identity_profile"), "Identity is not persisted into projected objective state")
	var labels := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String: return "%d/%s/%s" % [seed, id, kind])
	var renamed := HistoryGenerator.new(labels).generate(42)
	for row in result.present.active_factions:
		expect(resolver.resolve(result, row.id) == resolver.resolve(renamed, row.id), "Naming changes do not perturb identity derivation")
	var debug := HistoryDebugFormatter.new().format(result)
	expect("identity=" in debug and "interpretation=" in debug, "Debug output exposes the derived cultural lens")
