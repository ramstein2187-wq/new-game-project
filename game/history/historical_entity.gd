class_name HistoricalEntity
extends RefCounted

var id: String = ""
var kind: String = ""
var name: String = ""
var way_of_life: String = ""
var parent_ids: Array[String] = []
var created_event_id: String = ""
var retired_event_id: String = ""

func to_dict() -> Dictionary:
	return {"id": id, "kind": kind, "name": name, "way_of_life": way_of_life,
		"parent_ids": parent_ids.duplicate(), "created_event_id": created_event_id,
		"retired_event_id": retired_event_id}
