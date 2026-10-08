extends SceneTree

func _init()->void:
	if FileAccess.file_exists("res://tests/fixtures/history_v5_legacy.json"):
		printerr("Frozen baseline already exists; refusing to overwrite.")
		quit(1)
		return
	var baseline := {"base":"c43b4f33a52cf9494b9bbedec8c3d9c02ea8d0ea","versions":{}}
	for version in [2,3,4]:
		var rows := {}
		var generator := HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,version)
		for seed in range(1,129):
			rows[str(seed)]=generator.generate(seed).canonical_output().sha256_text()
		baseline.versions[str(version)]=rows
	var file:=FileAccess.open("res://tests/fixtures/history_v5_legacy.json",FileAccess.WRITE)
	file.store_string(JSON.stringify(baseline,"\t")+"\n")
	print("Froze128 exact seeds each for v2/v3/v4 before shared changes.")
	quit()
