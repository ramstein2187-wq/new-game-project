extends SceneTree

const Op = HistoryV6Event.Operation
var failures: Array[String] = []
var checks := 0

# Experiment 1: change an existing rule's condition AND effects by composition.
class SettlingMigration extends HistoryEventRule:
	var migration := HistoryV6Migration.new()
	func _init() -> void:
		id = migration.id
	func candidates(s: HistoryWorldState) -> Array[Candidate]:
		var out: Array[Candidate] = []
		for c in migration.candidates(s):
			if s.sites[c.location].owner_id.is_empty(): out.append(c)
		return out
	func propose(s: HistoryWorldState, c: Candidate, rng: RandomNumberGenerator) -> HistoryV6Event:
		var e := migration.propose(s, c, rng)
		e.rule_id = id
		e.effects.append(HistoryV6Event.Effect.new(HistoryV6Event.Operation.SITE_OWNER, c.location, c.actor))
		return e

# Experiment 2: independent small event using the existing effect vocabulary.
class AbandonEmptySite extends HistoryEventRule:
	func _init() -> void:
		id = "abandon_empty_site"
	func candidates(s: HistoryWorldState) -> Array[Candidate]:
		var out: Array[Candidate] = []
		for site_id: String in s.sites:
			var site := s.sites[site_id]
			if not site.owner_id.is_empty() and s.residents(site_id, site.owner_id).is_empty(): out.append(Candidate.new(site.owner_id, site_id))
		return out
	func propose(_s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
		var e := event(c.actor, [c.target])
		e.effects.append(HistoryV6Event.Effect.new(HistoryV6Event.Operation.SITE_OWNER, c.target))
		return e

class ManyCandidates extends HistoryEventRule:
	var count := 1
	func _init(rule_id: String, number: int) -> void:
		id = rule_id; count = number
	func candidates(_s: HistoryWorldState) -> Array[Candidate]:
		var out: Array[Candidate] = []
		for i in range(count): out.append(Candidate.new(str(i)))
		return out

class MutatingRule extends HistoryEventRule:
	func _init() -> void: id = "bad_mutation"
	func candidates(s: HistoryWorldState) -> Array[Candidate]:
		s.sites["site_0"].owner_id = ""
		return []

class BrokenRule extends HistoryEventRule:
	func _init() -> void: id = "bad_effect"
	func candidates(_s: HistoryWorldState) -> Array[Candidate]: return [Candidate.new("faction_0")]
	func propose(_s: HistoryWorldState, c: Candidate, _rng: RandomNumberGenerator) -> HistoryV6Event:
		var e := event(c.actor, [])
		e.effects.append(HistoryV6Event.Effect.new(-1, "secret"))
		return e

func check(value: bool, message: String) -> void:
	checks += 1
	if not value: failures.append(message)

func _init() -> void:
	_state_and_reducer()
	_selection()
	_composition()
	_extensions()
	for seed in range(1, 101):
		var generated := HistoryEngine.new().generate(seed)
		check(generated.errors.is_empty(), "seed %d: %s" % [seed, generated.errors])
		check(generated.final_state.errors().is_empty(), "final state %d" % seed)
		check(generated.canonical() == HistoryEngine.new().generate(seed).canonical(), "determinism %d" % seed)
		var decoded := HistoricalEventLog.from_json(generated.log.canonical())
		check(decoded != null, "log decode")
		if decoded == null: continue
		var replay := HistoryReducer.new().replay(generated.initial, decoded)
		check(replay.ok() and replay.state.canonical() == generated.final_state.canonical(), "serialized replay %d" % seed)
		var state := generated.initial.copy()
		var prefix := HistoricalEventLog.new()
		for e in generated.log.events():
			var next := HistoryReducer.new().apply(state, e, prefix)
			check(next.ok(), "intermediate state %d/%s" % [seed, e.id])
			if not next.ok(): break
			state = next.state; prefix.append_committed(e)
	print("History v6 checks: %d; failures: %d" % [checks, failures.size()])
	for message in failures: printerr(message)
	quit(0 if failures.is_empty() else 1)

func _proposal(rule: HistoryEventRule, state: HistoryWorldState, c: HistoryEventRule.Candidate, serial: int = 0) -> HistoryV6Event:
	var before := state.canonical()
	var e := rule.propose(state, c, HistoryEventSelector.stream(42, serial, "test"))
	check(state.canonical() == before, "proposal purity " + rule.id)
	e.id = "test_%d" % serial; e.year = state.year + 1
	return e

func _apply(state: HistoryWorldState, e: HistoryV6Event, log: HistoricalEventLog) -> HistoryWorldState:
	var next := HistoryReducer.new().apply(state, e, log)
	check(next.ok(), "controlled transition: " + str(next.errors))
	if not next.ok(): return state
	log.append_committed(e)
	return next.state

func _reject(state: HistoryWorldState, e: HistoryV6Event, log: HistoricalEventLog, message: String) -> void:
	var before := state.canonical()
	var log_before := log.canonical()
	check(not HistoryReducer.new().apply(state, e, log).ok(), message)
	check(state.canonical() == before and log.canonical() == log_before, "atomic rejection: " + message)

func _state_and_reducer() -> void:
	var s := HistoryInitialWorld.build(42)
	check(s.errors().is_empty(), "initial invariants")
	var copy := s.copy()
	copy.populations["population_0_0"].size += 1
	copy.canon.locked.human_origin = "fabricated"
	check(not copy.errors().is_empty() and s.errors().is_empty(), "copy isolation / conservation / Canon")
	copy = s.copy(); copy.artifacts["artifact_0"].origin = "Observer"
	check(not copy.errors().is_empty(), "unknown artifact Origin cannot be resolved")
	copy = s.copy(); copy.source_origins["source_0"] = "new_lineage"
	check(not copy.errors().is_empty(), "unsupported population Origin")
	copy = s.copy(); copy.sites["site_2"].technology_operable = true
	check(not copy.errors().is_empty(), "observation is not operational knowledge")
	copy = s.copy(); copy.factions["faction_0"].parent_id = "faction_1"; copy.factions["faction_1"].parent_id = "faction_0"
	check(not copy.errors().is_empty(), "lineage cycle")
	var migration := HistoryV6Migration.new()
	var e := _proposal(migration, s, migration.candidates(s)[0])
	var empty := HistoricalEventLog.new()
	var broken := e.copy()
	broken.effects.append(HistoryV6Event.Effect.new(Op.MOVE_POPULATION, "missing", "faction_0", "site_1"))
	_reject(s, broken, empty, "failure AFTER valid first effect")
	broken = e.copy(); broken.year = s.year
	_reject(s, broken, empty, "nonadvancing time")
	broken = e.copy(); broken.targets.append("missing")
	_reject(s, broken, empty, "unknown target")
	broken = e.copy(); broken.cause_ids = ["future"]
	_reject(s, broken, empty, "unproven cause")
	broken = e.copy(); broken.evidence_keys = ["unknown:fact"]; broken.cause_ids = ["future"]
	_reject(s, broken, empty, "unproven enabling fact")
	for forbidden in ["core_intent", "observer_origin", "outerworld_success", "deep_expedition_success"]:
		broken = e.copy(); broken.effects[0].detail = forbidden
		_reject(s, broken, empty, "Canon fact injection " + forbidden)
	broken = e.copy(); broken.effects[0].operation = 999
	_reject(s, broken, empty, "unknown operation")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.SITE_CONDITION, "site_2", "", "", 0, "intact")]
	_reject(s, broken, empty, "unearned technical repair")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.RETIRE_FACTION, "faction_0")]
	_reject(s, broken, empty, "orphaned population")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.MOVE_ARTIFACT, "artifact_0", "faction_1", "site_2", 0, "held")]
	_reject(s, broken, empty, "absent artifact custodian")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.SITE_OWNER, "site_2", "faction_0")]
	_reject(s, broken, empty, "occupation without residents")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.MOVE_POPULATION, "population_0_0", "faction_0", "site_0")]
	_reject(s, broken, empty, "no-op effect")
	broken = e.copy(); broken.effects = [HistoryV6Event.Effect.new(Op.RELATIONSHIP, "faction_0", "faction_1", "", -1, "1")]
	_reject(s, broken, empty, "recorded previous relationship must match actual state")
	var next := _apply(s, e, empty)
	_reject(next, e, empty, "duplicate event")
	var unrelated := _proposal(HistoryV6SiteIncident.new(), next, HistoryEventRule.Candidate.new("faction_1", "site_1"), 1)
	unrelated.evidence_keys = ["population:" + e.effects[0].subject]; unrelated.cause_ids = [e.id]
	_reject(next, unrelated, empty, "existing but unrelated historical fact is not a cause")
	var exported := empty.events()
	exported[0].effects[0].target = "corrupt"
	check(empty.events()[0].effects[0].target != "corrupt", "log read isolation")
	var bad_data := e.data(); bad_data["claim"] = "world creation"
	check(HistoryV6Event.from_data(bad_data) == null, "serialized surplus fact field")
	bad_data = e.data(); bad_data.effects[0][4] = "not_a_number"
	check(HistoryV6Event.from_data(bad_data) == null, "serialized effect schema")
	bad_data = e.data(); bad_data.year = 1.5
	check(HistoryV6Event.from_data(bad_data) == null, "fractional time rejected")
	var bad_run := HistoryEngine.new().generate(1, 5, [BrokenRule.new()])
	check(bad_run.stop_reason == "validation_failed" and bad_run.log.size() == 0, "invalid effect is a hard stop")
	check(bad_run.initial.canonical() == bad_run.final_state.canonical(), "engine rejection preserves state")
	bad_run = HistoryEngine.new().generate(1, 5, [MutatingRule.new()])
	check(bad_run.stop_reason == "invalid_rule" and bad_run.initial.canonical() == bad_run.final_state.canonical(), "mutating rule isolated")
	check(HistoryEngine.new().generate(1, 5, []).stop_reason == "no_eligible_rules", "graceful empty rule set")
	check(HistoryEngine.new().generate(1, 5, [migration, migration]).stop_reason == "invalid_input", "duplicate rule ID")
	check(HistoryEngine.new().generate(1, 0).log.size() == 0, "zero budget")

func _selection() -> void:
	var s := HistoryInitialWorld.build(1)
	var selector := HistoryEventSelector.new()
	var counts := {"a": 0, "b": 0}
	for seed in range(1000):
		var small: Array[HistoryEventRule] = [ManyCandidates.new("a", 1), ManyCandidates.new("b", 1)]
		var large: Array[HistoryEventRule] = [ManyCandidates.new("a", 100), ManyCandidates.new("b", 1)]
		var a := selector.select(s, small, seed, 0)
		var b := selector.select(s, large, seed, 0)
		check(a.rule.id == b.rule.id, "parameter multiplicity seed%d" % seed)
		counts[a.rule.id] += 1
	check(counts.a > 400 and counts.a < 600, "equal type weights distribution")
	var rules := HistoryEngine.default_rules()
	var baseline := HistoryEngine.new().generate(42).canonical()
	rules.reverse()
	check(baseline == HistoryEngine.new().generate(42, 36, rules).canonical(), "rule-order independence")
	var inactive := HistoryEventRule.new(); inactive.id = "ineligible_added"
	rules.append(inactive)
	check(baseline == HistoryEngine.new().generate(42, 36, rules).canonical(), "ineligible addition independence")
	var reordered := HistoryInitialWorld.build(42)
	for name in ["factions", "populations", "sites", "artifacts"]:
		var index: Dictionary = reordered.get(name)
		var keys := index.keys(); keys.reverse()
		var values := index.duplicate(); index.clear()
		for key in keys: index[key] = values[key]
	check(baseline == HistoryEngine.new().generate(42, 36, HistoryEngine.default_rules(), reordered).canonical(), "entity insertion order independence")
	var co_stored := s.copy()
	co_stored.artifacts["artifact_1"].owner_id = "faction_0"
	co_stored.artifacts["artifact_1"].site_id = "site_0"
	var reversed_artifacts := co_stored.copy()
	reversed_artifacts.artifacts.clear()
	reversed_artifacts.artifacts["artifact_1"] = co_stored.artifacts["artifact_1"]
	reversed_artifacts.artifacts["artifact_0"] = co_stored.artifacts["artifact_0"]
	var incident := HistoryV6SiteIncident.new()
	var incident_candidate := HistoryEventRule.Candidate.new("faction_0", "site_0")
	var incident_a := _proposal(incident, co_stored, incident_candidate)
	var incident_b := _proposal(incident, reversed_artifacts, incident_candidate)
	check(incident_a.data() == incident_b.data(), "multiple artifact effects retain stable order")
	var single := ManyCandidates.new("only", 1)
	var cooled := selector.select(s, [single], 1, 1, "only")
	check(cooled.rule == null and cooled.cooldown_blocked, "one-step cooldown has no fallback insertion")
	var skewed: Array[HistoryEventRule] = [ManyCandidates.new("a", 1), ManyCandidates.new("b", 1)]
	skewed[1].weight = 3.0
	var b_count := 0
	for seed in range(1000):
		if selector.select(s, skewed, seed, 0).rule.id == "b": b_count += 1
	check(b_count > 680 and b_count < 820, "type weights affect frequencies")
	for rule in HistoryEngine.default_rules():
		var before := s.canonical()
		for c in rule.candidates(s):
			var e := _proposal(rule, s, c)
			check(HistoryReducer.new().apply(s, e, HistoricalEventLog.new()).ok(), "eligible proposal " + rule.id)
		check(before == s.canonical(), "candidate purity " + rule.id)
	var impossible := s.copy()
	for site in impossible.sites.values(): site.accessible = false; site.condition = "ruined"; site.owner_id = ""
	check(HistoryV6Migration.new().candidates(impossible).is_empty(), "exclude inaccessible migration")
	check(HistoryV6SiteReoccupation.new().candidates(impossible).is_empty(), "exclude inaccessible occupation")
	check(HistoryV6SiteIncident.new().candidates(impossible).is_empty(), "exclude inactive sites")
	# Check every offered candidate, not just the selected candidate, across live states.
	for seed in [7, 42, 99]:
		var run := HistoryEngine.new().generate(seed, 12)
		var state := run.initial.copy()
		var prefix := HistoricalEventLog.new()
		for committed in run.log.events():
			for rule in HistoryEngine.default_rules():
				for c in rule.candidates(state):
					var candidate_event := _proposal(rule, state, c, 1000)
					check(HistoryReducer.new().apply(state, candidate_event, prefix).ok(), "reachable candidate valid: " + rule.id)
			state = _apply(state, committed, prefix)

func _composition() -> void:
	var s := HistoryInitialWorld.build(42)
	var log := HistoricalEventLog.new()
	var migration := HistoryV6Migration.new()
	var reoccupy := HistoryV6SiteReoccupation.new()
	check(reoccupy.candidates(s).is_empty(), "initial unoccupied sites lack settlers")
	s = _apply(s, _proposal(migration, s, HistoryEventRule.Candidate.new("faction_0", "population_0_0", "site_2"), 0), log)
	check(not reoccupy.candidates(s).is_empty(), "migration enables reoccupation")
	var split_after_move := _proposal(HistoryV6FactionSplit.new(), s, HistoryEventRule.Candidate.new("faction_0", "population_0_0", "", "retain"), 10)
	check(split_after_move.cause_ids.is_empty(), "earlier migration does not explain split")
	var occupied := _proposal(reoccupy, s, reoccupy.candidates(s)[0], 1)
	check(occupied.cause_ids == ["test_0"], "population enabling provenance")
	s = _apply(s, occupied, log)
	check(s.sites["site_2"].condition == "damaged" and not s.sites["site_2"].technology_operable, "occupation preserves damage/knowledge")
	var incident := HistoryV6SiteIncident.new()
	s = HistoryInitialWorld.build(42); log = HistoricalEventLog.new()
	s = _apply(s, _proposal(incident, s, HistoryEventRule.Candidate.new("faction_0", "site_0"), 0), log)
	check(s.sites["site_0"].owner_id.is_empty() and s.sites["site_0"].condition == "damaged", "incident abandons use")
	var optional_move := _proposal(migration, s, HistoryEventRule.Candidate.new("faction_0", "population_0_0", "site_2"), 10)
	check(optional_move.cause_ids.is_empty(), "old damage alone does not prove migration cause")
	var recovery := HistoryV6ArtifactTransfer.new()
	var recovered := _proposal(recovery, s, HistoryEventRule.Candidate.new("faction_0", "artifact_0", "site_0", "held"), 1)
	check(recovered.cause_ids == ["test_0"], "loss enables later recovery")
	s = _apply(s, recovered, log)
	check(s.artifacts["artifact_0"].status == "held", "artifact recovered")
	var reoccupation := _proposal(reoccupy, s, HistoryEventRule.Candidate.new("faction_0", "site_0", "population_0_0"), 2)
	check(reoccupation.cause_ids == ["test_0"], "abandonment provenance, not immediately previous recovery")
	s = _apply(s, reoccupation, log)
	check(s.sites["site_0"].condition == "damaged", "later occupation leaves damage")
	for variant in ["retain", "replace"]:
		s = HistoryInitialWorld.build(42); log = HistoricalEventLog.new()
		var e := _proposal(HistoryV6FactionSplit.new(), s, HistoryEventRule.Candidate.new("faction_0", "population_0_0", "", variant), 0)
		s = _apply(s, e, log)
		check(s.source_totals == HistoryInitialWorld.build(42).source_totals, "split conserves population")
		check(s.factions["faction_2"].parent_id == "faction_0", "political lineage")
		check(s.factions["faction_0"].active == (variant == "retain"), "parent survival is not forced")
		var relation := HistoryV6RelationshipChange.new()
		check(not relation.candidates(s).is_empty(), "split changes contact candidates")
		if variant == "retain":
			var candidate := HistoryEventRule.Candidate.new("faction_0", "faction_2", "site_0")
			var hostile: HistoryV6Event
			for n in range(100):
				hostile = relation.propose(s, candidate, HistoryEventSelector.stream(n, 0, "test"))
				if hostile.effects[0].value == -1: break
			hostile.id = "test_1"; hostile.year = s.year + 1
			s = _apply(s, hostile, log)
			check(s.sites["site_0"].owner_id == "faction_2", "split -> hostility -> site takeover")
			check(hostile.cause_ids.is_empty(), "contact does not invent motive")

func _extensions() -> void:
	var s := HistoryInitialWorld.build(42)
	var changed := SettlingMigration.new()
	check(changed.candidates(s).size() < HistoryV6Migration.new().candidates(s).size(), "experiment changed migration condition")
	var c := changed.candidates(s)[0]
	var e := _proposal(changed, s, c)
	var result := HistoryReducer.new().apply(s, e, HistoricalEventLog.new())
	check(result.ok() and result.state.sites[c.location].owner_id == c.actor, "experiment added occupation effect")
	var run := HistoryEngine.new().generate(42, 1, [changed])
	check(run.errors.is_empty() and run.log.size() == 1, "changed rule runs through unmodified engine")
	s = HistoryInitialWorld.build(42)
	for group in s.groups("faction_0"): s.populations[group].site_id = "site_2"
	s.artifacts["artifact_0"].site_id = "site_2"
	var extra := AbandonEmptySite.new()
	check(s.errors().is_empty() and extra.candidates(s).size() == 1, "extension eligibility")
	run = HistoryEngine.new().generate(42, 1, [extra], s)
	check(run.errors.is_empty() and run.final_state.sites["site_0"].owner_id.is_empty(), "new rule without core changes")
	check(HistoryReducer.new().replay(run.initial, run.log).state.canonical() == run.final_state.canonical(), "extension replays")
