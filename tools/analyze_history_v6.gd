extends SceneTree
## Reproducible corpus + compact review packet. --count=N --out=DIR
## Optional --sample-seeds=a,b,... replaces the first-run random sample draw.

const Op = HistoryV6Event.Operation
var write_failed := false

func _init() -> void:
	var count := 1000
	var out := "res://docs/reviews/history_v6"
	var sample_seeds: Array[int] = [1, 2, 42, 1001, 10492]
	var supplied := false
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count = int(arg.trim_prefix("--count="))
		elif arg.begins_with("--out="): out = arg.trim_prefix("--out=")
		elif arg.begins_with("--sample-seeds="):
			supplied = true
			for item in arg.trim_prefix("--sample-seeds=").split(","): sample_seeds.append(int(item))
	if count < 1:
		printerr("count must be positive"); quit(1); return
	if not supplied:
		var random := RandomNumberGenerator.new(); random.randomize()
		while sample_seeds.size() < 10:
			var seed := random.randi_range(100000, 2000000000)
			if seed not in sample_seeds: sample_seeds.append(seed)
	var stats := {"content_version": HistoryEventSelector.CONTENT_VERSION, "count": count, "seeds": [1, count], "event_limit": 36,
		"event_counts": {}, "event_types": {}, "active_faction_counts": {}, "formations": 0, "retirements": 0,
		"population_moves": 0, "migration_events": 0, "site_ownership_changes": 0, "artifact_changes": 0,
		"explicit_enabling_edges": 0, "adjacent_same_rule": 0, "max_same_rule_run": 0,
		"stop_reasons": {}, "failures": [], "generation_matches": 0, "serialized_replay_matches": 0,
		"initial_and_final_invariant_failures": 0, "final_ruined_sites": {}, "final_structures": 0,
		"effect_sequences": 0, "chains": {"migration_to_reoccupation": 0, "incident_to_reoccupation": 0,
			"loss_to_recovery": 0, "split_contact_to_hostile_takeover": 0, "migration_occupation_then_contact_relation": 0},
		"chain_examples": {}, "sample_seeds": sample_seeds, "random_sample_seeds": sample_seeds.slice(5)}
	var structures := {}
	var sequences := {}
	var engine := HistoryEngine.new()
	for seed in range(1, count + 1):
		var run := engine.generate(seed)
		if not run.errors.is_empty(): stats.failures.append({"seed": seed, "errors": run.errors})
		if not run.initial.errors().is_empty() or not run.final_state.errors().is_empty(): stats.initial_and_final_invariant_failures += 1
		if engine.generate(seed).canonical() == run.canonical(): stats.generation_matches += 1
		else: stats.failures.append({"seed": seed, "error": "generation mismatch"})
		var decoded := HistoricalEventLog.from_json(run.log.canonical())
		var replay := HistoryReducer.new().replay(run.initial, decoded)
		if replay.ok() and replay.state.canonical() == run.final_state.canonical(): stats.serialized_replay_matches += 1
		else: stats.failures.append({"seed": seed, "error": "replay mismatch"})
		_increment(stats.event_counts, str(run.log.size()))
		_increment(stats.active_faction_counts, str(run.final_state.active_ids().size()))
		_increment(stats.stop_reasons, run.stop_reason)
		_measure(run, stats)
		var normalized := run.final_state.data()
		normalized.erase("canon"); normalized.erase("fact_events"); normalized.erase("year")
		normalized.erase("source_totals")
		for p: Array in normalized.populations.values(): p[4] = 0
		for f: Array in normalized.factions.values(): f[4] = 0
		structures[JSON.stringify(normalized, "", true).sha256_text()] = true
		var sequence: Array = []
		for event in run.log.events():
			sequence.append([event.rule_id, event.effects.map(func(e: HistoryV6Event.Effect) -> int: return e.operation)])
		sequences[JSON.stringify(sequence).sha256_text()] = true
		var ruined := 0
		for site in run.final_state.sites.values():
			if site.condition == "ruined": ruined += 1
		_increment(stats.final_ruined_sites, str(ruined))
		if seed % 100 == 0: print("v6 corpus %d/%d; failures=%d" % [seed, count, stats.failures.size()])
	stats.final_structures = structures.size(); stats.effect_sequences = sequences.size()
	DirAccess.make_dir_recursive_absolute(ProjectSettings.globalize_path(out))
	var samples: Array = []
	var markdown := "# M045 Phase A readable histories\n\nFirst five seeds fixed; remaining seeds randomly drawn once and recorded for reproduction.\n"
	for seed in sample_seeds:
		var run := engine.generate(seed)
		if not run.errors.is_empty(): stats.failures.append({"sample_seed": seed, "errors": run.errors})
		samples.append(run.data())
		markdown += _readable(run)
	_write(out.path_join("statistics_%d.json" % count), JSON.stringify(stats, "\t", true) + "\n")
	_write(out.path_join("samples.json"), JSON.stringify(samples, "\t", true) + "\n")
	_write(out.path_join("samples.md"), markdown.strip_edges() + "\n")
	print(JSON.stringify(stats, "", true))
	quit(0 if not write_failed and stats.failures.is_empty() and stats.initial_and_final_invariant_failures == 0 else 1)

func _increment(index: Dictionary, key: String) -> void:
	index[key] = int(index.get(key, 0)) + 1

func _chain(stats: Dictionary, name: String, seed: int, ids: Array) -> void:
	stats.chains[name] += 1
	if not stats.chain_examples.has(name): stats.chain_examples[name] = {"seed": seed, "events": ids}

func _measure(run: HistoryEngine.Result, stats: Dictionary) -> void:
	var by_id := {}
	var faction_birth := {}
	var occupied_after_migration := {}
	var previous := ""
	var consecutive := 0
	for e in run.log.events():
		_increment(stats.event_types, e.rule_id)
		consecutive = consecutive + 1 if previous == e.rule_id else 1
		if consecutive > 1: stats.adjacent_same_rule += 1
		stats.max_same_rule_run = maxi(stats.max_same_rule_run, consecutive)
		previous = e.rule_id
		stats.explicit_enabling_edges += e.cause_ids.size()
		if e.rule_id == "migration": stats.migration_events += 1
		for effect in e.effects:
			match effect.operation:
				Op.CREATE_FACTION:
					stats.formations += 1; faction_birth[effect.subject] = e.id
				Op.RETIRE_FACTION: stats.retirements += 1
				Op.MOVE_POPULATION: stats.population_moves += 1
				Op.SITE_OWNER: stats.site_ownership_changes += 1
				Op.MOVE_ARTIFACT: stats.artifact_changes += 1
			if effect.operation == Op.SITE_OWNER and e.rule_id == "relationship_change":
				for faction in e.participants + e.targets:
					if faction_birth.has(faction):
						_chain(stats, "split_contact_to_hostile_takeover", run.seed, [faction_birth[faction], e.id])
						break
		for cause in e.cause_ids:
			var prior: HistoryV6Event = by_id[cause]
			if e.rule_id == "site_reoccupation" and prior.rule_id == "migration":
				_chain(stats, "migration_to_reoccupation", run.seed, [cause, e.id])
				occupied_after_migration[e.targets[0]] = [cause, e.id]
			if e.rule_id == "site_reoccupation" and prior.rule_id == "site_incident": _chain(stats, "incident_to_reoccupation", run.seed, [cause, e.id])
			if e.rule_id == "artifact_transfer_loss":
				for effect in e.effects:
					if effect.operation != Op.MOVE_ARTIFACT or effect.detail != "held": continue
					for old in prior.effects:
						if old.operation == Op.MOVE_ARTIFACT and old.subject == effect.subject and old.detail == "lost": _chain(stats, "loss_to_recovery", run.seed, [cause, e.id])
		if e.rule_id == "relationship_change":
			for site_id in e.targets:
				if occupied_after_migration.has(site_id): _chain(stats, "migration_occupation_then_contact_relation", run.seed, occupied_after_migration[site_id] + [e.id])
		by_id[e.id] = e

func _readable(run: HistoryEngine.Result) -> String:
	var text := "\n## Seed %d\n\n### Initial state\n\n%s\n### Chronology\n\n" % [run.seed, _state_text(run.initial)]
	var state := run.initial.copy()
	var prefix := HistoricalEventLog.new()
	for e in run.log.events():
		text += "- Year %d · %s · **%s** · actors %s; targets %s\n" % [e.year, e.id, e.rule_id, ", ".join(e.participants), ", ".join(e.targets)]
		text += "  Explicit enabling causes: %s; evidence: %s.\n" % [", ".join(e.cause_ids) if not e.cause_ids.is_empty() else "none (no motive inferred)", ", ".join(e.evidence_keys)]
		var transition := HistoryReducer.new().apply(state, e, prefix)
		if not transition.ok(): return text + "INVALID: " + str(transition.errors)
		var after := transition.state
		for effect in e.effects:
			text += "  %s\n" % _effect_text(effect, state, after)
		state = after; prefix.append_committed(e)
	text += "\n### Final state\n\n%s\nStop: %s.\n" % [_state_text(run.final_state), run.stop_reason]
	return text

func _state_text(s: HistoryWorldState) -> String:
	var text := "Year %d. Active factions: %s.\n\n" % [s.year, ", ".join(s.active_ids())]
	for id: String in HistoryWorldState.sorted_ids(s.factions):
		var f := s.factions[id]
		text += "- %s: %s; political parent %s; institutional capacity %d.\n" % [id, "active" if f.active else "retired", f.parent_id if not f.parent_id.is_empty() else "initial local community", f.split_capacity]
	for id: String in HistoryWorldState.sorted_ids(s.populations):
		var p := s.populations[id]
		text += "- %s: %d people; source %s (%s); member %s; at %s.\n" % [id, p.size, p.source_id, s.source_origins[p.source_id], p.faction_id, p.site_id]
	for id: String in HistoryWorldState.sorted_ids(s.sites):
		var site := s.sites[id]
		text += "- %s: owner %s; %s; access %s; technology observation %s, understanding %s, operating ability %s.\n" % [id, site.owner_id if not site.owner_id.is_empty() else "none", site.condition, str(site.accessible), site.technology_observed, str(site.technology_understood), str(site.technology_operable)]
	for id: String in HistoryWorldState.sorted_ids(s.artifacts):
		var a := s.artifacts[id]
		text += "- %s: %s; owner %s; location %s; origin %s.\n" % [id, a.status, a.owner_id if not a.owner_id.is_empty() else "none", a.site_id, a.origin]
	text += "- Relationships (-1 hostile / 0 neutral / 1 cooperative): %s.\n" % JSON.stringify(s.relationships, "", true)
	return text

func _effect_text(e: HistoryV6Event.Effect, before: HistoryWorldState, after: HistoryWorldState) -> String:
	match e.operation:
		Op.CREATE_FACTION: return "Create %s from political parent %s." % [e.subject, e.target]
		Op.RETIRE_FACTION: return "Retire %s after distributing all population." % e.subject
		Op.SPEND_SPLIT_CAPACITY: return "Spend one institutional split capacity of %s." % e.subject
		Op.MOVE_POPULATION:
			var p := before.populations[e.subject]
			return "Move %s (%d people, source %s unchanged): %s/%s -> %s/%s." % [p.id, p.size, p.source_id, p.faction_id, p.site_id, e.target, e.location]
		Op.SITE_OWNER: return "Set site %s owner to %s (owner before this event: %s)." % [e.subject, e.target if not e.target.is_empty() else "none", before.sites[e.subject].owner_id if not before.sites[e.subject].owner_id.is_empty() else "none"]
		Op.SITE_CONDITION: return "Site %s: %s -> %s; accessible %s." % [e.subject, before.sites[e.subject].condition, e.detail, str(after.sites[e.subject].accessible)]
		Op.RELATIONSHIP: return "Relationship %s/%s: %d -> %d." % [e.subject, e.target, before.relationships.get(HistoryWorldState.pair(e.subject, e.target), 0), e.value]
		Op.MOVE_ARTIFACT:
			var a := before.artifacts[e.subject]
			return "Artifact %s: %s/%s/%s -> %s/%s/%s (Origin stays unknown)." % [a.id, a.status, a.owner_id, a.site_id, e.detail, e.target, e.location]
	return "Unknown effect"

func _write(path: String, text: String) -> void:
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null:
		printerr("Cannot write " + path); write_failed = true; return
	file.store_string(text)
