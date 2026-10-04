extends SceneTree

func _init() -> void:
	var generator := NameGenerator.new()
	var renderer := NameRenderer.new()
	for world_seed in [74, 1234, 20261005]:
		for request in [["prototype_surface", "person"], ["prototype_surface", "settlement"], ["prototype_surface", "semantic_location"], ["prototype_surface", "mixed_location"], ["prototype_surface", "mixed_possessive"], ["administrator", "facility"]]:
			var name := generator.generate(world_seed, "preview/entity-7", request[0], request[1])
			if name == null:
				push_error(generator.last_error)
				quit(1)
				return
			print("Seed %d | %s / %s" % [world_seed, request[0], request[1]])
			print("Canonical: " + name.canonical_key())
			print("EN: " + renderer.render(name, "en"))
			print("KO: " + renderer.render(name, "ko"))
	quit(0)
