class_name ExplorationAuditLog
extends CombatEventLog
## Review-only observer; the game's bounded UI log and action rules are unchanged.
var player_moves := 0
var attacks := 0
var npc_attacks := 0
var damage := 0
var player_damage := 0
var action_times: Dictionary = {}
var evidence: Array = []

func add_event(event: CombatEvent) -> void:
	super.add_event(event)
	if event.type == &"move" and event.actor_id == &"player": player_moves += 1
	var key := String(event.type) + ":" + ("player" if event.actor_id == &"player" else "npc")
	if not action_times.has(key): action_times[key] = {"count": 0, "time": 0}
	action_times[key].count += 1; action_times[key].time += event.action_cost
	if event.type == &"attack":
		attacks += 1; damage += int(event.data.get("damage", 0))
		if event.actor_id != &"player": npc_attacks += 1
		if event.target_id == &"player": player_damage += int(event.data.get("damage", 0))
	if event.type in [&"attack", &"interact"]:
		evidence.append({"type": String(event.type), "actor": String(event.actor_id), "target": String(event.target_id),
			"time": event.time, "cost": event.action_cost, "data": event.data.duplicate(true)})
