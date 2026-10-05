extends SceneTree

func _init() -> void:
	var seed := 42
	var json := false
	for arg in OS.get_cmdline_user_args():
		if arg == "--json":
			json = true
		elif arg.is_valid_int():
			seed = int(arg)
		else:
			printerr("Usage: preview_history.gd -- [integer seed] [--json]")
			quit(2)
			return
	var generator := HistoryGenerator.new()
	var result := generator.generate(seed)
	result.validation_report = HistoryValidator.new().validate(result, generator.generate(seed))
	print(result.canonical_output(true) if json else HistoryDebugFormatter.new().format(result))
	quit(0 if result.validation_report.errors.is_empty() else 1)
