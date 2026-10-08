class_name HistorySites
extends RefCounted

# Conservative authored compatibility; no automatic hazard clearing or spatial placement.
static func description(kind: String) -> Dictionary:
	var rows := {
		"abandoned_farmland": ["agricultural", "none"], "damaged_route": ["route", "structural"],
		"chemical_exposure_site": ["chemical", "chemical"], "abandoned_hamlet": ["residential", "none"],
		"abandoned_archive": ["records", "structural"], "battlefield": ["military", "ordnance"],
		"administrative_site": ["records", "none"], "watchtower": ["military", "structural"],
		"legacy_damage_site": ["legacy", "restricted"],
	}
	var row: Array = rows.get(kind, ["unknown", "restricted"])
	return {"site_type": row[0], "hazard": row[1]}

static func compatible(site: Dictionary, faction: HistoricalEntity, purpose: String) -> bool:
	if site.hazard in ["chemical", "ordnance", "restricted"]:
		return false
	var technical := faction.way_of_life in ["infrastructure_guild", "facility_community"]
	if purpose == "research":
		return technical and site.site_type in ["records", "route", "legacy"]
	if purpose == "scavenging":
		return (technical or faction.way_of_life == "military_remnant") and site.site_type in ["records", "route", "military"]
	if purpose == "military_post":
		return faction.way_of_life == "military_remnant" and site.site_type in ["military", "route"]
	if purpose == "ritual_site":
		return site.hazard == "none" and faction.way_of_life in ["ritual_authority", "religious_community"]
	return purpose == "settlement" and site.hazard == "none" and site.site_type in ["agricultural", "residential", "records"]
