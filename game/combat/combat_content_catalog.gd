class_name CombatContentCatalog
extends RefCounted

const HOSTILE_IDS: Array[StringName] = [
	&"feral_dog", &"wolf", &"boar", &"giant_beetle", &"cave_lizard",
	&"giant_spider", &"giant_crab", &"feral_ape", &"raider", &"armored_raider",
]


static func weapon(id: StringName) -> WeaponDefinition:
	return all_weapons().get(id)


static func all_weapons() -> Dictionary:
	return {
		&"hunting_knife": WeaponDefinition.create(
			&"hunting_knife", "Hunting Knife",
			AttackDefinition.create(&"hunting_knife_attack", "Knife slash", 1, 4, AttackDefinition.DAMAGE_CUT, 20.0,
				AttackDefinition.ABILITY_BEST_STR_DEX, &"weapon_manipulation"),
			1, [&"Finesse"], [WeaponActionDefinition.create(&"quick_stab", "Quick Stab", 0.75, AttackDefinition.DAMAGE_PUNCTURE, 0.0, -1)]
		),
		&"handaxe": WeaponDefinition.create(
			&"handaxe", "Handaxe",
			AttackDefinition.create(&"handaxe_attack", "Handaxe strike", 1, 6, AttackDefinition.DAMAGE_CUT, 20.0,
				AttackDefinition.ABILITY_STR, &"weapon_manipulation"), 1
		),
		&"longsword": WeaponDefinition.create(
			&"longsword", "Longsword",
			AttackDefinition.create(&"longsword_attack", "Longsword strike", 1, 8, AttackDefinition.DAMAGE_CUT, 30.0,
				AttackDefinition.ABILITY_STR, &"weapon_manipulation"), 1, [],
			[WeaponActionDefinition.create(&"thrust", "Thrust", 1.25, AttackDefinition.DAMAGE_PUNCTURE, 10.0)]
		),
		&"warhammer": WeaponDefinition.create(
			&"warhammer", "Warhammer",
			AttackDefinition.create(&"warhammer_attack", "Warhammer strike", 1, 8, AttackDefinition.DAMAGE_BLUNT, 40.0,
				AttackDefinition.ABILITY_STR, &"weapon_manipulation"), 1, [],
			[WeaponActionDefinition.create(&"crushing_blow", "Crushing Blow", 1.5, AttackDefinition.DAMAGE_BLUNT, 20.0)]
		),
		&"maul": WeaponDefinition.create(
			&"maul", "Maul",
			AttackDefinition.create(&"maul_attack", "Maul strike", 2, 6, AttackDefinition.DAMAGE_BLUNT, 50.0,
				AttackDefinition.ABILITY_STR, &"weapon_manipulation", 2), 2, [],
			[WeaponActionDefinition.create(&"overhead_smash", "Overhead Smash", 1.75, AttackDefinition.DAMAGE_BLUNT, 20.0)]
		),
	}


static func armor(id: StringName) -> ArmorDefinition:
	return all_armor().get(id)


static func all_armor() -> Dictionary:
	return {
		&"gambeson": ArmorDefinition.create(&"gambeson", "Gambeson", 20, [&"torso", &"arm"]),
		&"leather_vest": ArmorDefinition.create(&"leather_vest", "Leather Vest", 30, [&"torso"]),
		&"chain_shirt": ArmorDefinition.create(&"chain_shirt", "Chain Shirt", 50, [&"torso", &"arm"], ArmorDefinition.MAIL),
		&"scrap_plate": ArmorDefinition.create(&"scrap_plate", "Scrap Plate", 70, [&"torso"], ArmorDefinition.RIGID),
		&"iron_helmet": ArmorDefinition.create(&"iron_helmet", "Iron Helmet", 60, [&"head"], ArmorDefinition.RIGID),
	}


static func natural_attack(id: StringName) -> AttackDefinition:
	return all_natural_attacks().get(id)


static func all_natural_attacks() -> Dictionary:
	return {
		&"rat_bite": AttackDefinition.create(&"bite", "Bite", 1, 4, AttackDefinition.DAMAGE_PUNCTURE, 20.0,
			AttackDefinition.ABILITY_DEX, &"bite"),
		&"dog_bite": AttackDefinition.create(&"bite", "Bite", 1, 6, AttackDefinition.DAMAGE_PUNCTURE, 10.0,
			AttackDefinition.ABILITY_STR, &"bite"),
		&"wolf_bite": AttackDefinition.create(&"bite", "Bite", 2, 4, AttackDefinition.DAMAGE_PUNCTURE, 20.0,
			AttackDefinition.ABILITY_STR, &"bite"),
		&"tusk": AttackDefinition.create(&"tusk", "Tusk", 1, 8, AttackDefinition.DAMAGE_PUNCTURE, 30.0,
			AttackDefinition.ABILITY_STR, &"tusk"),
		&"mandible": AttackDefinition.create(&"mandible", "Mandible", 1, 6, AttackDefinition.DAMAGE_CUT, 20.0,
			AttackDefinition.ABILITY_STR, &"mandible"),
		&"lizard_bite": AttackDefinition.create(&"bite", "Bite", 1, 6, AttackDefinition.DAMAGE_PUNCTURE, 20.0,
			AttackDefinition.ABILITY_STR, &"bite"),
		&"spider_bite": AttackDefinition.create(&"bite", "Bite", 1, 4, AttackDefinition.DAMAGE_PUNCTURE, 20.0,
			AttackDefinition.ABILITY_DEX, &"bite"),
		&"claw": AttackDefinition.create(&"claw", "Claw", 1, 8, AttackDefinition.DAMAGE_BLUNT, 30.0,
			AttackDefinition.ABILITY_STR, &"claw"),
		&"fist": AttackDefinition.create(&"fist", "Fist", 1, 8, AttackDefinition.DAMAGE_BLUNT, 10.0,
			AttackDefinition.ABILITY_STR, &"weapon_manipulation"),
	}


static func actor(id: StringName) -> ActorDefinition:
	return all_hostiles().get(id)


static func all_hostiles() -> Dictionary:
	return {
		&"feral_dog": _actor(&"feral_dog", "Feral Dog", BodyTemplate.quadruped_canine(), 16, 12, 14, 900, 1260, 0, natural_attack(&"dog_bite")),
		&"wolf": _actor(&"wolf", "Wolf", BodyTemplate.quadruped_canine(), 22, 14, 14, 850, 1190, 10, natural_attack(&"wolf_bite")),
		&"boar": _actor(&"boar", "Boar", BodyTemplate.quadruped(), 32, 16, 10, 1000, 1400, 20, natural_attack(&"tusk")),
		&"giant_beetle": _actor(&"giant_beetle", "Giant Beetle", BodyTemplate.beetle(), 28, 14, 8, 1200, 1680, 60, natural_attack(&"mandible"), null, [], ArmorDefinition.RIGID),
		&"cave_lizard": _actor(&"cave_lizard", "Cave Lizard", BodyTemplate.lizard(), 24, 12, 12, 950, 1330, 30, natural_attack(&"lizard_bite")),
		&"giant_spider": _actor(&"giant_spider", "Giant Spider", BodyTemplate.spider(), 18, 10, 16, 800, 1120, 10, natural_attack(&"spider_bite"), null, [], ArmorDefinition.RIGID),
		&"giant_crab": _actor(&"giant_crab", "Giant Crab", BodyTemplate.crab(), 30, 16, 8, 1200, 1680, 50, natural_attack(&"claw"), null, [], ArmorDefinition.RIGID),
		&"feral_ape": _actor(&"feral_ape", "Feral Ape", BodyTemplate.human(), 38, 18, 10, 1000, 1400, 10, natural_attack(&"fist")),
		&"raider": _actor(&"raider", "Raider", BodyTemplate.human(), 26, 12, 12, 1000, 1400, 0, null, weapon(&"handaxe"), [&"gambeson"]),
		&"armored_raider": _actor(&"armored_raider", "Armored Raider", BodyTemplate.human(), 34, 16, 8, 1100, 1540, 0, null, weapon(&"maul"), [&"scrap_plate", &"iron_helmet"]),
	}


static func _actor(
	id: StringName,
	label: String,
	template: BodyTemplate,
	hp: int,
	strength: int,
	dexterity: int,
	move_cardinal: int,
	move_diagonal: int,
	natural_armor: int,
	attack: AttackDefinition = null,
	weapon_definition: WeaponDefinition = null,
	armor_ids: Array = [],
	natural_profile: StringName = ArmorDefinition.SOFT
) -> ActorDefinition:
	var definition := ActorDefinition.new()
	definition.type_id = id
	definition.display_name = label
	definition.combat_species = CombatSpecies.create(template)
	definition.max_hp = hp
	definition.initial_scores = {&"STR": strength, &"DEX": dexterity}
	definition.proficiency_bonus = 2
	definition.move_cardinal = move_cardinal
	definition.move_diagonal = move_diagonal
	definition.natural_armor = natural_armor
	definition.natural_armor_profile = natural_profile
	definition.attack_definition = attack
	definition.equipped_weapon = weapon_definition
	definition.ai_policy = &"basic_melee"
	for armor_id in armor_ids:
		definition.equipped_armor.append(armor(StringName(armor_id)))
	return definition
