extends SceneTree

var checks := 0
var failures: Array[String] = []
const Op = HistoryV6Event.Operation
var fixture_log: HistoricalEventLog
var fixture_serial := 0
func check(value: bool, message: String) -> void:
	checks += 1
	if not value: failures.append(message)

func _init() -> void:
	var independent := HistoryWorldManifest.from_json(FileAccess.get_file_as_string("res://tests/fixtures/history_v6_world_manifest.json"))
	check(independent.errors.is_empty(), "Frozen self-contained Manifest consumer contract")
	check(independent.payload.localities.size() == 9 and independent.payload.seed == 1839602582, "Independent consumer geographic identity")
	check(independent.payload.objects.all(func(a: Dictionary) -> bool: return not a.currently_usable), "Confirmed object custody does not grant unknown technology")
	_population_transactions()
	_project_lifecycle()
	_scars_and_canon()
	var count := 100
	for argument in OS.get_cmdline_user_args():
		if argument.begins_with("--count="): count = int(argument.trim_prefix("--count="))
	for seed in range(1, count + 1):
		var generated := HistoryEngine.new().generate_civilization(seed)
		check(generated.errors.is_empty(), "seed %d: %s (%s)" % [seed, generated.errors, generated.stop_reason])
		if not generated.errors.is_empty(): continue
		check(generated.canonical() == HistoryEngine.new().generate_civilization(seed).canonical(), "determinism %d" % seed)
		var log := HistoricalEventLog.from_json(generated.log.canonical())
		check(log != null, "JSON decode %d" % seed)
		var replay := HistoryReducer.new().replay(generated.initial, log)
		check(replay.ok() and replay.state.canonical() == generated.final_state.canonical(), "JSON replay %d: %s" % [seed, replay.errors])
		var manifest := HistoryWorldManifest.build(generated)
		check(manifest.errors.is_empty(), "Manifest %d: %s" % [seed, manifest.errors])
		var consumed := HistoryWorldManifest.from_json(manifest.canonical())
		check(consumed.errors.is_empty(), "Manifest consumer %d: %s" % [seed, consumed.errors])
		check(manifest.canonical() == HistoryWorldManifest.build(generated).canonical(), "Pure projection %d" % seed)
		var malformed := manifest.payload.duplicate(true)
		malformed.facilities[0].assets[0].actual_quantity = -1
		check(not HistoryWorldManifest.validate(malformed).is_empty(), "Negative asset rejected %d" % seed)
		if seed == 1:
			for mutation in ["owner", "dependency", "dependency_missing", "dependency_cycle", "cause", "technology", "quantity", "source", "fractional"]:
				var bad := manifest.payload.duplicate(true)
				match mutation:
					"owner": bad.facilities[0].owner_id = "missing"
					"dependency": bad.facilities[0].dependency = "missing"
					"dependency_missing": bad.facilities[0].erase("dependency")
					"dependency_cycle": bad.facilities[0].dependency = bad.facilities[0].id
					"cause": bad.events[0].cause_ids = [bad.events.back().id]
					"technology": bad.facilities[0].ancient_mechanism_operable = true
					"quantity": bad.facilities[0].assets[0].actual_quantity = 0; bad.facilities[0].assets[0].currently_usable = true
					"source": bad.populations[0].origin = "invented_lineage"
					"fractional": bad.populations[0].size = 2.5
				check(not HistoryWorldManifest.validate(bad).is_empty(), "Consumer rejects " + mutation)
	if failures.is_empty(): print("PASS history v6 civilization: %d checks" % checks)
	else:
		for failure in failures: push_error(failure)
	quit(0 if failures.is_empty() else 1)

func fixture() -> HistoryWorldState:
	fixture_log = HistoricalEventLog.new(); fixture_serial = 0
	return HistoryCivilizationInitial.build(4)

func transition(s: HistoryWorldState, effects: Array[HistoryV6Event.Effect], reason: String = "synthetic_fixture") -> HistoryReducer.Transition:
	var e := HistoryV6Event.new()
	e.id = "fixture_%d" % fixture_serial; fixture_serial += 1; e.rule_id = "fixture"
	e.year = s.year + 40; e.effects = effects; e.reason = reason
	var result := HistoryReducer.new().apply(s, e, fixture_log)
	if result.ok(): fixture_log.append_committed(e)
	return result

func accepted(s: HistoryWorldState, effects: Array[HistoryV6Event.Effect]) -> HistoryWorldState:
	var next := transition(s, effects)
	check(next.ok(), "Expected transaction: " + str(next.errors))
	return next.state if next.ok() else s

func rejected(s: HistoryWorldState, effects: Array[HistoryV6Event.Effect], label: String) -> void:
	var before := s.canonical(); var log_before := fixture_log.canonical()
	var next := transition(s, effects)
	check(not next.ok() and next.state == null, label)
	check(before == s.canonical() and log_before == fixture_log.canonical(), "Atomic rejection: " + label)

func _population_transactions() -> void:
	var s := fixture(); var original := s.source_totals.duplicate()
	s = accepted(s, [HistoryV6Event.Effect.new(Op.DIVIDE_POPULATION, "divided", "population_0_0", "locality_0", 10, "faction_0")])
	check(s.populations.divided.source_id == "source_0" and "population_0_0" in s.civilization.population_lineage.divided, "Division preserves source/lineage")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.JOIN_POPULATION, "divided", "population_0_0")])
	check(s.source_totals == original and not s.populations.has("divided"), "Compatible merge conserves population")
	rejected(s, [HistoryV6Event.Effect.new(Op.DIVIDE_POPULATION, "divided", "population_0_0", "locality_0", 10, "faction_0")], "Retired population ID cannot be recycled")
	rejected(s, [HistoryV6Event.Effect.new(Op.JOIN_POPULATION, "population_0_0", "population_1_0")], "Cross-source merge forbidden")
	rejected(s, [HistoryV6Event.Effect.new(Op.DIVIDE_POPULATION, "bad", "population_0_0", "locality_0", 1, "faction_1")], "Division cannot invent allegiance")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.LOSE_POPULATION, "population_0_0", "", "", 2, "expedition_loss")])
	check(s.civilization.losses.source_0 == 2 and s.errors().is_empty(), "Explicit loss ledger")
	rejected(s, [HistoryV6Event.Effect.new(Op.RELATIONSHIP, "faction_0", "faction_1", "", -1, "0")], "Random legacy relation forbidden in Phase B")
	var copy := s.copy(); copy.civilization.population_lineage.population_0_0.append("fixture_ancestor")
	check(copy.canonical() != s.canonical(), "Nested lineage owned copy")
	var forged := HistoryV6Event.new(); forged.id = "forged"; forged.year = s.year + 1; forged.rule_id = "fixture"; forged.reason = "synthetic_fixture"
	forged.effects = [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_0", "", "", 0, "local_failure")]
	forged.evidence_keys = ["population:population_0_0"]; forged.cause_ids = [s.fact_events["population:population_0_0"]]
	check(not HistoryReducer.new().apply(s, forged, fixture_log).ok(), "Chronologically earlier population loss is not a facility failure cause")
	forged.evidence_keys.clear(); forged.cause_ids.clear(); forged.association_ids = ["missing_project"]
	check(not HistoryReducer.new().apply(s, forged, fixture_log).ok(), "Association is not an arbitrary fact or cause")
	rejected(s, [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_0", "", "", 0, "local_failure"), HistoryV6Event.Effect.new(Op.LOSE_POPULATION, "population_0_0", "", "", 9999, "impact_loss")], "Later effect failure rolls back facility damage")

func project_fixture(kind: String) -> HistoryWorldState:
	var s := fixture(); var f := s.civilization.facilities.site_0
	f.ancient = false; f.function = HistoryCivilizationContent.project(kind).function
	f.materials = 20; f.equipment = 4; f.records = 3; f.samples = 2
	s.sites.site_0.condition = "intact"; s.sites.site_0.accessible = true
	if kind == "deep_descent": s.civilization.localities.locality_0.terrain = "innerworld_entry"
	check(s.errors().is_empty(), "Explicit synthetic project initial state")
	return accepted(s, [HistoryV6Event.Effect.new(Op.START_PROJECT, "test_project", "faction_0", "site_0", 0, kind)])

func _project_lifecycle() -> void:
	var s := project_fixture("genome_archive")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_0", "", "", 0, "local_failure")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_0", "", "", 0, "local_failure")])
	check(s.civilization.headcount(s, "locality_0") > 0 and not s.sites.site_0.accessible, "Destroyed facility does not destroy locality habitation")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.PROJECT_STATUS, "test_project", "", "", 0, "paused")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.REPAIR_FACILITY, "site_0", "faction_0", "", 0, "local_engineering")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.PROJECT_STATUS, "test_project", "", "", 0, "active")])
	check(s.civilization.projects.test_project.status == "active", "Project resumes after physical blocker repaired")
	for i in range(3): s = accepted(s, [HistoryV6Event.Effect.new(Op.INVEST_PROJECT, "test_project", "faction_0")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.ATTEMPT_PROJECT, "test_project", "", "", 0, "bounded_success")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.RESOLVE_PROJECT, "test_project")])
	check(s.civilization.projects.test_project.outcome == "preserved_records" and s.civilization.facilities.site_0.samples == 0, "Archive outcome names only actual survivors, never lost samples or resurrected people")
	rejected(s, [HistoryV6Event.Effect.new(Op.ATTEMPT_PROJECT, "test_project", "", "", 0, "bounded_success")], "Completed project cannot loop attempts")
	# Takeover follows actual succession, physical membership and ownership.
	s = project_fixture("deep_descent")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.CREATE_FACTION, "successor", "faction_0"), HistoryV6Event.Effect.new(Op.SPEND_SPLIT_CAPACITY, "faction_0"),
		HistoryV6Event.Effect.new(Op.RELOCATE_POPULATION, "population_0_0", "successor", "locality_0"),
		HistoryV6Event.Effect.new(Op.CIVIL_SITE_OWNER, "site_0", "successor", "", 0, "successor"),
		HistoryV6Event.Effect.new(Op.PROJECT_ACTOR, "test_project", "successor")])
	check(s.civilization.projects.test_project.actor == "successor" and s.civilization.projects.test_project.initiator == "faction_0", "Takeover preserves initiator")
	for i in range(4): s = accepted(s, [HistoryV6Event.Effect.new(Op.INVEST_PROJECT, "test_project", "successor")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.ATTEMPT_PROJECT, "test_project", "", "", 2, "bounded_success")])
	check(s.civilization.losses.source_0 == 2 and s.civilization.facilities.site_0.records == 3 and s.civilization.facilities.site_0.survey_records == 1, "Limited entry returns field observations without minting genomic records")
	s.civilization.localities.locality_0.passage_open = false
	check(s.civilization.physical_access(s, "site_0") and not s.civilization.usable(s, "site_0"), "Physical entry building access does not grant a closed descent route")

func _scars_and_canon() -> void:
	var s := fixture()
	s = accepted(s, [HistoryV6Event.Effect.new(Op.ORBITAL_IMPACT, "fall", "site_0", "", 1)])
	check(s.civilization.projects.is_empty() and s.civilization.localities.locality_0.hazard == 1, "Independent orbital fall creates actual persistent hazard")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.RECOVER_SCAR, "fall", "faction_0", "", 3)])
	check(s.civilization.localities.locality_0.hazard == 0 and s.civilization.scars.fall.recovered, "Later clearance removes actual hazard without erasing history")
	s = fixture(); s.sites.site_1.condition = "intact"
	s = accepted(s, [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_1", "", "", 0, "local_failure")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.DAMAGE_FACILITY, "site_1", "", "", 0, "local_failure")])
	s = accepted(s, [HistoryV6Event.Effect.new(Op.CASCADE_FAILURE, "cascade", "site_1", "site_2")])
	check(s.civilization.scars.cascade.sites.size() == 2 and not s.civilization.localities.locality_2.passage_open, "Actual dependency cascade affects access")
	rejected(s, [HistoryV6Event.Effect.new(Op.CASCADE_FAILURE, "fake", "site_1", "site_0")], "Unrelated buildings cannot create a cascade")
	s = project_fixture("ark")
	for i in range(6): s = accepted(s, [HistoryV6Event.Effect.new(Op.INVEST_PROJECT, "test_project", "faction_0")])
	rejected(s, [HistoryV6Event.Effect.new(Op.ATTEMPT_PROJECT, "test_project", "", "", 0, "escape_success")], "Canon blocks confirmed escape")
	s = accepted(s, [HistoryV6Event.Effect.new(Op.ATTEMPT_PROJECT, "test_project", "", "", 2, "failure")])
	check(s.civilization.scars.exodus_test_project.project_id == "test_project" and s.civilization.projects.test_project.attempted, "Project-derived scar requires actual failed physical launch")
	s = fixture(); s.civilization.facilities.site_0.function = "launch"; s.sites.site_0.condition = "intact"
	s = accepted(s, [HistoryV6Event.Effect.new(Op.EXODUS_ATTEMPT, "independent_exodus", "site_0", "", 1, "physical_launch_failed")])
	check(s.civilization.projects.is_empty() and s.civilization.scars.independent_exodus.project_id.is_empty(), "Independent exodus is a physical attempt, not a project label")
	var ancient: String = s.civilization.facilities.keys().back()
	s.sites[ancient].condition = "damaged"; s.sites[ancient].accessible = true
	rejected(s, [HistoryV6Event.Effect.new(Op.REPAIR_FACILITY, ancient, "faction_0", "", 0, "restore_unknown_mechanism")], "Repair cannot invent ancient operability")
	check(not HistoryWorldManifest.from_json("{\"schema\":\"wrong\"}").errors.is_empty(), "Independent consumer rejects unknown schema")
	# Resource scarcity must not permanently stop a recoverable outdoor locality.
	s = fixture(); var f := s.civilization.facilities.site_0
	f.materials = 0; s.civilization.localities.locality_0.hazard = 2
	s = accepted(s, [HistoryV6Event.Effect.new(Op.GATHER_MATERIALS, "site_0", "faction_0", "", 1)])
	check(s.civilization.facilities.site_0.materials == 1, "Hazard limits gathering without making the entire locality uninhabitable")
	rejected(s, [HistoryV6Event.Effect.new(Op.GATHER_MATERIALS, "site_0", "faction_0", "", 3)], "Hazard forbids bulk gathering")
	var custody := fixture()
	custody.sites.site_0.condition = "intact"; custody.sites.site_1.condition = "intact"
	custody.civilization.facilities.site_1.locality_id = "locality_0"
	custody.populations.population_1_0.site_id = "locality_0"
	custody.civilization.facilities.site_0.records = 2
	rejected(custody, [HistoryV6Event.Effect.new(Op.TRANSFER_RECORDS, "site_0", "site_1", "", 1, "records")], "Co-residence alone cannot authorize taking another faction's records")
	var idle := fixture()
	for facility in idle.civilization.facilities.values():
		facility.materials = 0; facility.salvage = 0; idle.sites[facility.id].condition = "ruined"; idle.sites[facility.id].accessible = false; idle.sites[facility.id].owner_id = ""
	for artifact in idle.artifacts.values(): artifact.status = "lost"; artifact.owner_id = ""
	for locality in idle.civilization.localities.values(): locality.material_reserve = 0; locality.gathered_year = 0; locality.capacity = 1000
	for p in idle.populations.values(): p.site_id = "locality_" + p.faction_id.trim_prefix("faction_")
	# Isolate timed recovery; independent external impacts are deliberately omitted.
	var resumed := HistoryEngine.new().generate(55, 20, [HistoryCivilizationFacility.new()], idle, 200)
	check(resumed.errors.is_empty() and resumed.log.size() > 0 and resumed.log.events()[0].year >= 40, "Quiet intervals skip to a real replenishment opportunity")
