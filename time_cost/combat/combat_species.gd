class_name CombatSpecies
extends Resource

@export var body_template: BodyTemplate
@export var body_size := 1.0
@export var attack_ability: StringName = &"STR"
@export var attack_capability: StringName = &"weapon_manipulation"
@export var attack_id: StringName = &"melee"
@export var damage_type: StringName = &"Sharp"
@export var penetration := 20.0

static func human() -> CombatSpecies:
	var species := CombatSpecies.new()
	species.body_template = BodyTemplate.create(false)
	return species

static func rat() -> CombatSpecies:
	var species := CombatSpecies.new()
	species.body_template = BodyTemplate.create(true)
	species.body_size = 0.2
	species.attack_ability = &"DEX"
	species.attack_capability = &"bite"
	species.attack_id = &"bite"
	return species
