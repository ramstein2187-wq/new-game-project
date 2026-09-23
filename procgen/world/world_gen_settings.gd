class_name WorldGenSettings
extends Resource

# These dimensions describe WORLD cells, not existing playable local-map tiles.
# A bounded cell budget protects the single-threaded prototype from accidental huge allocations.
const MAX_CELLS := 1048576
const GENERATOR_VERSION := 1

@export_category("World")
@export_range(16, 1024, 1) var world_width: int = 128
@export_range(16, 1024, 1) var world_height: int = 96
@export var surround_with_ocean: bool = true
@export_range(0.1, 0.9, 0.01) var sea_level: float = 0.46

@export_category("Terrain")
@export_range(1.0, 8.0, 0.1) var continent_scale: float = 3.0
@export_range(0.005, 0.3, 0.001) var detail_frequency: float = 0.06
@export_range(1, 8, 1) var noise_octaves: int = 4
@export_range(0.0, 0.5, 0.01) var mountain_strength: float = 0.18

@export_category("Hydrology")
@export_range(1.0, 200.0, 1.0) var river_flow_threshold: float = 18.0


func validate() -> String:
	if world_width < 16 or world_height < 16:
		return "World dimensions must both be at least 16."
	if world_width > 1024 or world_height > 1024 or world_width * world_height > MAX_CELLS:
		return "World dimensions exceed the prototype's 1,048,576-cell budget."
	if sea_level <= 0.0 or sea_level >= 1.0:
		return "Sea level must be strictly between 0 and 1."
	if continent_scale <= 0.0 or detail_frequency <= 0.0 or noise_octaves < 1:
		return "Noise settings must be positive."
	if mountain_strength < 0.0 or river_flow_threshold <= 0.0:
		return "Mountain strength cannot be negative and river threshold must be positive."
	return ""
