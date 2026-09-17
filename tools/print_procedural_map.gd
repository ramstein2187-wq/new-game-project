extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")


func _init() -> void:
	var generator := SimpleMapGeneratorScript.new(40, 30)
	var generated_map: PackedStringArray = generator.generate(1234)

	print("Seed: 1234 | Size: 40x30 | .=ground T=tree #=path")
	print(generator.to_text(generated_map))
	quit(0)
