extends SceneTree

var generator := HistoryGenerator.new()
var resolver := FactionCultureResolver.new()
var catalog := SocialIncidentCatalog.new()
var cultures := FactionCultureCatalog.new()
var samples: Array[Dictionary] = []
var sample_seeds := {}
var covered := {}
var combinations := {}
var identity_combinations := {}
var near_combinations := {}
var stats := {"history_count": 0, "faction_count": 0, "incident_counts": {"0": 0, "1": 0, "2": 0, "3+": 0},
	"objective_social_event_counts": {}, "families": {}, "subtypes": {}, "society_traits": {}, "doctrines": {}, "categories": {},
	"intensities": {"moderate": 0, "hardline": 0, "fanatic": 0}, "faction_intensity_profiles": {}, "society_trait_counts": {},
	"doctrine_counts": {}, "worlds_with_hardline": 0, "worlds_with_fanatic": 0,
	"topology_families": {}, "faction_counts": {}, "pressure_domains": {},
	"safety": {"objective_validation_errors": 0, "prerequisite_failures": 0, "chronology_errors": 0,
		"unsupported_or_fabricated_evidence": 0, "deterministic_replay_mismatches": 0, "culture_replay_mismatches": 0,
		"exact_conflicts": 0, "unsupported_selections": 0, "invalid_intensity": 0, "invalid_provenance": 0,
		"other_culture_errors": 0, "objective_mutations": 0, "candidate_boundary_errors": 0}, "errors": []}

func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.size() == 2 and args[0] == "--synthetic-only":
		_write_synthetic(args[1])
		quit()
		return
	if args.size() != 2 or int(args[0]) < 1000:
		printerr("Usage: analyze_social_incidents.gd -- COUNT>=1000 OUTPUT_DIRECTORY")
		quit(2)
		return
	for family in catalog.families():
		stats.families[family.id] = {"worlds": 0, "gate": family.gate}
	for definition in catalog.definitions():
		stats.subtypes[definition.id] = {"worlds": 0, "family": definition.family, "role": definition.role, "gate": definition.gate}
	for definition in cultures.traits():
		stats.society_traits[definition.id] = {"eligible": 0, "selected": 0, "eligible_worlds": 0, "selected_worlds": 0}
	for definition in cultures.doctrines():
		stats.doctrines[definition.id] = {"eligible": 0, "selected": 0, "eligible_worlds": 0, "selected_worlds": 0, "category": definition.category}
	for seed in range(1, int(args[0]) + 1):
		_add(generator.generate(seed), generator.generate(seed))
		if seed % 100 == 0:
			print("M042 corpus: %d/%s" % [seed, args[0]])
	_finalize()
	var output: String = args[1]
	DirAccess.make_dir_recursive_absolute(output.path_join("samples"))
	var index := "# M042 raw history/culture samples\n\nEach linked file contains the complete objective timeline, projected facts and Claims, plus all faction culture profiles and candidate provenance. Synthetic content is separate from shipping counts.\n\n"
	var snapshots: Array = []
	for sample in samples:
		var result := generator.generate(sample.seed)
		var profiles: Array = []
		var text := "# Seed %d — %s\n\n" % [sample.seed, ", ".join(sample.categories)]
		text += "```text\n" + HistoryDebugFormatter.new().format(result) + "\n```\n\n"
		for faction in result.present.active_factions:
			var profile := resolver.resolve(result, faction.id)
			profiles.append(profile)
			text += "## %s (%s)\n\n" % [faction.name, faction.id]
			text += "```json\n" + JSON.stringify(profile, "\t") + "\n```\n\n"
			text += "Candidates: `" + JSON.stringify(CultureGoalQuery.new().candidates(profile)) + "`\n\n"
		var name := "seed_%d.md" % sample.seed
		_write(output.path_join("samples").path_join(name), text)
		index += "- [Seed %d](samples/%s): %s; focus %s.\n" % [sample.seed, name, ", ".join(sample.categories), sample.faction_id]
		snapshots.append({"seed": sample.seed, "categories": sample.categories, "faction_id": sample.faction_id, "history": result.to_dict(), "cultures": profiles})
	_write(output.path_join("statistics.json"), JSON.stringify(stats, "\t") + "\n")
	_write(output.path_join("samples.json"), JSON.stringify(snapshots, "\t") + "\n")
	_write(output.path_join("samples.md"), index)
	_write_synthetic(output)
	print("M042 complete: %d histories, %d factions, %d raw samples; safety %s" % [stats.history_count, stats.faction_count, samples.size(), stats.safety])
	quit(0 if stats.errors.is_empty() and samples.size() >= 20 else 1)

func _add(result: HistoryResult, replay: HistoryResult) -> void:
	stats.history_count += 1
	var before := result.canonical_output()
	stats.safety.objective_validation_errors += result.validation_report.errors.size()
	stats.safety.deterministic_replay_mismatches += int(before != replay.canonical_output())
	for issue in SocialIncidentValidator.new().errors(result):
		if issue.begins_with("prerequisite:"):
			stats.safety.prerequisite_failures += 1
		elif issue.begins_with("chronology:"):
			stats.safety.chronology_errors += 1
		else:
			stats.safety.unsupported_or_fabricated_evidence += 1
	_inc(stats.topology_families, result.configuration.topology_family)
	_inc(stats.faction_counts, str(result.present.active_factions.size()))
	_inc(stats.pressure_domains, result.configuration.pressure_domain)
	var families := {}
	var subtypes := {}
	var social_count := 0
	var categories: Array = []
	var focus := ""
	for event in result.objective_timeline:
		if event.type_name() != "SOCIAL_INCIDENT":
			continue
		social_count += 1
		var definition := catalog.definition(event.narrative_key)
		if not subtypes.has(definition.id):
			stats.subtypes[definition.id].worlds += 1
			subtypes[definition.id] = true
		if definition.role == "primary":
			families[definition.family] = true
			categories.append("incident_" + definition.id)
			if focus.is_empty():
				focus = event.actor_ids[0]
		elif definition.role == "followup":
			categories.append("clone_followup_" + definition.id)
	for family in families:
		stats.families[family].worlds += 1
	var bucket: String = "3+" if families.size() >= 3 else str(families.size())
	stats.incident_counts[bucket] += 1
	_inc(stats.objective_social_event_counts, str(social_count))
	categories.append("incident_count_" + bucket)
	if families.has("cloning") and subtypes.size() >= 4:
		categories.append("clone_dependency_chain")
	var eligible_traits := {}
	var selected_traits := {}
	var eligible_doctrines := {}
	var selected_doctrines := {}
	var category_worlds := {}
	var hardline := false
	var fanatic := false
	var deep_outcomes := {}
	for faction in result.present.active_factions:
		stats.faction_count += 1
		var profile := resolver.resolve(result, faction.id)
		stats.safety.culture_replay_mismatches += int(profile != resolver.resolve(replay, faction.id))
		for issue: String in resolver.errors(result, faction.id, profile):
			var field := "other_culture_errors"
			if issue.begins_with("unsupported:"):
				field = "unsupported_selections"
			elif issue.begins_with("provenance:"):
				field = "invalid_provenance"
			elif issue.begins_with("conflict:"):
				field = "exact_conflicts"
			elif issue.begins_with("intensity:"):
				field = "invalid_intensity"
			stats.safety[field] += 1
			stats.errors.append("%d/%s: %s" % [result.seed, faction.id, issue])
		for tag: String in profile.evidence:
			for record in profile.evidence[tag]:
				if record.source_event_ids.is_empty() or record.source_event_ids.any(func(id: String) -> bool: return not result.objective_timeline.any(func(event: HistoricalEvent) -> bool: return event.id == id)):
					stats.safety.unsupported_or_fabricated_evidence += 1
		for id in profile.eligible_traits:
			stats.society_traits[id].eligible += 1
			eligible_traits[id] = true
		for id in profile.eligible_doctrines:
			stats.doctrines[id].eligible += 1
			eligible_doctrines[id] = true
		var trait_ids: Array = []
		var doctrine_ids: Array = []
		var base_doctrine_ids: Array = []
		var intensity_profile := {"moderate": 0, "hardline": 0, "fanatic": 0}
		for row in profile.society_traits:
			stats.society_traits[row.id].selected += 1
			selected_traits[row.id] = true
			trait_ids.append(row.id)
		for row in profile.doctrines:
			stats.doctrines[row.id].selected += 1
			selected_doctrines[row.id] = true
			category_worlds[row.category] = true
			stats.intensities[row.intensity.level] += 1
			intensity_profile[row.intensity.level] += 1
			doctrine_ids.append(row.id + ":" + row.intensity.level)
			base_doctrine_ids.append(row.id)
			hardline = hardline or row.intensity.level == "hardline"
			fanatic = fanatic or row.intensity.level == "fanatic"
			categories.append("intensity_" + row.intensity.level)
			if row.id in ["pure_flesh", "machine_kinship", "silent_circuit", "bounded_automation", "mutable_human", "ancestral_genome", "designed_kinship", "reclamation", "return_to_deep"]:
				categories.append("doctrine_" + row.id)
			if row.id in ["depth_taboo", "return_to_deep"] and profile.evidence.has("history:deep_exile"):
				deep_outcomes[row.id] = true
			if row.id == "truth_through_trial" and profile.identity_profile.interpretation_mode == "ritual":
				categories.append("unusual_ritual_trial")
				focus = faction.id
		_inc(stats.society_trait_counts, str(profile.society_traits.size()))
		_inc(stats.doctrine_counts, str(profile.doctrines.size()))
		_inc(stats.faction_intensity_profiles, JSON.stringify(intensity_profile))
		_inc(combinations, JSON.stringify([trait_ids, doctrine_ids]))
		_inc(near_combinations, JSON.stringify([trait_ids, base_doctrine_ids]))
		var identity: Dictionary = profile.identity_profile.duplicate(true)
		identity.erase("source_event_ids")
		identity.erase("source_facts")
		_inc(identity_combinations, JSON.stringify([trait_ids, doctrine_ids, identity]))
		for goal in CultureGoalQuery.new().candidates(profile):
			stats.safety.candidate_boundary_errors += int(goal.status != "candidate" or goal.has("effects") or goal.has("target_id"))
	if deep_outcomes.size() == 2:
		categories.append("same_deep_history_opposite_doctrines")
	stats.worlds_with_hardline += int(hardline)
	stats.worlds_with_fanatic += int(fanatic)
	for pair: Array in [[eligible_traits, stats.society_traits, "eligible_worlds"], [selected_traits, stats.society_traits, "selected_worlds"], [eligible_doctrines, stats.doctrines, "eligible_worlds"], [selected_doctrines, stats.doctrines, "selected_worlds"]]:
		for id in pair[0]:
			pair[1][id][pair[2]] += 1
	for category in category_worlds:
		_inc(stats.categories, category)
	stats.safety.objective_mutations += int(before != result.canonical_output())
	var new_categories: Array = categories.filter(func(key: String) -> bool: return not covered.has(key))
	if not new_categories.is_empty() or samples.size() < 24:
		for key in categories:
			covered[key] = true
		if focus.is_empty():
			focus = result.present.active_factions[0].id
		samples.append({"seed": result.seed, "categories": new_categories if not new_categories.is_empty() else ["additional_distinct_history"], "faction_id": focus})
		sample_seeds[result.seed] = true

func _finalize() -> void:
	stats["history_revision"] = HistoryMotifs.CONTENT_REVISION_V3
	stats["social_revision"] = catalog.revision
	stats["culture_revision"] = cultures.revision
	stats["seed_range"] = [1, stats.history_count]
	stats["count_definition"] = "A memorable incident is one selected family episode. Preparation/reinforcement/dependent consequences are separate objective events, also counted explicitly. No event is hidden from subtype exposure."
	stats["fanatic_world_percentage"] = 100.0 * stats.worlds_with_fanatic / stats.history_count
	stats["hardline_world_percentage"] = 100.0 * stats.worlds_with_hardline / stats.history_count
	for family in stats.families:
		stats.families[family]["world_percentage"] = 100.0 * stats.families[family].worlds / stats.history_count
	stats["dead_content"] = []
	for id in stats.subtypes:
		var row: Dictionary = stats.subtypes[id]
		row["world_percentage"] = 100.0 * row.worlds / stats.history_count
		row["conditional_family_percentage"] = 100.0 * row.worlds / maxi(1, stats.families[row.family].worlds)
		if row.world_percentage < 1.0:
			stats.dead_content.append({"kind": "incident", "id": id, "world_percentage": row.world_percentage, "conditional_family_percentage": row.conditional_family_percentage, "reason": "authored content gate" if not catalog.gate_open(row.gate) else "requires tuning/review"})
	stats["dormant_doctrines"] = []
	for id in stats.doctrines:
		var row: Dictionary = stats.doctrines[id]
		row["selected_world_percentage"] = 100.0 * row.selected_worlds / stats.history_count
		if row.eligible == 0:
			stats.dormant_doctrines.append(id)
		if row.selected_world_percentage < 1.0:
			stats.dead_content.append({"kind": "doctrine", "id": id, "world_percentage": row.selected_world_percentage, "reason": "authored content gate" if row.eligible == 0 else "eligible but selection rare; review target/category"})
	stats["duplicate_profiles"] = {"exact_unique": combinations.size(), "exact_repeat_occurrences": stats.faction_count - combinations.size(),
		"near_unique_ignoring_intensity": near_combinations.size(), "near_repeat_occurrences": stats.faction_count - near_combinations.size(),
		"identity_inclusive_unique": identity_combinations.size(), "identity_inclusive_repeat_occurrences": stats.faction_count - identity_combinations.size(),
		"definition": "Exact: trait IDs + doctrine IDs/intensities. Near: same IDs, ignoring intensity only. Identity-inclusive: five identity axes added; names/IDs/provenance excluded."}
	stats["raw_representatives"] = samples
	stats["sample_coverage"] = covered.keys()
	for key in stats.safety:
		if stats.safety[key] > 0:
			stats.errors.append("Safety counter %s=%d" % [key, stats.safety[key]])

func _write_synthetic(output: String) -> void:
	var contacts: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_incident_contacts.json"))
	var fixture_catalog := SocialIncidentCatalog.new({}, contacts)
	var fixture_generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, null, fixture_catalog)
	var fixture_samples: Array = []
	var desired := {}
	for seed in range(1, 201):
		var result := fixture_generator.generate(seed)
		for faction in result.present.active_factions:
			var profile := resolver.resolve(result, faction.id)
			for id in ["ecological_communion", "last_human_measure", "many_bodies_one_people", "thinking_threshold", "kin_beyond_thought"]:
				if id in profile.eligible_doctrines and not desired.has(id):
					desired[id] = true
					fixture_samples.append({"synthetic_only": true, "activation_path": id, "seed": seed, "history": result.to_dict(), "culture": profile})
		if desired.size() == 5:
			break
	_write(output.path_join("synthetic_samples.json"), JSON.stringify(fixture_samples, "\t") + "\n")
	var text := "# Explicit synthetic authored-contact examples — not shipping Canon\n\nExcluded from all shipping statistics. The shipping validator rejects this content identity.\n\n"
	for row in fixture_samples:
		text += "## %s, seed %d, faction %s\n\n" % [row.activation_path, row.seed, row.culture.faction_id]
		text += "```text\n" + HistoryDebugFormatter.new().format(fixture_generator.generate(row.seed)) + "\n```\n\n"
		text += "```json\n%s\n```\n\n" % JSON.stringify(row.culture, "\t")
	_write(output.path_join("synthetic_samples.md"), text)

func _inc(values: Dictionary, key: String) -> void:
	values[key] = int(values.get(key, 0)) + 1

func _write(path: String, value: String) -> void:
	var file := FileAccess.open(path, FileAccess.WRITE)
	assert(file != null, "Cannot write analysis artifact")
	file.store_string(value.strip_edges(false, true) + "\n")
