extends SceneTree

# Capture this on the exact M041 base before adding incident generation.
func _init() -> void:
	if FileAccess.file_exists("res://tests/fixtures/history_m042_upstream.json"):
		printerr("Refusing to overwrite the immutable exact-M041 upstream fixture")
		quit(2)
		return
	var rows: Array = []
	for seed in [1, 2, 13, 42, 101, 999, -1, 4294967296]:
		var result := HistoryGenerator.new(null, HistoryMotifs.DISCOVERIES, 3).generate(seed)
		rows.append({"seed": seed, "upstream": upstream(result)})
	var file := FileAccess.open("res://tests/fixtures/history_m042_upstream.json", FileAccess.WRITE)
	file.store_string(JSON.stringify({"base": "ef18814f34abfa7ab278c0914ae289806b22dc12", "samples": rows}, "\t") + "\n")
	quit()

static func upstream(result: HistoryResult) -> Dictionary:
	var entities: Array = []
	var events: Array = []
	for entity in result.entities:
		if not entity.id.begins_with("s_"):
			entities.append(entity.to_dict())
	for event in result.objective_timeline:
		if not event.id.begins_with("s_"):
			events.append(event.to_dict())
	var configuration := result.configuration.duplicate(true)
	configuration.erase("content_revision")
	configuration.erase("social_content_id")
	configuration.erase("social_revision")
	return {"configuration": configuration, "entities": entities, "events": events}
