extends SceneTree

const Fixtures = preload("res://tests/fixtures/culture_fixtures.gd")
const ALL_PREVIOUSLY_DORMANT := ["pure_flesh", "machine_kinship", "silent_circuit", "bounded_automation",
	"mutable_human", "ancestral_genome", "designed_kinship", "ecological_communion", "last_human_measure",
	"many_bodies_one_people", "thinking_threshold", "kin_beyond_thought", "reclamation", "return_to_deep"]
const CONTENT_DORMANT := ["ecological_communion", "last_human_measure", "many_bodies_one_people", "thinking_threshold", "kin_beyond_thought"]
var assertions := 0
var failures := 0
var catalog := FactionCultureCatalog.new()
var resolver := FactionCultureResolver.new(catalog)
var rules := CultureRules.new()

func expect(condition: bool, message: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(message)

func _init() -> void:
	_rules()
	_conflicts_and_intensity()
	_shipping()
	_fixtures_and_interactions()
	_boundaries()
	print("%s: Faction culture (%d assertions)" % ["PASS" if failures == 0 else "FAIL", assertions])
	quit(0 if failures == 0 else 1)

func _rules() -> void:
	expect(catalog.errors().is_empty() and catalog.traits().size() == 20 and catalog.doctrines().size() == 33, "Authored catalogs satisfy contract")
	var definition := {"requires_all": ["a:one", "a:two"], "requires_any": ["b:one", "b:two"], "prefers": ["p:one"], "forbids": ["f:one"], "base_weight": 7}
	var evidence: Dictionary = Fixtures.evidence(["a:one", "a:two", "b:two"])
	expect(rules.evaluate(definition, evidence).eligible, "All/any match supported evidence")
	var missing := evidence.duplicate(true)
	missing.erase("a:two")
	expect(not rules.evaluate(definition, missing).eligible, "requires_all cannot be bypassed by weighting")
	missing = evidence.duplicate(true)
	missing.erase("b:two")
	expect(not rules.evaluate(definition, missing).eligible, "requires_any rejects no match")
	var boosted := evidence.duplicate(true)
	boosted.merge(Fixtures.evidence(["p:one"]))
	expect(rules.evaluate(definition, boosted).weight == 9 and rules.evaluate(definition, evidence).weight == 7, "Preferences increase eligible weights with explanation")
	boosted.merge(Fixtures.evidence(["f:one"]))
	expect(not rules.evaluate(definition, boosted).eligible, "forbids veto even preferred options")
	var forbidden_catalog := catalog.traits()
	forbidden_catalog[0].forbids = ["a:one"]
	forbidden_catalog[0].requires_all = ["a:one"]
	forbidden_catalog[0].requires_any = []
	expect(not rules.eligible(forbidden_catalog, evidence).any(func(row: Dictionary) -> bool: return row.definition.id == forbidden_catalog[0].id), "Forbidden entry excluded from pool")
	var copied := catalog.traits()
	copied[0].value_tags.clear()
	expect(not catalog.traits()[0].value_tags.is_empty(), "Catalog callers cannot mutate authored data")
	var sparse := resolver.resolve_fixture(10, "empty", {})
	expect(sparse.society_traits.is_empty() and sparse.doctrines.is_empty(), "No random unsupported fallback when evidence absent")

func _conflicts_and_intensity() -> void:
	for pair: Array in [["pure_flesh", "machine_kinship"], ["pure_flesh", "machine_revelation"], ["last_human_measure", "many_bodies_one_people"], ["depth_taboo", "return_to_deep"], ["closed_sky", "skyward_hunger"]]:
		var first := catalog.definition(pair[0], "doctrine")
		var second := catalog.definition(pair[1], "doctrine")
		expect(rules.conflicts(first, "moderate", second, "moderate") and rules.conflicts(second, "moderate", first, "moderate"), "Hard conflict works symmetrically: " + str(pair))
	for pair: Array in [["mutable_human", "ancestral_genome"], ["unspoiled_ground", "new_ecology"], ["continuity", "radical_impermanence"]]:
		var first := catalog.definition(pair[0], "doctrine")
		var second := catalog.definition(pair[1], "doctrine")
		expect(not rules.conflicts(first, "moderate", second, "moderate"), "Conceptual tension may coexist at moderate intensity")
		expect(rules.conflicts(first, "fanatic", second, "fanatic"), "Strong formulations conflict")
	var pure := catalog.definition("pure_flesh", "doctrine")
	var weak: Dictionary = Fixtures.evidence(["scar:machine_war"])
	var strong: Dictionary = Fixtures.strong_machine_scar()
	var found_fanatic := false
	for seed in range(1, 101):
		expect(rules.intensity(pure, weak, seed, "fixture").level == "moderate", "Lucky rolls alone cannot produce fanatic")
		var level := rules.intensity(pure, strong, seed, "fixture")
		found_fanatic = found_fanatic or level.level == "fanatic"
		if level.level == "fanatic":
			expect(level.support_tags.size() >= 3, "Fanatic cites reinforcing evidence")
	expect(found_fanatic, "Strong synthetic evidence may permit uncommon fanatic")
	var single_event := strong.duplicate(true)
	for records: Array in single_event.values():
		records[0].source_event_ids = ["same_fixture_event"]
	for seed in range(1, 101):
		expect(rules.intensity(pure, single_event, seed, "fixture").level != "fanatic", "Three aliases of one event cannot justify fanatic")
	var conflict_evidence := strong.duplicate(true)
	conflict_evidence.merge(Fixtures.evidence(["content:machine_contact"]))
	var pool: Array[Dictionary] = rules.eligible([pure, catalog.definition("machine_kinship", "doctrine")], conflict_evidence)
	for seed in range(1, 51):
		expect(rules.select(pool, 2, seed, "fixture", "doctrines", conflict_evidence).size() == 1, "Conflicts remove a second pick rather than forcing the budget")
	# No mode-to-doctrine prohibition: skepticism can investigate sky evidence.
	var sky := catalog.definition("skyward_hunger", "doctrine")
	expect(rules.evaluate(sky, Fixtures.evidence(["scar:sky_signal", "interpretation:skeptical"])).eligible, "Skeptical sky inquiry remains valid")
	var trial := catalog.definition("truth_through_trial", "doctrine")
	expect(rules.evaluate(trial, Fixtures.evidence(["history:recorded_testing", "interpretation:ritual"])).eligible, "Ritual interpretation can favor trials")

func _shipping() -> void:
	var generator := HistoryGenerator.new()
	var counts := {"0": 0, "1": 0, "2": 0}
	for seed in range(1, 201):
		var result := generator.generate(seed)
		var before := result.canonical_output()
		for faction in result.present.active_factions:
			var profile := resolver.resolve(result, faction.id)
			expect(profile == resolver.resolve(result, faction.id), "Culture recomputation deterministic")
			expect(resolver.errors(result, faction.id, profile).is_empty(), "Supported selections, valid provenance/conflicts/intensity seed %d/%s" % [seed, faction.id])
			expect(profile.society_traits.size() in [1, 2, 3, 4], "Selection may fall below its 2..4 target when fewer patterns have real support")
			expect(profile.doctrines.size() in [0, 1, 2], "0..2 doctrines per shipping faction")
			counts[str(profile.doctrines.size())] += 1
			var trait_ids := {}
			var doctrine_ids := {}
			for society_trait: Dictionary in profile.society_traits:
				expect(not trait_ids.has(society_trait.id), "No duplicate Society Traits")
				trait_ids[society_trait.id] = true
			for doctrine: Dictionary in profile.doctrines:
				expect(not doctrine_ids.has(doctrine.id), "No duplicate Doctrines")
				doctrine_ids[doctrine.id] = true
				expect(doctrine.intensity.level in CultureRules.INTENSITIES, "Closed intensity vocabulary")
			for dormant in CONTENT_DORMANT:
				expect(dormant not in profile.eligible_doctrines and not doctrine_ids.has(dormant), "Unavailable future content stays dormant: " + dormant)
			for tag: String in profile.evidence:
				expect(tag not in ["population:mixed_lineages", "population:multi_origin_lineage", "content:semi_sapient_contact", "population:innerworld_ancestry"], "No fabricated future evidence")
			for goal in CultureGoalQuery.new().candidates(profile):
				expect(doctrine_ids.has(goal.source_doctrine_id) and goal.desire in profile.desire_tags, "Candidates come only from selected doctrine desires")
				expect(goal.status == "candidate" and not goal.has("target_id") and not goal.has("effects"), "No simulation facts or actions created")
			expect(result.canonical_output() == before, "Culture/goal queries do not mutate objective history or Claims")
			expect(profile.identity_profile == FactionIdentityResolver.new().resolve(result, faction.id), "M040 identity preserved")
		expect(result.generation_version == 3 and result.architecture_version == 2, "Architecture unchanged")
	expect(counts.values().all(func(count: int) -> bool: return count > 0), "Mundane, one- and two-doctrine factions all occur")
	var result := generator.generate(42)
	var faction_id: String = result.present.active_factions[0].id
	var profile := resolver.resolve(result, faction_id)
	var tampered := profile.duplicate(true)
	tampered.society_traits[0].id = "many_forms_one_hearth"
	expect(resolver.errors(result, faction_id, tampered).any(func(error: String) -> bool: return error.begins_with("unsupported:")), "Negative validator rejects unsupported society_trait")
	tampered = profile.duplicate(true)
	var tag: String = tampered.society_traits[0].provenance.support.keys()[0]
	tampered.society_traits[0].provenance.support[tag][0].source_event_ids = ["invented"]
	expect(resolver.errors(result, faction_id, tampered).any(func(error: String) -> bool: return error.begins_with("provenance:")), "Negative validator rejects fabricated provenance")
	tampered = profile.duplicate(true)
	tampered.doctrines.append({"id": "pure_flesh", "intensity": rules.intensity(catalog.definition("pure_flesh", "doctrine"), profile.evidence, result.seed, faction_id), "provenance": {"support": {}}})
	expect(resolver.errors(result, faction_id, tampered).any(func(error: String) -> bool: return error.begins_with("unsupported:")), "Negative validator rejects unsupported Doctrine")
	for current in result.present.active_factions:
		var with_doctrine := resolver.resolve(result, current.id)
		if with_doctrine.doctrines.is_empty():
			continue
		with_doctrine.doctrines[0].intensity.level = "invented_level"
		expect(resolver.errors(result, current.id, with_doctrine).any(func(error: String) -> bool: return error.begins_with("intensity:")), "Negative validator rejects unjustified intensity")
		break

func _fixtures_and_interactions() -> void:
	for id in ALL_PREVIOUSLY_DORMANT:
		var definition := catalog.definition(id, "doctrine")
		var tags: Array = definition.requires_all.duplicate()
		if not definition.requires_any.is_empty():
			tags.append(definition.requires_any[0])
		var evidence: Dictionary = Fixtures.evidence(tags)
		var pool := rules.eligible([definition], evidence)
		expect(pool.size() == 1 and rules.select(pool, 1, 12, "test", "doctrines", evidence)[0].definition.id == id, "Synthetic fixture activates dormant Doctrine: " + id)
	for definition: Dictionary in catalog.doctrines():
		for desire in definition.desires:
			expect(definition.goal_candidates.any(func(goal: Dictionary) -> bool: return goal.desire == desire), "Every Doctrine desire has an explicit authored future candidate")
	var selected := {}
	for seed in range(1, 301):
		var profile := resolver.resolve_fixture(seed, "mixed_actor", Fixtures.strong_machine_scar())
		if profile.doctrine_intensities.has("pure_flesh") and profile.society_traits.any(func(row: Dictionary) -> bool: return row.id == "maintenance_covenant"):
			selected = profile
			break
	expect(not selected.is_empty(), "Synthetic maintenance/Pure Flesh example is selectable")
	if selected.is_empty():
		return
	var before := selected.duplicate(true)
	var actor := {"expresses": ["augmented", "technical_competence", "craftsmanship", "technical_competence"]}
	var interaction := SocietyActorInteraction.new().resolve(selected, actor)
	expect(not interaction.positive_reasons.is_empty() and not interaction.negative_reasons.is_empty() and not interaction.mixed_reasons.is_empty(), "Technically useful and culturally suspect coexist")
	expect(interaction.standing in ["watched", "disfavored", "taboo"], "Qualitative standing follows taboo strength")
	for field in ["role_hooks", "dialogue_hooks", "event_hooks", "access_hooks"]:
		expect(not interaction[field].is_empty(), "Semantic hook contract: " + field)
	expect(not interaction.has("reputation") and not interaction.has("stat_modifiers"), "No reputation/stat collapse")
	expect(selected == before and actor.expresses.size() == 4, "Interaction does not mutate inputs")
	expect(interaction == SocietyActorInteraction.new().resolve(selected, {"expresses": ["craftsmanship", "augmented", "technical_competence"]}), "Actor order and duplicate tags do not perturb results")
	expect(SocietyActorInteraction.new().resolve(selected, {"expresses": ["unknown_future_tag"]}).standing == "accepted", "Unmatched semantic tags need no real Actor Trait system")
	for art_id in ["living_archive", "beauty_against_ruin", "sacred_craft", "unfinished_form"]:
		var definition := catalog.definition(art_id, "doctrine")
		var tag: String = {"living_archive": "oral_history", "beauty_against_ruin": "artistry", "sacred_craft": "craftsmanship", "unfinished_form": "bodily_adaptation"}[art_id]
		var fake := {"society_traits": [], "doctrines": [{"id": art_id, "values": definition.values, "taboos": definition.taboos, "intensity": {"level": "moderate"}, "provenance": {"scope": "synthetic"}}]}
		var hooks := SocietyActorInteraction.new().resolve(fake, {"expresses": [tag]})
		expect(hooks.role_hooks[0].id != "social_participant", "Art has meaningful social role/access/event hooks")

func _boundaries() -> void:
	var baseline: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_m040_baseline.json"))
	for sample in baseline.samples:
		if sample.version != 2:
			continue # M042 deliberately expands v3 objective history; v2 remains exact.
		var result := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 2).generate(int(sample.seed))
		expect(result.canonical_output().sha256_text() == sample.canonical_sha256, "Exact-base v2 history and Claims preserved")
		expect(result.structural_output().sha256_text() == sample.structural_sha256, "Exact-base v2 decisions preserved")
	var labels := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String: return "%d/%s/%s" % [seed, id, kind])
	for seed in [1, 13, 42, -1, 4294967296]:
		var normal := HistoryGenerator.new().generate(seed)
		var renamed := HistoryGenerator.new(labels).generate(seed)
		expect(normal.structural_output() == renamed.structural_output(), "Names do not change history decisions")
		for faction in normal.present.active_factions:
			var profile := resolver.resolve(normal, faction.id)
			expect(profile == resolver.resolve(renamed, faction.id), "Names do not change culture selection/evidence/intensity/goals")
			var changed_claims := normal.historical_claims[0].interpretation
			normal.historical_claims[0].interpretation = "Unfounded future machine war and Innerworld origin assertion"
			expect(profile == resolver.resolve(normal, faction.id), "Claims cannot manufacture culture evidence")
			normal.historical_claims[0].interpretation = changed_claims
			NameRenderer.new().render(normal.entity(faction.id).generated_name, "ko")
			expect(profile == resolver.resolve(normal, faction.id), "Locale rendering cannot perturb culture")
