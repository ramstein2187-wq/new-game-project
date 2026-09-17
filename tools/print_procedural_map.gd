extends SceneTree

const SimpleMapGeneratorScript := preload("res://procgen/simple_map_generator.gd")
const DefaultGenerationSettings := preload("res://procgen/default_generation_settings.tres")


func _init() -> void:
	var generator := SimpleMapGeneratorScript.new(DefaultGenerationSettings)
	var generated_map: PackedStringArray = generator.generate(1234)

	print("Seed: 1234 | Size: 40x30 | .=ground T=tree #=path R=ruin")
	print(generator.to_text(generated_map))
	quit(0)
