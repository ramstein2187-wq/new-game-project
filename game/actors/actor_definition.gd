class_name ActorDefinition
extends Resource

# Shared content data; runtime code treats definitions as immutable prototypes.
@export var type_id: StringName = &"human"
@export var display_name := "Human"
@export var combat_species: CombatSpecies
@export var attack_definition: AttackDefinition
@export var equipped_weapon: WeaponDefinition
@export var equipped_armor: Array[ArmorDefinition] = []
@export var natural_armor := 0
@export var natural_armor_profile: StringName = ArmorProfileCatalog.SOFT
@export var max_hp := 50
@export var initial_scores: Dictionary = {}
@export var ability_points := 12
@export var proficiency_bonus := 2
@export var move_cardinal := 1000
@export var move_diagonal := 1400
@export var interact_cost := 500
@export var wait_cost := 1000
@export var ai_policy: StringName = &"wait"
@export var aggression := 50

static func human_default() -> ActorDefinition:
	var definition := ActorDefinition.new()
	definition.combat_species = CombatSpecies.human()
	definition.equipped_weapon = CombatContentCatalog.weapon(&"longsword")
	return definition

static func rat_common() -> ActorDefinition:
	var definition := ActorDefinition.new()
	definition.type_id = &"rat"
	definition.display_name = "Rat"
	definition.combat_species = CombatSpecies.rat()
	definition.attack_definition = CombatContentCatalog.natural_attack(&"rat_bite")
	definition.max_hp = 30
	definition.move_cardinal = 750
	definition.move_diagonal = 1050
	definition.ai_policy = &"rat_tactics"
	return definition


func active_attack() -> AttackDefinition:
	return equipped_weapon.attack_definition if equipped_weapon != null else attack_definition

func is_valid() -> bool:
	var attack := active_attack()
	if combat_species == null or combat_species.body_template == null or attack == null or not attack.is_valid():
		return false
	if equipped_weapon != null and not equipped_weapon.is_valid():
		return false
	for armor in equipped_armor:
		if armor == null or not armor.is_valid():
			return false
	return max_hp > 0 and proficiency_bonus >= 0 and natural_armor >= 0 \
		and ArmorProfileCatalog.has_profile(natural_armor_profile) \
		and move_cardinal > 0 and move_diagonal > 0 and interact_cost > 0 and wait_cost > 0
