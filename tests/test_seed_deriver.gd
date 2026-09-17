extends SceneTree

const SeedDeriverScript := preload("res://procgen/seed_deriver.gd")


func _init() -> void:
	var world_seed := 1234
	var terrain_a: int = SeedDeriverScript.derive(world_seed, ["terrain"])
	var terrain_b: int = SeedDeriverScript.derive(world_seed, ["terrain"])
	var path_seed: int = SeedDeriverScript.derive(world_seed, ["path"])
	var ruin_seed: int = SeedDeriverScript.derive(world_seed, ["landmark", "ruin"])
	var shrine_seed: int = SeedDeriverScript.derive(world_seed, ["landmark", "shrine"])
	var reversed_scope: int = SeedDeriverScript.derive(world_seed, ["ruin", "landmark"])
	var other_world: int = SeedDeriverScript.derive(1235, ["terrain"])
	var large_world: int = SeedDeriverScript.derive(9223372036854775806, ["terrain"])

	if terrain_a != terrain_b:
		_fail("Same world seed and scope did not reproduce the same derived seed")
		return
	if terrain_a != 2380724832279425046:
		_fail("Seed derivation changed for the version 1 terrain golden value")
		return
	if ruin_seed != 2020260918872507907:
		_fail("Seed derivation changed for the version 1 ruin golden value")
		return
	if terrain_a == path_seed:
		_fail("Different system namespaces produced the same derived seed")
		return
	if ruin_seed == shrine_seed:
		_fail("Different landmark namespaces produced the same derived seed")
		return
	if ruin_seed == reversed_scope:
		_fail("Scope ordering did not affect the derived seed")
		return
	if terrain_a == other_world:
		_fail("Different world seeds produced the same terrain seed")
		return
	if large_world < 0:
		_fail("Derived seed must remain non-negative")
		return

	print("PASS: seed deriver")
	quit(0)


func _fail(message: String) -> void:
	push_error("FAIL: " + message)
	quit(1)
