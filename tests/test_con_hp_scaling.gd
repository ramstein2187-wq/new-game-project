extends SceneTree

var failures := 0
var assertions := 0

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func effect(id: StringName, value: float, operation: ModifierOperation.Kind = ModifierOperation.Kind.FLAT) -> GameplayEffectDefinition:
	var definition := GameplayEffectDefinition.new()
	definition.id = id
	var modifier := StatModifier.new()
	modifier.source_id = &"endurance_test"
	modifier.target_stat = StatCatalog.CON
	modifier.operation = operation
	modifier.value = value
	definition.stat_modifiers = [modifier]
	return definition

func invariant(actor: Actor) -> void:
	expect(actor.max_hp >= 1 and actor.hp >= 0 and actor.hp <= actor.max_hp, "HP bounds")
	expect(actor.max_hp == actor.max_hp_breakdown().value, "Runtime maximum equals authoritative query")
	expect(actor.max_hp_breakdown().con == actor.resolved_stat(StatCatalog.CON), "HP consumes the same resolved CON as M033")

func _init() -> void:
	_baselines_and_allocation()
	_effects_and_health()
	_game_lifecycle()
	_overview_and_dataset()
	print("%s: CON/Endurance derived HP (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _baselines_and_allocation() -> void:
	var definition := ActorDefinition.human_default()
	var actor := Actor.new(&"baseline", definition, Vector2i.ZERO)
	expect(definition.max_hp == 30 and actor.hp == 30 and actor.max_hp == 30, "Neutral CON human is 30/30")
	actor.hp = 20
	expect(actor.abilities.allocate(StatCatalog.CON, 1), "Existing allocation API supports CON")
	expect(actor.hp == 22 and actor.max_hp == 32, "CON 11 rounds 31.5 once and preserves 10 damage")
	expect(actor.abilities.allocate(StatCatalog.CON, 1) and actor.max_hp == 33 and actor.hp == 23, "CON 12 has no odd-score dead zone")
	actor.abilities.reset()
	expect(actor.hp == 20 and actor.max_hp == 30, "Existing reset API preserves damage")
	expect(not actor.abilities.allocate(StatCatalog.CON, -1) and actor.hp == 20, "Rejected allocation leaves HP unchanged")
	invariant(actor)
	for score in [8, 10, 14, 16]:
		var npc_definition := ActorDefinition.human_default()
		npc_definition.max_hp = 40
		npc_definition.initial_scores = {StatCatalog.CON: score}
		expect(npc_definition.is_valid(), "Authored CON including NPC below 10 is valid")
		var npc := Actor.new(&"npc", npc_definition, Vector2i.ZERO)
		var expected: int = {8: 36, 10: 40, 14: 48, 16: 52}[score]
		expect(npc.hp == expected and npc.max_hp == expected, "Authored Base HP and CON resolve at spawn")
		expect(npc_definition.max_hp == 40, "Runtime resolution never rewrites Base HP content")
		invariant(npc)

func _effects_and_health() -> void:
	var actor := Actor.new(&"effects", ActorDefinition.human_default(), Vector2i.ZERO)
	actor.hp -= 7
	var boost := effect(&"flat", 2)
	expect(actor.add_effect(boost, &"trait:test") and actor.hp == 26 and actor.max_hp == 33, "CON Flat changes both values, preserves damage")
	expect(not actor.add_effect(boost) and actor.hp == 26, "Duplicate rejected without HP drift")
	boost.stat_modifiers[0].value = 100
	expect(actor.max_hp == 33, "Caller Resource cannot change live CON or HP")
	expect(actor.add_effect(effect(&"percent_a", 0.2, ModifierOperation.Kind.PERCENT)), "First Percent applied")
	expect(actor.add_effect(effect(&"percent_b", 0.3, ModifierOperation.Kind.PERCENT)), "Second Percent applied")
	expect(actor.resolved_stat(StatCatalog.CON) == 17 and actor.max_hp == 41 and actor.hp == 34, "Percent pools add on base before Flat: 10*1.5+2, HP 40.5 -> 41")
	invariant(actor)
	expect(actor.remove_effect(&"flat") and actor.max_hp == 38 and actor.hp == 31, "Remove Flat uses still-resolved Percent CON")
	actor.clear_effects()
	expect(actor.max_hp == 30 and actor.hp == 23, "Clear restores initial maximum and damage")
	expect(not actor.remove_effect(&"missing") and actor.hp == 23, "Unknown removal preserves state")
	actor.hp += 3
	expect(actor.hp == 26, "Explicit existing HP recovery reduces damage")
	actor.hp = 999
	expect(actor.hp == actor.max_hp, "Overheal clamps to maximum")
	actor.hp = -5
	expect(actor.hp == 0 and not actor.is_alive(), "Negative HP clamps at death")
	actor.add_effect(effect(&"dead_boost", 10))
	expect(actor.max_hp == 45 and actor.hp == 0, "Max growth never revives a dead Actor")
	actor.remove_effect(&"dead_boost")
	expect(actor.hp == 0, "Removal never revives")
	invariant(actor)
	var weakened := Actor.new(&"weakened", ActorDefinition.human_default(), Vector2i.ZERO)
	weakened.add_effect(effect(&"weak", -2))
	expect(weakened.hp == 27 and weakened.max_hp == 27, "Full actor stays full under a decrease")
	weakened.remove_effect(&"weak")
	expect(weakened.hp == 30, "Full actor stays full under an increase")
	weakened.hp = 2
	weakened.add_effect(effect(&"lethal", -2))
	expect(weakened.hp == 0 and not weakened.is_alive(), "Decrease below retained damage can kill")
	weakened.remove_effect(&"lethal")
	expect(weakened.hp == 0, "Restored CON cannot undo death")
	weakened.add_effect(effect(&"extreme", -100))
	expect(weakened.max_hp == 1 and weakened.hp == 0, "Negative CON uses minimum maximum 1")
	invariant(weakened)
	var fractional := Actor.new(&"fractional", ActorDefinition.human_default(), Vector2i.ZERO)
	fractional.add_effect(effect(&"fraction", 0.05, ModifierOperation.Kind.PERCENT))
	expect(fractional.resolved_stat(StatCatalog.CON) == 10.5 and fractional.max_hp == 31, "HP keeps fractional resolved CON, unlike a primary check modifier")

func _game_lifecycle() -> void:
	var game := TimeCostGame.new()
	var player := game.get_actor(&"player")
	var npc := game.get_actor(&"rat")
	var rng := game.combat_rng.state
	var clock := game.world_time
	game.damage_actor(player.id, 28)
	player.add_effect(effect(&"kill_player", -2))
	expect(game.game_over and player.hp == 0 and not game.player_wait(), "CON-depletion death sets game over immediately")
	player.remove_effect(&"kill_player")
	expect(player.hp == 0 and game.game_over, "No automatic revival/game-over reset")
	npc.hp = 1
	npc.add_effect(effect(&"kill_npc", -2))
	expect(not npc.is_alive() and not game.scheduler.has_actor(npc.id), "CON-depletion death unschedules NPC")
	expect(game.actors.get_actor(npc.id) == npc and game.actors.occupant_at(npc.position) == null, "Dead NPC retained without occupancy")
	expect(game.combat_rng.state == rng and game.world_time == clock and game.combat_log.events.is_empty(), "HP/effect operations do not consume RNG/time/events")
	game.reset()
	player.hp = 2
	player.add_effect(effect(&"stale", -2))
	expect(not game.game_over and game.player_hp == 30, "Retained old actor cannot kill reset game")
	var live := game.get_actor(&"player")
	game.damage_actor(live.id, -10)
	expect(live.hp == 30, "Negative damage does not heal")
	game.damage_actor(live.id, 7)
	expect(live.hp == 23, "Production damage still deducts once")
	live.hp += 4
	expect(live.hp == 27, "Explicit HP recovery remains supported")
	live.add_effect(effect(&"allocation_support", 2))
	game.damage_actor(live.id, 29)
	live.remove_effect(&"allocation_support")
	expect(game.game_over and live.hp == 0, "Removing beneficial CON can also kill")
	game.reset()
	live = game.get_actor(&"player")
	live.abilities.allocate(StatCatalog.CON, 1)
	game.damage_actor(live.id, 31)
	live.abilities.reset()
	expect(live.hp == 0 and game.game_over, "AbilityScores reset shares lethal maximum policy")

func _overview_and_dataset() -> void:
	var game := TimeCostGame.new()
	var actor := game.get_actor(&"player")
	actor.add_effect(effect(&"endurance", 2), &"trait:endurance")
	actor.hp -= 5
	var before := var_to_str([actor.hp, actor.max_hp, actor.abilities.scores, actor.body.parts, game.combat_rng.state, game.world_time])
	var model := CharacterOverviewQuery.read(game)
	var details := CharacterOverviewText.inspection(model, &"health")
	expect(model.hp == 28 and model.max_hp == 33 and model.max_hp_breakdown.con == 12, "Overview uses runtime truth")
	expect(details.body.contains("Base HP") and details.body.contains("Endurance") and details.body.contains("Maximum HP") and details.body.contains(CharacterOverviewText.source_label(&"trait:endurance")), "Inspector explains base, resolved CON, Effect origin and final maximum")
	model.max_hp_breakdown.con_breakdown.steps[1].value = 999
	expect(before == var_to_str([actor.hp, actor.max_hp, actor.abilities.scores, actor.body.parts, game.combat_rng.state, game.world_time]), "Overview/Inspector queries and model mutation preserve gameplay")
	actor.remove_effect(&"endurance")
	expect(CharacterOverviewQuery.read(game).hp == 25 and CharacterOverviewQuery.read(game).max_hp == 30, "Live requery reflects removal")
	var dataset: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://docs/datasets/monsters.json"))
	for record in dataset.records:
		var definition := CombatContentCatalog.actor(StringName(record.id))
		var runtime := Actor.new(StringName(record.id), definition, Vector2i.ZERO)
		expect(int(record.hp) == runtime.max_hp and runtime.hp == runtime.max_hp, "Dataset hp is fresh no-Effect resolved maximum: " + record.id)
		invariant(runtime)
