extends RefCounted

var count := 0
var distributions := {}
var representatives := {}
var invalid_seeds: Array[int] = []
var deterministic_mismatches: Array[int] = []
var graphs := {}
var family_graphs := {}
var count_graphs := {}
var errors := {}
var validation_counts := {"generation_error": 0, "invariant_violation": 0, "invalid_reference": 0,
	"chronology_violation": 0, "lifecycle_failure": 0, "active_count_violation": 0, "invalid_origin": 0,
	"population_invariant_failure": 0, "deterministic_mismatch": 0}
var frequencies := {"observer_legacy": 0, "core_intervention": 0, "orbital_bombardment": 0,
	"no_observer_or_core": 0, "ruin_reuse": 0, "human_derived_only_histories": 0,
	"mixed_origin_society_count": 0, "multi_origin_lineage_count": 0, "non_human_social_template_histories": 0,
	"no_current_direct_heir": 0, "current_direct_heir": 0, "multi_parent_history": 0, "population_absorbed_histories": 0}
var totals := {"historical_political_entities": 0, "relation_edges": 0, "degree_sum": 0.0, "density_sum": 0.0,
	"sites_reused": 0, "sites_abandoned": 0, "population_joins": 0, "population_subset_inheritance": 0,
	"mixed_society_factions": 0, "multi_lineage_factions": 0, "non_human_template_strata": 0}

func add(result: HistoryResult, replay: HistoryResult) -> void:
	count += 1
	if result == null or replay == null:
		validation_counts.generation_error += 1
		return
	var report := HistoryValidator.new().validate(result, replay)
	if not report.errors.is_empty():
		invalid_seeds.append(result.seed)
		validation_counts.invariant_violation += report.errors.size()
		for error: String in report.errors:
			errors[error] = errors.get(error, 0) + 1
			var lower := error.to_lower()
			validation_counts.invalid_reference += int("reference" in lower or "missing" in lower)
			validation_counts.chronology_violation += int("alive" in lower or "precede" in lower or "chronolog" in lower or "future" in lower or "retirement" in lower)
			validation_counts.lifecycle_failure += int("alive" in lower or "retir" in lower or "lifecycle" in lower)
			validation_counts.invalid_origin += int("origin" in lower)
			validation_counts.population_invariant_failure += int("population" in lower or "origin" in lower or "strat" in lower)
	validation_counts.active_count_violation += int(result.present.active_factions.size() not in [4, 5, 6, 7, 8])
	if report.determinism == "fail":
		deterministic_mismatches.append(result.seed)
		validation_counts.deterministic_mismatch += 1
	var family: String = result.configuration.topology_family
	var current := result.present.active_factions.size()
	_increment("topology_family", family)
	_increment("active_factions", str(current))
	_increment("family_current_counts", "%s/%d" % [family, current])
	_increment("historical_factions", str(result.present.historical_factions.size()))
	_increment("current_relations", str(result.present.relationships.size()))
	totals.historical_political_entities += result.present.historical_factions.size()
	totals.relation_edges += result.present.relationships.size()
	totals.degree_sum += 2.0 * result.present.relationships.size() / current
	totals.density_sum += 2.0 * result.present.relationships.size() / (current * (current - 1))
	var operations := {"SPLIT": 0, "MERGE": 0, "MIGRATION": 0, "NEWCOMER": 0, "REORGANIZATION": 0, "EXTINCTION": 0}
	var rare := {"observer_legacy": false, "core_intervention": false, "orbital_bombardment": false}
	for event in result.objective_timeline:
		if event.narrative_key in ["political_split", "political_merge", "population_migration", "population_join", "newcomer_entry", "political_reorganization", "political_extinction"]:
			operations[event.type_name()] += 1
		for effect in event.effects:
			if effect.kind == "population":
				totals.population_joins += int(effect.mode == "join")
				totals.population_subset_inheritance += int(effect.mode == "subset")
		if rare.has(event.cause_domain):
			rare[event.cause_domain] = true
		rare.orbital_bombardment = rare.orbital_bombardment or event.narrative_key == "orbital_bombardment"
	for key in operations:
		_increment(key.to_lower() + "_count", str(operations[key]))
	var max_depth := 0
	var multi_parent := false
	for entity in result.entities:
		if entity.kind in ["faction", "precursor_state"]:
			max_depth = maxi(max_depth, _depth(entity, result))
			multi_parent = multi_parent or entity.parent_ids.size() > 1
	_increment("ancestry_depth", str(max_depth))
	var mixed := 0
	var lineage := 0
	var nonhuman := false
	for row in result.present.historical_factions:
		mixed += int(PopulationOrigins.mixed(row.population_origin_profile))
		lineage += int(PopulationOrigins.multi_lineage(row.population_origin_profile))
		for stratum: Dictionary in row.population_origin_profile.strata:
			_increment("template_occurrence", stratum.template_id)
			for origin: String in stratum.origins:
				_increment("origin_occurrence", origin)
			if stratum.origins != ["human_derived"]:
				nonhuman = true
				totals.non_human_template_strata += 1
	totals.mixed_society_factions += mixed
	totals.multi_lineage_factions += lineage
	frequencies.human_derived_only_histories += int(not nonhuman)
	frequencies.non_human_social_template_histories += int(nonhuman)
	frequencies.mixed_origin_society_count += int(mixed > 0)
	frequencies.multi_origin_lineage_count += int(lineage > 0)
	frequencies.multi_parent_history += int(multi_parent)
	var heir := result.present.active_factions.any(func(row: Dictionary) -> bool: return row.political_continuity)
	frequencies.current_direct_heir += int(heir)
	frequencies.no_current_direct_heir += int(not heir)
	var reused := false
	for site in result.present.ruins:
		if site.occupant_id.is_empty():
			totals.sites_abandoned += 1
		else:
			reused = true
			totals.sites_reused += 1
			_increment("reuse_hazard_modes", site.hazard + "/" + site.reuse_purpose)
	frequencies.ruin_reuse += int(reused)
	frequencies.no_observer_or_core += int(not rare.observer_legacy and not rare.core_intervention)
	for key in rare:
		frequencies[key] += int(rare[key])
	var absorbed := result.present.population_fates.any(func(row: Dictionary) -> bool: return row.disposition == "absorbed")
	frequencies.population_absorbed_histories += int(absorbed)
	var graph := political_signature(result)
	graphs[graph] = true
	if not family_graphs.has(family):
		family_graphs[family] = {}
	family_graphs[family][graph] = true
	if not count_graphs.has(str(current)):
		count_graphs[str(current)] = {}
	count_graphs[str(current)][graph] = true
	_represent(family, result.seed)
	_represent("current_%d" % current, result.seed)
	if rare.orbital_bombardment:
		_represent("rare_bombardment", result.seed)
	if rare.core_intervention:
		_represent("rare_core", result.seed)
	if reused:
		_represent("compatible_site_reuse", result.seed)
	if absorbed:
		_represent("population_absorbed", result.seed)

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
	# Report absent canonical categories explicitly; zero is an observation.
	if not distributions.has("origin_occurrence"):
		distributions.origin_occurrence = {}
	for origin in OriginCatalog.ids():
		if not distributions.origin_occurrence.has(origin):
			distributions.origin_occurrence[origin] = 0
	var unique := {}
	for family in family_graphs:
		unique[family] = family_graphs[family].size()
	var counts := {}
	for current in count_graphs:
		counts[current] = count_graphs[current].size()
	return {"generation_version": 3, "architecture_version": 2, "sample_count": count,
		"validation_counts": validation_counts.duplicate(), "seed_range": [1, count],
		"distributions": distributions.duplicate(true), "frequencies": frequencies.duplicate(),
		"totals": totals.duplicate(), "mean_relation_degree": totals.degree_sum / maxi(1, count),
		"mean_relation_density": totals.density_sum / maxi(1, count),
		"unique_political_graphs": graphs.size(), "unique_graphs_by_family": unique, "unique_graphs_by_current_count": counts,
		"invalid_seeds": invalid_seeds.duplicate(), "deterministic_mismatches": deterministic_mismatches.duplicate(),
		"errors": errors.duplicate(), "representatives": representatives.duplicate(),
		"definitions": {"historical_factions": "includes extinct precursor, excludes transient groups",
			"population_counts": "history frequencies; totals count final recorded historical polity profiles, including extinct",
			"origin_occurrence": "stratum occurrences in final recorded historical polity profiles, not unique individuals",
			"mixed_origin_society_count": "histories with different single-Origin strata co-residing",
			"multi_origin_lineage_count": "histories with a stratum containing multiple Origins",
			"mean_relation_degree": "mean per-history 2E/N", "mean_relation_density": "mean per-history 2E/(N(N-1))",
			"heir": "surviving institutional continuity, not biological descent",
			"graph": "birth-ordered polity adjacency, formation type and active flags; not an unlabeled isomorphism test"}}
