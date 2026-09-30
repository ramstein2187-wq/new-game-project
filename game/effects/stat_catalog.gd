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

static func is_known(stat: StringName) -> bool:
	return ALL.has(stat)
