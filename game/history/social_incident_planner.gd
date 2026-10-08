class_name SocialIncidentPlanner
extends RefCounted

var _catalog: SocialIncidentCatalog
var _result: HistoryResult
var _g: HistoryGenerator
var _facts := {}
var _sources := {}
var _year := -47
var _serial := 0
var _slot := 0
var _homes := {}

func _init(catalog: SocialIncidentCatalog = null) -> void:
	_catalog = catalog if catalog != null else SocialIncidentCatalog.new()

# Bounded episodes, each with explicit preparation and dependent consequences.
# They alter no political faction/formation, naming input, or relation stream.
func build(result: HistoryResult, generator: HistoryGenerator) -> void:
	_result = result
	_g = generator
	var ordered := result.objective_timeline.duplicate()
	ordered.sort_custom(func(a: HistoricalEvent, b: HistoricalEvent) -> bool: return a.year < b.year or (a.year == b.year and a.id < b.id))
	var snapshot := HistoryProjector.new().project(result.entities, ordered)
	var active: Array = snapshot.active_factions.map(func(row: Dictionary) -> String: return row.id)
	for site in snapshot.settlements:
		if not _homes.has(site.owner_id):
			_homes[site.owner_id] = site.id
	var roll := _rng("budget").randi_range(0, 99)
	var count := 0 if roll < 15 else 1 if roll < 60 else 2 if roll < 90 else 3
	var families: Array = _catalog.families().filter(func(row: Dictionary) -> bool: return _catalog.gate_open(row.gate))
	for slot in range(count):
		_slot = slot
		var family: Dictionary = _weighted(families, "slot/%d/family" % slot)
		families.erase(family)
		var faction: String = active[_rng("slot/%d/faction" % slot).randi_range(0, active.size() - 1)]
		# Facts are per faction; prerequisite sources always come from earlier events.
		if family.id == "cloning":
			_clones(faction)
		elif family.id == "deep":
			var partners: Array = active.filter(func(id: String) -> bool: return id != faction)
			_deep(faction, partners[_rng("slot/%d/partner" % slot).randi_range(0, partners.size() - 1)])
		elif family.id == "homeland":
			_homeland(faction)
		elif family.id == "personhood":
			_emit("semi_sapient_contact", [faction], [], faction, _catalog.content_reference("contacts"))
			_emit(_primary(family.id, faction), [faction], [], faction, _catalog.content_reference("contacts"))
		elif family.id == "lineage":
			_emit(_primary(family.id, faction), [faction], [], faction, _catalog.content_reference("lineages"))
		else:
			if family.id == "biotechnology":
				_emit("biotech_workshop_recovery", [faction])
			var key := _primary(family.id, faction)
			var effects: Array[Dictionary] = []
			if key in ["autonomous_machine_conflict", "defense_network_hostility", "machine_control_failure"]:
				effects.append(_g._ruin("s_damage_%d" % slot, "legacy_damage_site"))
			_emit(key, [faction], effects)
			if key == "bodily_adaptation_program" and _catalog.gate_open("adapted_lineages"):
				_emit("adapted_lineage_registration", [faction])
			if family.id == "machine":
				var follow := "machine_safety_reform" if key in ["autonomous_machine_conflict", "defense_network_hostility", "machine_control_failure"] else "machine_compact_renewal" if key in ["machine_aid_compact", "machine_maintenance_cooperation"] else "human_final_authority"
				_emit(follow, [faction])
			elif family.id == "stewardship":
				_emit("office_rotation_review", [faction])
	assert(_year <= -28, "Social history must precede recent diplomatic encounters")

func _clones(faction: String) -> void:
	_emit("cloning_archive_recovery", [faction])
	_emit("local_population_decline", [faction], [_g._ruin("s_decline_%d" % _slot, "abandoned_hamlet")])
	var cohort := "s_cohort_%d" % _slot
	_g._entity(_result, cohort, "group")
	var root := _primary("cloning", faction)
	_emit(root, [faction], [_g._activate(cohort)], cohort, "human_baseline")
	if root == "founder_replication":
		_emit("founder_template_death_record", [faction], [], cohort, "human_baseline")
	var available := _options("cloning", "followup", faction)
	var follow: Dictionary = _weighted(available, "slot/%d/clone-followup" % _slot)
	_emit(follow.id, [faction], [], cohort, "human_baseline")
	# One optional additional consequence; no independent unconstrained clone rolls.
	if _rng("slot/%d/clone-chain" % _slot).randi_range(0, 99) < 45:
		available = _options("cloning", "followup", faction).filter(func(row: Dictionary) -> bool: return row.id != follow.id)
		if not available.is_empty():
			_emit(_weighted(available, "slot/%d/clone-second" % _slot).id, [faction], [], cohort, "human_baseline")

func _homeland(faction: String) -> void:
	var site: String = _homes[faction]
	_set_fact(faction, "site:owned_home", _result.entity(site).created_event_id)
	var replacement := "s_relocated_%d" % _slot
	_g._entity(_result, replacement, "settlement")
	_emit(_primary("homeland", faction), [faction], [_g._retire(site), _g._ruin("s_lost_home_%d" % _slot, "abandoned_hamlet"), _g._activate(replacement), _g._settlement(replacement, faction)], site)
	_homes[faction] = replacement
	_emit("homeland_memory_charter", [faction], [], site)

func _deep(first: String, second: String) -> void:
	var site := "s_deep_home_%d" % _slot
	_g._entity(_result, site, "settlement")
	_emit("deep_residence_record", [first, second], [_g._activate(site), _g._settlement(site, first)], site)
	_emit("deep_settlement_evacuation", [first, second], [_g._retire(site), _g._ruin("s_lost_deep_%d" % _slot, "abandoned_hamlet")], site)
	_emit("deep_memory_register", [first, second], [], site)

func _primary(family: String, faction: String) -> String:
	return _weighted(_options(family, "primary", faction), "slot/%d/subtype" % _slot).id

func _options(family: String, role: String, faction: String) -> Array:
	return _catalog.definitions().filter(func(row: Dictionary) -> bool: return row.family == family and row.role == role and _catalog.gate_open(row.gate) and row.requires.all(func(key: String) -> bool: return _facts.get(faction, {}).has(key)))

func _emit(key: String, actors: Array[String], additional: Array[Dictionary] = [], reference: String = "", content: String = "") -> void:
	var definition := _catalog.definition(key)
	var id := "s_%02d_%02d_%s" % [_slot, _serial, key]
	_serial += 1
	var causes: Array[String] = []
	for actor in actors:
		causes.append(_result.entity(actor).created_event_id)
		for required: String in definition.requires:
			assert(_facts.get(actor, {}).has(required), "Missing incident prerequisite: " + required)
			var source: String = _sources[actor][required]
			if source not in causes:
				causes.append(source)
		if key == "machine_safety_reform":
			var harm: String = "scar:machine_war" if _facts.get(actor, {}).has("scar:machine_war") else "practice:autonomous_machine_harm"
			if _sources.get(actor, {}).has(harm) and _sources[actor][harm] not in causes:
				causes.append(_sources[actor][harm])
	var effects := additional.duplicate(true)
	for actor in actors:
		for record: Dictionary in definition.records:
			var content_ids: Array = _catalog.content_ids(definition.gate) if definition.gate in ["lineages", "adapted_lineages"] else [content]
			for content_id: String in content_ids:
				effects.append({"kind": "social_record", "entity_id": actor, "record_type": record.record_type, "record_id": record.record_id, "operation": record.operation, "reference_id": actor if reference.is_empty() else reference, "content_id": content_id})
	_g._emit_social(_result, id, _year, definition, actors, causes, effects)
	for actor in actors:
		for record: Dictionary in definition.records:
			var fact_key: String = record.record_type + ":" + record.record_id
			if record.operation == "abolish":
				_facts.get(actor, {}).erase(fact_key)
			else:
				_set_fact(actor, fact_key, id)
	_year += 1

func _set_fact(faction: String, key: String, event: String) -> void:
	if not _facts.has(faction):
		_facts[faction] = {}
		_sources[faction] = {}
	_facts[faction][key] = true
	_sources[faction][key] = event

func _weighted(rows: Array, axis: String) -> Dictionary:
	assert(not rows.is_empty(), "No eligible social incident")
	var total := 0
	for row: Dictionary in rows:
		total += int(row.weight)
	var roll := _rng(axis).randi_range(0, total - 1)
	for row: Dictionary in rows:
		roll -= int(row.weight)
		if roll < 0:
			return row
	return rows[-1]

func _rng(axis: String) -> RandomNumberGenerator:
	var rng := RandomNumberGenerator.new()
	rng.seed = SeedDeriver.derive(_result.seed, ["history", "3", "social_incidents", axis])
	return rng
