class_name Actor
extends RefCounted

var id: StringName:
	get: return _id
var _id: StringName
var definition: ActorDefinition
var display_name: String
var position: Vector2i
var facing := Vector2i.RIGHT
var hp: int
var max_hp: int
var abilities := AbilityScores.new()
var body: BodyInstance
# Instance copy supports prototype/debug combat tuning without mutating siblings.
var species: CombatSpecies
var ai_policy: StringName
var target_id: StringName = &"player"
var aggression: int
var fear_bonus := 0

func _init(actor_id: StringName, prototype: ActorDefinition, cell: Vector2i, label: String = "") -> void:
	_id = actor_id
	definition = prototype
	position = cell
	display_name = prototype.display_name if label.is_empty() else label
	max_hp = prototype.max_hp
	hp = max_hp
	species = prototype.combat_species.duplicate(true)
	body = BodyInstance.new(species.body_template, species.attack_capability)
	for ability in AbilityScores.NAMES:
		abilities.scores[ability] = prototype.initial_scores.get(ability, 10)
	abilities.remaining = prototype.ability_points
	ai_policy = prototype.ai_policy
	aggression = prototype.aggression

func is_alive() -> bool:
	return hp > 0

func fear() -> int:
	return maxi(0, roundi((max_hp - hp) * 120.0 / max_hp) + fear_bonus)
