extends RefCounted

var count := 0
var distributions := {}
var representatives := {}
var invalid_seeds: Array[int] = []
var deterministic_mismatches: Array[int] = []
var graphs := {}
var family_graphs := {}
var errors := {}
var validation_counts := {"generation_error": 0, "invariant_violation": 0, "invalid_reference": 0,
	"chronology_violation": 0, "active_count_violation": 0, "invalid_origin": 0, "deterministic_mismatch": 0}
var frequencies := {"observer_legacy": 0, "core_intervention": 0, "orbital_bombardment": 0,
	"no_observer_or_core": 0, "ruin_reuse": 0, "multi_origin_history": 0, "no_current_direct_heir": 0,
	"current_direct_heir": 0, "multi_parent_history": 0}

func add(result: HistoryResult, replay: HistoryResult) -> void:
	count += 1
	if result == null or replay == null:
		validation_counts.generation_error += 1
		return
	var report := HistoryValidator.new().validate(result, replay)
	if not report.errors.is_empty():
		invalid_seeds.append(result.seed)
		validation_counts.invariant_violation += report.errors.size()
		for error in report.errors:
			errors[error] = errors.get(error, 0) + 1
			var lower: String = error.to_lower()
			validation_counts.invalid_reference += int("reference" in lower or "missing" in lower)
			validation_counts.chronology_violation += int("alive" in lower or "precede" in lower or "chronolog" in lower or "future" in lower or "retirement" in lower)
			validation_counts.invalid_origin += int("population" in lower or "origin" in lower)
	validation_counts.active_count_violation += int(result.present.active_factions.size() not in [6, 7, 8])
	if report.determinism == "fail":
		deterministic_mismatches.append(result.seed)
		validation_counts.deterministic_mismatch += 1
	var family: String = result.configuration.topology_family
	_increment("topology_family", family)
	_increment("active_factions", str(result.present.active_factions.size()))
	_increment("historical_factions", str(result.present.historical_factions.size()))
	_increment("current_relations", str(result.present.relationships.size()))
	var operations := {"SPLIT": 0, "MERGE": 0, "MIGRATION": 0, "NEWCOMER": 0, "REORGANIZATION": 0, "EXTINCTION": 0}
	var rare := {"observer_legacy": false, "core_intervention": false, "orbital_bombardment": false}
	var reuse := false
	for event in result.objective_timeline:
		# Count political operations, not the older pressure/response group events.
		if event.narrative_key in ["political_split", "political_merge", "population_migration", "population_join", "newcomer_entry", "political_reorganization", "political_extinction"]:
			operations[event.type_name()] += 1
		if rare.has(event.cause_domain):
			rare[event.cause_domain] = true
		rare.orbital_bombardment = rare.orbital_bombardment or event.narrative_key == "orbital_bombardment"
		reuse = reuse or event.type_name() == "RUIN_REOCCUPIED"
	for key in operations:
		_increment(key.to_lower() + "_count", str(operations[key]))
	var max_depth := 0
	var multi := 0
	var multi_parent := 0
	for entity in result.entities:
		if entity.kind in ["faction", "precursor_state"]:
			max_depth = maxi(max_depth, _depth(entity, result))
			multi_parent += int(entity.parent_ids.size() > 1)
	for row in result.present.historical_factions:
		multi += int(row.population_origin_profile.size() > 1)
	_increment("ancestry_depth", str(max_depth))
	_increment("multi_origin_factions", str(multi))
	var heir := result.present.active_factions.any(func(row: Dictionary) -> bool: return row.political_continuity)
	frequencies.multi_origin_history += int(multi > 0)
	frequencies.multi_parent_history += int(multi_parent > 0)
	frequencies.current_direct_heir += int(heir)
	frequencies.no_current_direct_heir += int(not heir)
	frequencies.ruin_reuse += int(reuse)
	frequencies.no_observer_or_core += int(not rare.observer_legacy and not rare.core_intervention)
	for key in rare:
		frequencies[key] += int(rare[key])
	var graph := political_signature(result)
	graphs[graph] = true
	if not family_graphs.has(family):
		family_graphs[family] = {}
	family_graphs[family][graph] = true
	_represent(family, result.seed)
	if multi > 0:
		_represent("multi_origin", result.seed)
	if rare.orbital_bombardment:
		_represent("rare_bombardment", result.seed)
	if reuse:
		_represent("compatible_site_reuse", result.seed)

# Actual adjacency and formation/lifecycle only. No names, dates, origins, motifs,
# claims, relation values, configuration or seed contributes to this signature.
static func political_signature(result: HistoryResult) -> String:
	var indices := {}
	var ordered: Array[HistoricalEntity] = []
	for event in result.objective_timeline:
		for effect in event.effects:
			if effect.kind == "activate":
				var entity := result.entity(effect.entity_id)
				if entity.kind in ["faction", "precursor_state"]:
					indices[entity.id] = ordered.size()
					ordered.append(entity)
	var rows: Array = []
	for entity in ordered:
		var parents: Array = []
		for parent in entity.parent_ids:
			parents.append(indices[parent])
		parents.sort()
		rows.append([parents, entity.formation_origin, entity.retired_event_id.is_empty()])
	return JSON.stringify(rows)

func _depth(entity: HistoricalEntity, result: HistoryResult) -> int:
	var depth := 0
	for parent in entity.parent_ids:
		depth = maxi(depth, 1 + _depth(result.entity(parent), result))
	return depth

func _increment(axis: String, key: String) -> void:
	if not distributions.has(axis):
		distributions[axis] = {}
	distributions[axis][key] = distributions[axis].get(key, 0) + 1

func _represent(key: String, seed: int) -> void:
	if not representatives.has(key) and seed not in representatives.values():
		representatives[key] = seed

func to_dict() -> Dictionary:
	var unique := {}
	for family in family_graphs:
		unique[family] = family_graphs[family].size()
	return {"generation_version": 3, "architecture_version": 1, "sample_count": count,
		"validation_counts": validation_counts.duplicate(),
		"seed_range": [1, count], "distributions": distributions.duplicate(true), "frequencies": frequencies.duplicate(),
		"unique_political_graphs": graphs.size(), "unique_graphs_by_family": unique,
		"invalid_seeds": invalid_seeds.duplicate(), "deterministic_mismatches": deterministic_mismatches.duplicate(),
		"errors": errors.duplicate(), "representatives": representatives.duplicate(),
		"definitions": {"historical_factions": "includes the extinct precursor; excludes transient groups",
			"origins": "co-resident categories, no genetics or Composite",
			"heir": "surviving direct institutional continuity, not biological descent",
			"graph": "polity adjacency, formation type and active/extinct flags; excludes names, prose, dates, seed, population and relations"}}
