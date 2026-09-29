extends SceneTree

func encode(value: Variant) -> Variant:
	if value is Resource:
		var result := {}
		for property in value.get_property_list():
			if property.usage & PROPERTY_USAGE_SCRIPT_VARIABLE:
				result[property.name] = encode(value.get(property.name))
		return result
	if value is Dictionary:
		var result := {}
		for key in value:
			result[String(key)] = encode(value[key])
		return result
	if value is Array:
		return value.map(encode)
	return value

func _init() -> void:
	if OS.get_cmdline_user_args().size() != 1:
		push_error("Usage: --script res://tools/snapshot_combat_content.gd -- <output.json>")
		quit(2)
		return
	var actors := CombatContentCatalog.all_hostiles()
	actors[&"rat"] = ActorDefinition.rat_common()
	actors[&"human"] = ActorDefinition.human_default()
	var snapshot: Variant = encode({"weapons": CombatContentCatalog.all_weapons(), "armor": CombatContentCatalog.all_armor(), "attacks": CombatContentCatalog.all_natural_attacks(), "actors": actors})
	var output := OS.get_cmdline_user_args()[0]
	FileAccess.open(output, FileAccess.WRITE).store_string(JSON.stringify(snapshot, "\t") + "\n")
	print("Snapshot: " + output)
	quit()
