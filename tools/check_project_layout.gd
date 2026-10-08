extends SceneTree

# Headless path/UID/scene audit for folder moves. No gameplay source is changed.
var failures := 0
var resources: Array[String] = []
var seen_uids := {}

func _init() -> void:
	call_deferred("_run")

func scan(directory: String) -> void:
	for file in DirAccess.get_files_at(directory):
		if file.get_extension() in ["gd", "tscn", "tres"]:
			resources.append(directory.path_join(file))
	for child in DirAccess.get_directories_at(directory):
		if not child.begins_with(".") and child not in ["assets", "docs", "__pycache__"]:
			scan(directory.path_join(child))

func check(condition: bool, label: String) -> void:
	if not condition:
		failures += 1
		push_error(label)

func _run() -> void:
	scan("res://")
	var paths := RegEx.new()
	paths.compile('res:' + '//[^"\\s]+')
	var scene_count := 0
	var uid_count := 0
	for path in resources:
		if path.ends_with(".gd") and FileAccess.file_exists(path + ".uid"):
			var uid := FileAccess.get_file_as_string(path + ".uid").strip_edges()
			check(not seen_uids.has(uid), "Duplicate script UID: " + path)
			seen_uids[uid] = path
			var id := ResourceUID.text_to_id(uid)
			check(ResourceUID.has_id(id) and ResourceUID.get_id_path(id) == path, "UID does not resolve to moved script: " + path)
			uid_count += 1
		# Existing screenshot tool writes a new output file; it is not a load dependency.
		for match_result in paths.search_all(FileAccess.get_file_as_string(path)):
			var reference := match_result.get_string()
			if reference in ["res://", "res://docs/reviews/2026-09-22-m019-scene.png", "res://.godot/character-overview-captures"]:
				continue
			check(FileAccess.file_exists(reference) or DirAccess.dir_exists_absolute(reference), "Missing resource reference in " + path + ": " + reference)
		if path.ends_with(".tscn"):
			var packed := load(path) as PackedScene
			check(packed != null, "Cannot load scene: " + path)
			if packed != null:
				var scene := packed.instantiate()
				check(scene != null, "Cannot instantiate scene: " + path)
				root.add_child(scene)
				await process_frame
				await process_frame
				scene.queue_free()
				await process_frame
				scene_count += 1
	var main_scene: String = ProjectSettings.get_setting("application/run/main_scene")
	check(FileAccess.file_exists(main_scene) and load(main_scene) is PackedScene, "Configured main scene cannot load")
	print("Layout audit: %d resources, %d script UIDs, %d instantiated scenes; main=%s" % [resources.size(), uid_count, scene_count, main_scene])
	if failures == 0:
		print("PASS: resource paths, preserved script UIDs and all scenes")
	quit(1 if failures else 0)
