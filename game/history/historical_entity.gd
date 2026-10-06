class_name HistoricalEntity
extends RefCounted

var id: String = ""
var kind: String = ""
var name: String = ""
var way_of_life: String = ""
var political_form: String = ""
var knowledge_tags: Array[String] = []
var generated_name: GeneratedName
var naming_culture_id: String = "prototype_surface"
var naming_lineage_id: String = "precursor"
var parent_ids: Array[String] = []
var created_event_id: String = ""
var retired_event_id: String = ""
var formation_origin: String = ""
var ancestry_kind: String = ""
var political_continuity: bool = false
# Founding population only; later changes are replayed from population effects.
var population_origin_profile: Array[String] = []
var regional_roles: Array[String] = []

func to_dict() -> Dictionary:
	var row := {"id": id, "kind": kind, "name": name, "way_of_life": way_of_life,
		"political_form": political_form, "knowledge_tags": knowledge_tags.duplicate(),
		"generated_name": generated_name.to_dict() if generated_name != null else {},
		"naming_culture_id": naming_culture_id, "naming_lineage_id": naming_lineage_id,
		"parent_ids": parent_ids.duplicate(), "created_event_id": created_event_id,
		"retired_event_id": retired_event_id}
	if not formation_origin.is_empty():
		row.merge({"formation_origin": formation_origin, "ancestry_kind": ancestry_kind,
			"political_continuity": political_continuity,
			"population_origin_profile": population_origin_profile.duplicate(), "regional_roles": regional_roles.duplicate()})
	return row
