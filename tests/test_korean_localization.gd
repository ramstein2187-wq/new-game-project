extends SceneTree

var checks := 0
var failures: Array[String] = []

func check(ok: bool, label: String) -> void:
	checks += 1
	if not ok: failures.append(label)

func _init() -> void: call_deferred("run")

func catalog() -> void:
	check("ko" in TranslationServer.get_loaded_locales(), "Native PO loaded from project settings")
	TranslationServer.set_locale("ko")
	var context := ""; var source := ""
	var pattern := RegEx.new(); pattern.compile("\\{[a-z_]+\\}")
	for line in FileAccess.get_file_as_string("res://locale/ko.po").split("\n"):
		if line.is_empty(): context = ""; source = ""
		elif line.begins_with("msgctxt "): context = JSON.parse_string(line.trim_prefix("msgctxt "))
		elif line.begins_with("msgid "): source = JSON.parse_string(line.trim_prefix("msgid "))
		elif line.begins_with("msgstr ") and not source.is_empty():
			var expected: String = JSON.parse_string(line.trim_prefix("msgstr "))
			var translated := String(TranslationServer.translate(source, context))
			check(translated == expected and translated != source, "Native translation: %s expected=%s actual=%s" % [JSON.stringify(source), JSON.stringify(expected), JSON.stringify(translated)])
			var a: Array[String] = []; var b: Array[String] = []
			for found in pattern.search_all(source): a.append(found.get_string())
			for found in pattern.search_all(translated): b.append(found.get_string())
			a.sort(); b.sort(); check(a == b, "Template arguments preserved: " + source)
	for source_term in GameText.TERMS.values(): check(String(TranslationServer.translate(source_term, "term")) != source_term, "Complete semantic term coverage: " + source_term)
	for code in HistoryPlayableGame.NOTICES: check(GameText.text(HistoryPlayableGame.NOTICES[code]) != HistoryPlayableGame.NOTICES[code], "Complete notice coverage: " + code)
	for count in [0, 1, 2, 500]: check(GameText.quantity("materials", count) == "자재: %d개" % count, "Native Korean plural quantity")
	check(GameText.text("Recovered {count} units of {item}.", {"count": 3, "item": GameText.term("materials")}) == "자재 3개를 회수했다.", "Full sentence argument order")
	check(GameText.text(HistoryPlayableGame.NOTICES.materials, {"required": 2, "available": 1}) == "자재가 부족하다. 2개가 필요하지만 1개만 보유하고 있다.", "Required vs available")
	check(GameText.term("ruined") == "폐허" and GameText.term("orbital_fall") == "궤도낙하", "Condition and Canon glossary")
	for id in ["Blunt", "Cut", "Puncture"] + StatCatalog.PRIMARY_DOMAINS.values(): check(GameText.term(id) != "미확정", "Known combat type / attribute domain stays known: " + id)
	TranslationServer.set_locale("en")
	check(GameText.quantity("materials", 1) == "Materials: 1 unit" and GameText.quantity("materials", 2) == "Materials: 2 units", "English source and native plural fallback")

func fixture(condition: String = "intact", hazard: int = 0) -> HistoryWorldManifest:
	var state := HistoryCivilizationInitial.build(22)
	state.sites.site_0.condition = condition; state.sites.site_0.accessible = condition != "ruined"
	state.civilization.localities.locality_0.hazard = hazard
	state.civilization.facilities.site_0.materials = 8
	var result := HistoryEngine.Result.new(); result.seed = 22; result.content_version = HistoryCivilizationContent.VERSION
	result.initial = state.copy(); result.final_state = state
	return HistoryWorldManifest.build(result)

func operate(g: HistoryPlayableGame, id: String, op: StringName) -> bool:
	var cell := HistoryWorldRealization.vector(g.runtime.object(g.runtime.current_zone, id).cell)
	# Shared real walking helper from the existing Phase C suite, copied verbatim below.
	if not walk_beside(g, cell): return false
	return g.perform_action(&"player", InteractAction.new(cell, op))

func play(locale: String) -> Dictionary:
	TranslationServer.set_locale(locale)
	var g := HistoryPlayableGame.new(); check(g.start(fixture()), "Start " + locale)
	var manifest := JSON.stringify(g.initial_world.manifest, "", true)
	var effect := GameplayEffectDefinition.new(); effect.id = &"localization_fixture"
	var modifier := StatModifier.new(); modifier.source_id = &"locale_fixture"; modifier.target_stat = &"CON"; modifier.value = 2.0
	effect.stat_modifiers.append(modifier); g.get_actor(&"player").add_effect(effect, &"test")
	g.get_actor(&"player").hp -= 2
	check(g.player_move(Vector2i.DOWN) and g.last_action_cost == 1000, "Move time " + locale)
	check(not g.perform_action(&"player", InteractAction.new(Vector2i(-50, -50), &"recover")), "Failed action " + locale)
	check(g.notice.code == "adjacent" and g.world_time == 1000, "Reason code and no spent time " + locale)
	for pair in [["entry:site_0", &"interact"], ["asset:site_0:materials", &"recover"], ["control:site_0", &"offer"], ["record:site_0", &"inspect"], ["unique:artifact_0", &"recover"]]:
		check(operate(g, pair[0], pair[1]), "Real action " + str(pair) + locale)
		GameText.notice(g); GameText.recent_events(g)
	check(g.runtime.bag("materials") == 7 and g.runtime.unique_owners.artifact_0 == "player", "Canonical quantity/ownership " + locale)
	check(operate(g, "exit:locality_1", &"travel") and g.last_action_cost == 2000, "Transition time " + locale)
	check(JSON.stringify(g.initial_world.manifest, "", true) == manifest, "Immutable Manifest " + locale)
	var save := g.save_json(); var events: Array = []
	for e in g.combat_log.events: events.append(CombatLogFormatter.format_debug_event(e))
	var rng_state := str(g.combat_rng.state)
	TranslationServer.set_locale("ko" if locale == "en" else "en")
	GameText.notice(g); GameText.inventory(g); GameText.recent_events(g)
	check(g.save_json() == save and str(g.combat_rng.state) == rng_state, "Live display switch preserves full save and RNG " + locale)
	var restored := HistoryPlayableGame.new(); check(restored.load_json(save) and restored.save_json() == save, "Existing save loads in opposite locale " + locale)
	check(GameText.save_preference("ko", "user://m048_localization_test.cfg") == OK, "Local preference write")
	GameText.apply_preference("user://m048_localization_test.cfg")
	check(g.save_json() == save, "Preference outside world save")
	DirAccess.remove_absolute("user://m048_localization_test.cfg")
	return {"save": save, "events": events}

func run() -> void:
	catalog()
	var en := play("en"); var ko := play("ko")
	check(en == ko, "Identical complete actions/events/save across locales")
	check(combat("en") == combat("ko"), "Actual body combat and RNG identical across locales")
	var canonical := NameGenerator.new().generate(74, "localization-test", "prototype_surface", "person")
	var identity := canonical.canonical_key()
	TranslationServer.set_locale("ko"); var korean_name := GameText.name(canonical, "You")
	TranslationServer.set_locale("en"); var english_name := GameText.name(canonical, "You")
	check(korean_name != english_name and canonical.canonical_key() == identity, "Existing M035 renderer, immutable identity")
	TranslationServer.set_locale("ko")
	var g := HistoryPlayableGame.new(); g.start(fixture())
	var forbidden := RegEx.new(); forbidden.compile("[a-z]+_[a-z_0-9]+|site:|locality:|\\{[a-z_]+\\}")
	for zone in g.initial_world.selected:
		g.runtime.current_zone = zone # Presentation-only fixture traversal, no action evidence.
		for id in g.initial_world.zones[zone].objects:
			var o := g.runtime.object(zone, id)
			var display := GameText.describe(g, o, true)
			check(forbidden.search(display) == null and not display.contains(o.id), "No raw ID/argument in description " + id)
	var model := CharacterOverviewQuery.read(g)
	for key in [&"STR", &"DEX", &"CON", &"PER", &"INT", &"WIL", &"health", &"attack", &"damage", &"penetration", &"armor", &"move", &"state"]:
		var details := LocalizedCharacterText.inspection(model, key)
		check(forbidden.search(details.body) == null, "No raw ID in Korean Inspector " + String(key))
	check(GameText.FONT.has_char(0xAC00) and GameText.FONT.has_char(0xD7A3) and GameText.FONT.has_char(0xD55C), "Bundled Hangul glyphs")
	await ui_coverage()
	if failures.is_empty(): print("PASS Korean localization: %d checks" % checks)
	else:
		for failure in failures: push_error(failure)
	quit(0 if failures.is_empty() else 1)

func combat(locale: String) -> Dictionary:
	TranslationServer.set_locale(locale)
	var m := fixture("ruined", 2)
	var g := HistoryPlayableGame.new(); check(g.start(m), "Combat fixture " + locale)
	var npc_id := StringName("fauna:locality_0:0")
	check(g.get_actor(npc_id) != null, "Real authored Rat " + locale)
	for turn in range(100):
		if not g.actor_is_alive(npc_id) or g.game_over: break
		var a := g.get_actor(npc_id)
		if g.can_melee_reach(g.player_position, a.position): g.perform_action(&"player", AttackAction.new(npc_id))
		else: walk_beside(g, a.position)
		GameText.recent_events(g)
	var events: Array = []
	for e in g.combat_log.events: events.append(CombatLogFormatter.format_debug_event(e))
	check(g.combat_log.events.any(func(e: CombatEvent) -> bool: return e.type == &"attack"), "Real attack resolution " + locale)
	return {"save": g.save_json(), "events": events}

func ui_coverage() -> void:
	var scene := preload("res://scenes/debug/history_world_playground.tscn").instantiate()
	root.add_child(scene)
	for frame in range(3): await process_frame
	var saved: String = scene.game.save_json()
	scene.character.open()
	for resolution in [Vector2i(1152, 648), Vector2i(1920, 1080), Vector2i(800, 600)]:
		root.size = resolution; root.content_scale_size = resolution
		scene.character.inspect(&"health")
		for frame in range(4): await process_frame
		for row in scene.character.rows.values():
			check(row.caption.size.x >= row.caption.get_minimum_size().x - 1, "Korean caption has readable width " + str(resolution))
		check(scene.character.content.vertical == (resolution.x == 800), "Korean small-screen stacks safely")
	var words := RegEx.new(); words.compile("[A-Za-z]{3,}")
	var nodes: Array[Node] = [scene]
	while not nodes.is_empty():
		var node: Node = nodes.pop_back()
		nodes.append_array(node.get_children())
		var strings: Array[String] = []
		if node is Label or node is Button: strings.append(node.tr(node.text))
		elif node is RichTextLabel: strings.append(node.tr(node.get_parsed_text()))
		if node is Control and not node.tooltip_text.is_empty(): strings.append(node.tr(node.tooltip_text))
		for string in strings:
			for word in words.search_all(string): check(word.get_string() in ["WASD", "Space", "Enter", "Esc", "CON", "DEX"], "No unintended English in normal UI: " + string)
	TranslationServer.set_locale("en")
	for frame in range(3): await process_frame
	check(scene.header.text.contains("Region") and scene.character.rows.attack.caption.text == "Main Attack", "Native locale change refreshes dynamic UI")
	check(scene.game.save_json() == saved, "Visible UI locale refresh is read only")
	TranslationServer.set_locale("ko")
	for frame in range(3): await process_frame
	check(scene.header.text.contains("지역") and scene.character.rows.attack.caption.text == "주 공격", "Korean UI returns without world reload")
	scene.queue_free(); await process_frame

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
