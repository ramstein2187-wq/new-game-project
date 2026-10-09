extends SceneTree
## Run against the exact Phase B code checkout, with an explicit output path.
func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.size() != 1: push_error("Provide baseline output path"); quit(1); return
	var out := {"base": "12f48bae75636782005a05a08742a0bd6412fee8", "seeds": []}
	for seed in range(1, 17):
		var a := HistoryEngine.new().generate(seed)
		var b := HistoryEngine.new().generate_civilization(seed)
		if not a.errors.is_empty() or not b.errors.is_empty(): quit(1); return
		out.seeds.append({"seed": seed, "phase_a": a.canonical().sha256_text(), "phase_b": b.canonical().sha256_text(), "manifest": HistoryWorldManifest.build(b).canonical().sha256_text()})
	var file := FileAccess.open(args[0], FileAccess.WRITE)
	if file == null: quit(1); return
	file.store_string(JSON.stringify(out, "\t", true) + "\n")
	print("Captured 16 Phase A/B/Manifest baselines from active project code")
	quit(0)
