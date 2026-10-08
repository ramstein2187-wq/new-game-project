class_name SocialPopulationCatalog
extends RefCounted

# Authored authorization outside history generation. Tests may inject their own
# catalog; taxonomy alone never authorizes a sapient/social population.
const PATH := "res://content/population/social_templates.json"
var id: String
var _templates := {}

func _init(content: Dictionary = {}) -> void:
	var data: Dictionary = content if not content.is_empty() else JSON.parse_string(FileAccess.get_file_as_string(PATH))
	id = data.id
	for template: Dictionary in data.templates:
		assert(not _templates.has(template.id), "Duplicate social population template")
		_templates[template.id] = template.duplicate(true)
	assert(errors().is_empty(), str(errors()))

func errors() -> Array[String]:
	var issues: Array[String] = []
	var baseline := template("human_baseline")
	if id.is_empty() or baseline.is_empty() or baseline.get("origins") != ["human_derived"] or not baseline.get("random_generation_allowed", false) or not baseline.get("faction_membership_allowed", false):
		issues.append("Social catalog requires its ID and authorized human baseline")
	for template: Dictionary in _templates.values():
		issues.append_array(PopulationOrigins.errors(PopulationOrigins.from_template(template)))
		for flag in ["random_generation_allowed", "faction_membership_allowed", "newcomer_allowed"]:
			if not template.get(flag) is bool:
				issues.append("Social template needs boolean permission: " + flag)
		if not (template.get("weight") is int or template.get("weight") is float) or template.get("weight", 0) <= 0 or int(template.get("weight", 0)) != template.get("weight"):
			issues.append("Social template needs a positive integer authored weight")
	return issues

func template(id_value: String) -> Dictionary:
	return _templates.get(id_value, {}).duplicate(true)

func profile_errors(profile: Dictionary, newcomer: bool = false) -> Array[String]:
	var issues := PopulationOrigins.errors(profile)
	if not issues.is_empty():
		return issues
	for row: Dictionary in profile.strata:
		var source := template(row.template_id)
		if source.is_empty() or source.get("origins") != row.origins or not source.get("random_generation_allowed", false) or not source.get("faction_membership_allowed", false) or (newcomer and not source.get("newcomer_allowed", false)):
			issues.append("Population social template is absent, unauthorized or differs from authored origins: " + row.template_id)
	return issues

func select(rng: RandomNumberGenerator, newcomer: bool = false) -> Dictionary:
	var keys := _templates.keys()
	keys.sort()
	var allowed: Array[Dictionary] = []
	var total := 0
	for key in keys:
		var source: Dictionary = _templates[key]
		if source.random_generation_allowed and source.faction_membership_allowed and (not newcomer or source.newcomer_allowed):
			allowed.append(source)
			total += int(source.weight)
	assert(total > 0, "No authorized social population source")
	var roll := rng.randi_range(0, total - 1)
	for source in allowed:
		roll -= int(source.weight)
		if roll < 0:
			return PopulationOrigins.from_template(source)
	return {}
