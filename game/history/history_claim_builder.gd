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
	for row in result.present.active_factions:
		var entity := result.entity(row.id)
		var lineage := "Our offices continue an older political lineage. " if entity.political_continuity else "We claim no direct inheritance of the old central offices. "
		_add_v3(claims, result.seed, entity.id, entity.created_event_id, "event", {},
			"Our recorded formation was %s. %s%s" % [entity.formation_origin, lineage, ACCOUNTS[entity.way_of_life]], "legitimacy")
		var pressure := "Regional records: " + _pressure_memory(result.configuration.pressure_motif).replace("Our elders", "Older local households") + " These accounts do not settle the end of the whole age of great states."
		_add_v3(claims, result.seed, entity.id, "h_pressure", "event", {}, pressure)
		for event in result.objective_timeline:
			for effect in event.effects:
				if effect.kind == "relationship" and entity.id in [effect.a, effect.b]:
					var memory := "That recorded agreement increased trust at the time." if effect.delta > 0 else "That recorded dispute reduced trust at the time."
					_add_v3(claims, result.seed, entity.id, event.id, "event",
						{"a": effect.a, "b": effect.b, "delta": effect.delta}, memory)
			if event.cause_domain in ["core_intervention", "observer_legacy"]:
				var account := _core_memory(event.narrative_key) if event.cause_domain == "core_intervention" else "Some suspect an " + _old_term(entity) + " sky-machine; a meteor or enemy weapon is another account."
				_add_v3(claims, result.seed, entity.id, event.id, "event", {}, account)
			if event.id == "h_discovery":
				_add_v3(claims, result.seed, entity.id, event.id, "event", {},
					"We compare it with " + _old_term(entity) + " works, but resemblance does not establish its origin.")
		for relation in result.present.relationships:
			if entity.id not in [relation.a, relation.b]:
				continue
			var sentiment := "Current dealings are cooperative." if relation.score > 0 else "Current dealings are distrustful." if relation.score < 0 else "Current obligations remain unsettled."
			_add_v3(claims, result.seed, entity.id, "", "present",
				{"a": relation.a, "b": relation.b, "score": relation.score}, sentiment)
	return claims

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
