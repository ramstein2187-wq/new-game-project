extends SceneTree

var failures := 0

func expect(condition: bool, description: String) -> void:
	if not condition:
		failures += 1
		push_error("FAIL: " + description)

func _init() -> void:
	var definition := ActorDefinition.rat_common()
	var first := Actor.new(&"scout", definition, Vector2i(1, 1), "Scout")
	var second := Actor.new(&"guard", definition, Vector2i(2, 1), "Guard")
	expect(first.definition == second.definition, "Instances share static definition")
	first.hp = 10
	first.fear_bonus = 7
	first.aggression = 200
	first.facing = Vector2i.UP
	first.target_id = &"guard"
	first.abilities.allocate(&"DEX", 1)
	first.body.apply_damage(&"left_foreleg", 3)
	first.species.penetration = 99
	expect(second.hp == 30 and second.fear() == 0 and second.aggression == 50, "HP and AI state isolated")
	expect(second.facing == Vector2i.RIGHT and second.target_id == &"player", "Facing and target isolated")
	expect(second.abilities.scores.DEX == 10 and second.abilities.remaining == 12, "Ability allocation isolated")
	expect(second.body.capability(&"locomotion") == 1.0 and first.body.capability(&"locomotion") < 1, "Body integrity isolated")
	expect(second.species.penetration == 20 and definition.combat_species.penetration == 20, "Debug species overrides isolated from prototype")
	var registry := ActorRegistry.new()
	expect(registry.register(first) and registry.register(second), "Register two arbitrary IDs")
	expect(not registry.register(Actor.new(&"scout", definition, Vector2i(3, 1))), "Duplicate ID rejected")
	expect(not registry.register(Actor.new(&"other", definition, second.position)), "Live position collision rejected")
	expect(registry.all() == [first, second], "Stable registration order")
	expect(registry.get_actor(&"missing") == null and not registry.has_actor(&"missing"), "Unknown IDs do not alias a rat")
	first.hp = 0
	expect(registry.occupant_at(first.position) == null and registry.get_actor(first.id) == first, "Dead retained but does not occupy")
	expect(registry.register(Actor.new(&"replacement", definition, first.position)), "Dead cell reused")
	expect(registry.remove(first.id) and not registry.remove(first.id), "Explicit removal")
	var game := TimeCostGame.new()
	var npc := Actor.new(&"visitor", ActorDefinition.human_default(), Vector2i(3, 3))
	expect(game.register_actor(npc), "Register human NPC independently of its ID")
	expect(game.scheduler.has_actor(npc.id) and game.get_actor(npc.id) == npc, "Registry and scheduler both register")
	expect(MoveAction.new(Vector2i(1, 1)).get_cost(game, npc.id) == 1400 and AttackAction.new(&"player").get_cost(game, npc.id) == 1250, "Human NPC gets human costs")
	expect(not game.register_actor(Actor.new(&"blocked", definition, Vector2i.ZERO)), "Terrain invalid spawn rejected")
	expect(not game.actors.has_actor(&"blocked") and not game.scheduler.has_actor(&"blocked"), "Invalid spawn is atomic")
	game.player_wait()
	expect(not game.register_actor(Actor.new(&"past", definition, Vector2i(4, 3)), 0), "Past scheduling rejected without partial registry state")
	expect(not game.actors.has_actor(&"past"), "Past actor not retained")
	expect(game.remove_actor(npc.id) and not game.scheduler.has_actor(npc.id), "Removal unschedules actor")
	expect(not game.remove_actor(&"player"), "Player removal unsupported explicitly")
	var new_npc := Actor.new(&"late", definition, Vector2i(3, 3))
	expect(game.register_actor(new_npc) and game.scheduler.get_ready_time(new_npc.id) == game.world_time, "New actor starts at current world time")
	game.damage_actor(new_npc.id, 30)
	expect(game.get_actor(new_npc.id) == new_npc and not game.scheduler.has_actor(new_npc.id), "Death retains body and removes schedule")
	game.player_hp = 31
	expect(game.get_actor(&"player").hp == 31, "Legacy HP accessor forwards ownership")
	game.get_actor(&"player").hp = 29
	expect(game.player_hp == 29 and game.bodies[&"player"] == game.get_actor(&"player").body, "Compatibility views reflect Actor state")
	if failures == 0:
		print("PASS: common Actor ownership, isolation, registry and lifecycle")
	quit(1 if failures else 0)
