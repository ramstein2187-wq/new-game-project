class_name HistoryClaimBuilder
extends RefCounted

const ACCOUNTS := {
	"military_remnant": "We held local households together when the old government failed.",
	"trading_house": "The routes died before the state did; renewed exchange gives our obligations meaning.",
	"kinship_clan": "Our inherited household duties survived the old state's titles.",
	"provincial_council": "Local assemblies carried responsibility after central appointments failed.",
	"infrastructure_guild": "Maintaining services mattered more than the old officials' titles.",
	"ritual_authority": "Our shared rites kept the community together when central authority failed.",
	"refugee_community": "The old government abandoned displaced households; shelter made our community.",
	"village_union": "Villages survived by sharing duties; no surviving central heir owns us.",
	"modified_human_community": "Our different adaptations were treated as disloyalty; we learned to govern together.",
	"migrant_confederation": "Moving households joined because a shared welcome mattered more than inherited borders.",
	"frontier_settlement_league": "New settlements survived through local agreements rather than distant offices.",
	"regional_commune": "Shared work and representation outlasted central authority.",
	"religious_community": "The Four Moons withdrew their blessing from those old rulers.",
	"facility_community": "Who ruled mattered less than keeping old facilities serviceable.",
	"breakaway_clan": "Our households kept their promises when larger councils could not.",
	"resource_or_trade_commune": "Local workshops and exchange give us a reason to remain together.",
}

func build(result: HistoryResult) -> Array[HistoricalClaim]:
	if result.generation_version == 3:
		return _build_v3(result)
	var claims: Array[HistoricalClaim] = []
	for faction in result.present.active_factions:
		var entity := result.entity(faction.id)
		var ancestors: Array = []
		for row in result.present.faction_ancestry:
			if row.faction_id == entity.id:
				ancestors = row.ancestor_ids
		var lineage := "Our elders include households of the former provincial body. " if "province" in ancestors else "Our elders came through the former regional assemblies. "
		_add(claims, result.seed, entity.id, "h_collapse", "", lineage + ACCOUNTS[entity.way_of_life], "legitimacy")
		# Independent claimant outlooks; shared memory need not imply a shared doctrine.
		var outlook := RandomNumberGenerator.new()
		outlook.seed = SeedDeriver.derive(result.seed, ["history", "2", "beliefs/outlook", entity.id])
		var index := HistoryMotifs.BELIEFS.find(result.configuration.belief_profile)
		var view: String = HistoryMotifs.BELIEFS[(index + outlook.randi_range(0, 3)) % 4]
		var pressure := "No local record tells us why the whole age of great states ended."
		if view == "pragmatic":
			pressure = "We remember the disrupted work and relocation; restoring daily life mattered more than finding one culprit."
		elif view == "technical":
			pressure = "The damaged sites record a local disruption; its visible mechanism does not explain the end of every great state."
		elif view == "ritual":
			pressure = "We remember this disruption through communal rites; others disagree about what those signs mean."
		pressure = _pressure_memory(result.configuration.pressure_motif) + " " + pressure
		_add(claims, result.seed, entity.id, "h_pressure", "", pressure, "interpretation")
		var discovery := "It may be a machine of the ancient builders; resemblance alone does not identify its origin."
		if entity.way_of_life in ["infrastructure_guild", "facility_community"]:
			discovery = "We compared its manufacture with " + _old_term(entity) + " devices; the comparison does not settle its origin."
		elif entity.way_of_life in ["religious_community", "ritual_authority"]:
			discovery = "Some call it a sign from above; our rites do not establish who made it."
		elif view == "skeptical" or entity.id == "faction_b":
			discovery = "It might have come from beyond the sky or from buried older works; neither account is proven."
		_add(claims, result.seed, entity.id, "h_discovery", "", discovery, "interpretation")
		var neighbour := "faction_b" if entity.id == "faction_a" else "faction_c" if entity.id == "faction_b" else "faction_a"
		var score := _relation_score(result.present, entity.id, neighbour)
		var relation := "Recent agreements let us cooperate despite different ancestry." if score > 0 else "Recent disputes make us distrust our neighbours' account of the old state's obligations."
		if score == 0:
			relation = "Recent agreements and disputes leave our obligations to neighbours unsettled."
		_add(claims, result.seed, entity.id, "h_last" if entity.id == "faction_c" else "h_recent" if entity.id == "faction_a" else "h_aid", "", relation, "interpretation")
		for event in result.objective_timeline:
			if event.cause_domain not in ["observer_legacy", "core_intervention"]:
				continue
			var account := _core_memory(event.narrative_key)
			if event.cause_domain == "observer_legacy":
				account = "We suspect an " + _old_term(entity) + " sky-machine; others call it a meteor, judgment or an enemy weapon."
				if entity.way_of_life in ["military_remnant", "ritual_authority"]:
					account = "Our elders called the sky damage an enemy secret weapon or a judgment; that account may be wrong."
			_add(claims, result.seed, entity.id, event.id, "", account, "interpretation")
	_add(claims, result.seed, "faction_b", "h_c_formed", "", "Their separation changed our household council; their own story emphasizes different duties.", "interpretation")
	_add(claims, result.seed, "faction_c", "h_c_formed", "", ACCOUNTS[result.entity("faction_c").way_of_life], "interpretation")
	var c := result.entity("faction_c")
	_add(claims, result.seed, c.id, "", "first_terraformer", "Some say the " + _old_term(c) + " builders made the first habitable world; our tradition does not prove that.", "belief")
	return claims

func _old_term(entity: HistoricalEntity) -> String:
	return "Observer-era" if "observer_scholarly_term" in entity.knowledge_tags else "ancient"

func _pressure_memory(key: String) -> String:
	if key == "chemical_exposure":
		return "Our elders remembered harmful vapours from opened ground."
	if key == "extreme_seasons":
		return "Our elders remembered seasons outside their established schedules."
	if key == "geophysical_stress":
		return "Our elders remembered broken ground; some blamed the moons."
	if key == "radiative_haze":
		return "Our elders remembered a veiled sky and unusual exposure."
	var human_memories := {
		"administrative_fragmentation": "Our elders disputed who could appoint district officials.",
		"succession_dispute": "Our elders inherited conflicting records of succession.",
		"military_overextension": "Our elders remembered withdrawn garrisons and displaced households.",
		"migration_pressure": "Our elders remembered arriving households whose representation was denied.",
		"trade_failure": "Our elders remembered empty stations and obligations that trade could no longer support.",
		"adaptation_tension": "Our elders remembered communities divided over their different adaptations.",
	}
	if human_memories.has(key):
		return human_memories[key]
	if key in HistoryMotifs.PRESSURES.core_intervention:
		return "Our elders remembered altered access and services, whose reason they could not establish."
	return "Our elders remembered damage from old sky machinery, without agreeing on its cause."

func _core_memory(key: String) -> String:
	var observations := {"core_quarantine": "district barriers", "core_route_isolation": "closed routes",
		"core_underground_closure": "sealed tunnels", "core_rainfall_shift": "gradually changing rainfall",
		"core_boundary_adjustment": "changing environmental boundaries", "core_shutdown": "lost services",
		"core_slope_failure": "the failed slope", "core_fault_release": "the ground's stress release"}
	return "Some attribute %s to the Deep; the purpose of the old controls is unknown." % observations.get(key, "altered access")

func _relation_score(state: HistoryState, a: String, b: String) -> int:
	for row in state.relationships:
		if (row.a == a and row.b == b) or (row.a == b and row.b == a):
			return row.score
	return 0

func _add(claims: Array[HistoricalClaim], seed: int, claimant: String, event_id: String, topic: String, text: String, type: String) -> void:
	var claim := HistoricalClaim.new()
	claim.claimant_entity_id = claimant
	claim.referenced_event_id = event_id
	claim.topic = topic
	claim.interpretation = text
	claim.claim_type = type
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history", "2", "beliefs", claimant, event_id, topic])
	claim.confidence = float(rng.randi_range(35, 90)) / 100.0
	claims.append(claim)

func _build_v3(result: HistoryResult) -> Array[HistoricalClaim]:
	var claims: Array[HistoricalClaim] = []
	var identities := FactionIdentityResolver.new()
	for row in result.present.active_factions:
		var entity := result.entity(row.id)
		var identity: Dictionary = identities.resolve(result, entity.id)
		_add_v3(claims, result.seed, entity.id, entity.created_event_id, "event", {},
			_identity_statement(entity, identity), "legitimacy")
		_add_v3(claims, result.seed, entity.id, "h_pressure", "event", {},
			_pressure_interpretation(result, entity, identity))
		for event in result.objective_timeline:
			for effect in event.effects:
				if effect.kind == "relationship" and entity.id in [effect.a, effect.b]:
					_add_v3(claims, result.seed, entity.id, event.id, "event",
						{"a": effect.a, "b": effect.b, "delta": effect.delta},
						_relation_event_interpretation(effect.delta, identity))
			if event.cause_domain in ["core_intervention", "observer_legacy"]:
				_add_v3(claims, result.seed, entity.id, event.id, "event", {},
					_legacy_interpretation(event, entity, identity))
			if event.id == "h_discovery":
				_add_v3(claims, result.seed, entity.id, event.id, "event", {},
					_discovery_interpretation(entity, identity))
		for relation in result.present.relationships:
			if entity.id not in [relation.a, relation.b]:
				continue
			_add_v3(claims, result.seed, entity.id, "", "present",
				{"a": relation.a, "b": relation.b, "score": relation.score},
				_present_relation_interpretation(relation.score, identity))
	return claims

func _identity_statement(entity: HistoricalEntity, identity: Dictionary) -> String:
	var continuity: String = {
		"heir": "We treat our offices as a continuation of an older political lineage.",
		"reformer": "We inherited older obligations, but not the right to reproduce the old order unchanged.",
		"breakaway": "Our identity begins with the decision to separate from a larger authority.",
		"new_foundation": "We define ourselves as a community formed after the old order failed.",
		"outsider": "We entered this region outside the old local political lineage.",
	}[identity.continuity_stance]
	var anchor: String = {
		"kin": "Household ties are what bind us.",
		"locality": "Shared places and local obligations bind us.",
		"institution": "Records, offices and shared procedures hold us together.",
		"craft": "Shared work and maintenance hold us together.",
		"ritual": "Shared rites give the community continuity.",
		"exchange": "Routes, exchange and reciprocal obligations bind us.",
		"refuge": "Shelter and mutual protection define membership.",
	}[identity.social_anchor]
	var stance: String = {
		"preserve": "We try to preserve what still works.",
		"adapt": "We change inherited practice when survival requires it.",
		"rebuild": "We measure continuity by what we can restore.",
		"exploit": "We make deliberate use of what the ruined world still offers.",
		"withdraw": "We survive by limiting obligations beyond our own boundaries.",
	}[identity.adaptive_stance]
	return "Our recorded formation was %s. %s %s %s" % [entity.formation_origin, continuity, anchor, stance]

func _pressure_interpretation(result: HistoryResult, _entity: HistoricalEntity, identity: Dictionary) -> String:
	var observation := _pressure_memory(result.configuration.pressure_motif).replace("Our elders", "Regional records")
	var frame: String = {
		"continuity": "a test of obligations that endured",
		"rupture": "the break between the old order and what followed",
		"grievance": "a failure of obligations people still argue about",
		"debt": "a reminder of who kept obligations when others failed",
		"warning": "a warning against repeating old mistakes",
		"opportunity": "a point from which later generations learned to rebuild",
	}[identity.memory_frame]
	match identity.interpretation_mode:
		"technical":
			return "%s We treat the surviving mechanism as evidence of a local event, not a complete explanation of the wider collapse; in our histories it marks %s." % [observation, frame]
		"skeptical":
			return "%s We accept that local record, but not later stories that turn it into a complete explanation of the age; for us it marks %s." % [observation, frame]
		"ritual":
			return "%s Our rites preserve the event as %s, but ritual meaning does not establish its physical cause or the wider collapse." % [observation, frame]
		_:
			return "%s Whatever larger story people tell, our tradition remembers it as %s." % [observation, frame]

func _relation_event_interpretation(delta: int, identity: Dictionary) -> String:
	var base := "That recorded agreement increased trust at the time." if delta > 0 else "That recorded dispute reduced trust at the time."
	match identity.interpretation_mode:
		"technical":
			return base + " Our account treats that recorded change as evidence, not proof of motive."
		"skeptical":
			return base + " We do not read later intentions back into that record."
		"ritual":
			return base + (" We remember it as an obligation accepted between communities." if delta > 0 else " We remember it as a breach of obligation between communities.")
		_:
			return base + (" It made practical cooperation easier." if delta > 0 else " It made practical cooperation harder.")

func _present_relation_interpretation(score: int, identity: Dictionary) -> String:
	var state := "cooperative" if score > 0 else "distrustful" if score < 0 else "unsettled"
	match identity.interpretation_mode:
		"technical":
			return "Current records indicate that our dealings are %s." % state
		"skeptical":
			return "For now, the available evidence says our dealings are %s; we do not treat that as permanent." % state
		"ritual":
			return "Current obligations between our communities are %s." % ("being kept" if score > 0 else "strained" if score < 0 else "unsettled")
		_:
			return "Current dealings are %s." % state

func _legacy_interpretation(event: HistoricalEvent, entity: HistoricalEntity, identity: Dictionary) -> String:
	if event.cause_domain == "core_intervention":
		match identity.interpretation_mode:
			"technical":
				return _core_memory(event.narrative_key) + " We separate the recorded operation from any claim about motive."
			"skeptical":
				return "The infrastructure change is recorded; attributing a purpose to the Deep goes beyond the evidence."
			"ritual":
				return "Some rites remember the old controls as a judgment or boundary, but that meaning does not establish why they acted."
			_:
				return "Whatever commanded the old controls, we remember the routes, services or boundaries they changed; their purpose remains unknown."
	match identity.interpretation_mode:
		"technical":
			return "The damage is consistent with an %s sky-machine, but activation and target selection remain unknown." % _old_term(entity)
		"skeptical":
			return "The sky damage is recorded, but meteor, weapon and ancient-machine accounts cannot all be treated as proven."
		"ritual":
			return "Some rites remember fire from the sky as judgment; that meaning does not identify the weapon or its intent."
		_:
			return "Whatever struck from the sky, we treat the damaged zone and surviving debris as the facts that matter; the cause remains unresolved."

func _discovery_interpretation(entity: HistoricalEntity, identity: Dictionary) -> String:
	match identity.interpretation_mode:
		"technical":
			return "We compared its manufacture with %s works; the comparison narrows questions but does not establish its origin." % _old_term(entity)
		"skeptical":
			return "The object is real; stories about who made it outrun the evidence. Its origin remains unresolved."
		"ritual":
			return "Some preserve the discovery as a sign, but ritual meaning does not identify its maker or origin."
		_:
			return "We record what the object does and where it was found; stories about its origin remain unproven."

func _add_v3(claims: Array[HistoricalClaim], seed: int, claimant: String, event: String, scope: String, evidence: Dictionary, text: String, type: String = "interpretation") -> void:
	for existing in claims:
		if existing.claimant_entity_id == claimant and existing.referenced_event_id == event and existing.reference_scope == scope and existing.evidence == evidence and existing.claim_type == type:
			return
	var claim := HistoricalClaim.new()
	claim.claimant_entity_id = claimant
	claim.referenced_event_id = event
	claim.reference_scope = scope
	claim.evidence = evidence.duplicate(true)
	claim.interpretation = text
	claim.claim_type = type
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(seed, ["history", "3", "beliefs", claimant, event, scope, JSON.stringify(evidence)])
	claim.confidence = float(rng.randi_range(35, 90)) / 100.0
	claims.append(claim)
