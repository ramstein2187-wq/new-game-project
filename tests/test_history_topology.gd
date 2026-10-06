extends SceneTree

const Statistics = preload("res://tools/history_topology_statistics.gd")
var assertions := 0
var failures := 0
var generator := HistoryGenerator.new()
var examples := {}

func expect(condition: bool, message: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(message)

func _init() -> void:
	_stress()
	_negative()
	_semantics()
	_boundaries()
	print("%s: History topology v0.3 (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _stress() -> void:
	var stats := Statistics.new()
	for seed in range(1, 1001):
		var result := generator.generate(seed)
		var replay := generator.generate(seed)
		stats.add(result, replay)
		expect(result.validation_report.errors.is_empty(), "Seed %d: %s" % [seed, result.validation_report.errors])
		expect(result.canonical_output() == replay.canonical_output(), "Exact deterministic canonical replay")
		expect(result.present.active_factions.size() in [4, 5, 6, 7, 8], "4..8 historical outcomes")
		expect(HistoryProjector.new().project(result.entities, result.objective_timeline).to_dict() == result.present.to_dict(), "Projection replays objective effects")
		var parsed: Dictionary = JSON.parse_string(result.canonical_output())
		expect(_json_equivalent(parsed.present, result.present.to_dict()), "JSON round trip preserves multi-origin populations, graphs and provenance")
		var active := {}
		for event in result.objective_timeline:
			for actor in event.actor_ids:
				expect(active.has(actor), "No unborn or extinct actor")
			for effect in event.effects:
				if effect.kind == "activate":
					active[effect.entity_id] = true
				elif effect.kind == "retire":
					active.erase(effect.entity_id)
				elif effect.kind == "population":
					expect(PopulationOrigins.errors(effect.profile).is_empty(), "Closed six-Origin vocabulary")
			if event.narrative_key in ["political_split", "political_merge", "political_reorganization", "population_migration", "population_join", "newcomer_entry", "political_extinction", "site_reuse"] and not examples.has(event.narrative_key):
				examples[event.narrative_key] = [seed, event.id]
		for entity in result.entities:
			if entity.kind == "faction":
				for parent in entity.parent_ids:
					expect(result.entity(parent) != null, "Political parent reference exists")
				expect(entity.generated_name != null, "Existing M035 naming generates every historical polity")
				for locale in ["en", "ko"]:
					expect(not NameRenderer.new().render(entity.generated_name, locale).is_empty(), "Canonical name has authored locale forms")
		for row in result.present.ruins:
			if not row.occupant_id.is_empty():
				expect(HistorySites.compatible(row, result.entity(row.occupant_id), row.reuse_purpose), "Reuse is compatible with the actual hazard and lifestyle")
		if result.configuration.topology_family == "no_direct_heir":
			expect(result.present.active_factions.all(func(row: Dictionary) -> bool: return not row.political_continuity), "All old offices are extinct, populations may survive")
	var report: Dictionary = stats.to_dict()
	print("Topology corpus: %d/1000 unique political graphs; counts %s" % [report.unique_political_graphs, JSON.stringify(report.distributions.active_factions)])
	expect(stats.invalid_seeds.is_empty() and stats.deterministic_mismatches.is_empty(), "1000 seeds zero invariant/determinism failures")
	expect(report.distributions.topology_family.size() == 7, "Seven families observed")
	expect(report.distributions.active_factions.size() == 5, "Counts 4/5/6/7/8 actually generated")
	expect(not generator.generate(42).configuration.has("target_factions"), "No exact count input exists")
	for current in ["4", "5"]:
		expect(report.unique_graphs_by_current_count[current] > 10, "Small-current histories have diverse graphs")
	expect(report.unique_political_graphs >= 990, "Political graphs remain diverse after exact-target removal")
	for family in report.unique_graphs_by_family:
		expect(report.unique_graphs_by_family[family] > 10, "Variation within every family")
	for axis in ["historical_factions", "ancestry_depth", "split_count", "merge_count", "migration_count", "newcomer_count", "extinction_count"]:
		expect(report.distributions[axis].size() > 1, "Structural distribution varies: " + axis)
	expect(examples.size() == 8, "All transformation and site operations exercised")
	for seed in [0, -1, 2147483647, 4294967296, 9223372036854775807]:
		var r := generator.generate(seed)
		randf()
		expect(r.validation_report.errors.is_empty() and r.canonical_output() == generator.generate(seed).canonical_output(), "Signed and 64-bit seeds remain deterministic")

func _event(result: HistoryResult, id: String) -> HistoricalEvent:
	for event in result.objective_timeline:
		if event.id == id:
			return event
	return null

# Godot JSON parses numbers as floats and loses typed-array metadata. Compare
# every value recursively, permitting only the JSON numeric representation.
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

func _case(key: String) -> HistoryResult:
	return generator.generate(examples[key][0])

func _reject(result: HistoryResult, label: String) -> void:
	expect(not HistoryValidator.new().validate(result).errors.is_empty(), "Reject " + label)

func _negative() -> void:
	var r := _case("political_split")
	var e := _event(r, examples.political_split[1])
	var child: HistoricalEntity
	for effect in e.effects:
		if effect.kind == "population":
			child = r.entity(effect.entity_id)
			break
	child.parent_ids = ["missing_polity"]
	_reject(r, "invalid ancestry reference")
	r = _case("political_split")
	e = _event(r, examples.political_split[1])
	e.year = -599
	_reject(r, "child predating parent")
	r = _case("political_merge")
	e = _event(r, examples.political_merge[1])
	e.actor_ids = ["precursor"]
	_reject(r, "extinct merge participant")
	r = _case("political_merge")
	e = _event(r, examples.political_merge[1])
	for effect in e.effects:
		if effect.kind == "population":
			effect.profile.strata[0].origins = ["composite"]
			break
	_reject(r, "invented Composite Origin")
	r = _case("population_migration")
	e = _event(r, examples.population_migration[1])
	for effect in e.effects:
		if effect.kind == "population":
			effect.source_ids = ["missing_population"]
	_reject(r, "missing migration donor")
	r = _case("political_extinction")
	e = _event(r, examples.political_extinction[1])
	_event(r, "h_last").actor_ids.append(e.actor_ids[0])
	_reject(r, "extinct actor in later action")
	r = _case("political_reorganization")
	e = _event(r, examples.political_reorganization[1])
	for effect in e.effects:
		if effect.kind == "population":
			effect.profile.strata[0].origins = ["outerworld"]
	_reject(r, "unexplained inherited profile change")
	r = _case("site_reuse")
	e = _event(r, examples.site_reuse[1])
	for event in r.objective_timeline:
		for effect in event.effects:
			if effect.kind == "ruin":
				effect.ruin_kind = "chemical_exposure_site"
				effect.site_type = "chemical"
				effect.hazard = "chemical"
	_reject(r, "chemically unsafe site reuse")
	r = generator.generate(42)
	r.present.active_factions.pop_back()
	_reject(r, "tampered current faction count")
	r = generator.generate(42)
	for claim in r.historical_claims:
		if claim.reference_scope == "event" and not claim.evidence.is_empty():
			claim.evidence.delta *= -1
			break
	_reject(r, "event claim borrowing a different relation meaning")
	r = generator.generate(42)
	for claim in r.historical_claims:
		if claim.reference_scope == "present":
			claim.referenced_event_id = "h_last"
			break
	_reject(r, "present sentiment masquerading as event memory")
	r = _case("political_merge")
	e = _event(r, examples.political_merge[1])
	e.actor_ids.append(e.actor_ids[0])
	_reject(r, "duplicate merge participant")
	r = generator.generate(42)
	_event(r, "h_found").effects = _event(r, "h_found").effects.filter(func(effect: Dictionary) -> bool: return effect.kind != "population")
	_reject(r, "missing precursor population before projection")

func _semantics() -> void:
	var populations := SocialPopulationCatalog.new(JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_population_templates.json")))
	var fixture_generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, populations)
	var found_flip := false
	var found_merge_donors := false
	var found_subset := false
	var found_join := false
	var found_retained := false
	for seed in range(1, 101):
		var r := fixture_generator.generate(seed)
		for event in r.objective_timeline:
			for effect in event.effects:
				if effect.kind == "population":
					found_subset = found_subset or effect.mode == "subset"
					found_join = found_join or effect.mode == "join"
					if event.type_name() == "MERGE":
						var entity := r.entity(effect.entity_id)
						expect(entity.parent_ids.size() >= 2, "Merge always retains multi-parent political ancestry")
						found_merge_donors = found_merge_donors or effect.source_ids.size() < entity.parent_ids.size()
				if effect.kind == "relationship":
					for claim in r.historical_claims:
						if claim.referenced_event_id == event.id and not claim.evidence.is_empty():
							expect(claim.evidence.delta == effect.delta, "Event evidence reads its recorded delta")
							expect(("increased trust" in claim.interpretation) == (effect.delta > 0), "Event prose follows delta, regardless of current score")
							for row in r.present.relationships:
								if [row.a, row.b].has(effect.a) and [row.a, row.b].has(effect.b) and row.score * effect.delta < 0:
									found_flip = true
			if event.narrative_key == "political_split":
				found_retained = found_retained or r.entity(event.actor_ids[0]).retired_event_id != event.id
	expect(found_flip, "Past dispute and cooperative current score coexist without narrative reversal")
	expect(found_merge_donors, "Political merge does not automatically mix all parent populations")
	expect(found_subset and found_join and found_retained, "Subset inheritance, arrivals joining residents and retained split parents occur")
	var r := generator.generate(42)
	var before := r.canonical_output()
	var text := HistoryDebugFormatter.new().format(r)
	expect("HISTORICAL POLITIES" in text and "POPULATION PROVENANCE" in text and "reference_scope=present" in text, "Readable renderer exposes canonical graph and scopes")
	expect(before == r.canonical_output(), "Rendering is read-only")

func _boundaries() -> void:
	var r := generator.generate(42)
	var labels := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String: return "%d/%s/%s" % [seed, id, kind])
	var custom := HistoryGenerator.new(labels).generate(42)
	expect(r.structural_output() == custom.structural_output(), "Naming replacement cannot change canonical simulation or claims")
	var catalog := (load(NamingCatalog.CONTENT_PATH) as NamingContent).duplicate_deep(Resource.DEEP_DUPLICATE_ALL) as NamingContent
	for token in catalog.tokens:
		for locale in ["en", "ko"]:
			token.forms[locale] = str(token.forms[locale]) + ("x" if locale == "en" else "라")
	var authored := HistoryGenerator.new(HistoryNameSource.new(Callable(), NamingCatalog.new(catalog))).generate(42)
	expect(authored.structural_output() == r.structural_output(), "Localized authored names do not perturb topology")
	var pool := HistoryMotifs.DISCOVERIES.duplicate()
	pool.reverse()
	var changed := HistoryGenerator.new(null, pool)
	for seed in range(1, 21):
		expect(Statistics.political_signature(generator.generate(seed)) == Statistics.political_signature(changed.generate(seed)), "Discovery draw cannot perturb political graph")
