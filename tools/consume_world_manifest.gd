extends SceneTree
## Test consumer: reads JSON only. No seed regeneration, reducer, or history queries.
func _init() -> void:
	var args := OS.get_cmdline_user_args()
	if args.is_empty(): push_error("Usage: -- <manifest.json or world sample.json>"); quit(1); return
	var raw: Variant = JSON.parse_string(FileAccess.get_file_as_string(args[0]))
	if raw is Dictionary and raw.has("manifest"): raw = raw.manifest
	var m := HistoryWorldManifest.from_json(JSON.stringify(raw))
	if not m.errors.is_empty(): push_error(str(m.errors)); quit(1); return
	var available: Array[String] = []; var blocked: Array[String] = []
	for f in m.payload.facilities:
		if f.function_usable: available.append(f.id + ":" + f.local_function)
		else: blocked.append(f.id)
	print(JSON.stringify({"seed": m.payload.seed, "year": m.payload.year,
		"usable_facilities": available, "unavailable_facilities": blocked,
		"geographic_regions": m.payload.localities.size(), "confirmed_objects": m.payload.objects.filter(func(a: Dictionary) -> bool: return a.actually_present).size()}))
	quit(0)
