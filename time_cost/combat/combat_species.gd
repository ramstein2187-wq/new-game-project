class_name CombatSpecies
extends Resource

@export var body_template: BodyTemplate
@export var body_size := 1.0

static func human() -> CombatSpecies:
	var species := CombatSpecies.new()
	species.body_template = BodyTemplate.human()
	return species

static func rat() -> CombatSpecies:
	var species := CombatSpecies.new()
	species.body_template = BodyTemplate.quadruped_canine()
	species.body_size = 0.2
	return species


static func create(template: BodyTemplate, size: float = 1.0) -> CombatSpecies:
	var species := CombatSpecies.new()
	species.body_template = template
	species.body_size = size
	return species
