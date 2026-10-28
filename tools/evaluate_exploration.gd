extends SceneTree
## Two policies, identical generated worlds. Full-map knowledge is disclosed.
const SEEDS := [1, 2, 7, 13, 42, 101, 321, 999, 1839602582, 1036007500]

func _init() -> void:
	var rows: Array = []
	for seed in SEEDS:
		for cautious in [true, false]:
			var begin := Time.get_ticks_usec()
			var g := HistoryPlayableGame.new(); g.exploration_enabled = true
			g.start(HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(seed)))
			var audit := ExplorationAuditLog.new(); g.combat_log = audit
			var policy := "lawful_cautious" if cautious else "recovery_first"
			var visited: Array[String] = []
			var operations := {}; var problems: Array = []
			for transition in range(5):
				var zone := g.runtime.current_zone
				var prefix := "env:" + zone + ":"
				if zone not in visited:
					visited.append(zone)
					for pair in [[prefix + "branches", &"recover"], [prefix + "lookout", &"use"], [prefix + "bridge", &"repair"], [prefix + "supply_cache", &"recover"]]:
						if ExplorationAutoplay.operate(g, pair[0], pair[1], cautious): operations[pair[1]] = int(operations.get(pair[1], 0)) + 1
						else: problems.append([zone, pair[0], g.notice.get("code", "")])
					if not cautious:
						# Historical ownership is visible; this policy deliberately prioritizes stock.
						for o in g.initial_world.zones[zone].objects.values():
							if o.kind in ["resource", "unique"] and o.reachable and not g.runtime.object(zone, o.id).get("taken", false):
								if ExplorationAutoplay.operate(g, o.id, &"recover", false): operations["historical_recover"] = int(operations.get("historical_recover", 0)) + 1
								# One useful cache per site is enough; not a theft/restitution treadmill.
								if int(operations.get("historical_recover", 0)) >= visited.size() * 2: break
					if g.player_hp < g.PLAYER_MAX_HP:
						if ExplorationAutoplay.operate(g, prefix + "shelter", &"use", cautious): operations["rest"] = int(operations.get("rest", 0)) + 1
				if g.game_over or visited.size() == 3: break
				var barrier := "route:" + zone
				if g.initial_world.zones[zone].objects.has(barrier) and not g.runtime.object(zone, barrier).removed:
					if not ExplorationAutoplay.operate(g, barrier, &"clear", cautious): problems.append([zone, "blocked passage"]); break
				var exits: Array = g.initial_world.zones[zone].objects.values().filter(func(o: Dictionary) -> bool: return o.kind == "exit")
				exits.sort_custom(func(a: Dictionary, b: Dictionary) -> bool: return int(a.destination in visited) < int(b.destination in visited))
				if exits.is_empty() or not ExplorationAutoplay.operate(g, exits[0].id, &"travel", cautious): problems.append([zone, "travel failed"]); break
			var coverage := 0; var landmarks := 0; var goals := 0
			for zone in g.runtime.exploration:
				coverage += g.runtime.exploration[zone].visited.size(); landmarks += g.runtime.exploration[zone].sites.size()
				for kind in ["lookout", "bridge"]:
					if g.runtime.object(zone, "env:" + zone + ":" + kind).used: goals += 1
			var save := g.save_json(); var clone := HistoryPlayableGame.new()
			var exact := clone.load_json(save) and clone.save_json() == save
			var actions := 0
			for e in g.runtime.exploration.values(): actions += int(e.actions)
			var row := {"seed": seed, "policy": policy, "zones": visited.size(), "alive": not g.game_over, "hp": g.player_hp,
				"cells_walked": coverage, "landmarks": landmarks, "field_goals": goals, "player_actions": actions,
				"operations": operations, "inventory": g.runtime.inventory, "custody_offenses": g.runtime.offenses,
				"combat_events": audit.attacks, "npc_attack_events": audit.npc_attacks, "combat_damage": audit.damage, "player_combat_damage": audit.player_damage, "movement_actions": audit.player_moves, "action_times": audit.action_times,
				"world_time": g.world_time, "exact_save": exact, "problems": problems, "elapsed_ms": (Time.get_ticks_usec() - begin) / 1000.0,
				"meaningful_expedition": visited.size() == 3 and goals == 6 and coverage >= 150 and not g.game_over}
			FileAccess.open("res://docs/reviews/m049/" + "actions_%d_%s.json" % [seed, policy], FileAccess.WRITE).store_string(JSON.stringify(audit.evidence, "", true) + "\n")
			rows.append(row); print("M049 strategy ", JSON.stringify(row))
	var report := {"policy_knowledge": "full geometry and object metadata; not human/blinded play", "rows": rows}
	FileAccess.open("res://docs/reviews/m049/strategies.json", FileAccess.WRITE).store_string(JSON.stringify(report, "\t", true) + "\n")
	quit(0 if rows.all(func(row: Dictionary) -> bool: return row.exact_save and (row.policy != "lawful_cautious" or row.meaningful_expedition)) else 1)
