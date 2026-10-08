extends SceneTree

func _init() -> void:
	var rows := {}
	for version in [2, 3]:
		var generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, version)
		var values := {}
		for seed in range(1, 65):
			var result := generator.generate(seed)
			assert(result.validation_report.errors.is_empty(), str(result.validation_report.errors))
			values[str(seed)] = result.canonical_output().sha256_text()
		rows[str(version)] = values
	var file := FileAccess.open("res://tests/fixtures/history_m043_legacy.json", FileAccess.WRITE)
	file.store_string(JSON.stringify({"base_commit": "8cb6f3dfc3735e648f561bb5eaa37a52228ceaf2", "versions": rows}, "\t") + "\n")
	print("Captured 64 exact M042 replay hashes for each of v2 and v3")
	quit()
