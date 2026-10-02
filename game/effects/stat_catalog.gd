class_name StatCatalog
extends RefCounted

# ID authority only; AbilityScores owns primary values and allocation.
const STR := &"STR"
const DEX := &"DEX"
const CON := &"CON"
const PER := &"PER"
const INT := &"INT"
const WIL := &"WIL"
const MOVEMENT_SPEED := &"movement_speed"
const PRIMARY := [STR, DEX, CON, PER, INT, WIL]
const ALL := [STR, DEX, CON, PER, INT, WIL, MOVEMENT_SPEED]

# Durable semantic ownership. These are domains, not extra derived stats.
# In particular DEX/Execution does not imply global movement speed.
const PRIMARY_DOMAINS := {
	STR: "Force",
	DEX: "Execution",
	CON: "Endurance",
	PER: "Awareness",
	INT: "Understanding",
	WIL: "Control",
}

static func is_known(stat: StringName) -> bool:
	return ALL.has(stat)

static func is_primary(stat: StringName) -> bool:
	return PRIMARY.has(stat)

static func primary_domain(stat: StringName) -> String:
	return PRIMARY_DOMAINS.get(stat, "")
