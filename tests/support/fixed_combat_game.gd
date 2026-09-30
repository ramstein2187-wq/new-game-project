extends TimeCostGame

# Synthetic historical scheduling/replay fixture, independent of authored balance.
# Deliberate fixed inputs; never update these when tuning production content.
func _create_initial_actors() -> void:
	var player := ActorDefinition.new()
	player.combat_species = CombatSpecies.human()
	player.equipped_weapon = WeaponDefinition.create(&"longsword", "Longsword",
		AttackDefinition.create(&"longsword_attack", "Longsword strike", 1, 8,
			AttackDefinition.DAMAGE_CUT, 30.0, AttackDefinition.ABILITY_STR, &"weapon_manipulation"), 1)
	var rat := ActorDefinition.new()
	rat.type_id = &"rat"
	rat.display_name = "Rat"
	rat.combat_species = CombatSpecies.create(BodyTemplate.quadruped_canine(), 0.2)
	rat.attack_definition = AttackDefinition.create(&"bite", "Bite", 1, 4,
		AttackDefinition.DAMAGE_PUNCTURE, 20.0, AttackDefinition.ABILITY_DEX, &"bite")
	rat.max_hp = 30
	rat.movement_speed = 1000.0 / 750.0
	rat.ai_policy = &"rat_tactics"
	actors.register(Actor.new(&"player", player, Vector2i(2, 3), "You"))
	register_actor(Actor.new(&"rat", rat, Vector2i(8, 3), "The rat"))
