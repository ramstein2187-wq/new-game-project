class_name MeleeAttackOption
extends RefCounted

# Observation adapter for attack-like melee choices. Tactical scoring reads this
# small shape instead of knowing concrete weapon IDs or duplicating combat rules.
var action: AttackAction
var id: StringName = &"basic"
var display_name := "Basic attack"
var damage_type: StringName
var penetration := 0.0
var base_penetration := 0.0
var damage_modifier := 0
var situation_modifier := 0
var cost := AttackAction.BASE_COST
var cost_ratio := 1.0


static func capture(game: RefCounted, actor_id: StringName, target_id: StringName) -> Array[MeleeAttackOption]:
	var result: Array[MeleeAttackOption] = []
	var actor: Actor = game.get_actor(actor_id)
	if actor == null or actor.attack == null:
		return result
	result.append(_from(game, actor_id, target_id, actor, null))
	for definition: WeaponActionDefinition in actor.available_weapon_actions():
		result.append(_from(game, actor_id, target_id, actor, definition))
	return result


static func _from(game: RefCounted, actor_id: StringName, target_id: StringName,
		actor: Actor, definition: WeaponActionDefinition) -> MeleeAttackOption:
	var option := MeleeAttackOption.new()
	var action_id: StringName = definition.id if definition != null else &""
	option.action = AttackAction.new(target_id, action_id)
	option.id = definition.id if definition != null else &"basic"
	option.display_name = definition.display_name if definition != null else actor.attack.display_name
	var resolved: AttackDefinition = definition.modified_attack(actor.attack) if definition != null else actor.attack
	option.damage_type = resolved.damage_type
	option.penetration = resolved.penetration
	option.base_penetration = actor.attack.penetration
	option.damage_modifier = definition.damage_modifier if definition != null else 0
	option.situation_modifier = definition.situation_modifier if definition != null else 0
	option.cost = option.action.get_cost(game, actor_id)
	option.cost_ratio = float(option.cost) / float(AttackAction.BASE_COST) if option.cost > 0 else 0.0
	return option


func commitment_band() -> StringName:
	if cost_ratio <= 0.8:
		return &"quick"
	if cost_ratio <= 1.1:
		return &"normal"
	if cost_ratio <= 1.5:
		return &"committed"
	return &"heavy"


func penetration_gain() -> float:
	return maxf(0.0, penetration - base_penetration)
