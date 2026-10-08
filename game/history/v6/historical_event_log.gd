class_name HistoricalEventLog
extends RefCounted

var _events: Array[HistoryV6Event] = []

func events() -> Array[HistoryV6Event]:
	var result: Array[HistoryV6Event] = []
	for event in _events: result.append(event.copy())
	return result

func size() -> int:
	return _events.size()

func last_rule() -> String:
	return "" if _events.is_empty() else _events[-1].rule_id

func has_id(id: String) -> bool:
	for event in _events:
		if event.id == id: return true
	return false

func append_committed(event: HistoryV6Event) -> void:
	_events.append(event.copy())

func data() -> Array:
	var result: Array = []
	for event in _events: result.append(event.data())
	return result

func canonical() -> String:
	return JSON.stringify(data(), "", true)

static func from_json(text: String) -> HistoricalEventLog:
	var raw: Variant = JSON.parse_string(text)
	if not raw is Array: return null
	var result := HistoricalEventLog.new()
	for item in raw:
		var event := HistoryV6Event.from_data(item)
		if event == null: return null
		result.append_committed(event)
	return result
