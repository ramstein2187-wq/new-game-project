extends SceneTree

var checks := 0
var failures: Array[String] = []

func check(value: bool, label: String) -> void:
	checks += 1
	if not value: failures.append(label)

func fixture(condition: String = "intact", hazard: int = 0) -> HistoryWorldManifest:
	# Explicit synthetic state, using only authorized Phase B content and projection.
	var state := HistoryCivilizationInitial.build(22)
	state.sites.site_0.condition = condition
	state.sites.site_0.accessible = condition != "ruined"
	state.civilization.localities.locality_0.hazard = hazard
	state.civilization.facilities.site_0.materials = 8
	var result := HistoryEngine.Result.new(); result.seed = 22; result.content_version = HistoryCivilizationContent.VERSION
	result.initial = state.copy(); result.final_state = state
	return HistoryWorldManifest.build(result)

func _init() -> void:
	var m := fixture()
	check(m.errors.is_empty(), "Valid authored-content synthetic state")
	var g := HistoryPlayableGame.new()
	check(g.start(m), "Start real gameplay model")
	check(g.initial_world.selected.size() == 3, "Exactly three connected actual localities")
	var before := m.canonical()
	var starting := g.player_position
	check(g.player_move(Vector2i.DOWN), "Existing MoveAction on travel spine")
	check(g.last_action_cost == 1000 and g.world_time == 1000, "Existing cardinal cost and Scheduler time")
	check(not g.perform_action(&"player", InteractAction.new(Vector2i(-50, -50), &"recover")), "Invalid interaction fails")
	check(g.world_time == 1000, "Failed action costs no time")
	var invalid_graph := HistoryWorldManifest.from_json(m.canonical()); invalid_graph.payload.localities[0].neighbors.clear()
	check(not HistoryWorldRealization.build(invalid_graph).errors.is_empty(), "Invalid Manifest graph fails explicitly")
	# Actor effects/body/weapon/absolute damage survive the actual codec.
	var player := g.get_actor(&"player")
	var effect := GameplayEffectDefinition.new(); effect.id = &"fixture_cost"
	var modifier := ActionCostModifier.new(); modifier.source_id = &"fixture"; modifier.required_tags = [&"INTERACT"]; modifier.value = 0.2
	effect.action_cost_modifiers.append(modifier); player.add_effect(effect)
	player.body.parts[player.body.attack_part].current -= 1
	player.hp -= 2
	var p := WorldActorState.restore(JSON.parse_string(JSON.stringify(WorldActorState.capture(player))))
	check(p != null and p.hp == player.hp and p.has_effect(effect.id) and p.body.parts[p.body.attack_part].current == player.body.parts[player.body.attack_part].current, "Actor body/effects/damage restore")
	# Door, recovery, real owner restriction, restitution, optional information.
	check(operate(g, "entry:site_0", &"interact"), "Open historical facility door through shared InteractAction")
	check(g.runtime.object(g.runtime.current_zone, "entry:site_0").open, "Door physically passable")
	check(operate(g, "entry:site_0", &"interact") and not g.runtime.object(g.runtime.current_zone, "entry:site_0").open, "Close actual door")
	check(operate(g, "entry:site_0", &"interact"), "Reopen for exploration")
	check(operate(g, "asset:site_0:materials", &"recover"), "Recover actual material quantity")
	check(g.runtime.bag("materials") == 8, "Exact authored quantity, no minted loot")
	check(g.runtime.object(g.runtime.current_zone, "asset:site_0:materials").taken, "Resource removed from source")
	check(not operate(g, "asset:site_0:materials", &"recover"), "Cannot recover same stock twice")
	var control := g.runtime.object(g.runtime.current_zone, "control:site_0")
	check(not g.runtime.has_permission(control.owner_id), "Unauthorized recovery changes faction access")
	check(not operate(g, "control:site_0", &"use"), "Actual facility use denied after theft")
	check(operate(g, "control:site_0", &"offer"), "Resource restitution changes access rules")
	check(g.runtime.has_permission(control.owner_id) and g.runtime.bag("materials") == 7, "One material spent, custody offense resolved")
	check(operate(g, "unique:artifact_0", &"recover"), "Recover confirmed unique object")
	check(g.runtime.unique_owners.artifact_0 == "player", "Unique ownership transferred exactly once")
	check(operate(g, "record:site_0", &"inspect"), "Read physically present record via Scheduler")
	check(g.runtime.knowledge.has("record:site_0"), "Knowledge is runtime state")
	check(operate(g, "asset:site_0:genomic_records", &"recover"), "Transfer actual records to carried stock")
	var record_cell := HistoryWorldRealization.vector(g.runtime.object(g.runtime.current_zone, "record:site_0").cell)
	check(not g.objects_at(record_cell).any(func(o: Dictionary) -> bool: return o.kind == "record"), "Recovered records do not remain duplicated at their source")
	check(m.canonical() == before and g.initial_world.manifest == m.payload, "Actions do not rewrite history or Manifest")
	# Save actual current player state/time/unique ownership, then move and revisit.
	var saved := g.save_json()
	var restored := HistoryPlayableGame.new()
	check(restored.load_json(saved), "Versioned independent save decode: " + restored.load_error)
	if restored.runtime != null: check(restored.save_json() == saved, "Byte-equivalent authoritative snapshot roundtrip")
	check(restored.get_actor(&"player").has_effect(effect.id) and restored.get_actor(&"player").active_effects().size() == 1, "Save/load retains an already applied effect once")
	check(g.save_file("user://m048_test_save.json") and g.save_file("user://m048_test_save.json"), "Atomic on-disk save including existing-file replacement")
	check(restored.load_file("user://m048_test_save.json") and restored.save_json() == saved, "Actual file load restores authoritative state")
	DirAccess.remove_absolute("user://m048_test_save.json")
	var original := g.runtime.current_zone
	var exit_id := ""
	for o in g.initial_world.zones[original].objects.values():
		if o.kind == "exit": exit_id = o.id; break
	check(operate(g, exit_id, &"travel"), "Scheduled real connected-zone transition")
	check(g.runtime.current_zone != original and g.world_time > 1000, "Travel preserves one growing world clock")
	check(operate(g, "exit:" + original, &"travel"), "Return via reciprocal Manifest edge")
	check(g.runtime.object(original, "entry:site_0").open and g.runtime.object(original, "asset:site_0:materials").taken and g.runtime.unique_owners.artifact_0 == "player", "Revisit preserves door, stock and unique ownership")
	# Malformed saved data must leave the active game untouched.
	var stable := g.save_json()
	var corrupt: Dictionary = JSON.parse_string(stable); corrupt.world_time += 1
	check(not g.load_json(JSON.stringify(corrupt)) and g.save_json() == stable, "Corrupt integrity fails atomically")
	for mutation in ["version", "owner", "cell", "actor", "override", "quantity"]:
		corrupt = JSON.parse_string(stable)
		match mutation:
			"version": corrupt.generation_version = "future/99"
			"owner": corrupt.unique_owners.artifact_0 = "other_zone"
			"cell": corrupt.player.position = [0, 0]
			"actor": corrupt.actors[original].append(corrupt.player)
			"override": corrupt.overrides[original]["missing"] = {"open": true}
			"quantity": corrupt.inventory.materials = -2
		corrupt.erase("checksum"); corrupt.checksum = JSON.stringify(corrupt, "", true).sha256_text()
		check(not g.load_json(JSON.stringify(corrupt)) and g.save_json() == stable, "Semantic malformed save rejected: " + mutation)
	_environment_and_combat()
	_history_difference()
	_preserved_and_specialized_contracts()
	var baseline: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://tests/fixtures/history_phase_c_baseline.json"))
	for row in baseline.seeds:
		var a := HistoryEngine.new().generate(int(row.seed))
		var b := HistoryEngine.new().generate_civilization(int(row.seed))
		check(a.canonical().sha256_text() == row.phase_a, "Exact Phase A output preserved %d" % row.seed)
		check(b.canonical().sha256_text() == row.phase_b, "Exact Phase B Event Log/state preserved %d" % row.seed)
		check(HistoryWorldManifest.build(b).canonical().sha256_text() == row.manifest, "Exact Phase B Manifest preserved %d" % row.seed)
	var count := 50
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count = int(arg.trim_prefix("--count="))
	for seed in range(1, count + 1):
		var history := HistoryEngine.new().generate_civilization(seed)
		var manifest := HistoryWorldManifest.build(history)
		var w := HistoryWorldRealization.build(manifest)
		check(w.errors.is_empty(), "Generation %d: %s" % [seed, w.errors])
		if not w.errors.is_empty(): continue
		check(w.canonical() == HistoryWorldRealization.build(manifest).canonical(), "Initial play space deterministic %d" % seed)
		for id in w.selected:
			var runtime := HistoryRuntimeState.new(w)
			check(runtime.valid_position(id, HistoryWorldRealization.vector(w.zones[id].spawn)), "Valid spawn %d/%s" % [seed, id])
			for o in w.zones[id].objects.values():
				if o.kind == "exit": check(w.zones[o.destination].objects.has("exit:" + id), "Reciprocal route %d" % seed)
	if failures.is_empty(): print("PASS history playable world: %d checks" % checks); quit(0)
	else:
		for error in failures: push_error(error)
		print("FAIL history playable world: %d/%d" % [failures.size(), checks]); quit(1)

# Scenario navigation deliberately executes actual MoveActions, door/clear actions
# and Rat AI. This is not a mock or a test-only production teleport API.
func operate(g: HistoryPlayableGame, id: String, operation: StringName) -> bool:
	if not g.initial_world.zones[g.runtime.current_zone].objects.has(id): return false
	var o := g.runtime.object(g.runtime.current_zone, id)
	var cell := HistoryWorldRealization.vector(o.cell)
	if not walk_beside(g, cell): return false
	g.facing = cell - g.player_position
	if g.facing == Vector2i.ZERO: g.facing = Vector2i.RIGHT
	return g.perform_action(&"player", InteractAction.new(cell, operation))

func walk_beside(g: HistoryPlayableGame, target_cell: Vector2i) -> bool:
	for step in range(220):
		if (g.player_position - target_cell).length_squared() <= 1: return true
		if g.game_over: return false
		var route := route_to(g, target_cell)
		if route.size() < 2: return false
		var next: Vector2i = route[1]
		if g.is_wall(next):
			var cleared := false
			for o in g.objects_at(next):
				if o.kind in ["door", "rubble"]:
					cleared = g.perform_action(&"player", InteractAction.new(next, &"interact" if o.kind == "door" else &"clear")); break
			if not cleared: return false
		elif not g.player_move(next - g.player_position): return false
	return false

func route_to(g: HistoryPlayableGame, target_cell: Vector2i) -> Array[Vector2i]:
	var queue: Array[Vector2i] = [g.player_position]; var previous := {g.player_position: g.player_position}
	var found := Vector2i(-1, -1)
	var index := 0
	while index < queue.size():
		var current := queue[index]; index += 1
		if (current - target_cell).length_squared() <= 1: found = current; break
		for direction in TimeCostGame.CARDINAL_DIRECTIONS:
			var next := current + direction
			if not g.is_inside(next) or previous.has(next) or g.terrain_rows[next.y][next.x] in ["R", "T"]: continue
			if g.is_wall(next) and not g.objects_at(next).any(func(o: Dictionary) -> bool: return o.kind in ["door", "rubble"]): continue
			previous[next] = current; queue.append(next)
	if found.x < 0: return []
	var route: Array[Vector2i] = [found]
	while route[0] != g.player_position: route.push_front(previous[route[0]])
	return route

func _environment_and_combat() -> void:
	var g := HistoryPlayableGame.new(); g.start(fixture("ruined", 2))
	check(operate(g, "entry:site_0", &"clear"), "Rubble removal changes passability")
	check(operate(g, "asset:site_0:materials", &"recover"), "Ruin exploration through actual breach/rubble")
	check(not g.is_wall(HistoryWorldRealization.vector(g.runtime.object(g.runtime.current_zone, "entry:site_0").cell)), "Removed barrier passable")
	check(operate(g, "control:site_0", &"repair"), "Real materials and time repair ruin structure")
	check(g.runtime.object(g.runtime.current_zone, "control:site_0").condition == "damaged", "Structure repaired without restoring missing assets")
	check(not operate(g, "control:site_0", &"stabilize"), "No archive reading required for exploration, but optional stabilization needs actual record")
	check(operate(g, "record:site_0", &"inspect") and operate(g, "control:site_0", &"stabilize"), "Optional record enables safer structural action")
	var saved := g.save_json(); var clone := HistoryPlayableGame.new()
	check(clone.load_json(saved) and clone.save_json() == saved, "Environment and Actor state persist exactly")
	var npc_id: StringName = &""
	for a in g.actors.all():
		if a.id != &"player": npc_id = a.id
	check(npc_id != &"", "Authored Rat encounter uses existing Actor")
	if npc_id != &"":
		check(g.combat_log.events.any(func(e: CombatEvent) -> bool: return e.actor_id == npc_id), "Scheduler actually ran active Rat responses")
		# Kill through real attack resolution, not by editing saved NPC flags.
		for turn in range(100):
			if not g.actor_is_alive(npc_id) or g.game_over: break
			var a := g.get_actor(npc_id)
			if g.can_melee_reach(g.player_position, a.position): g.perform_action(&"player", AttackAction.new(npc_id))
			else: walk_beside(g, a.position)
		check(not g.actor_is_alive(npc_id), "Existing body combat defeats persistent Rat")
		var original := g.runtime.current_zone
		for o in g.initial_world.zones[original].objects.values():
			if o.kind == "exit":
				check(operate(g, o.id, &"travel") and operate(g, "exit:" + original, &"travel"), "Combat revisit through real travel")
				break
		check(not g.actor_is_alive(npc_id), "Killed important Actor not resurrected on revisit")
		check(g.runtime.object(original, "entry:site_0").removed and g.runtime.object(original, "control:site_0").condition == "damaged", "Removed rubble and repaired structure survive revisit")
		clone = HistoryPlayableGame.new()
		check(clone.load_json(g.save_json()) and not clone.actor_is_alive(npc_id), "Killed important Actor remains dead after save/load")

func _history_difference() -> void:
	var intact := HistoryWorldRealization.build(fixture("intact"), 1234)
	var ruined := HistoryWorldRealization.build(fixture("ruined", 2), 1234)
	var a := HistoryPlayableGame.new(); a.start(fixture("intact"))
	var b := HistoryPlayableGame.new(); b.start(fixture("ruined", 2))
	check(intact.zones.locality_0.rows != ruined.zones.locality_0.rows, "Same terrain seed, different real wall/breach geometry")
	check(a.function_usable("site_0") and not b.function_usable("site_0"), "Same facility has different usable action")
	check(intact.zones.locality_0.hazards.is_empty() and not ruined.zones.locality_0.hazards.is_empty(), "History changes actual hazard cells")
	check(operate(a, "entry:site_0", &"interact") and not operate(b, "entry:site_0", &"interact"), "Same door action succeeds or fails by historical condition")
	check(b.runtime.knowledge.is_empty() and operate(b, "asset:site_0:materials", &"recover"), "Explore/recover without opening history record")

func _preserved_and_specialized_contracts() -> void:
	var old := TimeCostGame.new()
	old.player_position = old.door_position - Vector2i.RIGHT
	check(old.perform_action(&"player", InteractAction.new(old.door_position)) and old.door_open, "Fixed-room InteractAction preserved")
	var g := HistoryPlayableGame.new(); g.start(fixture())
	check(operate(g, "entry:site_0", &"interact"), "Prepare intact shelter")
	g.damage_actor(&"player", 5)
	check(operate(g, "control:site_0", &"use") and g.runtime.object(g.runtime.current_zone, "control:site_0").used, "Working shelter has actual HP result and persistent usage")
	# Test closed human structure separately from damaged ruin exploration.
	var state := HistoryCivilizationInitial.build(22); state.sites.site_0.accessible = false
	var result := HistoryEngine.Result.new(); result.seed = 22; result.content_version = HistoryCivilizationContent.VERSION
	result.initial = state.copy(); result.final_state = state
	var sealed := HistoryWorldManifest.build(result); g = HistoryPlayableGame.new(); g.start(sealed)
	check(g.runtime.object(g.runtime.current_zone, "entry:site_0").kind == "sealed", "Intentional closed facility is labeled sealed")
	check(not operate(g, "unique:artifact_0", &"recover"), "Intentionally inaccessible object cannot be reached/recovered")
	# Actual failure of a human generator disables an authored dependent facility.
	state = HistoryCivilizationInitial.build(22); state.sites.site_1.condition = "ruined"; state.sites.site_1.accessible = false
	result.initial = state.copy(); result.final_state = state
	g = HistoryPlayableGame.new(); g.start(HistoryWorldManifest.build(result))
	check(not g.function_usable("site_2"), "Failed real dependency changes usable facility actions")
	# An ordinary structural repair never grants unknown ancient mechanism function.
	var ancient_id := ""
	for f in g.initial_world.manifest.facilities:
		if f.kind == "unknown_remains": ancient_id = f.id; break
	check(not ancient_id.is_empty(), "Authored unknown remains retained")
	if not ancient_id.is_empty():
		for f in g.initial_world.manifest.facilities:
			if f.id == ancient_id: check(not f.ancient_mechanism_operable and not f.ancient_mechanism_understood, "No ancient operation granted by realization")
	# Non-active NPCs remain frozen even as the shared clock advances elsewhere.
	g = HistoryPlayableGame.new(); g.start(fixture("damaged"))
	var first := g.runtime.current_zone
	for o in g.initial_world.zones[first].objects.values():
		if o.kind == "exit": operate(g, o.id, &"travel"); break
	var frozen := JSON.stringify(g.runtime.actors[first])
	var time := g.world_time
	g.player_wait(); g.player_wait()
	check(g.world_time > time and JSON.stringify(g.runtime.actors[first]) == frozen, "Inactive Actor state freezes while single world time advances")
	# Locate a real generated ongoing Project; assert its physical restriction.
	var found := false
	for seed in range(1, 11):
		g = HistoryPlayableGame.new(); g.start(HistoryWorldManifest.build(HistoryEngine.new().generate_civilization(seed)))
		for zone in g.initial_world.selected:
			for o in g.initial_world.zones[zone].objects.values():
				if o.kind == "worksite" and o.status == "active":
					found = true
					check(not g.runtime.valid_position(zone, HistoryWorldRealization.vector(o.cell)), "Actual ongoing Project blocks its work area")
		if found: break
	check(found, "Generated Project state has actual space restriction")
	# Execute a diagonal in a reachable healthy region and retain the historic cost.
	g = HistoryPlayableGame.new(); g.start(fixture())
	var diagonal_done := false
	for step in range(15):
		for direction in [Vector2i(1, 1), Vector2i(-1, 1)]:
			if g.can_step(g.player_position, direction):
				diagonal_done = g.player_move(direction)
				check(diagonal_done and g.last_action_cost == 1400, "Existing diagonal movement cost preserved in realized terrain")
				break
		if diagonal_done: break
		g.player_move(Vector2i.DOWN)
	check(diagonal_done, "Actual diagonal traversal exercised")
	g = HistoryPlayableGame.new(); g.start(fixture("damaged")); g.get_actor(&"player").hp = 1
	for a in g.actors.all():
		if a.id != &"player":
			walk_beside(g, a.position)
			for turn in range(40):
				if g.game_over: break
				g.player_wait()
			break
	check(g.game_over and g.player_hp == 0, "Actual Rat combat reaches terminal player defeat")
	var terminal := g.save_json(); var restored := HistoryPlayableGame.new()
	check(not terminal.is_empty() and restored.load_json(terminal) and restored.game_over and restored.player_hp == 0 and restored.save_json() == terminal, "Terminal defeat preserves current clock/player readiness instead of revival on load")
