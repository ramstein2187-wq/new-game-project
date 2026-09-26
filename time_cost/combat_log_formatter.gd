class_name CombatLogFormatter
extends RefCounted


static func format_player_event(
	event: CombatEvent,
	observer_id: StringName = &"player",
	detailed: bool = false
) -> String:
	if not event.observed_by.has(observer_id):
		return ""
	if not detailed and event.importance < CombatEvent.NORMAL:
		return ""

	var actor_name := _name(event.actor_name, event.actor_id)
	var target_name := _name(event.target_name, event.target_id)
	match event.type:
		&"move":
			if event.actor_id == &"player":
				return "You move."
			# Only a visible movement cue, never the hidden AI score/reasons.
			if event.data.get("visible_cue", &"") == &"retreat":
				return actor_name + " recoils and retreats."
			if event.data.get("in_melee_range", false):
				return actor_name + " closes to striking distance."
			return actor_name + " moves."
		&"attack":
			if event.data.has("hit"):
				var subject := "You" if event.actor_id == &"player" else actor_name
				if not event.data.hit:
					return subject + (" miss " if event.actor_id == &"player" else " misses ") + ("you" if event.target_id == &"player" else target_name) + "."
				if event.data.get("no_valid_part", false):
					return subject + ": no valid body part to strike."
				var part_name: String = event.data.get("part_name", "body")
				var owner := "your" if event.target_id == &"player" else target_name + "'s"
				if event.data.get("armor_result") == &"full":
					var attacker := "your" if event.actor_id == &"player" else actor_name + "'s"
					return "%s %s armor blocks %s attack." % [owner.capitalize(), part_name, attacker]
				var verb := "hit" if event.actor_id == &"player" else ("bites" if event.action_id == &"bite" else "hits")
				var text := "%s %s %s %s for %d damage" % [subject, verb, owner, part_name, event.data.damage]
				if event.data.get("armor_result") == &"partial":
					text += " (armor softens the blow)"
				if event.data.get("state_before") != event.data.get("state_after"):
					text += "; %s is %s" % [part_name, event.data.state_after]
				if event.data.get("defeated", false):
					text += "; " + ("you fall" if event.target_id == &"player" else target_name + " falls")
				return text + "."
			var damage: int = event.data.get("damage", 0)
			var subject := "You" if event.actor_id == &"player" else actor_name
			var target := "you" if event.target_id == &"player" else target_name.to_lower() if target_name == "The rat" else target_name
			var verb := "hit" if event.actor_id == &"player" else "bites" if event.action_id == &"bite" else "hits"
			var text := "%s %s %s for %d damage." % [subject, verb, target, damage]
			if event.data.get("defeated", false):
				text += " You fall." if event.target_id == &"player" else " %s falls." % target_name
			return text
		&"interact":
			var verb := "opens" if event.data.get("open", false) else "closes"
			if event.actor_id == &"player":
				return "You %s the door." % ("open" if event.data.get("open", false) else "close")
			return "%s %s the door." % [actor_name, verb]
		&"wait":
			return "You wait." if event.actor_id == &"player" else actor_name + " waits."
	return ""


static func format_debug_event(event: CombatEvent) -> String:
	return (
		"t=%d actor=%s action=%s target=%s cost=%d reasons=%s data=%s"
		% [
			event.time,
			String(event.actor_id),
			String(event.action_id),
			String(event.target_id),
			event.action_cost,
			str(event.reason_codes),
			str(event.data),
		]
	)


static func get_recent_player_text(
	log: CombatEventLog,
	observer_id: StringName = &"player",
	detailed: bool = false,
	limit: int = 6
) -> String:
	var lines: Array[String] = []
	for index in range(log.events.size() - 1, -1, -1):
		var line := format_player_event(log.events[index], observer_id, detailed)
		if line.is_empty():
			continue
		lines.push_front(line)
		if lines.size() >= limit:
			break
	return "\n".join(lines) if not lines.is_empty() else "No notable events yet."


static func get_recent_debug_text(log: CombatEventLog, limit: int = 6) -> String:
	var lines: Array[String] = []
	for event in log.get_recent_events(limit):
		lines.append(format_debug_event(event))
	return "\n".join(lines) if not lines.is_empty() else "No actions yet."


static func _name(label: String, actor_id: StringName) -> String:
	if not label.is_empty():
		return label
	# Legacy hand-authored events predate name snapshots.
	return "The rat" if actor_id == &"rat" else String(actor_id)
