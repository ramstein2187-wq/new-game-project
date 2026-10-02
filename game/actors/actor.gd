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
var attack: AttackDefinition
var equipped_weapon: WeaponDefinition
var weapon_id: StringName:
	get: return equipped_weapon.id if equipped_weapon != null else &""
var ai_policy: StringName
var target_id: StringName = &"player"
var aggression: int
var fear_bonus := 0
# Per-instance bounded caution memory for basic_melee_v3. Recreated on reset.
var melee_caution_target: StringName = &""
var melee_caution_spent := 0
var _effect_store := EffectStore.new()

func _init(actor_id: StringName, prototype: ActorDefinition, cell: Vector2i, label: String = "") -> void:
	_id = actor_id
	definition = prototype
	position = cell
	display_name = prototype.display_name if label.is_empty() else label
	max_hp = prototype.max_hp
	hp = max_hp
	species = prototype.combat_species.duplicate(true)
	if prototype.equipped_weapon != null:
		set_weapon(prototype.equipped_weapon)
	else:
		attack = prototype.active_attack().duplicate(true)
	body = BodyInstance.new(species.body_template, attack.required_capability)
	body.apply_natural_armor(prototype.natural_armor, prototype.natural_armor_profile)
	for armor in prototype.equipped_armor:
		body.equip_armor(armor)
	for ability in AbilityScores.NAMES:
		abilities.scores[ability] = prototype.initial_scores.get(ability, 10)
	abilities.remaining = prototype.ability_points
	ai_policy = prototype.ai_policy
	aggression = prototype.aggression

func is_alive() -> bool:
	return hp > 0

# A definition ID has one active instance. Duplicate IDs reject; no stacking.
# Deep copies prevent changes to a caller's Resource or sibling Actor leaking in.
func add_effect(effect: GameplayEffectDefinition, source_id: StringName = &"system") -> bool:
	return _effect_store.add(effect, source_id)

func remove_effect(effect_id: StringName) -> bool:
	return _effect_store.remove(effect_id)

func has_effect(effect_id: StringName) -> bool:
	return _effect_store.has(effect_id)

func clear_effects() -> void:
	_effect_store.clear()

func active_effects() -> Array[GameplayEffectDefinition]:
	return _effect_store.definition_snapshots()

func active_effect_instances() -> Array[ActiveEffect]:
	return _effect_store.snapshots()

func stat_breakdown(stat: StringName) -> Dictionary:
	if not StatCatalog.is_known(stat):
		return {"stat": stat, "valid": false, "value": 0.0, "steps": []}
	var base := definition.movement_speed if stat == StatCatalog.MOVEMENT_SPEED else float(abilities.scores[stat])
	return StatResolver.resolve(stat, base, _effect_store, StringName("actor:" + String(definition.type_id)))

func apply_action_cost_modifiers(base: float, tags: Array[StringName], intrinsic_percent: float = 0.0, intrinsic_source: StringName = &"") -> Dictionary:
	return _effect_store.apply_action_cost_modifiers(base, tags, intrinsic_percent, intrinsic_source)

func resolved_stat(stat: StringName) -> float:
	return float(stat_breakdown(stat).value)

# Gameplay checks consume one resolved primary attribute. An alternate must be
# supplied explicitly by the authored rule; it is never inferred from a domain.
func primary_attribute_check(primary: StringName, alternate: StringName = &"") -> Dictionary:
	return PrimaryAttributeCheck.resolve(self, primary, alternate)

func primary_modifier(stat: StringName) -> int:
	var check := primary_attribute_check(stat)
	return int(check.modifier) if check.valid else 0

func fear() -> int:
	return maxi(0, roundi((max_hp - hp) * 120.0 / max_hp) + fear_bonus)

# Prototype/debug assignment, not Can Equip. Injury never discards the weapon.
func set_weapon(weapon: WeaponDefinition) -> bool:
	if weapon == null or not weapon.is_valid():
		return false
	equipped_weapon = weapon.duplicate(true)
	attack = equipped_weapon.attack_definition
	return true

func attack_capability() -> StringName:
	return &"weapon_manipulation" if equipped_weapon != null else attack.required_capability

func attack_capability_count() -> int:
	return equipped_weapon.required_hands if equipped_weapon != null else attack.required_capability_count

func weapon_action(action_id: StringName) -> WeaponActionDefinition:
	return equipped_weapon.get_action(action_id) if equipped_weapon != null else null

func available_weapon_actions() -> Array[WeaponActionDefinition]:
	var result: Array[WeaponActionDefinition] = []
	if equipped_weapon != null and is_alive() and body.attack_efficiency(attack_capability(), attack_capability_count()) > 0:
		for action in equipped_weapon.actions:
			if action.is_valid():
				result.append(action)
	return result
