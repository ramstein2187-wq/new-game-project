class_name PopulationOrigins
extends RefCounted

# Qualitative co-resident strata; a template identifies an authored lineage.
# Combining strata never combines their internal origins (no biological fusion).
const PREVALENCE := ["majority", "major", "minor", "trace"]

static func from_template(template: Dictionary) -> Dictionary:
	return {"strata": [{"template_id": template.id, "origins": template.origins.duplicate(), "prevalence": "majority"}]}

static func combine(profiles: Array, join: bool = false) -> Dictionary:
	var strata := {}
	for i in range(profiles.size()):
		for row: Dictionary in profiles[i].strata:
			if not strata.has(row.template_id):
				strata[row.template_id] = row.duplicate(true)
				if join and i > 0:
					strata[row.template_id].prevalence = "minor"
	var keys := strata.keys()
	keys.sort()
	var result: Array = []
	for key in keys:
		var row: Dictionary = strata[key]
		if not join:
			row.prevalence = "majority" if keys.size() == 1 else "major"
		result.append(row)
	return {"strata": result}

static func subset(profile: Dictionary, rng: RandomNumberGenerator) -> Dictionary:
	var rows: Array = profile.strata.duplicate(true)
	# Nonempty whole-lineage selection; origins within a lineage cannot be split.
	var selected: Array = []
	for row in rows:
		if rng.randi_range(0, 1) == 0:
			selected.append(row)
	if selected.is_empty():
		selected.append(rows[rng.randi_range(0, rows.size() - 1)])
	for row: Dictionary in selected:
		row.prevalence = "majority" if selected.size() == 1 else "major"
	return {"strata": selected}

static func lineages(profile: Dictionary) -> Dictionary:
	var rows := {}
	for row: Dictionary in profile.strata:
		rows[row.template_id] = row.origins
	return rows

static func untracked_templates(profile: Dictionary, successors: Array) -> Array:
	var retained := {}
	for stock: Dictionary in successors:
		retained.merge(lineages(stock))
	var missing: Array = []
	for key in lineages(profile):
		if not retained.has(key):
			missing.append(key)
	missing.sort()
	return missing

static func errors(profile: Dictionary) -> Array[String]:
	var issues: Array[String] = []
	if profile.keys() != ["strata"] or not profile.get("strata") is Array or profile.strata.is_empty():
		return ["Population profile needs nonempty strata"]
	var templates: Array[String] = []
	var majority := 0
	for value in profile.strata:
		if not value is Dictionary:
			issues.append("Population stratum must be a dictionary")
			continue
		var row: Dictionary = value
		if row.size() != 3 or not row.get("template_id") is String or row.get("template_id", "").is_empty() or not row.get("origins") is Array:
			issues.append("Population stratum requires template_id, origins and prevalence")
			continue
		var ordered: Array = []
		for origin in OriginCatalog.ids():
			if origin in row.origins:
				ordered.append(origin)
		if row.origins.is_empty() or row.origins != ordered or ("unknown" in row.origins and row.origins.size() > 1):
			issues.append("Population Origins must be unique ordered lowercase IDs; unknown stands alone")
		if row.get("prevalence") not in PREVALENCE:
			issues.append("Population prevalence is invalid")
		majority += int(row.get("prevalence") == "majority")
		templates.append(row.template_id)
	var sorted := templates.duplicate()
	sorted.sort()
	if templates != sorted or templates.size() != _unique(templates).size() or majority > 1:
		issues.append("Population strata must be unique, ordered and have at most one majority")
	if majority == 0 and not profile.strata.any(func(row: Variant) -> bool: return row is Dictionary and row.get("prevalence") == "major"):
		issues.append("Population needs a majority or major resident stratum")
	return issues

static func _unique(values: Array) -> Dictionary:
	var found := {}
	for value in values:
		found[value] = true
	return found

static func mixed(profile: Dictionary) -> bool:
	var single_origins := {}
	for row: Dictionary in profile.strata:
		if row.origins.size() == 1:
			single_origins[row.origins[0]] = true
	return single_origins.size() > 1

static func multi_lineage(profile: Dictionary) -> bool:
	return profile.strata.any(func(row: Dictionary) -> bool: return row.origins.size() > 1)

static func format(profile: Dictionary) -> String:
	var rows: Array[String] = []
	for row: Dictionary in profile.strata:
		var labels: Array[String] = []
		for origin: String in row.origins:
			labels.append(OriginCatalog.display(origin))
		rows.append("%s:%s [%s; %s]" % [row.template_id, "+".join(labels), row.prevalence, "multi-Origin lineage" if labels.size() > 1 else "single-Origin lineage"])
	return " | ".join(rows) + (" (mixed society)" if mixed(profile) else "")
