extends SceneTree

const Statistics = preload("res://tools/history_statistics.gd")
var failures := 0
var assertions := 0
var generator := HistoryGenerator.new()

func expect(condition: bool, message: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(message)

func _init() -> void:
	_determinism_and_projection()
	_variation()
	_negative_cases()
	_name_boundary()
	_discovery_boundary()
	print("%s: History Generator v0.2 (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _event(result: HistoryResult, id: String) -> HistoricalEvent:
	for event in result.objective_timeline:
		if event.id == id:
			return event
	return null

func _determinism_and_projection() -> void:
	for seed in [1, 2, 42, 1001, 10492, 0, -1, 2147483647, 4294967296, 9223372036854775807]:
		var first := generator.generate(seed)
		var before := first.canonical_output()
		randf()
		generator.generate(3)
		var second := generator.generate(seed)
		var report := HistoryValidator.new().validate(first, second)
		expect(report.errors.is_empty(), "Valid edge seed %s: %s" % [seed, report.errors])
		expect(report.determinism == "pass" and before == second.canonical_output(), "Same seed independent of global RNG/order")
		expect(first.generation_version == 2 and first.architecture_version == 1, "Algorithm version distinct from architecture")
		expect(report.scars.get("causal_ratio", 0) >= 0.75, "Scars are surviving state provenance")
		expect(first.present.active_factions.size() == 3 and first.present.settlements.size() == 5, "Bounded present state")
		expect(first.present.discoveries[0].origin == "unknown", "Observation cannot resolve origin")
		var exported := first.to_dict()
		exported.present.ruins.clear()
		exported.objective_timeline[0].effects.clear()
		exported.entities[0].generated_name.clear()
		expect(first.canonical_output() == before, "Export dictionaries do not alias runtime state")
		var projected := first.present.to_dict()
		first.historical_claims[0].interpretation = "The ancient builders created humans and ended the age of great states."
		expect(HistoryProjector.new().project(first.entities, first.objective_timeline).to_dict() == projected, "False belief cannot change objective projection")
		expect(HistoryValidator.new().validate(first).errors.is_empty(), "False beliefs allowed in claims")
		var reversed := first.entities.duplicate()
		reversed.reverse()
		expect(HistoryProjector.new().project(reversed, first.objective_timeline).to_dict() == projected, "Entity iteration order does not change projection")
		var output := HistoryDebugFormatter.new().format(first)
		for section in ["=== CANON ===", "=== OBJECTIVE HISTORY ===", "=== PRESENT ===", "=== BELIEFS ===", "=== VALIDATION ==="]:
			expect(section in output, "Readable CLI section")
	var changed := generator.generate(42)
	_event(changed, "h_recent").effects.clear()
	changed.present = HistoryProjector.new().project(changed.entities, changed.objective_timeline)
	expect(changed.present.relationships.filter(func(row: Dictionary) -> bool: return row.a == "faction_a" and row.b == "faction_b").is_empty(), "Removing relation effect removes current relation")
	expect(not HistoryValidator.new().validate(changed).errors.is_empty(), "Effect-free event is rejected even with consistent projection")

func _variation() -> void:
	var stats := Statistics.new()
	for seed in range(1, 1001):
		var result := generator.generate(seed)
		expect(result.validation_report.errors.is_empty(), "1000-seed validation seed %d: %s" % [seed, result.validation_report.errors])
		expect(result.canonical_output() == generator.generate(seed).canonical_output(), "1000-seed deterministic replay")
		stats.add(result)
		var names := {}
		for entity in result.entities:
			expect(entity.generated_name != null, "Shipping names retain canonical Resource")
			for locale in ["en", "ko"]:
				var display := NameRenderer.new().render(entity.generated_name, locale)
				var key: String = locale + "/" + display.to_lower()
				expect(not display.is_empty() and not names.has(key), "Bounded rerolls block localized display collisions")
				names[key] = true
	var d: Dictionary = stats.distributions
	for axis in {"precursor_form": 5, "pressure_domain": 4, "pressure_motif": 22, "response_motif": 4,
		"collapse_pattern": 3, "successor_a_form": 6, "successor_b_form": 6, "faction_c_formation": 4,
		"middle_motif": 3, "recent_motif": 5, "discovery_motif": 6, "belief_profile": 4, "ancestry_mode": 3}:
		# Rare motifs need not all occur in one finite sample; every domain must occur.
		var minimum: int = 18 if axis == "pressure_motif" else {"precursor_form": 5, "pressure_domain": 4, "response_motif": 4,
			"collapse_pattern": 3, "successor_a_form": 6, "successor_b_form": 6, "faction_c_formation": 4,
			"middle_motif": 3, "recent_motif": 5, "discovery_motif": 6, "belief_profile": 4, "ancestry_mode": 3}.get(axis, 0)
		expect(d[axis].size() >= minimum, "Independent axis diversity: " + axis)
	expect(stats.frequencies.no_observer_or_core >= 800, "Most histories stand without Observer/Core")
	expect(stats.frequencies.natural_and_human_only >= 300 and stats.frequencies.human_only >= 300, "Natural/human and human-only histories are plentiful")
	expect(stats.frequencies.observer_legacy > 0 and stats.frequencies.observer_legacy < 80, "Observer assets remain rare")
	expect(stats.frequencies.core_intervention > 0 and stats.frequencies.core_intervention < 180, "Core remains a minority explanation")
	expect(stats.frequencies.orbital_bombardment > 0 and stats.frequencies.orbital_bombardment < 30, "Bombardment is rare and measured")
	expect(stats.min_recent >= 3 and stats.min_scar_ratio >= 0.75, "Recent activity and surviving causal traces")
	expect(stats.representatives.size() == 10, "Find ten distinct qualitative categories")
	expect(stats.structural_signatures.size() > 900, "Variation exceeds names and three giant variants")
	print("Diversity / 1000 seeds: " + JSON.stringify(stats.to_dict()))

func _reject(change: Callable, label: String, seed: int = 42) -> void:
	var result := generator.generate(seed)
	change.call(result)
	expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Validator rejects: " + label)

func _negative_cases() -> void:
	_reject(func(r: HistoryResult) -> void: r.entities.append(r.entities[0]), "duplicate entity ID")
	_reject(func(r: HistoryResult) -> void: r.entities.append(null), "null entity")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline.append(null), "null event")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline.append(r.objective_timeline[0]), "duplicate event ID")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").actor_ids = ["faction_a"], "actor before birth")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_recent").actor_ids.append("precursor"), "actor after retirement")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").actor_ids = ["missing"], "missing actor")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").location_ids = ["missing"], "missing location")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").entity_ids = ["missing"], "missing relevant entity")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_response").cause_event_ids = ["missing"], "missing cause")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").cause_event_ids = ["h_collapse"], "future cause")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").cause_event_ids = ["h_body"], "self cause")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_found").year = -601, "ancient intrusion")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_last").year = 0, "simulation intrusion")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_response").year = -590, "chronology inversion")
	_reject(func(r: HistoryResult) -> void: r.canon.locked.human_origin = "Observer creation", "LOCKED contradiction")
	_reject(func(r: HistoryResult) -> void: r.canon.reserved.erase("core_intent"), "RESERVED erased")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_discovery").effects[0].origin = "Observer", "generic origin resolved")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_collapse").effects[0].global_collapse_cause = "core", "extra objective fact")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_found").effects.append({"kind": "truth", "first_terraformer": "Observer"}), "unknown truth effect")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").narrative_key = "observers_created_humans", "unreviewed prose")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_body").event_type = HistoricalEvent.Type.WAR, "type mismatch")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_pressure").effects[-1].erase("location_id"), "malformed schema")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_pressure").effects[-1].location_id = "missing", "missing effect reference")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_recent").effects[0].a = "precursor", "inactive non-faction relation")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_recent").effects[0].delta = 0.5, "fractional relation")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_reuse").effects[-1].ruin_id = "missing", "missing reoccupied ruin")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_reuse").effects[-1].settlement_id = "settlement_a", "wrong settlement owner")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_failure").effects[0].id = "pressure_site", "duplicate ruin ID")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_discovery").effects[0].id = "precursor", "object/entity namespace collision")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["faction_a"], "ancestry self cycle")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["faction_c"], "future ancestor")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["missing"], "missing ancestor")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids.clear(), "ancestry omitted")
	_reject(func(r: HistoryResult) -> void: r.entity("precursor").retired_event_id = "h_recent", "lifecycle metadata mismatch")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_remnants").effects.append({"kind": "activate", "entity_id": "precursor"}), "resurrection")
	_reject(func(r: HistoryResult) -> void: r.present.relationships[0].score = 100, "fabricated relation")
	_reject(func(r: HistoryResult) -> void: r.present.ruins.clear(), "fabricated scars")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_collapse").cause_event_ids.clear(), "unsupported collapse")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].referenced_event_id = "missing", "missing claim target")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].claimant_entity_id = "precursor", "retired claimant")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].confidence = NAN, "nonfinite confidence")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].topic = "core_intent", "event and topic both")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[-1].topic = "invented_topic", "unknown belief topic")
	_reject(func(r: HistoryResult) -> void: r.historical_claims.clear(), "claims omitted")
	_reject(func(r: HistoryResult) -> void: r.historical_claims.append(null), "null claim")
	_reject(func(r: HistoryResult) -> void: r.configuration.global_collapse_cause = "core", "configuration cannot answer mysteries")
	_reject(func(r: HistoryResult) -> void: r.configuration.precursor_form = "dynastic_crown" if r.configuration.precursor_form != "dynastic_crown" else "trade_league", "recipe/event mismatch")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_pressure").scope = "planetary", "unbounded scope")
	_reject(func(r: HistoryResult) -> void: _event(r, "h_pressure").cause_domain = "core_intervention", "natural/core conflation")
	_reject(func(r: HistoryResult) -> void:
		r.entity("faction_a").knowledge_tags = []
		r.present = HistoryProjector.new().project(r.entities, r.objective_timeline), "Observer knowledge gate", _knowledge_seed())
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").knowledge_tags.append("omniscient"), "unknown knowledge tag")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_b").name = r.entity("faction_a").name, "colliding names")
	_reject(func(r: HistoryResult) -> void: _system_effect(r).physical_basis = "energy_from_nothing", "unbounded physical mechanism", _core_seed())
	_reject(func(r: HistoryResult) -> void: _system_effect(r).intent = "destroy_humans", "Core motive invented", _core_seed())
	_reject(func(r: HistoryResult) -> void: _system_effect(r).activation_reason = "human_rebellion", "orbital activation invented", _core_seed())
	_reject(func(r: HistoryResult) -> void: _system_event(r).cause_event_ids = ["h_found"], "invented system trigger", _core_seed())
	_reject(func(r: HistoryResult) -> void: r.present.system_traces.clear(), "system trace missing from projection", _core_seed())
	_reject(func(r: HistoryResult) -> void: _system_event(r).scope = "regional", "system scope must be local", _core_seed())
	_reject(func(r: HistoryResult) -> void: _system_effect(r).system_id = "unified_ai", "independent systems cannot be unified", _core_seed())
	_reject(func(r: HistoryResult) -> void:
		var source := _system_event(r)
		var extra := HistoricalEvent.new()
		extra.id = "h_unbounded_asset"
		extra.year = source.year
		extra.event_type = source.event_type
		extra.narrative_key = source.narrative_key
		extra.cause_domain = source.cause_domain
		extra.scope = "local"
		extra.location_ids = ["region"]
		extra.effects = [HistoryMotifs.system_effect(source.narrative_key, "second_asset")]
		r.objective_timeline.insert(r.objective_timeline.find(source) + 1, extra)
		r.present = HistoryProjector.new().project(r.entities, r.objective_timeline), "asset budget exceeded", _core_seed())
	var original := generator.generate(42)
	expect(not HistoryValidator.new().validate(original, generator.generate(1)).errors.is_empty(), "Different-seed replay rejected")
	for claim in original.historical_claims:
		claim.interpretation = "One shared account."
	var report := HistoryValidator.new().validate(original)
	expect(report.errors.is_empty() and not report.warnings.is_empty(), "Identical beliefs warn")

func _knowledge_seed() -> int:
	for seed in range(1, 100):
		var r := generator.generate(seed)
		if "observer_scholarly_term" in r.entity("faction_a").knowledge_tags:
			for claim in r.historical_claims:
				if claim.claimant_entity_id == "faction_a" and "Observer" in claim.interpretation:
					return seed
	return 0

func _core_seed() -> int:
	for seed in range(1, 100):
		if not generator.generate(seed).present.system_traces.is_empty():
			return seed
	return 0

func _system_event(result: HistoryResult) -> HistoricalEvent:
	for event in result.objective_timeline:
		if event.cause_domain in ["core_intervention", "observer_legacy"]:
			return event
	return null

func _system_effect(result: HistoryResult) -> Dictionary:
	for effect in _system_event(result).effects:
		if effect.kind == "system_trace":
			return effect
	return {}

func _name_boundary() -> void:
	var normal := generator.generate(42)
	var source := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String: return "%s/%s/%s" % [seed, id, kind])
	var custom := HistoryGenerator.new(source).generate(42)
	expect(custom.structural_output() == normal.structural_output(), "Name provider changes names only, including claims and projected facts")
	expect(custom.validation_report.errors.is_empty(), "Pure custom labels remain supported")
	var content := (load(NamingCatalog.CONTENT_PATH) as NamingContent).duplicate_deep(Resource.DEEP_DUPLICATE_ALL) as NamingContent
	for token in content.tokens:
		for locale in ["en", "ko"]:
			token.forms[locale] = str(token.forms[locale]) + ("x" if locale == "en" else "라")
	var catalog := NamingCatalog.new(content)
	expect(catalog.is_valid(), "Alternate authored localized forms validate")
	var changed := HistoryGenerator.new(HistoryNameSource.new(Callable(), catalog)).generate(42)
	expect(changed.entity("faction_a").name != normal.entity("faction_a").name, "Naming content really changes display")
	expect(changed.structural_output() == normal.structural_output(), "en/ko form edits cannot change history structures")
	for entity in normal.entities:
		var canonical := entity.generated_name.to_dict()
		var renderer := NameRenderer.new()
		expect(not renderer.render(entity.generated_name, "en").is_empty() and not renderer.render(entity.generated_name, "ko").is_empty(), "Canonical identity renders both authored locales")
		expect(entity.generated_name.to_dict() == canonical, "Locale rendering cannot mutate canonical identity")

func _discovery_boundary() -> void:
	var reordered := HistoryMotifs.DISCOVERIES.duplicate()
	reordered.reverse()
	var changed_generator := HistoryGenerator.new(null, reordered)
	var changed_count := 0
	var smaller_generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES.slice(0, 5))
	for seed in range(1, 21):
		var normal := generator.generate(seed)
		var changed := changed_generator.generate(seed)
		changed_count += int(normal.configuration.discovery_motif != changed.configuration.discovery_motif)
		var a := _without_discovery(normal)
		var b := _without_discovery(changed)
		expect(a == b, "Discovery pool draw does not perturb collapse, successors, relations or naming")
		expect(changed.validation_report.errors.is_empty(), "Reordered reviewed discovery pool validates")
		expect(_without_discovery(smaller_generator.generate(seed)) == a, "Adding a reviewed discovery motif leaves every other domain stable")
	expect(changed_count > 0, "Discovery boundary test changes actual content")

func _without_discovery(result: HistoryResult) -> String:
	var value := result.to_dict()
	value.erase("validation_report")
	value.configuration.erase("discovery_motif")
	value.objective_timeline = value.objective_timeline.filter(func(row: Dictionary) -> bool: return row.id != "h_discovery")
	value.present.erase("discoveries")
	value.historical_claims = value.historical_claims.filter(func(row: Dictionary) -> bool: return row.referenced_event_id != "h_discovery")
	return JSON.stringify(value)
