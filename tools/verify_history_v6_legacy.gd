extends SceneTree
## Capture only in a separate exact-base worktree; --check is the delivery path.

const FIXTURE := "res://tests/fixtures/history_v6_legacy.json"

func _init() -> void:
	var capture := "--capture" in OS.get_cmdline_user_args()
	if capture and FileAccess.file_exists(FIXTURE):
		printerr("Refusing to overwrite legacy fixture"); quit(1); return
	var versions := {}
	for version in [2, 3, 4, 5]:
		var hashes := {}
		var generator := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, version)
		for seed in [1, 2, 3, 7, 42, 99, 256, 1001, 10492, 99991, 1807263119, 1977506391]:
			hashes[str(seed)] = generator.generate(seed).canonical_output().sha256_text()
		versions[str(version)] = hashes
	if capture:
		var file := FileAccess.open(FIXTURE, FileAccess.WRITE)
		file.store_string(JSON.stringify({"base": "c32cce0", "versions": versions}, "\t", true) + "\n")
		print("Captured 48 legacy hashes from exact base")
	else:
		var frozen: Variant = JSON.parse_string(FileAccess.get_file_as_string(FIXTURE))
		if not frozen is Dictionary or frozen.get("versions") != versions:
			printerr("Legacy v2/v3/v4/v5 hash mismatch"); quit(1); return
		print("Legacy v2/v3/v4/v5: 48/48 exact-base hashes match")
	quit(0)
