extends SceneTree

const Baseline = preload("res://tools/capture_m042_baseline.gd")
const Fixtures = preload("res://tests/fixtures/culture_fixtures.gd")
var assertions := 0
var failures := 0
var catalog := SocialIncidentCatalog.new()
var culture := FactionCultureResolver.new()
var rules := CultureRules.new()
var examples := {}

func expect(value: bool, message: String) -> void:
	assertions += 1
	if not value:
		failures += 1
		push_error(message)

func _init() -> void:
	_shipping()
	_negative()
	_content_gates()
	_culture_boundaries()
	_upstream()
	print("%s: Social historical incidents (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _shipping() -> void:
	expect(catalog.errors().is_empty(), "Incident catalog is valid")
	var definitions: Dictionary = JSON.parse_string(FileAccess.get_file_as_string(SocialIncidentCatalog.PATH))
	definitions.events.reverse()
	definitions.families.reverse()
	var reordered := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, null, SocialIncidentCatalog.new(definitions))
	var gen := HistoryGenerator.new()
	for seed in range(1, 501):
		var result := gen.generate(seed)
		expect(result.validation_report.errors.is_empty(), "Objective validity %d: %s" % [seed, result.validation_report.errors])
		expect(result.canonical_output() == reordered.generate(seed).canonical_output(), "Catalog order does not perturb generation")
		var counts := {}
		for event in result.objective_timeline:
			if event.type_name() != "SOCIAL_INCIDENT":
				continue
			var definition := catalog.definition(event.narrative_key)
			if not examples.has(event.narrative_key):
				examples[event.narrative_key] = seed
			if definition.role == "primary":
				counts[definition.family] = true
			for effect in event.effects:
				if effect.kind == "social_record":
					expect(not effect.record_id.contains("pure_flesh") and not effect.record_id.contains("machine_kinship"), "Objective records contain facts, not cultural conclusions")
			expect(event.year >= -47 and event.year < -28, "Incidents follow topology and precede recent relations")
		expect(counts.size() <= 3, "Bounded world incident budget")
		var before := result.canonical_output()
		for faction in result.present.active_factions:
			var profile := culture.resolve(result, faction.id)
			expect(culture.errors(result, faction.id, profile).is_empty(), "All cultures supported")
			for tag in ["population:mixed_lineages", "content:local_adapted_lineage", "content:semi_sapient_contact"]:
				expect(not profile.evidence.has(tag), "No unapproved authored-content leakage")
			for doctrine in profile.doctrines:
				if doctrine.intensity.level == "fanatic":
					var sources := {}
					for tag in doctrine.intensity.support_tags:
						for row in profile.evidence[tag]:
							for source in row.source_event_ids:
								sources[source] = true
					expect(doctrine.intensity.support_tags.size() >= 3 and sources.size() >= 2, "Fanatic cites multiple independent source events")
			for goal in CultureGoalQuery.new().candidates(profile):
				expect(goal.status == "candidate" and not goal.has("target_id") and not goal.has("effects"), "Goals execute nothing")
				for reference: String in goal.historical_reference_ids:
					expect(result.entity(reference) != null, "Historical goal reference is verifiable")
		expect(before == result.canonical_output(), "Culture/interaction candidates do not mutate objective history")
	for definition in catalog.definitions():
		if catalog.gate_open(definition.gate):
			expect(examples.has(definition.id), "Shipping subtype is reachable: " + definition.id)

func _negative() -> void:
	for key: String in ["clone_emancipation", "clone_integration", "clone_bottleneck", "clone_divergence", "clone_caste", "replacement_crisis", "emergency_reconstitution", "clone_settlement", "military_batch", "founder_replication", "bodily_adaptation_program", "lineage_preservation_program", "designed_descent_program", "deep_settlement_evacuation", "homeland_displacement", "machine_compact_renewal", "human_final_authority", "office_rotation_review"]:
		if not examples.has(key):
			continue
		var result := HistoryGenerator.new().generate(int(examples[key]))
		var victim: HistoricalEvent
		for event in result.objective_timeline:
			if event.narrative_key == key:
				victim = event
		victim.cause_event_ids.clear()
		expect(not SocialIncidentValidator.new().errors(result).is_empty(), "Missing causal prerequisite rejected: " + key)
		# Chronology/source checks must reject genuine future causes, not just absence.
		victim.year = -49
		expect(SocialIncidentValidator.new().errors(result).any(func(error: String) -> bool: return error.begins_with("chronology:")), "Social phase cannot precede topology")
	for key: String in ["autonomous_machine_conflict", "machine_aid_compact", "deep_residence_record", "homeland_displacement", "clone_settlement"]:
		if not examples.has(key):
			continue
		var result := HistoryGenerator.new().generate(int(examples[key]))
		for event in result.objective_timeline:
			if event.narrative_key != key:
				continue
			event.effects = event.effects.filter(func(effect: Dictionary) -> bool: return effect.kind == "social_record")
			if key == "machine_aid_compact":
				event.effects[0].record_id = "invented_machine_society"
			expect(not SocialIncidentValidator.new().errors(result).is_empty(), "Tags without real authored/physical consequences rejected: " + key)
	var no_cohort := HistoryGenerator.new().generate(int(examples.clone_emancipation))
	for event in no_cohort.objective_timeline:
		event.effects = event.effects.filter(func(effect: Dictionary) -> bool: return not (effect.kind == "social_record" and effect.record_type == "cohort"))
	expect(SocialIncidentValidator.new().errors(no_cohort).any(func(error: String) -> bool: return "cohort:clone_born" in error), "No clone emancipation without prior clone cohort")

func _content_gates() -> void:
	var data: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_incident_contacts.json"))
	var fixture_catalog := SocialIncidentCatalog.new({}, data)
	var fixture_gen := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, null, fixture_catalog)
	var found := {}
	for seed in range(1, 201):
		var result := fixture_gen.generate(seed)
		expect(result.validation_report.errors.is_empty(), "Explicit synthetic authored contact adapter validates: %s" % [str(result.validation_report.errors)])
		expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Shipping validator rejects synthetic content identity")
		for faction in result.present.active_factions:
			var profile := culture.resolve(result, faction.id)
			for id in ["many_bodies_one_people", "last_human_measure", "thinking_threshold", "kin_beyond_thought", "ecological_communion"]:
				if id in profile.eligible_doctrines:
					found[id] = true
	for id in ["many_bodies_one_people", "last_human_measure", "thinking_threshold", "kin_beyond_thought", "ecological_communion"]:
		expect(found.has(id), "Content-gated Doctrine has actual objective fixture path: " + id)

func _culture_boundaries() -> void:
	var cc := FactionCultureCatalog.new()
	var empty := {}
	for id: String in ["machine_kinship", "pure_flesh", "silent_circuit", "return_to_deep", "reclamation", "mutable_human", "designed_kinship", "many_bodies_one_people", "truth_through_trial"]:
		var misleading := Fixtures.evidence(["life:modified_human_community", "life:facility_community", "event:political_merge", "event:population_migration", "scar:deep_closure", "history:unknown_discovery", "population:clone_born", "history:clone_divergence", "scar:sky_signal"])
		expect(not rules.evaluate(cc.definition(id, "doctrine"), misleading).eligible, "Lifestyle/malfunction/tunnel/migration/clone labels cannot fabricate eligibility: " + id)
	var actor := {"society_traits": [{"id": "maintenance_covenant", "value_tags": ["technical_competence", "craftsmanship"], "tension_tags": [], "provenance": {}}],
		"doctrines": [{"id": "pure_flesh", "values": [], "taboos": ["augmented"], "intensity": {"level": "fanatic"}, "provenance": {}}]}
	var interaction := SocietyActorInteraction.new().resolve(actor, {"expresses": ["augmented", "technical_competence", "craftsmanship", "clone_born"]})
	expect(not interaction.positive_reasons.is_empty() and not interaction.negative_reasons.is_empty() and not interaction.mixed_reasons.is_empty(), "Fanatic taboo preserves technical usefulness and all mixed reasons")
	expect(interaction.negative_reasons[0].severity == "enforcement_candidate" and not interaction.has("decision"), "Standing is not a final decision")
	expect(CultureRules.INTENSITIES == ["moderate", "hardline", "fanatic"], "Closed ordered intensity vocabulary")
	var strong := Fixtures.strong_machine_scar()
	expect(rules.intensity(cc.definition("pure_flesh", "doctrine"), strong, 1, "f").level == "fanatic", "Strong evidence determines intensity without a small lottery")

func _upstream() -> void:
	var data: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m042_upstream.json"))
	for row in data.samples:
		var result := HistoryGenerator.new().generate(int(row.seed))
		var current := Baseline.upstream(result)
		var previous: Dictionary = row.upstream.duplicate(true)
		# Intentional homeland/Deep abandonment affects existing settlement lifetime.
		# Political metadata, all canonical names and preexisting effects remain exact.
		for records: Array in [current.entities, previous.entities]:
			for entity: Dictionary in records:
				if entity.kind == "settlement":
					entity.erase("retired_event_id")
		expect(_json_equivalent(current, previous), "Exact M041 topology/factions/formation/naming/relations/config streams retained seed " + str(row.seed))
	var baseline: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m040_baseline.json"))
	for row in baseline.samples:
		if int(row.version) == 2:
			var result := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 2).generate(int(row.seed))
			expect(result.canonical_output().sha256_text() == row.canonical_sha256, "Legacy v2 exact regression retained")

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
