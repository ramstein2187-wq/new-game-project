class_name GenerationSettings
extends Resource

@export_category("Map")
@export_range(8, 256, 1) var map_width: int = 40
@export_range(8, 256, 1) var map_height: int = 30

@export_category("Forest")
@export_range(-1.0, 1.0, 0.01) var forest_threshold: float = 0.08
@export_range(0.001, 0.5, 0.001) var noise_frequency: float = 0.09
@export_range(1, 8, 1) var noise_octaves: int = 3

@export_category("Path")
@export_range(0.0, 1.0, 0.01) var path_wander_probability: float = 0.45

@export_category("Ruin")
@export_range(0, 32, 1) var ruin_edge_margin: int = 3
@export_range(0, 32, 1) var ruin_min_path_distance: int = 3
@export_range(0, 64, 1) var ruin_max_path_distance: int = 8
