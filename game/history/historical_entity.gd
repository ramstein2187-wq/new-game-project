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

func to_dict() -> Dictionary:
	return {"id": id, "kind": kind, "name": name, "way_of_life": way_of_life,
		"political_form": political_form, "knowledge_tags": knowledge_tags.duplicate(),
		"generated_name": generated_name.to_dict() if generated_name != null else {},
		"naming_culture_id": naming_culture_id, "naming_lineage_id": naming_lineage_id,
		"parent_ids": parent_ids.duplicate(), "created_event_id": created_event_id,
		"retired_event_id": retired_event_id}
