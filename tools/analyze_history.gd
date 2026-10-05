extends SceneTree

const Statistics = preload("res://tools/history_statistics.gd")

func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.size() != 2 or not args[0].is_valid_int() or int(args[0]) < 1000:
		printerr("Usage: analyze_history.gd -- COUNT>=1000 OUTPUT_DIRECTORY")
		quit(2)
		return
	var stats := Statistics.new()
	var generator := HistoryGenerator.new()
	for seed in range(1, int(args[0]) + 1):
		stats.add(generator.generate(seed))
	var directory: String = args[1]
	if DirAccess.make_dir_recursive_absolute(directory) != OK:
		printerr("Cannot create output directory")
		quit(2)
		return
	if not _write(directory.path_join("diversity.json"), JSON.stringify(stats.to_dict(), "\t") + "\n"):
		quit(2)
		return
	var reports := "# History v0.2 representative readable outputs\n\nGenerated with algorithm v2 / architecture v1. Objective debug facts and faction beliefs are separate.\n\n"
	for category in stats.representatives:
		var seed: int = stats.representatives[category]
		var result := generator.generate(seed)
		result.validation_report = HistoryValidator.new().validate(result, generator.generate(seed))
		reports += "## %s — seed %d\n\n```text\n%s\n```\n\n" % [category, seed, HistoryDebugFormatter.new().format(result)]
	if not _write(directory.path_join("samples.md"), reports):
		quit(2)
		return
	print(JSON.stringify(stats.to_dict()))
	quit(0 if stats.invalid_seeds.is_empty() and stats.representatives.size() == 10 else 1)

func _write(path: String, contents: String) -> bool:
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null:
		printerr("Cannot write: " + path)
		return false
	file.store_string(contents)
	return file.get_error() == OK
