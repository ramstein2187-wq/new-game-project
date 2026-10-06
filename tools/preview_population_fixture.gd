extends SceneTree

# Explicit software diagnostic only. This never changes shipping content or Canon.
func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.size() != 1:
		printerr("Usage: preview_population_fixture.gd -- OUTPUT_DIRECTORY (synthetic tests only)")
		quit(2)
		return
	var catalog := SocialPopulationCatalog.new(JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/social_population_templates.json")))
	var generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3, catalog)
	var text := "# Synthetic population fixture histories — software tests only, not shipping Canon\n\n"
	var snapshots: Array = []
	var modes := {"mixed_origin_society_count": 0, "multi_origin_lineage_count": 0, "joins": 0, "subsets": 0, "nonhuman_strata": 0}
	var origins := {}
	var templates := {}
	var selected := {}
	var selected_seeds: Array[int] = []
	for seed in range(1, 151):
		var candidate := generator.generate(seed)
		var kinds := {
			"mixed_society": candidate.present.historical_factions.any(func(row: Dictionary) -> bool: return PopulationOrigins.mixed(row.population_origin_profile)),
			"multi_origin_lineage": candidate.present.historical_factions.any(func(row: Dictionary) -> bool: return PopulationOrigins.multi_lineage(row.population_origin_profile)),
			"subset_inheritance": candidate.present.population_history.any(func(row: Dictionary) -> bool: return row.mode == "subset")}
		for kind in kinds:
			if kinds[kind] and not selected.has(kind) and seed not in selected_seeds:
				selected[kind] = candidate
				selected_seeds.append(seed)
		if selected.size() == 3:
			break
	if selected.size() != 3:
		printerr("Missing synthetic fixture representative")
		quit(1)
		return
	for category in selected:
		var result: HistoryResult = selected[category]
		result.validation_report = HistoryValidator.new(catalog).validate(result, generator.generate(result.seed))
		if not result.validation_report.errors.is_empty():
			printerr(result.validation_report.errors)
			quit(1)
			return
		text += "## %s — test catalog seed %d\n\n```text\n%s\n```\n\n" % [category, result.seed, HistoryDebugFormatter.new().format(result)]
		snapshots.append(result.to_dict())
		var mixed := false
		var multi := false
		for row in result.present.historical_factions:
			mixed = mixed or PopulationOrigins.mixed(row.population_origin_profile)
			multi = multi or PopulationOrigins.multi_lineage(row.population_origin_profile)
			for stratum: Dictionary in row.population_origin_profile.strata:
				templates[stratum.template_id] = templates.get(stratum.template_id, 0) + 1
				modes.nonhuman_strata += int(stratum.origins != ["human_derived"])
				for origin in stratum.origins:
					origins[origin] = origins.get(origin, 0) + 1
		modes.mixed_origin_society_count += int(mixed)
		modes.multi_origin_lineage_count += int(multi)
		for row in result.present.population_history:
			modes.joins += int(row.mode == "join")
			modes.subsets += int(row.mode == "subset")
	if DirAccess.make_dir_recursive_absolute(args[0]) != OK:
		quit(2)
		return
	for entry in [["fixture_samples.md", text], ["fixture_samples.json", JSON.stringify(snapshots, "\t")],
		["fixture_statistics.json", JSON.stringify({"catalog_id": catalog.id, "sample_count": selected.size(), "representative_seeds": selected_seeds, "synthetic_only": true, "frequencies": modes, "origin_occurrence": origins, "template_occurrence": templates}, "\t")]]:
		var file := FileAccess.open(args[0].path_join(entry[0]), FileAccess.WRITE)
		if file == null:
			quit(2)
			return
		file.store_string(entry[1].strip_edges(false, true) + "\n")
		if file.get_error() != OK:
			quit(2)
			return
	print("Three synthetic-only readable fixture histories saved")
	quit(0)
