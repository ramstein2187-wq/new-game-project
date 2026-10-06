class_name HistoryGenerator
extends RefCounted

const VERSION := 3
const ARCHITECTURE_VERSION_V2 := 1
const ARCHITECTURE_VERSION_V3 := 2

static func architecture_version_for_generation(version: int) -> int:
	return ARCHITECTURE_VERSION_V2 if version == 2 else ARCHITECTURE_VERSION_V3 if version == 3 else -1
var _names: HistoryNameSource
var _discovery_pool: Array
var _version: int
var _populations: SocialPopulationCatalog
var _incidents: SocialIncidentCatalog

func _init(names: HistoryNameSource = null, discovery_pool: Array = HistoryMotifs.DISCOVERIES, version: int = VERSION, populations: SocialPopulationCatalog = null, incidents: SocialIncidentCatalog = null) -> void:
	_names = names if names != null else HistoryNameSource.new()
	_discovery_pool = discovery_pool.duplicate()
	_version = version
	_populations = populations if populations != null else SocialPopulationCatalog.new()
	_incidents = incidents if incidents != null else SocialIncidentCatalog.new()

func generate(seed: int) -> HistoryResult:
	var result := HistoryResult.new()
	result.seed = seed
	result.generation_version = _version
	result.architecture_version = architecture_version_for_generation(_version)
	result.canon = CanonPolicy.snapshot()
	result.configuration = _configuration(seed)
	var local := _local_collapse(result)
	if _version == 2:
		_successors(result, local)
		_later_history(result, local)
	else:
		HistoryTopology.new().build(result, local, self)
		SocialIncidentPlanner.new(_incidents).build(result, self)
		_later_history_v3(result)
	result.objective_timeline.sort_custom(func(a: HistoricalEvent, b: HistoricalEvent) -> bool: return a.year < b.year or (a.year == b.year and a.id < b.id))
	var used := {}
	var definitions := result.entities.duplicate()
	definitions.sort_custom(func(a: HistoricalEntity, b: HistoricalEntity) -> bool:
		if a.id.begins_with("s_") != b.id.begins_with("s_"):
			return not a.id.begins_with("s_")
		return a.id < b.id)
	for entity in definitions:
		_names.assign(entity, seed, used, _version)
	result.present = HistoryProjector.new().project(result.entities, result.objective_timeline)
	result.historical_claims = HistoryClaimBuilder.new().build(result)
	result.validation_report = HistoryValidator.new(_populations, _incidents).validate(result)
	return result

func _configuration(seed: int) -> Dictionary:
	var roll := _rng(seed, "pressure/domain").randi_range(0, 999)
	var domain := "natural" if roll < 450 else "human" if roll < 900 else "core_intervention" if roll < 980 else "observer_legacy"
	var config := {
		"content_revision": HistoryMotifs.CONTENT_REVISION,
		"precursor_form": _pick(seed, "precursor", HistoryMotifs.PRECURSORS),
		"pressure_domain": domain, "pressure_motif": _pick(seed, "pressure/motif", HistoryMotifs.PRESSURES[domain]),
		"response_motif": _pick(seed, "response", HistoryMotifs.RESPONSES),
		"collapse_pattern": _pick(seed, "collapse", HistoryMotifs.COLLAPSES),
		"successor_a_form": _pick(seed, "successors/a", HistoryMotifs.SUCCESSOR_A),
		"successor_b_form": _pick(seed, "successors/b", HistoryMotifs.SUCCESSOR_B),
		"faction_c_formation": _pick(seed, "faction-c", HistoryMotifs.FORMATION_C),
		"middle_motif": _pick(seed, "middle", HistoryMotifs.MIDDLE),
		"recent_motif": _pick(seed, "recent", HistoryMotifs.RECENT),
		"discovery_motif": _pick(seed, "discovery", _discovery_pool),
		"belief_profile": _pick(seed, "beliefs/profile", HistoryMotifs.BELIEFS),
		"ancestry_mode": _pick(seed, "successors/ancestry", HistoryMotifs.ANCESTRY_MODES),
		"extra_core": "", "extra_orbital": "",
	}
	# Separate budgets: not a shared intelligence or a reason for either system's act.
	if domain != "core_intervention" and _rng(seed, "legacy/core/budget").randi_range(0, 999) < 30:
		config.extra_core = _pick(seed, "legacy/core/motif", HistoryMotifs.PRESSURES.core_intervention)
	if domain != "observer_legacy" and _rng(seed, "legacy/orbital/budget").randi_range(0, 999) < 20:
		config.extra_orbital = _pick(seed, "legacy/orbital/motif", HistoryMotifs.PRESSURES.observer_legacy)
	if _version == 3:
		for field in ["successor_a_form", "successor_b_form", "faction_c_formation", "ancestry_mode", "middle_motif", "recent_motif", "belief_profile"]:
			config.erase(field)
		config.content_revision = HistoryMotifs.CONTENT_REVISION_V3
		config.topology_family = _pick(seed, "topology/family", HistoryMotifs.TOPOLOGY_FAMILIES)
		config.population_catalog_id = _populations.id
		config.social_content_id = _incidents.content_id
		config.social_revision = _incidents.revision
	return config

func _local_collapse(result: HistoryResult) -> Dictionary:
	var c := result.configuration
	_entity(result, "region", "region")
	var precursor := _entity(result, "precursor", "precursor_state")
	precursor.political_form = c.precursor_form
	var found_year := _year(result.seed, "found", -560, -480)
	var founding: Array[Dictionary] = [_activate("region"), _activate("precursor")]
	if _version == 3:
		precursor.formation_origin = "founding"
		precursor.ancestry_kind = "root"
		precursor.political_continuity = true
		precursor.population_origin_profile = PopulationOrigins.from_template(_populations.template("human_baseline"))
		founding.append(_population("precursor", precursor.population_origin_profile, [], "seed"))
	_emit(result, "h_found", found_year, c.precursor_form, [], [], founding)
	_entity(result, "regional_body", "group", ["precursor"])
	_emit(result, "h_body", found_year + 25, "regional_body", ["precursor"], ["h_found"], [_activate("regional_body")])
	var pressure_year := _year(result.seed, "pressure", -370, -340)
	var pressure_effects: Array[Dictionary] = [_ruin("pressure_site", HistoryMotifs.PRESSURE_RUINS.get(c.pressure_motif, "legacy_damage_site"))]
	var pressure_type: String = HistoryMotifs.NARRATIVES[c.pressure_motif][0]
	if pressure_type in ["SPLIT", "SCHISM", "MIGRATION"]:
		_entity(result, "pressure_group", "group", ["regional_body"])
		pressure_effects.push_front(_activate("pressure_group"))
	if HistoryMotifs.SYSTEMS.has(c.pressure_motif):
		pressure_effects.append(HistoryMotifs.system_effect(c.pressure_motif, "primary_system"))
	var pressure_causes: Array[String] = []
	if not HistoryMotifs.SYSTEMS.has(c.pressure_motif):
		pressure_causes.append("h_body")
	_emit(result, "h_pressure", pressure_year, c.pressure_motif, ["precursor", "regional_body"], pressure_causes, pressure_effects)
	var actors: Array[String] = ["precursor", "regional_body"]
	if result.entity("pressure_group") != null:
		actors.append("pressure_group")
	_entity(result, "province", "group", ["regional_body"])
	var response_year := pressure_year + _year(result.seed, "response-gap", 6, 12)
	_emit(result, "h_response", response_year, c.response_motif, actors, ["h_pressure"], [_activate("province")])
	var failure_year := response_year + _year(result.seed, "failure-gap", 3, 9)
	_emit(result, "h_failure", failure_year, c.collapse_pattern, ["precursor", "province"], ["h_response"],
		[_ruin("terminal_site", "battlefield" if c.collapse_pattern == "civil_war" else "administrative_site")])
	var collapse_year := failure_year + _year(result.seed, "collapse-gap", 4, 10)
	var effects: Array[Dictionary] = [_retire("precursor"), _retire("regional_body"), _retire("province"), _ruin("old_administration", "administrative_site")]
	if result.entity("pressure_group") != null:
		effects.append(_retire("pressure_group"))
	actors.append("province")
	if _version == 3:
		effects.append(_population_fate("precursor", [], ["human_baseline"]))
	_emit(result, "h_collapse", collapse_year, "collapse", actors, ["h_failure", "h_pressure"], effects)
	return {"collapse_year": collapse_year}

func _successors(result: HistoryResult, local: Dictionary) -> void:
	var c := result.configuration
	var parent_two: String = "province" if c.ancestry_mode == "mixed_provincial" else "regional_body"
	var displaced_parent: String = "province" if c.ancestry_mode == "provincial_refugees" else "regional_body"
	_entity(result, "remnant_1", "group", ["precursor"])
	_entity(result, "remnant_2", "group", [parent_two])
	_entity(result, "displaced", "group", [displaced_parent])
	_emit(result, "h_remnants", local.collapse_year + 2, "remnants", [], ["h_collapse"],
		[_activate("remnant_1"), _activate("remnant_2"), _activate("displaced")])
	_entity(result, "faction_a", "faction", ["remnant_1", "remnant_2"], c.successor_a_form)
	_emit(result, "h_merge", local.collapse_year + 5, "remnant_merge", ["remnant_1", "remnant_2"], ["h_remnants"],
		[_activate("faction_a"), _retire("remnant_1"), _retire("remnant_2")])
	_entity(result, "faction_b", "faction", ["displaced"], c.successor_b_form)
	_entity(result, "settlement_b", "settlement")
	_emit(result, "h_displaced", local.collapse_year + 9, "refugees", ["displaced"], ["h_remnants"],
		[_activate("faction_b"), _retire("displaced"), _activate("settlement_b"), _settlement("settlement_b", "faction_b")])
	var c_year: int = local.collapse_year + _year(result.seed, "c-gap", 45, 70)
	_entity(result, "faction_c", "faction", ["faction_b"], c.faction_c_formation)
	_emit(result, "h_c_formed", c_year, c.faction_c_formation, ["faction_b"], ["h_displaced"],
		[_activate("faction_c"), _relation(result.seed, "faction_b", "faction_c", -25, -5, "formation")])
	for id: String in ["faction_a", "faction_b", "faction_c"]:
		var faction := result.entity(id)
		var scholarly := faction.way_of_life in ["infrastructure_guild", "facility_community"]
		if _rng(result.seed, "knowledge/" + id).randi_range(0, 99) < (65 if scholarly else 8):
			faction.knowledge_tags.append("observer_scholarly_term")
	_entity(result, "settlement_a", "settlement")
	_emit(result, "h_town_a", c_year + 5, "town", ["faction_a"], ["h_merge"],
		[_activate("settlement_a"), _settlement("settlement_a", "faction_a")])
	_entity(result, "settlement_c", "settlement")
	_emit(result, "h_town_c", c_year + 10, "town", ["faction_c"], ["h_c_formed"],
		[_activate("settlement_c"), _settlement("settlement_c", "faction_c")])
	_entity(result, "service_settlement", "settlement")
	_emit(result, "h_reuse", c_year + 15, "reoccupation", ["faction_c"], ["h_pressure", "h_c_formed"],
		[_activate("service_settlement"), _settlement("service_settlement", "faction_c"),
		{"kind": "reoccupy", "ruin_id": "pressure_site", "owner_id": "faction_c", "settlement_id": "service_settlement"}])

func _later_history(result: HistoryResult, _local: Dictionary) -> void:
	var c := result.configuration
	var negative: bool = c.middle_motif == "settlement_competition"
	_emit(result, "h_middle", _year(result.seed, "middle", -185, -155), c.middle_motif,
		["faction_a", "faction_c"], ["h_merge", "h_reuse"],
		[_relation(result.seed, "faction_a", "faction_c", -30 if negative else 10, -10 if negative else 30, "middle")])
	for domain: String in ["core", "orbital"]:
		var key: String = c["extra_" + domain]
		if not key.is_empty():
			var year := _year(result.seed, domain + "-legacy", -144, -132) if domain == "core" else _year(result.seed, domain + "-legacy", -123, -112)
			# No human event is assigned as a motive/trigger for activation.
			_emit(result, "h_legacy_" + domain, year, key, [], [],
				[HistoryMotifs.system_effect(key, "legacy_" + domain)])
	var hostile: bool = c.recent_motif == "border_dispute"
	var recent_effects: Array[Dictionary] = [_relation(result.seed, "faction_a", "faction_b",
		-35 if hostile else 15, -15 if hostile else 40, "recent")]
	if hostile:
		recent_effects.append(_ruin("border_watchpost", "watchtower"))
	_emit(result, "h_recent", _year(result.seed, "recent", -95, -80), c.recent_motif,
		["faction_a", "faction_b"], ["h_displaced", "h_middle"], recent_effects)
	_emit(result, "h_aid", _year(result.seed, "aid", -71, -57), "recent_aid",
		["faction_b", "faction_c"], ["h_c_formed", "h_recent"],
		[_relation(result.seed, "faction_b", "faction_c", 10, 40, "aid")])
	_emit(result, "h_discovery", _year(result.seed, "discovery", -48, -35), c.discovery_motif,
		["faction_c"], ["h_reuse"], [{"kind": "discovery", "id": "unknown_object", "location_id": "region",
		"observation": HistoryMotifs.DISCOVERY_OBSERVATIONS[c.discovery_motif], "origin": "unknown"}])
	_entity(result, "recent_settlement", "settlement")
	var owner: String = _pick(result.seed, "recent/owner", ["faction_a", "faction_b", "faction_c"])
	_emit(result, "h_expansion", _year(result.seed, "expansion", -29, -18), "recent_expansion",
		[owner], ["h_aid"], [_activate("recent_settlement"), _settlement("recent_settlement", owner)])
	var rivalry := _rng(result.seed, "recent/last").randi_range(0, 1) == 0
	_emit(result, "h_last", _year(result.seed, "last", -10, -3), "recent_rivalry" if rivalry else "maintenance_accord",
		["faction_a", "faction_c"], ["h_middle", "h_expansion"],
		[_relation(result.seed, "faction_a", "faction_c", -25 if rivalry else 15, -5 if rivalry else 30, "last")])

func _entity(result: HistoryResult, id: String, kind: String, parents: Array[String] = [], life: String = "") -> HistoricalEntity:
	var entity := HistoricalEntity.new()
	entity.id = id
	entity.kind = kind
	entity.name = id
	entity.parent_ids = parents.duplicate()
	if not parents.is_empty():
		var parent := result.entity(parents[0])
		entity.naming_culture_id = parent.naming_culture_id
		entity.naming_lineage_id = parent.naming_lineage_id
	entity.way_of_life = life
	result.entities.append(entity)
	return entity

func _emit(result: HistoryResult, id: String, year: int, key: String, actors: Array[String], causes: Array[String], effects: Array[Dictionary]) -> void:
	var event := HistoricalEvent.new()
	event.id = id
	event.year = year
	event.event_type = HistoricalEvent.Type[HistoryMotifs.NARRATIVES[key][0]]
	event.narrative_key = key
	event.cause_domain = HistoryMotifs.NARRATIVES[key][2]
	event.scope = "local" if event.cause_domain in ["observer_legacy", "core_intervention", "unknown"] else "regional"
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

func _emit_social(result: HistoryResult, id: String, year: int, definition: Dictionary, actors: Array[String], causes: Array[String], effects: Array[Dictionary]) -> void:
	var event := HistoricalEvent.new()
	event.id = id
	event.year = year
	event.event_type = HistoricalEvent.Type.SOCIAL_INCIDENT
	event.narrative_key = definition.id
	event.scope = "local"
	event.cause_domain = "human"
	event.actor_ids = actors.duplicate()
	event.location_ids = ["region"]
	event.cause_event_ids = causes.duplicate()
	event.effects = effects.duplicate(true)
	for effect in effects:
		for field: String in ["entity_id", "owner_id", "reference_id"]:
			if effect.has(field) and effect[field] not in event.entity_ids:
				event.entity_ids.append(effect[field])
		if effect.kind == "activate":
			result.entity(effect.entity_id).created_event_id = event.id
		elif effect.kind == "retire":
			result.entity(effect.entity_id).retired_event_id = event.id
	result.objective_timeline.append(event)

func _rng(seed: int, domain: String) -> RandomNumberGenerator:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history", str(_version), domain])
	return rng

func _pick(seed: int, domain: String, pool: Array) -> String:
	return str(pool[_rng(seed, domain).randi_range(0, pool.size() - 1)])

func _year(seed: int, id: String, minimum: int, maximum: int) -> int:
	return _rng(seed, "dates/" + id).randi_range(minimum, maximum)

func _activate(id: String) -> Dictionary:
	return {"kind": "activate", "entity_id": id}

func _retire(id: String) -> Dictionary:
	return {"kind": "retire", "entity_id": id}

func _ruin(id: String, kind: String) -> Dictionary:
	var effect := {"kind": "ruin", "id": id, "ruin_kind": kind, "location_id": "region"}
	if _version == 3:
		effect.merge(HistorySites.description(kind))
	return effect

func _population(id: String, profile: Dictionary, sources: Array, mode: String) -> Dictionary:
	return {"kind": "population", "entity_id": id, "profile": profile.duplicate(true), "source_ids": sources.duplicate(), "mode": mode}

func _population_fate(id: String, successors: Array, untracked: Array) -> Dictionary:
	return {"kind": "population_fate", "entity_id": id, "disposition": "absorbed" if not successors.is_empty() else "untracked", "successor_ids": successors.duplicate(), "untracked_template_ids": untracked.duplicate()}

func _settlement(id: String, owner: String) -> Dictionary:
	return {"kind": "settlement", "entity_id": id, "owner_id": owner, "location_id": "region"}

func _relation(seed: int, a: String, b: String, minimum: int, maximum: int, phase: String) -> Dictionary:
	return {"kind": "relationship", "a": a, "b": b, "delta": _rng(seed, "relations/" + phase).randi_range(minimum, maximum)}

func _later_history_v3(result: HistoryResult) -> void:
	var active: Array[String] = []
	for entity in result.entities:
		if entity.kind == "faction" and entity.retired_event_id.is_empty():
			active.append(entity.id)
	active.sort()
	for domain: String in ["core", "orbital"]:
		var key: String = result.configuration["extra_" + domain]
		if not key.is_empty():
			_emit(result, "h_legacy_" + domain, _year(result.seed, domain + "-legacy", -144, -132) if domain == "core" else _year(result.seed, domain + "-legacy", -123, -112), key, [], [], [HistoryMotifs.system_effect(key, "legacy_" + domain)])
	# Reuse is optional and selected only from canonical compatible site/faction pairs.
	if _rng(result.seed, "sites/reuse/budget").randi_range(0, 99) < 40:
		var options: Array[Dictionary] = []
		for event in result.objective_timeline:
			for effect in event.effects:
				if effect.kind != "ruin" or event.id.begins_with("s_"):
					continue
				for id in active:
					for purpose: String in ["settlement", "research", "scavenging", "military_post", "ritual_site"]:
						if HistorySites.compatible(effect, result.entity(id), purpose):
							options.append({"ruin": effect.id, "event": event.id, "owner": id, "purpose": purpose})
		if not options.is_empty():
			var option: Dictionary = options[_rng(result.seed, "sites/reuse/choice").randi_range(0, options.size() - 1)]
			_entity(result, "reused_site", "settlement")
			_emit(result, "h_reuse", -37, "site_reuse", [option.owner], [option.event, result.entity(option.owner).created_event_id],
				[_activate("reused_site"), _settlement("reused_site", option.owner),
				{"kind": "reoccupy", "ruin_id": option.ruin, "owner_id": option.owner, "settlement_id": "reused_site", "purpose": option.purpose}])
	# Sparse witnessed relationships, not an all-pairs diplomacy matrix.
	var pairs: Array[Array] = []
	var isolated: String = active[_rng(result.seed, "relations/isolation").randi_range(0, active.size() - 1)]
	if result.configuration.topology_family == "enclave_continuity":
		for id in active:
			if result.entity(id).formation_origin == "enclave_continuity":
				isolated = id
	for i in range(active.size()):
		for j in range(i + 1, active.size()):
			if active[i] != isolated and active[j] != isolated:
				pairs.append([active[i], active[j]])
	var rng := _rng(result.seed, "relations/pairs")
	for i in range(pairs.size() - 1, 0, -1):
		var j := rng.randi_range(0, i)
		var pair := pairs[i]
		pairs[i] = pairs[j]
		pairs[j] = pair
	var count := rng.randi_range(2, maxi(2, active.size() - 2))
	for i in range(count):
		var a: String = pairs[i][0]
		var b: String = pairs[i][1]
		# Movement requires recorded population effects; these are diplomatic encounters.
		var key: String = _pick(result.seed, "recent/pair/" + str(i), ["border_dispute", "trade_reopening", "local_alliance", "maintenance_accord"])
		var hostile := key == "border_dispute"
		var effects: Array[Dictionary] = [_relation(result.seed, a, b, -35 if hostile else 10, -15 if hostile else 35, "recent/" + str(i))]
		if hostile:
			effects.append(_ruin("watchpost_%d" % i, "watchtower"))
		_emit(result, "h_relation_%d" % i, -28 + i * 2, key, [a, b], [result.entity(a).created_event_id, result.entity(b).created_event_id], effects)
	# This event's sign is distinct from accumulated sentiment after other events.
	var first_pair: Array = pairs[0]
	var previous_hostile: bool = result.objective_timeline.filter(func(e: HistoricalEvent) -> bool: return e.id == "h_relation_0")[0].effects[0].delta < 0
	_emit(result, "h_last", -5, "maintenance_accord" if previous_hostile else "recent_rivalry",
		[first_pair[0], first_pair[1]], ["h_relation_0"],
		[_relation(result.seed, first_pair[0], first_pair[1], 20 if previous_hostile else -30, 45 if previous_hostile else -10, "last")])
	if _rng(result.seed, "discovery/budget").randi_range(0, 99) < 60:
		var finder: String = active[_rng(result.seed, "discovery/finder").randi_range(0, active.size() - 1)]
		var motif: String = result.configuration.discovery_motif
		_emit(result, "h_discovery", -12, motif, [finder], [result.entity(finder).created_event_id],
			[{"kind": "discovery", "id": "unknown_object", "location_id": "region", "observation": HistoryMotifs.DISCOVERY_OBSERVATIONS[motif], "origin": "unknown"}])
