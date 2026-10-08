class_name OriginCatalog
extends RefCounted

# Shared with the offline monster taxonomy checker. Display is never simulation input.
const PATH := "res://content/population/origins.json"
static var _rows: Array = []

static func rows() -> Array:
	if _rows.is_empty():
		_rows = JSON.parse_string(FileAccess.get_file_as_string(PATH))
	return _rows.duplicate(true)

static func ids() -> Array[String]:
	var values: Array[String] = []
	for row: Dictionary in rows():
		values.append(row.id)
	return values

static func display(id: String, locale: String = "en") -> String:
	for row: Dictionary in rows():
		if row.id == id:
			return row.get(locale, row.en)
	return id
