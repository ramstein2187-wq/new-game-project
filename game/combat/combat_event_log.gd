class_name CombatEventLog
extends RefCounted

const MAX_EVENTS := 128

var events: Array[CombatEvent] = []


func add_event(event: CombatEvent) -> void:
	events.append(event)
	while events.size() > MAX_EVENTS:
		events.pop_front()


func clear() -> void:
	events.clear()


func get_recent_events(limit: int = 6) -> Array[CombatEvent]:
	var result: Array[CombatEvent] = []
	for index in range(maxi(0, events.size() - maxi(0, limit)), events.size()):
		result.append(events[index])
	return result
