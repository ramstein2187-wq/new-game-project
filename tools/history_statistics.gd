extends RefCounted

# Read-only diagnostics, never an input into generation or a content authority.
var count := 0
var distributions := {}
var frequencies := {"no_observer_or_core": 0, "natural_and_human_only": 0,
	"human_only": 0, "observer_legacy": 0, "core_intervention": 0, "orbital_bombardment": 0}
var representatives := {}
var structural_signatures := {}
var recipes := {}
var event_topologies := {}
var min_recent := 999
var min_scar_ratio := 1.0
var invalid_seeds: Array[int] = []

func add(result: HistoryResult) -> void:
	count += 1
	var c := result.configuration
	for axis: String in ["precursor_form", "pressure_domain", "pressure_motif", "response_motif",
		"collapse_pattern", "successor_a_form", "successor_b_form", "faction_c_formation",
		"middle_motif", "recent_motif", "discovery_motif", "belief_profile", "ancestry_mode"]:
		_increment(axis, str(c[axis]))
	_increment("event_count", str(result.objective_timeline.size()))
	_increment("ruin_count", str(result.present.ruins.size()))
	var observer := false
	var core := false
	var bombardment := false
	var recent := 0
	var signature: Array = []
	var topology: Array = []
	for event in result.objective_timeline:
		observer = observer or event.cause_domain == "observer_legacy"
		core = core or event.cause_domain == "core_intervention"
		bombardment = bombardment or event.narrative_key == "orbital_bombardment"
		recent += int(event.year >= -100)
		signature.append([event.id, event.type_name(), event.narrative_key, event.effects])
		topology.append([event.id, event.type_name()])
	structural_signatures[JSON.stringify([c, signature])] = true
	recipes[JSON.stringify(c)] = true
	event_topologies[JSON.stringify(topology)] = true
	min_recent = mini(min_recent, recent)
	min_scar_ratio = minf(min_scar_ratio, result.validation_report.scars.get("causal_ratio", 0.0))
	if not result.validation_report.errors.is_empty():
		invalid_seeds.append(result.seed)
	for key in ["observer_legacy", "core_intervention", "orbital_bombardment"]:
		var occurs: bool = observer if key == "observer_legacy" else core if key == "core_intervention" else bombardment
		frequencies[key] += int(occurs)
	if not observer and not core:
		frequencies.no_observer_or_core += 1
		frequencies.natural_and_human_only += int(c.pressure_domain == "natural")
		frequencies.human_only += int(c.pressure_domain == "human")
		if c.pressure_domain == "natural":
			_represent("natural_and_human", result.seed)
		if c.pressure_domain == "human":
			_represent("human_collapse", result.seed)
	if c.pressure_motif == "chemical_exposure":
		_represent("terraforming_chemical_legacy", result.seed)
	if c.pressure_motif == "extreme_seasons":
		_represent("extreme_seasons", result.seed)
	if core:
		_represent("core_intervention", result.seed)
	if observer and not bombardment:
		_represent("observer_orbital_legacy", result.seed)
	if bombardment:
		_represent("orbital_bombardment", result.seed)
	if c.successor_a_form == "ritual_authority" and c.successor_b_form == "modified_human_community":
		_represent("unusual_successors", result.seed)
	if c.faction_c_formation == "facility_community":
		_represent("facility_successor", result.seed)
	if c.precursor_form == "city_confederation" and c.recent_motif == "local_alliance":
		_represent("recent_alliance", result.seed)

func _increment(axis: String, key: String) -> void:
	if not distributions.has(axis):
		distributions[axis] = {}
	distributions[axis][key] = distributions[axis].get(key, 0) + 1

func _represent(category: String, seed: int) -> void:
	if not representatives.has(category) and seed not in representatives.values():
		representatives[category] = seed

func to_dict() -> Dictionary:
	var rates := {}
	for key in frequencies:
		rates[key] = {"count": frequencies[key], "percent": 100.0 * frequencies[key] / maxi(1, count)}
	return {"generation_version": HistoryGenerator.VERSION, "architecture_version": HistoryGenerator.ARCHITECTURE_VERSION,
		"sample_count": count, "seed_range": [1, count], "distributions": distributions.duplicate(true),
		"frequencies": rates, "unique_structural_signatures": structural_signatures.size(),
		"unique_configuration_recipes": recipes.size(), "unique_event_type_topologies": event_topologies.size(),
		"minimum_recent_events": min_recent, "minimum_causal_scar_ratio": min_scar_ratio,
		"invalid_seeds": invalid_seeds.duplicate(), "representatives": representatives.duplicate(),
		"definitions": {"natural_and_human_only": "natural primary pressure; no Observer/Core events; human responses",
			"human_only": "human primary pressure and responses; no Observer/Core events",
			"frequency": "fraction of histories containing >=1 event, not number of events",
			"structural_signature": "configuration + semantic event IDs/types/motifs/effects; excludes names/dates/claims"}}
