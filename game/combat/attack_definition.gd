class_name AttackDefinition
extends Resource

const DAMAGE_CUT: StringName = &"Cut"
const DAMAGE_PUNCTURE: StringName = &"Puncture"
const DAMAGE_BLUNT: StringName = &"Blunt"

const ABILITY_STR: StringName = &"STR"
const ABILITY_DEX: StringName = &"DEX"
const ABILITY_CON: StringName = &"CON"
const ABILITY_PER: StringName = &"PER"
const ABILITY_INT: StringName = &"INT"
const ABILITY_WIL: StringName = &"WIL"
const ABILITY_BEST_STR_DEX: StringName = &"best_str_dex"

@export var id: StringName = &"melee"
@export var display_name := "Melee"
@export var damage_dice := DamageDice.create(1, 4)
# Kept as an open StringName so future resolution families can register additional
# damage types without changing this Resource's serialized shape.
@export var damage_type: StringName = DAMAGE_BLUNT
@export var penetration := 0.0
@export var ability_rule: StringName = ABILITY_STR
@export var required_capability: StringName = &"weapon_manipulation"
@export var required_capability_count := 1


static func create(
	attack_id: StringName,
	label: String,
	dice_count: int,
	dice_size: int,
	type: StringName,
	pen: float,
	ability: StringName,
	capability: StringName,
	capability_count: int = 1
) -> AttackDefinition:
	var attack := AttackDefinition.new()
	attack.id = attack_id
	attack.display_name = label
	attack.damage_dice = DamageDice.create(dice_count, dice_size)
	attack.damage_type = type
	attack.penetration = pen
	attack.ability_rule = ability
	attack.required_capability = capability
	attack.required_capability_count = capability_count
	return attack


func is_valid() -> bool:
	return (
		id != &""
		and damage_dice != null
		and damage_dice.is_valid()
		and is_physical_damage_type(damage_type)
		and penetration >= 0.0
		and is_valid_ability_rule(ability_rule)
		and required_capability != &""
		and required_capability_count > 0
	)


static func is_physical_damage_type(type: StringName) -> bool:
	return type in [DAMAGE_CUT, DAMAGE_PUNCTURE, DAMAGE_BLUNT]


static func is_valid_ability_rule(rule: StringName) -> bool:
	return StatCatalog.PRIMARY.has(rule) or rule == ABILITY_BEST_STR_DEX


# Select one primary, never sum them. Legacy finesse compares modifiers, with STR
# winning ties (including odd/fractional scores with equal integer modifiers).
func ability_for(actor: Actor) -> StringName:
	if ability_rule == ABILITY_BEST_STR_DEX:
		return ABILITY_DEX if actor.resolved_ability_modifier(ABILITY_DEX) > actor.resolved_ability_modifier(ABILITY_STR) else ABILITY_STR
	return ability_rule
