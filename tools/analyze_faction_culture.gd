extends SceneTree

const Fixtures = preload("res://tests/fixtures/culture_fixtures.gd")
var catalog := FactionCultureCatalog.new()
var resolver := FactionCultureResolver.new(catalog)
var generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3)
var selected_samples: Array[Dictionary] = []
var sample_seeds := {}
var sample_categories := {}
var combinations := {}
var full_combinations := {}
var stats := {"history_count": 0, "faction_count": 0, "society_traits": {}, "doctrines": {},
	"doctrine_categories": {}, "society_trait_counts": {"2": 0, "3": 0, "4": 0},
	"doctrine_counts": {"0": 0, "1": 0, "2": 0}, "intensities": {"moderate": 0, "hardline": 0, "fanatic": 0},
	"semantic_tags": {"value_tags": {}, "taboo_tags": {}, "desire_tags": {}, "fear_tags": {}},
	"safety": {"history_errors": 0, "conflict_violations": 0, "unsupported_selections": 0, "invalid_provenance": 0,
		"architecture_version_violations": 0, "intensity_errors": 0, "other_culture_errors": 0,
		"history_replay_mismatches": 0, "culture_replay_mismatches": 0, "objective_mutations": 0, "fabricated_goal_facts": 0},
	"errors": []}

func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.size() != 2 or not args[0].is_valid_int() or int(args[0]) < 1000:
		printerr("Usage: analyze_faction_culture.gd -- COUNT>=1000 OUTPUT_DIRECTORY")
		quit(2)
		return
	for definition: Dictionary in catalog.traits():
		stats.society_traits[definition.id] = {"eligible": 0, "selected": 0}
	for definition: Dictionary in catalog.doctrines():
		stats.doctrines[definition.id] = {"category": definition.category, "eligible": 0, "selected": 0}
		stats.doctrine_categories[definition.category] = {"eligible": 0, "selected": 0}
	for seed in range(1, int(args[0]) + 1):
		_add(generator.generate(seed), generator.generate(seed))
		if seed % 100 == 0:
			print("Culture corpus: %d/%s histories; %d factions" % [seed, args[0], stats.faction_count])
	_add_supplemental_samples(int(args[0]))
	_finalize()
	var directory: String = args[1]
	if DirAccess.make_dir_recursive_absolute(directory) != OK:
		printerr("Cannot create output directory")
		quit(2)
		return
	var readable := "# M041 readable faction culture samples\n\nShipping histories, derived culture and prospective hooks are separate. Regional scars are explicitly regional, not personal loss or contact.\n\n"
	var snapshots: Array = []
	for sample in selected_samples:
		var result := generator.generate(sample.seed)
		var profile := resolver.resolve(result, sample.faction_id)
		readable += _readable(result, profile, sample.category)
		snapshots.append({"category": sample.category, "history": result.to_dict(), "culture_profile": profile,
			"goal_candidates": CultureGoalQuery.new().candidates(profile)})
	var synthetic := _synthetic_example()
	readable += "## Synthetic dormant/extreme example — not shipping Canon\n\n"
	readable += _profile_text(synthetic.profile)
	readable += "\nActor expresses augmented + technical_competence + craftsmanship:\n\n```json\n" + JSON.stringify(synthetic.interaction, "\t") + "\n```\n\n"
	snapshots.append(synthetic)
	var ok := _write(directory.path_join("statistics.json"), JSON.stringify(stats, "\t") + "\n")
	ok = _write(directory.path_join("samples.md"), readable) and ok
	ok = _write(directory.path_join("samples.json"), JSON.stringify(snapshots, "\t") + "\n") and ok
	print("Culture corpus complete: %d histories, %d factions, %d samples, %d errors" % [stats.history_count, stats.faction_count, selected_samples.size(), stats.errors.size()])
	quit(0 if ok and stats.errors.is_empty() and selected_samples.size() >= 15 else 1)

func _add(result: HistoryResult, replay: HistoryResult) -> void:
	stats.history_count += 1
	var before := result.canonical_output()
	stats.safety.history_errors += result.validation_report.errors.size()
	stats.safety.history_replay_mismatches += int(before != replay.canonical_output())
	stats.safety.architecture_version_violations += int(result.generation_version != 3 or result.architecture_version != 2)
	for faction in result.present.active_factions:
		stats.faction_count += 1
		var profile := resolver.resolve(result, faction.id)
		stats.safety.culture_replay_mismatches += int(profile != resolver.resolve(replay, faction.id))
		var issues := resolver.errors(result, faction.id, profile)
		for issue in issues:
			stats.errors.append("%d/%s: %s" % [result.seed, faction.id, issue])
			var field := "other_culture_errors"
			if issue.begins_with("unsupported:"):
				field = "unsupported_selections"
			elif issue.begins_with("provenance:"):
				field = "invalid_provenance"
			elif issue.begins_with("conflict:"):
				field = "conflict_violations"
			elif issue.begins_with("intensity:"):
				field = "intensity_errors"
			stats.safety[field] += 1
		for id in profile.eligible_traits:
			stats.society_traits[id].eligible += 1
		for id in profile.eligible_doctrines:
			stats.doctrines[id].eligible += 1
			stats.doctrine_categories[stats.doctrines[id].category].eligible += 1
		var trait_ids: Array = []
		var doctrine_ids: Array = []
		for row: Dictionary in profile.society_traits:
			stats.society_traits[row.id].selected += 1
			trait_ids.append(row.id)
		for row: Dictionary in profile.doctrines:
			stats.doctrines[row.id].selected += 1
			stats.doctrine_categories[row.category].selected += 1
			stats.intensities[row.intensity.level] += 1
			doctrine_ids.append(row.id + ":" + row.intensity.level)
		_increment(stats.society_trait_counts, str(profile.society_traits.size()))
		_increment(stats.doctrine_counts, str(profile.doctrines.size()))
		for field in stats.semantic_tags:
			for tag in profile[field]:
				_increment(stats.semantic_tags[field], tag)
		var signature := JSON.stringify([trait_ids, doctrine_ids])
		_increment(combinations, signature)
		var identity: Dictionary = profile.identity_profile.duplicate(true)
		identity.erase("source_event_ids")
		identity.erase("source_facts")
		_increment(full_combinations, JSON.stringify([trait_ids, doctrine_ids, identity]))
		for candidate in CultureGoalQuery.new().candidates(profile):
			stats.safety.fabricated_goal_facts += int(candidate.has("target_id") or candidate.has("effects") or candidate.status != "candidate")
		_consider_sample(result.seed, profile)
	stats.safety.objective_mutations += int(result.canonical_output() != before)

func _finalize() -> void:
	stats["content_revision"] = catalog.revision
	stats["seed_range"] = [1, stats.history_count]
	stats["combination_uniqueness"] = {"unique_trait_doctrine_intensity_combinations": combinations.size(),
		"repeated_combination_occurrences": stats.faction_count - combinations.size(),
		"repeated_combination_rate": float(stats.faction_count - combinations.size()) / stats.faction_count,
		"unique_including_identity_axes": full_combinations.size(),
		"repeated_profile_rate_including_identity": float(stats.faction_count - full_combinations.size()) / stats.faction_count,
		"definition": "First occurrence per combination is unique; later occurrences are repeats. Names, IDs and provenance excluded."}
	stats["fanatic_percentage"] = 100.0 * stats.intensities.fanatic / maxi(1, stats.intensities.moderate + stats.intensities.hardline + stats.intensities.fanatic)
	stats["dormant_doctrines"] = []
	stats["eligible_but_unselected_doctrines"] = []
	stats["dormant_traits"] = []
	for id in stats.doctrines:
		if stats.doctrines[id].eligible == 0:
			stats.dormant_doctrines.append(id)
		elif stats.doctrines[id].selected == 0:
			stats.eligible_but_unselected_doctrines.append(id)
	for id in stats.society_traits:
		if stats.society_traits[id].eligible == 0:
			stats.dormant_traits.append(id)
	stats["readable_representatives"] = selected_samples.duplicate(true)
	for key in stats.safety:
		if stats.safety[key] > 0:
			stats.errors.append("Safety violation: %s=%d" % [key, stats.safety[key]])

func _add_supplemental_samples(count: int) -> void:
	var mundane := 0
	var shelter := false
	for seed in range(1, count + 1):
		if sample_seeds.has(seed):
			continue
		var result := generator.generate(seed)
		for faction in result.present.active_factions:
			var profile := resolver.resolve(result, faction.id)
			var category := ""
			if mundane < 2 and profile.doctrines.is_empty():
				mundane += 1
				category = "mundane_zero_extra_%d" % mundane
			elif not shelter and profile.doctrine_intensities.has("debt_of_shelter"):
				shelter = true
				category = "ethics_debt_of_shelter"
			if not category.is_empty():
				sample_seeds[seed] = true
				selected_samples.append({"seed": seed, "faction_id": faction.id, "category": category})
				break
		if mundane == 2 and shelter:
			return
	assert(false, "Supplemental mundane/shelter representatives absent")

func _consider_sample(seed: int, profile: Dictionary) -> void:
	if sample_seeds.has(seed):
		return
	var categories: Array[String] = []
	var count: int = profile.doctrines.size()
	if count == 0:
		categories.append("mundane_zero_doctrines")
	elif count == 1:
		categories.append("one_doctrine")
	else:
		categories.append("two_doctrines")
	for row: Dictionary in profile.doctrines:
		if row.category == "art":
			categories.append("art_" + row.id)
		if row.category == "philosophy":
			categories.append("philosophy_" + row.id)
		if row.id in ["closed_sky", "skyward_hunger", "depth_taboo", "unspoiled_ground", "new_ecology", "machine_revelation"]:
			categories.append("historical_scar_" + row.id)
		if row.intensity.level == "fanatic":
			categories.push_front("shipping_fanatic")
		if row.id == "truth_through_trial" and profile.identity_profile.interpretation_mode == "ritual":
			categories.push_front("unusual_ritual_trial")
		if row.id == "skyward_hunger" and profile.identity_profile.interpretation_mode == "skeptical":
			categories.push_front("unusual_skeptical_sky")
		if row.id == "machine_revelation" and profile.identity_profile.interpretation_mode == "technical":
			categories.push_front("unusual_technical_revelation")
	for category in categories:
		if not sample_categories.has(category):
			sample_categories[category] = true
			sample_seeds[seed] = true
			selected_samples.append({"seed": seed, "faction_id": profile.faction_id, "category": category})
			return

func _readable(result: HistoryResult, profile: Dictionary, category: String) -> String:
	var faction := result.entity(profile.faction_id)
	var text := "## %s — seed %d / %s (%s)\n\n" % [category, result.seed, faction.id, faction.name]
	text += "Life: %s. Formation: %s. Political parents: %s. Regional roles: %s.\n\n" % [faction.way_of_life, faction.formation_origin, str(faction.parent_ids), str(faction.regional_roles)]
	text += _profile_text(profile)
	text += "\n### Recorded history behind the profile\n\n"
	var events := {}
	for records: Array in profile.evidence.values():
		for record: Dictionary in records:
			for id in record.source_event_ids:
				events[id] = true
	for event in result.objective_timeline:
		if events.has(event.id):
			text += "- Year %d / %s: %s [%s].\n" % [event.year, event.id, CanonPolicy.narrative(event), event.scope]
	text += "\nFuture goal candidates: "
	var goals: Array[String] = []
	for goal in CultureGoalQuery.new().candidates(profile):
		goals.append(goal.id + " <- " + goal.source_doctrine_id)
	text += (", ".join(goals) if not goals.is_empty() else "none") + ". No actions or target facts are created.\n\n"
	return text

func _profile_text(profile: Dictionary) -> String:
	var text := "Identity: " + JSON.stringify(profile.identity_profile) + "\n\n"
	for field: String in ["society_traits", "doctrines"]:
		for row: Dictionary in profile[field]:
			text += "- **%s**" % row.display_name
			if field == "doctrines":
				text += " [%s] — %s; intensity support %s" % [row.intensity.level, row.intensity.explanation, str(row.intensity.support_tags)]
			text += ". " + row.provenance.explanation + "\n"
			text += "  - Required evidence: %s. Preferences: %s. Selected weight %d, target %d.\n" % [str(row.provenance.matched_required), str(row.provenance.matched_preferences), row.provenance.selection.weight, row.provenance.selection.target]
			for tag in row.provenance.support:
				for record: Dictionary in row.provenance.support[tag]:
					text += "  - %s <- %s / %s (%s): %s.\n" % [tag, str(record.source_event_ids), record.source_path, record.scope, record.detail]
	text += "\nValues: %s. Taboos: %s. Desires: %s. Fears: %s.\n" % [str(profile.value_tags), str(profile.taboo_tags), str(profile.desire_tags), str(profile.fear_tags)]
	return text

func _synthetic_example() -> Dictionary:
	for seed in range(1, 1001):
		var profile := resolver.resolve_fixture(seed, "synthetic_only", Fixtures.strong_machine_scar())
		if profile.doctrine_intensities.get("pure_flesh") == "fanatic" and profile.society_traits.any(func(row: Dictionary) -> bool: return row.id == "maintenance_covenant"):
			return {"category": "synthetic_only_dormant_fanatic", "seed": seed, "profile": profile,
				"interaction": SocietyActorInteraction.new().resolve(profile, {"expresses": ["augmented", "technical_competence", "craftsmanship"]})}
	assert(false, "Synthetic fanatic fixture not found")
	return {}

func _increment(values: Dictionary, key: String) -> void:
	values[key] = int(values.get(key, 0)) + 1

func _write(path: String, contents: String) -> bool:
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null:
		printerr("Cannot write: " + path)
		return false
	file.store_string(contents.strip_edges(false, true) + "\n")
	return file.get_error() == OK
