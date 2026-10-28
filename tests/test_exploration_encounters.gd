extends SceneTree
## Controlled encounter fixtures selected from real production spawns. Positioning
## and 1-HP finish fixtures are explicit, not claims about unassisted survival.
var checks := 0
var failures: Array[String] = []
var rows: Array = []

func check(ok: bool, message: String) -> void:
	checks += 1
	if not ok: failures.append(message)

func _init() -> void:
	var found := {}
	for seed in range(1, 30):
		var m := HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(seed))
		var w := HistoryWorldRealization.build(m, -1, true)
		for zone in w.selected:
			for i in range(w.zones[zone].npc_types.size()):
				var type: String = w.zones[zone].npc_types[i]
				if found.has(type): continue
				found[type] = true; duel(m, zone, i, type)
		if found.size() == ExplorationZoneBuilder.encounter_table.size(): break
	check(found.size() >= 8, "All eight authored encounter types exercised")
	FileAccess.open("res://docs/reviews/m049/encounters.json", FileAccess.WRITE).store_string(JSON.stringify({"fixture": "Real spawn selection; adjacent setup; injured 1-HP NPC finish; no balance claim", "rows": rows, "checks": checks, "failures": failures}, "\t", true) + "\n")
	print("M049 catalog encounters: ", checks, " checks / ", failures.size(), " failures")
	for f in failures: push_error(f)
	quit(0 if failures.is_empty() else 1)

func duel(m: HistoryWorldManifest, zone: String, index: int, type: String) -> void:
	var g := HistoryPlayableGame.new(); g.exploration_enabled = true; g.start(m)
	var spawn := HistoryWorldRealization.vector(g.initial_world.zones[zone].npc_spawns[index])
	g._capture_zone(); g._activate(zone, spawn + Vector2i.LEFT)
	var id := StringName("fauna:" + zone + ":" + str(index))
	var a := g.get_actor(id); var catalog := CombatContentCatalog.actor(StringName(type))
	check(a.definition.max_hp == catalog.max_hp and a.definition.initial_scores == catalog.initial_scores and a.ai_policy == catalog.ai_policy and a.attack.id == catalog.active_attack().id and a.attack.damage_dice.notation() == catalog.active_attack().damage_dice.notation() and a.attack.penetration == catalog.active_attack().penetration, "No combat stat override " + type)
	var setup := g.save_json()
	var log := ExplorationAuditLog.new(); g.combat_log = log
	for turn in range(4):
		if g.game_over: break
		g.player_wait()
	check(log.npc_attacks > 0 and log.action_times.get("attack:npc", {}).get("time", 0) > 0, "Existing AI and attack time " + type)
	var before := g.save_json(); var clone := HistoryPlayableGame.new()
	check(clone.load_json(before) and clone.save_json() == before, "Injury/RNG/readiness state roundtrip " + type)
	# A bounded finish fixture proves death/restore for every body/armor prototype.
	# Only fixture health is changed; hit, armor, body and death execute normally.
	check(g.load_json(setup), "Restore healthy setup " + type)
	g.combat_log = log; a = g.get_actor(id)
	a.hp = 1
	for turn in range(100):
		if not a.is_alive() or g.game_over: break
		if g.can_melee_reach(g.player_position, a.position): g.perform_action(&"player", AttackAction.new(id))
		else: ExplorationAutoplay.walk(g, a.position, false, 10)
	check(not a.is_alive(), "Actual catalog armor/body attack produces death " + type)
	var dead := g.save_json()
	check(clone.load_json(dead) and clone.save_json() == dead and not clone.get_actor(id).is_alive(), "Death exact persistence " + type)
	g._capture_zone(); var frozen := JSON.stringify(g.runtime.actors[zone])
	var other: String = g.initial_world.selected[1] if zone == g.initial_world.selected[0] else g.initial_world.selected[0]
	g._activate(other, HistoryWorldRealization.vector(g.initial_world.zones[other].spawn)); g.player_wait()
	check(JSON.stringify(g.runtime.actors[zone]) == frozen, "Inactive species frozen " + type)
	g._capture_zone(); g._activate(zone, spawn + Vector2i.LEFT)
	check(not g.get_actor(id).is_alive(), "Dead species never resurrects on revisit " + type)
	rows.append({"type": type, "seed": m.payload.seed, "ai": String(catalog.ai_policy), "attacks": log.attacks, "npc_attacks": log.npc_attacks, "damage": log.damage, "dead": not a.is_alive(), "action_times": log.action_times})
