class_name AbilityScores
extends RefCounted

const NAMES := [&"STR", &"DEX", &"CON", &"INT", &"WIS", &"CHA"]
var scores: Dictionary = {}
var remaining := 12

func _init() -> void:
	reset()

func reset() -> void:
	for ability in NAMES:
		scores[ability] = 10
	remaining = 12

static func modifier(score: int) -> int:
	return floori((score - 10) / 2.0)

func get_modifier(ability: StringName) -> int:
	return modifier(scores.get(ability, 10))

func allocate(ability: StringName, delta: int) -> bool:
	if not scores.has(ability) or absi(delta) != 1:
		return false
	var next: int = scores[ability] + delta
	if next < 10 or next > 16 or remaining - delta < 0:
		return false
	scores[ability] = next
	remaining -= delta
	return true
