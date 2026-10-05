extends SceneTree

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
	print("%s: History Prototype v0.1 (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _determinism_and_projection() -> void:
	for seed in [1, 2, 42, 1001, 10492, 0, -1, 2147483647, 4294967296, 9223372036854775807]:
		var first := generator.generate(seed)
		var before := first.canonical_output()
		randf()
		generator.generate(seed + 3 if seed != 9223372036854775807 else 3)
		var second := generator.generate(seed)
		var report := HistoryValidator.new().validate(first, second)
		expect(report.errors.is_empty(), "Valid seed %s: %s" % [seed, report.errors])
		expect(report.determinism == "pass" and before == second.canonical_output(), "Same seed independent of global RNG/order")
		expect(report.scars.get("causal_ratio", 0) >= 0.75, "Scars are actual surviving state provenance")
		expect(first.present.active_factions.size() == 3 and first.present.settlements.size() == 4 and first.present.ruins.size() == 4, "Bounded present state")
		expect(first.present.discoveries[0].origin == "unknown", "Observation does not consume the origin mystery")
		var hostility := first.present.relationships.filter(func(row: Dictionary) -> bool: return row.a == "faction_a" and row.b == "faction_b")
		expect(hostility.size() == 1 and hostility[0].score < 0 and "h12" in hostility[0].source_event_ids, "Hostility explained by successor war")
		var exported := first.to_dict()
		exported.present.ruins.clear()
		exported.objective_timeline[0].effects.clear()
		expect(first.canonical_output() == before, "Export dictionaries do not alias runtime state")
		var projected := HistoryProjector.new().project(first.entities, first.objective_timeline).to_dict()
		first.historical_claims[0].interpretation = "The administrators created humans and destroyed the old state."
		expect(HistoryProjector.new().project(first.entities, first.objective_timeline).to_dict() == projected, "Belief cannot change objective projection")
		expect(HistoryValidator.new().validate(first).errors.is_empty(), "False beliefs allowed only in claims")
		var entity_order := first.entities.duplicate()
		entity_order.reverse()
		expect(HistoryProjector.new().project(entity_order, first.objective_timeline).to_dict() == projected, "Entity iteration order does not change projection")
		var output := HistoryDebugFormatter.new().format(first)
		for section in ["=== CANON ===", "=== OBJECTIVE HISTORY ===", "=== PRESENT ===", "=== BELIEFS ===", "=== VALIDATION ==="]:
			expect(section in output, "Readable CLI section")
	# Removing the relation effect removes the hostility, with no decorative fallback.
	var changed := generator.generate(42)
	expect(changed.objective_timeline[0].year == -482 and changed.objective_timeline[1].narrative_key == "tremor" and changed.objective_timeline[3].event_type == HistoricalEvent.Type.MIGRATION, "v0.1 fixed-seed chronology guard")
	changed.objective_timeline[11].effects = [changed.objective_timeline[11].effects[1]]
	var new_state := HistoryProjector.new().project(changed.entities, changed.objective_timeline)
	expect(new_state.relationships.filter(func(row: Dictionary) -> bool: return row.a == "faction_a" and row.b == "faction_b").is_empty(), "Current relation is caused by effect")
	expect(new_state.ruins.size() == 4, "War battlefield survives relation removal")
	changed.present = new_state
	expect(HistoryValidator.new().validate(changed).errors.is_empty(), "Independently replayed consistent projection validates")

func _variation() -> void:
	var collapse_shapes := {}
	var lives := {}
	var ancestries := {}
	var sizes := {}
	var observations := {}
	var schisms := {}
	var relations := {}
	for seed in range(1, 301):
		var result := generator.generate(seed)
		expect(result.validation_report.errors.is_empty(), "300-seed structural validation seed %d: %s" % [seed, result.validation_report.errors])
		expect(result.canonical_output() == generator.generate(seed).canonical_output(), "300-seed deterministic replay")
		var collapse_key: Array[String] = []
		for event in result.objective_timeline:
			if event.event_type == HistoricalEvent.Type.COLLAPSE:
				break
			collapse_key.append(event.narrative_key)
		collapse_shapes["/".join(collapse_key)] = true
		lives[result.entity("faction_a").way_of_life] = true
		ancestries[JSON.stringify(result.present.faction_ancestry.map(func(row: Dictionary) -> Variant: return row.ancestor_ids))] = true
		sizes[result.objective_timeline.size()] = true
		observations[result.present.discoveries[0].observation] = true
		schisms[result.objective_timeline[8].type_name()] = true
		relations[JSON.stringify(result.present.relationships)] = true
		if seed in [1, 2, 42, 1001, 10492]:
			print("seed=%d collapse=%s successor=%s events=%d schism=%s discovery=%s relations=%s" % [seed, "/".join(collapse_key), result.entity("faction_a").way_of_life, result.objective_timeline.size(), result.objective_timeline[8].type_name(), result.present.discoveries[0].observation, JSON.stringify(result.present.relationships)])
	expect(collapse_shapes.size() == 3 and lives.size() == 3 and ancestries.size() == 3, "Diversity includes collapse content, lifestyles and ancestry graphs")
	expect(sizes.size() == 2 and schisms.size() == 2 and observations.size() == 3 and relations.size() > 100, "Event topology/interpretation context/relationship scores vary")
	print("Diversity / 300 seeds: collapse=%d lifestyles=%d ancestry=%d event_counts=%s split_types=%d observations=%d relation_states=%d" % [collapse_shapes.size(), lives.size(), ancestries.size(), sizes.keys(), schisms.size(), observations.size(), relations.size()])

func _reject(change: Callable, label: String) -> void:
	var result := generator.generate(42)
	change.call(result)
	var report := HistoryValidator.new().validate(result)
	expect(not report.errors.is_empty(), "Validator rejects: " + label)

func _negative_cases() -> void:
	_reject(func(r: HistoryResult) -> void: r.entities.append(r.entities[0]), "duplicate entity ID")
	_reject(func(r: HistoryResult) -> void: r.entities.append(null), "null entity")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline.append(null), "null event")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline.append(r.objective_timeline[0]), "duplicate event ID")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].actor_ids = ["faction_a"], "actor before birth")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[11].actor_ids.append("precursor"), "actor after collapse")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].actor_ids = ["missing"], "missing actor")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].location_ids = ["missing"], "missing event location")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].entity_ids = ["missing"], "missing relevant entity")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[4].cause_event_ids = ["missing"], "missing cause")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].cause_event_ids = ["h05"], "future cause")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].cause_event_ids = ["h02"], "self cause cycle")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].year = -601, "ancient-history intrusion")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[-1].year = 0, "simulation intrusion")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[3].year = -590, "chronology inversion")
	_reject(func(r: HistoryResult) -> void: r.canon.locked.human_origin = "Administrator creation", "LOCKED contradiction")
	_reject(func(r: HistoryResult) -> void: r.canon.reserved.erase("core_intent"), "RESERVED mystery removed")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[-1].effects[0].origin = "Outerworld", "unjustified objective origin resolution")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[4].effects[0].global_collapse_cause = "core", "RESERVED answer injected as extra objective fact")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[0].effects.append({"kind": "truth", "first_terraformer": "Administrator"}), "unknown objective fact type")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[0].narrative_key = "administrators_created_humans", "unreviewed objective prose")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].event_type = HistoricalEvent.Type.WAR, "type/template mismatch")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].effects[0].erase("location_id"), "malformed effect schema")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[1].effects[0].location_id = "missing", "missing effect ref")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[11].effects[0].a = "precursor", "inactive non-faction relation")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[11].effects[0].delta = 0.5, "fractional relation score")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[13].effects[-1].ruin_id = "missing", "reoccupy nonexistent ruin")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[13].effects[-1].settlement_id = "settlement_a", "reoccupy another faction's settlement")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[11].effects[1].id = "canal", "duplicate ruin ID")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[-1].effects[0].id = "precursor", "object/entity ID collision")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["faction_a"], "ancestry self cycle")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["faction_c"], "future successor parent")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids = ["missing"], "missing successor parent")
	_reject(func(r: HistoryResult) -> void: r.entity("faction_a").parent_ids.clear(), "unexplained current ancestry")
	_reject(func(r: HistoryResult) -> void: r.entity("precursor").retired_event_id = "h12", "retirement metadata mismatch")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[6].effects.append({"kind": "activate", "entity_id": "precursor"}), "unjustified resurrection")
	_reject(func(r: HistoryResult) -> void: r.present.relationships[0].score = 100, "fabricated current relation")
	_reject(func(r: HistoryResult) -> void: r.present.ruins.clear(), "fabricated scar coverage")
	_reject(func(r: HistoryResult) -> void: r.objective_timeline[4].cause_event_ids.clear(), "single unsupported collapse")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].referenced_event_id = "missing", "missing claim event")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].claimant_entity_id = "precursor", "retired claimant")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].confidence = NAN, "nonfinite belief confidence")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[0].topic = "core_intent", "claim with both event and topic")
	_reject(func(r: HistoryResult) -> void: r.historical_claims[-1].topic = "invented_topic", "unknown belief topic")
	_reject(func(r: HistoryResult) -> void: r.historical_claims.clear(), "claims omitted")
	_reject(func(r: HistoryResult) -> void: r.historical_claims.append(null), "null claim")
	var original := generator.generate(42)
	var other := generator.generate(1)
	expect(not HistoryValidator.new().validate(original, other).errors.is_empty(), "Determinism mismatch rejected")
	# Different interpretations are warning-level, rather than objective contradictions.
	for claim in original.historical_claims:
		claim.interpretation = "A single shared account."
	var report := HistoryValidator.new().validate(original)
	expect(report.errors.is_empty() and not report.warnings.is_empty(), "Lack of belief diversity is a warning")

func _name_boundary() -> void:
	var provider := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String: return "%s/%s/%s" % [seed, id, kind])
	var custom := HistoryGenerator.new(provider).generate(42)
	var normal := generator.generate(42)
	expect(custom.objective_timeline.map(func(e: HistoricalEvent) -> Dictionary: return e.to_dict()) == normal.objective_timeline.map(func(e: HistoricalEvent) -> Dictionary: return e.to_dict()), "Naming provider does not influence history RNG")
	expect(custom.validation_report.errors.is_empty(), "Custom independent name boundary works")
	# Prove the shipping M035 naming API can plug in without history importing it.
	var catalog := NamingCatalog.default_catalog()
	var names := NameGenerator.new(catalog)
	var renderer := NameRenderer.new(catalog)
	var bridge := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String:
		var type := "settlement" if kind == "settlement" else "mixed_location"
		var generated := names.generate(seed, "history/" + id, "prototype_surface", type)
		return renderer.render(generated, "en") if generated != null else "")
	var integrated := HistoryGenerator.new(bridge).generate(42)
	expect(integrated.validation_report.errors.is_empty(), "Existing naming catalog adapter validates")
	expect(integrated.entity("faction_a").name != normal.entity("faction_a").name, "Existing naming actually supplies labels")
	expect(integrated.objective_timeline.map(func(e: HistoricalEvent) -> Dictionary: return e.to_dict()) == normal.objective_timeline.map(func(e: HistoricalEvent) -> Dictionary: return e.to_dict()), "Shipping naming integration leaves chronology/effects unchanged")
