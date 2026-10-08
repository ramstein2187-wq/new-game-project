class_name FactionIdentityResolver
extends RefCounted

# Thin derived cultural lens over objective history. Profiles are deterministic
# queries used by claims/debugging; they do not mutate objective history or Present State.
const CONTINUITY_STANCES := ["heir", "reformer", "breakaway", "new_foundation", "outsider"]
const SOCIAL_ANCHORS := ["kin", "locality", "institution", "craft", "ritual", "exchange", "refuge"]
const ADAPTIVE_STANCES := ["preserve", "adapt", "rebuild", "exploit", "withdraw"]
const INTERPRETATION_MODES := ["pragmatic", "skeptical", "technical", "ritual"]
const MEMORY_FRAMES := ["continuity", "rupture", "grievance", "debt", "warning", "opportunity"]

func resolve(result: HistoryResult, faction_id: String) -> Dictionary:
	if result.generation_version in [4,5]:
		return resolve_v4(result,faction_id,HistoryV4Compatibility.legacy_view(result))
	var entity := result.entity(faction_id)
	assert(entity != null and entity.kind == "faction", "Identity requires a faction")
	assert(result.generation_version == 3, "Identity layer is defined for history v3")

	var relation_context := _relation_context(result, faction_id)
	var rare_event := _latest_domain_event(result, ["observer_legacy", "core_intervention"])
	var reuse_event := _latest_actor_event(result, faction_id, "site_reuse")
	var discovery_event := _latest_actor_event(result, faction_id, "h_discovery")

	var continuity_scores := _scores(CONTINUITY_STANCES)
	_apply_continuity_scores(entity, continuity_scores)
	var continuity := _pick(result.seed, faction_id, "continuity", CONTINUITY_STANCES, continuity_scores)

	var anchor_scores := _scores(SOCIAL_ANCHORS)
	_apply_anchor_scores(entity, anchor_scores)
	var anchor := _pick(result.seed, faction_id, "anchor", SOCIAL_ANCHORS, anchor_scores)

	var adaptive_scores := _scores(ADAPTIVE_STANCES)
	_apply_adaptive_scores(entity, adaptive_scores)
	var adaptive := _pick(result.seed, faction_id, "adaptive", ADAPTIVE_STANCES, adaptive_scores)

	var mode_scores := _scores(INTERPRETATION_MODES)
	_apply_mode_scores(entity, mode_scores)
	var mode := _pick(result.seed, faction_id, "interpretation", INTERPRETATION_MODES, mode_scores)

	var frame_scores := _zero_scores(MEMORY_FRAMES)
	_apply_frame_scores(result, entity, adaptive, relation_context, rare_event, reuse_event, discovery_event, frame_scores)
	var frame := _pick(result.seed, faction_id, "memory", MEMORY_FRAMES, frame_scores)

	var source_events: Array[String] = []
	_append_unique(source_events, entity.created_event_id)
	var frame_event := _frame_event(result, entity, frame, relation_context, rare_event, reuse_event, discovery_event)
	_append_unique(source_events, frame_event)
	var source_facts: Array[String] = [
		"formation:" + entity.formation_origin,
		"way_of_life:" + entity.way_of_life,
	]
	for role in entity.regional_roles:
		source_facts.append("role:" + role)
	source_facts.append("political_continuity:" + str(entity.political_continuity))

	return {
		"continuity_stance": continuity,
		"social_anchor": anchor,
		"adaptive_stance": adaptive,
		"interpretation_mode": mode,
		"memory_frame": frame,
		"source_event_ids": source_events,
		"source_facts": source_facts,
	}

# A per-query decoded view may be shared when reading several factions. No cache
# of generated/resolved identity is retained across calls or worlds.
func resolve_v4(result:HistoryResult,faction_id:String,view:HistoryResult)->Dictionary:
	var profile:Dictionary=HistoryV4Compatibility.translate_ids(resolve(view,faction_id))
	var modes := ["pragmatic","skeptical","technical","faith"]
	profile.interpretation_mode=modes[HistoryV4Catalog.rng(result.seed,"identity/mode/"+faction_id).randi_range(0,3)]
	return profile

func errors(result: HistoryResult, faction_id: String, profile: Dictionary) -> Array[String]:
	if result.generation_version in [4,5]:
		return errors(HistoryV4Compatibility.legacy_view(result), faction_id, HistoryV4Compatibility.translate_ids(profile, true))
	var issues: Array[String] = []
	var expected_keys := ["adaptive_stance", "continuity_stance", "interpretation_mode", "memory_frame", "social_anchor", "source_event_ids", "source_facts"]
	var keys := profile.keys()
	keys.sort()
	if keys != expected_keys:
		issues.append("Faction identity profile has unexpected fields")
	if profile.get("continuity_stance") not in CONTINUITY_STANCES:
		issues.append("Unknown continuity stance")
	if profile.get("social_anchor") not in SOCIAL_ANCHORS:
		issues.append("Unknown social anchor")
	if profile.get("adaptive_stance") not in ADAPTIVE_STANCES:
		issues.append("Unknown adaptive stance")
	if profile.get("interpretation_mode") not in INTERPRETATION_MODES:
		issues.append("Unknown interpretation mode")
	if profile.get("memory_frame") not in MEMORY_FRAMES:
		issues.append("Unknown memory frame")
	if not profile.get("source_event_ids") is Array or not profile.get("source_facts") is Array:
		issues.append("Faction identity provenance must be arrays")
		return issues
	var event_ids := {}
	for event in result.objective_timeline:
		event_ids[event.id] = true
	for event_id in profile.source_event_ids:
		if not event_id is String or event_id.is_empty() or not event_ids.has(event_id):
			issues.append("Faction identity references missing event")
	var entity := result.entity(faction_id)
	if entity == null or entity.created_event_id not in profile.source_event_ids:
		issues.append("Faction identity must cite its formation event")
	return issues

func _scores(values: Array) -> Dictionary:
	var scores := {}
	for value in values:
		scores[value] = 1
	return scores

func _zero_scores(values: Array) -> Dictionary:
	var scores := {}
	for value in values:
		scores[value] = 0
	return scores

func _add(scores: Dictionary, key: String, amount: int) -> void:
	scores[key] = maxi(0, int(scores.get(key, 0)) + amount)

func _apply_continuity_scores(entity: HistoricalEntity, scores: Dictionary) -> void:
	if entity.political_continuity:
		_add(scores, "heir", 5)
		_add(scores, "reformer", 1)
	else:
		scores.heir = 0
	match entity.formation_origin:
		"direct_successor":
			_add(scores, "heir", 5)
		"fragmentation":
			_add(scores, "breakaway", 5)
			_add(scores, "reformer", 1)
		"merger":
			_add(scores, "reformer", 4)
			if entity.political_continuity:
				_add(scores, "heir", 1)
		"reorganization":
			_add(scores, "reformer", 5)
			_add(scores, "new_foundation", 2)
		"migration_settlement":
			_add(scores, "new_foundation", 4)
		"newcomer_formation":
			_add(scores, "outsider", 7)
			_add(scores, "new_foundation", 3)
			scores.heir = 0
		"enclave_continuity":
			_add(scores, "new_foundation", 3)
			_add(scores, "reformer", 1)
			scores.heir = 0
	if entity.parent_ids.is_empty() and entity.formation_origin != "newcomer_formation":
		_add(scores, "new_foundation", 2)
	if entity.formation_origin != "newcomer_formation":
		scores.outsider = 0

func _apply_anchor_scores(entity: HistoricalEntity, scores: Dictionary) -> void:
	match entity.way_of_life:
		"kinship_clan", "breakaway_clan":
			_add(scores, "kin", 6)
		"village_union", "regional_commune", "frontier_settlement_league":
			_add(scores, "locality", 5)
		"provincial_council", "military_remnant":
			_add(scores, "institution", 4)
		"infrastructure_guild", "facility_community":
			_add(scores, "craft", 5)
			_add(scores, "institution", 3)
		"ritual_authority", "religious_community":
			_add(scores, "ritual", 7)
		"trading_house", "resource_or_trade_commune":
			_add(scores, "exchange", 6)
		"migrant_confederation":
			_add(scores, "exchange", 3)
			_add(scores, "refuge", 2)
		"refugee_community":
			_add(scores, "refuge", 7)
		"modified_human_community":
			_add(scores, "locality", 2)
			_add(scores, "kin", 2)
	for role in entity.regional_roles:
		match role:
			"local_exchange":
				_add(scores, "exchange", 3)
			"shelter":
				_add(scores, "refuge", 4)
			"maintenance":
				_add(scores, "craft", 3)
				_add(scores, "institution", 2)
			"archives":
				_add(scores, "institution", 4)
			"border_watch":
				_add(scores, "locality", 2)
				_add(scores, "institution", 1)
			"isolation":
				_add(scores, "locality", 2)

func _apply_adaptive_scores(entity: HistoricalEntity, scores: Dictionary) -> void:
	match entity.way_of_life:
		"kinship_clan", "ritual_authority", "religious_community":
			_add(scores, "preserve", 5)
		"infrastructure_guild", "facility_community", "provincial_council", "village_union", "regional_commune":
			_add(scores, "rebuild", 4)
			_add(scores, "adapt", 2)
		"trading_house", "resource_or_trade_commune":
			_add(scores, "exploit", 4)
			_add(scores, "adapt", 2)
		"refugee_community", "migrant_confederation", "frontier_settlement_league", "modified_human_community":
			_add(scores, "adapt", 5)
		"military_remnant":
			_add(scores, "preserve", 2)
			_add(scores, "rebuild", 2)
		"breakaway_clan":
			_add(scores, "withdraw", 2)
			_add(scores, "preserve", 2)
	for role in entity.regional_roles:
		match role:
			"maintenance":
				_add(scores, "rebuild", 4)
			"local_exchange":
				_add(scores, "adapt", 3)
			"archives":
				_add(scores, "preserve", 3)
			"shelter":
				_add(scores, "adapt", 3)
			"border_watch":
				_add(scores, "preserve", 2)
			"isolation":
				_add(scores, "withdraw", 6)

func _apply_mode_scores(entity: HistoricalEntity, scores: Dictionary) -> void:
	_add(scores, "pragmatic", 1)
	match entity.way_of_life:
		"infrastructure_guild", "facility_community", "provincial_council":
			_add(scores, "technical", 5)
		"ritual_authority", "religious_community":
			_add(scores, "ritual", 6)
		"military_remnant", "trading_house", "resource_or_trade_commune", "refugee_community":
			_add(scores, "pragmatic", 4)
		"kinship_clan", "breakaway_clan":
			_add(scores, "skeptical", 2)
	for role in entity.regional_roles:
		if role in ["maintenance", "archives"]:
			_add(scores, "technical", 3)
		elif role in ["local_exchange", "shelter"]:
			_add(scores, "pragmatic", 2)
		elif role == "isolation":
			_add(scores, "skeptical", 3)
	if "observer_scholarly_term" in entity.knowledge_tags:
		_add(scores, "technical", 4)

func _apply_frame_scores(result: HistoryResult, entity: HistoricalEntity, adaptive: String, relations: Dictionary,
		rare_event: String, reuse_event: String, discovery_event: String, scores: Dictionary) -> void:
	if entity.political_continuity:
		_add(scores, "continuity", 4)
	else:
		_add(scores, "rupture", 2)
	if entity.formation_origin in ["reorganization", "newcomer_formation", "enclave_continuity"]:
		_add(scores, "rupture", 2)
	var extinct_ancestors := 0
	for ancestry in result.present.faction_ancestry:
		if ancestry.faction_id != entity.id:
			continue
		for ancestor_id in ancestry.ancestor_ids:
			var ancestor := result.entity(ancestor_id)
			if ancestor != null and not ancestor.retired_event_id.is_empty():
				extinct_ancestors += 1
	_add(scores, "rupture", mini(3, extinct_ancestors))
	if not relations.negative_event.is_empty():
		_add(scores, "grievance", 4)
	if not relations.positive_event.is_empty():
		_add(scores, "debt", 3)
	# Every faction shares the regional pressure as a real historical scar, so
	# warning is always evidence-backed even when no rarer system event exists.
	_add(scores, "warning", 1)
	if not rare_event.is_empty():
		_add(scores, "warning", 5)
	elif result.configuration.pressure_domain in ["natural", "core_intervention", "observer_legacy"]:
		_add(scores, "warning", 2)
	if not discovery_event.is_empty() or not reuse_event.is_empty():
		_add(scores, "opportunity", 4)
	if adaptive == "exploit":
		_add(scores, "opportunity", 3)
	elif adaptive == "preserve":
		_add(scores, "continuity", 2)
	elif adaptive == "withdraw":
		_add(scores, "warning", 2)
	elif adaptive == "rebuild":
		_add(scores, "opportunity", 2)

func _pick(seed: int, faction_id: String, axis: String, order: Array, scores: Dictionary) -> String:
	var total := 0
	for value in order:
		total += int(scores.get(value, 0))
	assert(total > 0, "Identity axis has no weighted options")
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history", "3", "identity", faction_id, axis])
	var roll := rng.randi_range(0, total - 1)
	for value in order:
		roll -= int(scores.get(value, 0))
		if roll < 0:
			return value
	return order[0]

func _relation_context(result: HistoryResult, faction_id: String) -> Dictionary:
	var positive_event := ""
	var positive_delta := -1
	var negative_event := ""
	var negative_delta := 1
	for event in result.objective_timeline:
		for effect in event.effects:
			if effect.kind != "relationship" or faction_id not in [effect.a, effect.b]:
				continue
			if effect.delta > positive_delta:
				positive_delta = effect.delta
				positive_event = event.id
			if effect.delta < negative_delta:
				negative_delta = effect.delta
				negative_event = event.id
	return {
		"positive_event": positive_event if positive_delta > 0 else "",
		"negative_event": negative_event if negative_delta < 0 else "",
	}

func _latest_domain_event(result: HistoryResult, domains: Array) -> String:
	var found := ""
	for event in result.objective_timeline:
		if event.cause_domain in domains:
			found = event.id
	return found

func _latest_actor_event(result: HistoryResult, faction_id: String, narrative_or_id: String) -> String:
	var found := ""
	for event in result.objective_timeline:
		if faction_id in event.actor_ids and (event.narrative_key == narrative_or_id or event.id == narrative_or_id):
			found = event.id
	return found

func _frame_event(result: HistoryResult, entity: HistoricalEntity, frame: String, relations: Dictionary,
		rare_event: String, reuse_event: String, discovery_event: String) -> String:
	match frame:
		"continuity":
			return entity.created_event_id
		"rupture":
			return "h_collapse"
		"grievance":
			return relations.negative_event if not relations.negative_event.is_empty() else entity.created_event_id
		"debt":
			return relations.positive_event if not relations.positive_event.is_empty() else entity.created_event_id
		"warning":
			return rare_event if not rare_event.is_empty() else "h_pressure"
		"opportunity":
			if not reuse_event.is_empty():
				return reuse_event
			if not discovery_event.is_empty():
				return discovery_event
			if not relations.positive_event.is_empty():
				return relations.positive_event
	return entity.created_event_id

func _append_unique(values: Array[String], value: String) -> void:
	if not value.is_empty() and value not in values:
		values.append(value)
