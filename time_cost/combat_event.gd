class_name CombatEvent
extends RefCounted

const TRIVIAL := 0
const NORMAL := 1
const IMPORTANT := 2

var type: StringName = &""
var actor_id: StringName = &""
var target_id: StringName = &""
var action_id: StringName = &""
var time: int = 0
var action_cost: int = 0
var importance: int = NORMAL

# Observation is recorded at event time, not inferred from later actor positions.
var observed_by: Array[StringName] = []
# Reason codes are for the developer trace; visible cues come from event facts.
var reason_codes: Array[StringName] = []
var data: Dictionary = {}
