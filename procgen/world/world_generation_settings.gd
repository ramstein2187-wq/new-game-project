class_name WorldGenerationSettings
extends Resource

@export_category("World")
@export_range(16, 2048, 1) var world_width: int = 128
@export_range(16, 2048, 1) var world_height: int = 96
@export_range(0.05, 0.95, 0.01) var sea_level: float = 0.46

@export_category("Terrain")
@export_range(0.25, 8.0, 0.05) var continent_scale: float = 1.8
@export_range(1.0, 32.0, 0.25) var detail_scale: float = 9.0
@export_range(1, 8, 1) var terrain_octaves: int = 4
@export_range(0.0, 1.0, 0.01) var edge_ocean_strength: float = 0.30
@export_range(0.01, 0.50, 0.01) var edge_falloff_fraction: float = 0.12
@export_range(0.0, 1.0, 0.01) var mountain_strength: float = 0.24
@export_range(0.0, 1.0, 0.01) var mountain_ridge_threshold: float = 0.68

@export_category("Climate")
@export_range(0.25, 16.0, 0.25) var climate_noise_scale: float = 4.0
@export_range(0.0, 1.0, 0.01) var elevation_temperature_penalty: float = 0.55
@export_range(0.0, 2.0, 0.01) var orographic_rain_strength: float = 0.70
@export_range(0.90, 1.0, 0.001) var atmospheric_moisture_retention: float = 0.985
@export var prevailing_wind_from_west: bool = true

@export_category("Hydrology")
@export_range(0.0, 1.0, 0.01) var runoff_floor: float = 0.05
@export_range(0.0, 1.0, 0.01) var drainage_runoff_reduction: float = 0.55
@export_range(1.0, 256.0, 0.5) var river_accumulation_threshold: float = 9.0
@export_range(16, 2048, 1) var river_threshold_reference_size: int = 128
@export_range(0.0, 1.0, 0.01) var river_moisture_bonus: float = 0.25
@export_range(0.0, 1.0, 0.01) var basin_moisture_bonus: float = 0.10

@export_category("Classification")
@export_range(0.0, 1.0, 0.01) var hill_elevation: float = 0.58
@export_range(0.0, 1.0, 0.01) var mountain_elevation: float = 0.72
@export_range(0.0, 1.0, 0.01) var hill_slope: float = 0.08
@export_range(0.0, 1.0, 0.01) var mountain_slope: float = 0.16


func validate() -> void:
	assert(world_width >= 16)
	assert(world_height >= 16)
	assert(sea_level > 0.0 and sea_level < 1.0)
	assert(continent_scale > 0.0)
	assert(detail_scale > 0.0)
	assert(terrain_octaves > 0)
	assert(edge_falloff_fraction > 0.0)
	assert(mountain_ridge_threshold >= 0.0 and mountain_ridge_threshold <= 1.0)
	assert(climate_noise_scale > 0.0)
	assert(atmospheric_moisture_retention > 0.0 and atmospheric_moisture_retention <= 1.0)
	assert(river_accumulation_threshold > 0.0)
	assert(river_threshold_reference_size > 0)
	assert(hill_elevation < mountain_elevation)
	assert(hill_slope < mountain_slope)
