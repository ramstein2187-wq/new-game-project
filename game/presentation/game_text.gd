class_name GameText
extends RefCounted
## Pure presentation. Never write a translated value into an Actor, event or save.
const FONT = preload("res://assets/fonts/noto-sans-kr/NotoSansKR-Regular.otf")
const TERMS := {
	"materials": "Materials", "equipment": "Equipment", "genomic_records": "Genomic records",
	"samples": "Samples", "inert_salvage": "Inert salvage", "survey_records": "Survey records",
	"intact": "Intact", "damaged": "Damaged", "ruined": "Ruined", "disabled": "Disabled",
	"door": "Door", "rubble": "Rubble", "sealed": "Sealed entrance", "resource": "Supplies",
	"unique": "Unknown object", "control": "Facility", "record": "Physical record",
	"scar": "Historical trace", "worksite": "Worksite", "exit": "Exit", "route": "Route barrier",
	"survival": "Survival", "project_maintenance": "Project maintenance", "recovery": "Recovery",
	"expansion": "Expansion", "stability": "Stability", "retired": "Retired", "maintenance": "Maintenance",
	"shelter": "Shelter", "archive": "Archive", "survey": "Survey", "launch": "Launch",
	"power": "Power", "salvage": "Salvage", "none": "None",
	"active": "In progress", "paused": "Paused", "completed": "Completed", "failed": "Failed",
	"abandoned": "Abandoned", "success": "Succeeded", "unknown": "Unconfirmed",
	"genome_archive": "Genome Archive", "deep_descent": "Deep Descent", "ark": "Ark project",
	"orbital_fall": "Orbital Fall", "infrastructure_cascade": "Infrastructure Cascade",
	"failed_exodus": "Failed Exodus", "innerworld": "Innerworld", "outerworld": "Outerworld",
	"You": "You", "Local rat": "Local rat", "Human": "Human", "Rat": "Rat",
	"STR": "Strength", "DEX": "Dexterity", "CON": "Constitution", "PER": "Perception",
	"INT": "Intelligence", "WIL": "Willpower", "cut": "Cut", "puncture": "Puncture", "impact": "Impact",
	"Head": "Head", "Torso": "Torso", "Left arm": "Left arm", "Right arm": "Right arm",
	"Left leg": "Left leg", "Right leg": "Right leg", "body": "Body", "healthy": "Healthy",
	"injured": "Injured", "crippled": "Crippled", "destroyed": "Destroyed",
	"Fist": "Fist", "Punch": "Punch", "Bite": "Bite", "Unarmed": "Unarmed",
	"Endurance": "Endurance", "Execution": "Execution", "Judgment": "Judgment", "Force": "Force",
	"Understanding": "Understanding", "Resolve": "Resolve",
	"asset_protection": "Asset protection", "unresolved": "Unresolved",
	"preserved_samples_and_records": "Samples and records preserved", "preserved_records": "Records preserved",
	"preserved_samples": "Samples preserved", "partial_records": "Partial records", "archival_material_lost": "Archival material lost",
	"limited_survey_return": "Limited survey and return", "entry_loss": "Loss during entry",
	"launch_failed": "Launch failed", "launch_result_unknown": "Launch result unconfirmed",
	"human": "Human", "rat": "Rat", "Fist Strike": "Fist strike", "Unarmed Strike": "Unarmed strike",
	"Longsword": "Longsword", "Longsword strike": "Longsword strike", "Thrust": "Thrust",
	"Handaxe": "Handaxe", "Handaxe strike": "Handaxe strike", "Warhammer": "Warhammer", "Warhammer strike": "Warhammer strike",
	"Hunting Knife": "Hunting knife", "Knife slash": "Knife slash", "Quick Stab": "Quick stab",
	"Maul": "Maul", "Maul strike": "Maul strike", "Overhead Smash": "Overhead smash", "Crushing Blow": "Crushing blow",
	"Left foreleg": "Left foreleg", "Right foreleg": "Right foreleg", "Left hindleg": "Left hindleg", "Right hindleg": "Right hindleg", "Tail": "Tail",
	"Blunt": "Blunt", "Awareness": "Awareness", "Control": "Control",
	"civil_facility": "Facility change", "civil_custody": "Custody change", "civil_politics": "Political change",
	"civil_scar": "Historical trace change", "civil_project": "Project change", "civil_population": "Population change",
	"site_reoccupation": "Site reoccupation", "artifact_transfer_loss": "Object custody or loss",
	"site_incident": "Site incident", "relationship_change": "Community relationship change", "migration": "Migration", "faction_split": "Community split",
}

static func text(source: String, args: Dictionary = {}, context: StringName = &"") -> String:
	return String(TranslationServer.translate(source, context)).format(args)

static func apply_preference(path: String = "user://presentation.cfg") -> void:
	var preference := ConfigFile.new()
	var locale := "ko"
	if preference.load(path) == OK: locale = str(preference.get_value("display", "locale", "ko"))
	TranslationServer.set_locale(locale if locale in ["ko", "en"] else "ko")

static func save_preference(locale: String, path: String = "user://presentation.cfg") -> Error:
	if locale not in ["ko", "en"]: return ERR_INVALID_PARAMETER
	var preference := ConfigFile.new()
	preference.load(path)
	preference.set_value("display", "locale", locale)
	var error := preference.save(path)
	if error == OK: TranslationServer.set_locale(locale)
	return error

static func term(id: String) -> String:
	return text(TERMS.get(id, TERMS.get(id.to_lower(), "Unconfirmed")), {}, &"term")

static func quantity(item: String, count: int) -> String:
	return String(TranslationServer.translate_plural("{item}: {count} unit", "{item}: {count} units", count)).format({"item": term(item), "count": count})

static func name(canonical: GeneratedName, fallback: String) -> String:
	if canonical != null:
		return NameRenderer.new().render(canonical, TranslationServer.get_locale().get_slice("_", 0))
	return term(fallback)

static func locality(game: HistoryPlayableGame, id: String) -> String:
	for i in range(game.initial_world.manifest.localities.size()):
		if game.initial_world.manifest.localities[i].id == id: return text("Region {number}", {"number": i + 1})
	return term("unknown")

static func faction(game: HistoryPlayableGame, id: String) -> String:
	for i in range(game.initial_world.manifest.factions.size()):
		if game.initial_world.manifest.factions[i].id == id: return text("Community {number}", {"number": i + 1})
	return term("unknown")

static func notice(game: HistoryPlayableGame) -> String:
	if game.notice.is_empty(): return text("Explore the connected paths, recover supplies or seek shelter. Records are optional.")
	var args: Dictionary = game.notice.get("args", {}).duplicate()
	if args.has("item"): args.item = term(args.item)
	if args.has("count"): args.count = int(args.count)
	var code: String = game.notice.code
	var result := text("Inspected an object and learned its observable details.") if code == "inspect" else text(HistoryPlayableGame.NOTICES.get(code, "Action unavailable. Check the target, path and body function."), args)
	if game.notice.get("custody", false): result += " " + text(HistoryPlayableGame.NOTICES.custody)
	if game.notice.get("spent", false): result += "\n" + text("Action time {cost}; world time {time}.", {"cost": game.last_action_cost, "time": game.world_time})
	if game.game_over and code != "ended": result += "\n" + text("You have fallen. Load a save or generate a new world.")
	return result

static func describe(game: HistoryPlayableGame, o: Dictionary, learned: bool = false) -> String:
	if o.is_empty(): return text("No nearby object.")
	var lines: Array[String] = [term(o.kind)]
	if not o.owner_id.is_empty():
		for f in game.initial_world.manifest.factions:
			if f.id == o.owner_id: lines.append(text("Managed by {owner}. Present need: {need}.", {"owner": faction(game, f.id), "need": term(f.current_need)}))
	if o.kind == "resource": lines.append(quantity(o.asset_kind, o.quantity))
	if o.kind == "exit": lines.append(text("Connected destination: {region}. Travel with T.", {"region": locality(game, o.destination)}))
	if o.kind == "door": lines.append(text("Door is open." if o.open else "Door is closed. Open with E."))
	if o.kind == "sealed": lines.append(text("No safe entrance is available."))
	if not o.facility_id.is_empty():
		var f: Dictionary = game.initial_world.zones[game.runtime.current_zone].facilities[o.facility_id]
		var control := game.runtime.object(game.runtime.current_zone, "control:" + f.id)
		lines.append(text("Observed structure: {condition}. Local use: {function}. Usable now: {usable}.", {"condition": term(control.condition), "function": term(f.local_function), "usable": text("Yes" if game.function_usable(f.id) else "No")}))
		if learned and o.kind == "record":
			lines.append(text("On-site record: structural safety notes allow stabilization. Ancient machinery remains unconfirmed."))
			for p in game.initial_world.manifest.projects:
				if p.site_id == f.id: lines.append(text("Recorded project: {kind} · {status} · {outcome}.", {"kind": term(p.kind), "status": term(p.status), "outcome": term(p.outcome)}))
			for id in f.provenance:
				for e in game.initial_world.manifest.events:
					if e.id == id: lines.append(text("Recorded change in year {year}: {kind}. Its full cause and operator intent are not established by this record.", {"year": int(e.year), "kind": term(e.rule_id)}))
	if o.kind == "scar": lines.append(text("Observed trace: {kind}. Cause and operator intent remain unconfirmed.", {"kind": term(o.scar_kind)}))
	if o.kind == "worksite": lines.append(text("Current project: {kind} · {status}. Active works reserve space and shelter use.", {"kind": term(o.project_kind), "status": term(o.status)}))
	if o.kind == "unique": lines.append(text("Inert object. Origin and function remain unconfirmed."))
	return "\n".join(lines)

static func actor_status(game: HistoryPlayableGame) -> String:
	var lines: Array[String] = []
	for a in game.actors.all():
		lines.append(text("{name} HP {hp}/{maximum}{state}", {"name": term(a.display_name), "hp": a.hp, "maximum": a.max_hp, "state": text(" (dead)") if not a.is_alive() else ""}))
	return " · ".join(lines)

static func inventory(game: HistoryPlayableGame) -> String:
	var lines: Array[String] = []
	for id in game.runtime.inventory:
		lines.append(quantity(id, game.runtime.bag(id)))
	return ", ".join(lines) if not lines.is_empty() else text("None")

static func event_text(event: CombatEvent, observer: StringName = &"player", detailed: bool = false) -> String:
	if observer not in event.observed_by or not detailed and event.importance < CombatEvent.NORMAL: return ""
	var actor := term("You" if event.actor_id == &"player" else event.actor_name)
	var target := term("You" if event.target_id == &"player" else event.target_name)
	match event.type:
		&"attack":
			if not event.data.get("hit", true): return text("{actor}: attack missed {target}.", {"actor": actor, "target": target})
			if event.data.get("no_valid_part", false): return text("No valid body part to strike.")
			var line := text("{actor} attacks {target} ({part}), dealing {damage} {type} damage.", {"actor": actor, "target": target, "part": term(event.data.get("part_name", "body")), "damage": event.data.get("damage", 0), "type": term(event.data.get("damage_type", "impact"))})
			if event.data.get("armor_result", &"") == &"full": line = text("{target}'s armor blocked the attack.", {"target": target})
			elif event.data.get("armor_result", &"") == &"partial": line += " " + text("Armor softened the blow.")
			if event.data.get("state_before") != event.data.get("state_after"): line += " " + text("Body condition: {state}.", {"state": term(event.data.get("state_after", "unknown"))})
			if event.data.get("defeated", false): line += " " + text("{target} falls.", {"target": target})
			return line
		&"interact":
			if event.data.get("result_code", "") == "inspect": return text("Inspected an object and learned its observable details.")
			var args: Dictionary = event.data.get("result_args", {}).duplicate()
			if args.has("item"): args.item = term(args.item)
			var line := text(HistoryPlayableGame.NOTICES.get(event.data.get("result_code", ""), "Door opened." if event.data.get("open", false) else "Door closed."), args)
			if event.data.get("custody_violation", false): line += " " + text(HistoryPlayableGame.NOTICES.custody)
			return line
		&"move":
			if event.data.get("visible_cue", &"") == &"retreat": return text("{actor} recoils and retreats.", {"actor": actor})
			return text("{actor} moves.", {"actor": actor})
		&"wait": return text("{actor} waits.", {"actor": actor})
	return ""

static func recent_events(game: HistoryPlayableGame) -> String:
	var lines: Array[String] = []
	for i in range(game.combat_log.events.size() - 1, -1, -1):
		var line := event_text(game.combat_log.events[i])
		if not line.is_empty(): lines.push_front(line)
		if lines.size() == 6: break
	return "\n".join(lines) if not lines.is_empty() else text("No notable events yet.")
