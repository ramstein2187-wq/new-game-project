class_name SeedDeriver
extends RefCounted

const ALGORITHM_VERSION := 1
const MODULUS := 2147483647
const MULTIPLIER_A := 48271
const MULTIPLIER_B := 69621
const TEXT_BASE := 131


static func derive(world_seed: int, parts: Array[String]) -> int:
	assert(not parts.is_empty())

	var state_a := _fold_seed(world_seed)
	var state_b := _fold_seed(world_seed ^ 0x4F1BBCDCBFA54001)

	for part in parts:
		var part_hash := _hash_text(part)
		state_a = (state_a * MULTIPLIER_A + part_hash + ALGORITHM_VERSION) % MODULUS
		state_b = (state_b * MULTIPLIER_B + part_hash + state_a + ALGORITHM_VERSION) % MODULUS

	return (state_a << 31) | state_b


static func _fold_seed(seed_value: int) -> int:
	var folded := seed_value ^ (seed_value >> 32)
	return folded & 0x7FFFFFFF


static func _hash_text(text: String) -> int:
	var value := 0
	for byte_value in text.to_utf8_buffer():
		value = (value * TEXT_BASE + int(byte_value) + 1) % MODULUS
	return value
