class_name ActorDefinition
extends Resource

# Shared content data; runtime code treats definitions as immutable prototypes.
@export var type_id: StringName = &"human"
@export var display_name := "Human"
@export var combat_species: CombatSpecies
@export var max_hp := 50
@export var initial_scores: Dictionary = {}
@export var ability_points := 12
@export var move_cardinal := 1000
@export var move_diagonal := 1400
@export var attack_cost := 1250
@export var interact_cost := 500
@export var wait_cost := 1000
@export var ai_policy: StringName = &"wait"
@export var aggression := 50

static func human_default() -> ActorDefinition:
	var definition := ActorDefinition.new()
	definition.combat_species = CombatSpecies.human()
	return definition

static func rat_common() -> ActorDefinition:
	var definition := ActorDefinition.new()
	definition.type_id = &"rat"
	definition.display_name = "Rat"
	definition.combat_species = CombatSpecies.rat()
	definition.max_hp = 30
	definition.move_cardinal = 750
	definition.move_diagonal = 1050
	definition.attack_cost = 1000
	definition.ai_policy = &"rat_tactics"
	return definition

func is_valid() -> bool:
	return combat_species != null and combat_species.body_template != null and max_hp > 0 \
		and move_cardinal > 0 and move_diagonal > 0 and attack_cost > 0 \
		and interact_cost > 0 and wait_cost > 0
