extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")


func _init() -> void:
	var generator := SimpleMapGeneratorScript.new(40, 30, 0.30)
	var first: PackedStringArray = generator.generate(1234)
	var second: PackedStringArray = generator.generate(1234)
	var different: PackedStringArray = generator.generate(1235)

	if first != second:
		_fail("Same seed did not reproduce the same map")
		return

	if first == different:
		_fail("Different seed unexpectedly produced the same map")
		return

	if first.size() != 30:
		_fail("Expected 30 rows, got %d" % first.size())
		return

	var tree_count := 0
	var ground_count := 0
	for row in first:
		if row.length() != 40:
			_fail("Expected row width 40, got %d" % row.length())
			return

		for character in row:
			if character == SimpleMapGeneratorScript.TREE:
				tree_count += 1
			elif character == SimpleMapGeneratorScript.GROUND:
				ground_count += 1
			else:
				_fail("Unexpected map character: %s" % character)
				return

	if tree_count == 0 or ground_count == 0:
		_fail("Generated map must contain both trees and ground")
		return

	if tree_count + ground_count != 40 * 30:
		_fail("Cell count did not match map dimensions")
		return

	print("PASS: simple procedural map generator")
	quit(0)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
