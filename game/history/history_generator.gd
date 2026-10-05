class_name HistoryGenerator
extends RefCounted

const VERSION := 1
var _names: HistoryNameSource

func _init(names: HistoryNameSource = null) -> void:
	_names = names if names != null else HistoryNameSource.new()

func generate(seed: int) -> HistoryResult:
	var result := HistoryResult.new()
	result.seed = seed
	result.generation_version = VERSION
	result.canon = CanonPolicy.snapshot()
	var shape := _rng(seed, "structure")
	var dates := _rng(seed, "dates")
	var social := _rng(seed, "social")
	var variant := shape.randi_range(0, 2)
	var year := -dates.randi_range(430, 560)
	_entity(result, "region", "region")
	_entity(result, "precursor", "precursor_state")
	var founding := _emit(result, year, HistoricalEvent.Type.FOUNDING, ["compact", "crown", "league"][variant], [], [], [_activate("region"), _activate("precursor")])
	year += dates.randi_range(70, 110)
	var pressure := _emit(result, year, HistoricalEvent.Type.DISASTER, ["drought", "flood", "tremor"][variant], ["precursor"], [founding.id], [_ruin("canal", "canal")])
	year += dates.randi_range(8, 18)
	_entity(result, "province", "group", ["precursor"])
	var split_type := HistoricalEvent.Type.SCHISM if variant == 2 else HistoricalEvent.Type.SPLIT
	var divided := _emit(result, year, split_type, ["levies", "succession", "sanctuary"][variant], ["precursor"], [pressure.id], [_activate("province")])
	year += dates.randi_range(3, 8)
	var terminal_effects: Array[Dictionary] = []
	terminal_effects.append(_ruin("abandoned_seat", "abandoned_hamlet") if variant == 2 else _ruin("civil_battlefield", "battlefield"))
	var terminal_pressure := _emit(result, year, HistoricalEvent.Type.MIGRATION if variant == 2 else HistoricalEvent.Type.WAR,
		"evacuation" if variant == 2 else "civil_war", ["precursor", "province"], [divided.id],
		terminal_effects)
	year += dates.randi_range(4, 9)
	var collapse := _emit(result, year, HistoricalEvent.Type.COLLAPSE, "collapse", ["precursor", "province"], [terminal_pressure.id, pressure.id], [_retire("precursor"), _retire("province"), _ruin("old_administration", "administrative_site")])
	year += dates.randi_range(1, 4)
	_entity(result, "remnant_1", "group", ["precursor"])
	_entity(result, "remnant_2", "group", ["province" if variant == 1 else "precursor"])
	_entity(result, "refugees", "group", ["province" if variant != 0 else "precursor"])
	var remnants := _emit(result, year, HistoricalEvent.Type.FOUNDING, "remnants", [], [collapse.id], [_activate("remnant_1"), _activate("remnant_2"), _activate("refugees")])
	year += dates.randi_range(1, 5)
	_entity(result, "faction_a", "faction", ["remnant_1", "remnant_2"], ["military_remnant", "trading_house", "kinship_clan"][variant])
	var merger := _emit(result, year, HistoricalEvent.Type.MERGE, "remnant_merge", ["remnant_1", "remnant_2"], [remnants.id], [_activate("faction_a"), _retire("remnant_1"), _retire("remnant_2")])
	year += dates.randi_range(2, 7)
	_entity(result, "faction_b", "faction", ["refugees"], ["refugee_community", "village_union", "modified_human_community"][variant])
	_entity(result, "settlement_b", "settlement")
	var migration := _emit(result, year, HistoricalEvent.Type.MIGRATION, "refugees", ["refugees"], [remnants.id], [_activate("faction_b"), _retire("refugees"), _activate("settlement_b"), _settlement("settlement_b", "faction_b")])
	year += dates.randi_range(30, 70)
	var religious := social.randi_range(0, 1) == 0
	_entity(result, "faction_c", "faction", ["faction_b"], "religious_community" if religious else "facility_community")
	var schism := _emit(result, year, HistoricalEvent.Type.SCHISM if religious else HistoricalEvent.Type.SPLIT,
		"community_schism" if religious else "community_split", ["faction_b"], [migration.id], [_activate("faction_c"), _relation("faction_b", "faction_c", -social.randi_range(5, 25))])
	year += dates.randi_range(2, 8)
	_entity(result, "settlement_a", "settlement")
	_emit(result, year, HistoricalEvent.Type.FOUNDING, "town", ["faction_a"], [merger.id], [_activate("settlement_a"), _settlement("settlement_a", "faction_a")])
	year += dates.randi_range(2, 8)
	_entity(result, "settlement_c", "settlement")
	_emit(result, year, HistoricalEvent.Type.FOUNDING, "town", ["faction_c"], [schism.id], [_activate("settlement_c"), _settlement("settlement_c", "faction_c")])
	year += dates.randi_range(15, 30)
	var border := _emit(result, year, HistoricalEvent.Type.WAR, "border_war", ["faction_a", "faction_b"], [merger.id, migration.id], [_relation("faction_a", "faction_b", -social.randi_range(35, 65)), _ruin("border_watchtower", "watchtower")])
	year += dates.randi_range(3, 12)
	_emit(result, year, HistoricalEvent.Type.MIGRATION, "refugee_aid", ["faction_b", "faction_c"], [border.id, schism.id], [_relation("faction_b", "faction_c", social.randi_range(20, 45))])
	year += dates.randi_range(10, 20)
	_entity(result, "pump_settlement", "settlement")
	var reoccupation := _emit(result, year, HistoricalEvent.Type.RUIN_REOCCUPIED, "reoccupation", ["faction_c"], [pressure.id, schism.id], [_activate("pump_settlement"), _settlement("pump_settlement", "faction_c"), {"kind": "reoccupy", "ruin_id": "canal", "owner_id": "faction_c", "settlement_id": "pump_settlement"}])
	if variant != 1:
		year += dates.randi_range(5, 12)
		_emit(result, year, HistoricalEvent.Type.WAR, "second_war", ["faction_a", "faction_c"], [border.id, reoccupation.id], [_relation("faction_a", "faction_c", -social.randi_range(10, 40))])
	var discovery_variant := shape.randi_range(0, 2)
	var discovery := _emit(result, -dates.randi_range(8, 37), HistoricalEvent.Type.ANOMALOUS_DISCOVERY,
		["crater", "salt", "manufacture"][discovery_variant], ["faction_c"], [reoccupation.id],
		[{"kind": "discovery", "id": "unknown_machine", "location_id": "region", "observation": CanonPolicy.OBSERVATIONS[discovery_variant], "origin": "unknown"}])
	result.present = HistoryProjector.new().project(result.entities, result.objective_timeline)
	_claims(result, collapse.id, schism.id, discovery.id, variant, religious, social)
	result.validation_report = HistoryValidator.new().validate(result)
	return result

func _claims(result: HistoryResult, collapse_id: String, schism_id: String, discovery_id: String, variant: int, religious: bool, rng: RandomNumberGenerator) -> void:
	var remnant_accounts := ["The provinces betrayed the old state during the grain crisis; we are its rightful successor.",
		"The flood exposed an illegitimate succession; our compact preserves the old league's lawful obligations.",
		"The provincial sanctuaries abandoned the broken transport network; our kin preserved the old state's households."]
	var refugee_accounts := ["The old rulers hoarded grain and abandoned hungry households; their heirs have no right to rule us.",
		"The succession armies ignored flooded villages; the surviving villages owe no loyalty to their heirs.",
		"Central officials left us among the broken depots; the evacuation saved us, not the old state."]
	_claim(result, "faction_a", collapse_id, "", remnant_accounts[variant], "legitimacy", 0.9)
	_claim(result, "faction_b", collapse_id, "", refugee_accounts[variant], "interpretation", 0.85)
	_claim(result, "faction_c", collapse_id, "", "The Four Moons judged the old rulers." if religious else "The old council neglected the pumps; keeping water moving matters more than restoring a crown.", "interpretation", 0.7)
	_claim(result, "faction_b", schism_id, "", "Our neighbours used doctrine to claim the surviving facilities." if religious else "Our neighbours left to control access to the surviving facilities.", "interpretation", 0.6)
	_claim(result, "faction_c", schism_id, "", "We separated to keep our rites free from the old council." if religious else "We separated to protect our households and maintain the pumps.", "interpretation", 0.8)
	_claim(result, "faction_a", discovery_id, "", "It is an ancient Administrator device.", "interpretation", 0.75)
	_claim(result, "faction_b", discovery_id, "", "It came from outside our sky; the administrators did not make it.", "interpretation", 0.4)
	_claim(result, "faction_c", discovery_id, "", "Its manufacture differs from the devices familiar to our local technicians; its source remains uncertain.", "interpretation", 0.55)
	var mystery: String = ["first_terraformer", "core_intent", "human_origin"][rng.randi_range(0, 2)]
	var belief := {"first_terraformer": "The administrators shaped the first habitable world.",
		"core_intent": "The Deep keeps our ancestors safe and will welcome us.",
		"human_origin": "The administrators created humankind beneath the Four Moons."}
	_claim(result, "faction_c", "", mystery, belief[mystery], "belief", 0.65)

func _claim(result: HistoryResult, claimant: String, event_id: String, topic: String, text: String, kind: String, confidence: float) -> void:
	var claim := HistoricalClaim.new()
	claim.claimant_entity_id = claimant
	claim.referenced_event_id = event_id
	claim.topic = topic
	claim.interpretation = text
	claim.claim_type = kind
	claim.confidence = confidence
	result.historical_claims.append(claim)

func _entity(result: HistoryResult, id: String, kind: String, parents: Array[String] = [], life: String = "") -> void:
	var entity := HistoricalEntity.new()
	entity.id = id
	entity.kind = kind
	entity.name = _names.label(result.seed, id, kind)
	entity.parent_ids = parents.duplicate()
	entity.way_of_life = life
	result.entities.append(entity)

func _emit(result: HistoryResult, year: int, type: HistoricalEvent.Type, key: String, actors: Array[String], causes: Array[String], effects: Array[Dictionary]) -> HistoricalEvent:
	var event := HistoricalEvent.new()
	event.id = "h%02d" % (result.objective_timeline.size() + 1)
	event.year = year
	event.event_type = type
	event.narrative_key = key
	event.actor_ids = actors.duplicate()
	event.location_ids = ["region"]
	event.cause_event_ids = causes.duplicate()
	event.effects = effects.duplicate(true)
	for effect in effects:
		for field: String in ["entity_id", "owner_id", "settlement_id", "a", "b"]:
			if effect.has(field) and effect[field] not in event.entity_ids:
				event.entity_ids.append(effect[field])
		if effect.kind == "activate":
			result.entity(effect.entity_id).created_event_id = event.id
		elif effect.kind == "retire":
			result.entity(effect.entity_id).retired_event_id = event.id
	result.objective_timeline.append(event)
	return event

func _rng(seed: int, domain: String) -> RandomNumberGenerator:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history-v0.1", str(VERSION), domain])
	return rng

func _activate(id: String) -> Dictionary:
	return {"kind": "activate", "entity_id": id}

func _retire(id: String) -> Dictionary:
	return {"kind": "retire", "entity_id": id}

func _ruin(id: String, kind: String) -> Dictionary:
	return {"kind": "ruin", "id": id, "ruin_kind": kind, "location_id": "region"}

func _settlement(id: String, owner: String) -> Dictionary:
	return {"kind": "settlement", "entity_id": id, "owner_id": owner, "location_id": "region"}

func _relation(a: String, b: String, delta: int) -> Dictionary:
	return {"kind": "relationship", "a": a, "b": b, "delta": delta}
