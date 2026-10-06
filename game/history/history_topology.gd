class_name HistoryTopology
extends RefCounted

# A bounded political composer. Families constrain/bias the same six operations.
# Population source records are independent of political parents and membership is
# co-residence, not genetic fusion. No renderer and no global RNG participates.
const BIASES := {
	"polycentric_succession": ["split", "split", "split", "merge", "migration", "reorganization", "extinction"],
	"remnant_mosaic": ["split", "merge", "newcomer", "join", "reorganization", "extinction"],
	"late_fragmentation": ["split", "split", "split", "merge", "reorganization", "extinction"],
	"consolidation_resplit": ["split", "merge", "merge", "reorganization", "migration", "extinction"],
	"layered_migration": ["migration", "migration", "newcomer", "newcomer", "join", "reorganization", "split", "extinction"],
	"no_direct_heir": ["newcomer", "migration", "reorganization", "reorganization", "split", "extinction"],
	"enclave_continuity": ["split", "migration", "newcomer", "join", "reorganization", "extinction"],
}
var _g: HistoryGenerator
var _result: HistoryResult
var _active: Array[String] = []
var _profiles := {}
var _homes := {}
var _protected: Array[String] = []
var _number := 0
var _cohort_number := 0

func build(result: HistoryResult, local: Dictionary, generator: HistoryGenerator) -> void:
	_g = generator
	_result = result
	_profiles.precursor = ["Human-derived"]
	var family: String = result.configuration.topology_family
	var rng: RandomNumberGenerator = _g._rng(result.seed, "topology/plan")
	var start: int = local.collapse_year + 12
	if family == "no_direct_heir":
		# Failed institutional heirs vanish; later residents need not inherit their offices.
		for i in range(rng.randi_range(2, 3)):
			_root(start + i, true, false, "precursor")
		var failed := _active.duplicate()
		for i in range(failed.size()):
			_extinction(failed[i], start + 6 + i, "failed_%d" % i)
		start += 18
	var root_count := rng.randi_range(3, 5)
	if family == "late_fragmentation":
		root_count = rng.randi_range(1, 2)
	elif family == "layered_migration":
		root_count = rng.randi_range(2, 3)
	for i in range(root_count):
		var heir := family in ["polycentric_succession", "late_fragmentation", "consolidation_resplit"]
		if family in ["remnant_mosaic", "layered_migration", "enclave_continuity"]:
			heir = rng.randi_range(0, 2) == 0
		var enclave := (family == "enclave_continuity" and i == 0) or (family == "remnant_mosaic" and i == 0 and rng.randi_range(0, 1) == 0)
		var year := start + i
		if enclave:
			year = _event("h_found").year + 35
		_root(year, heir and not enclave, enclave, "precursor" if heir or family == "no_direct_heir" else "")
	var steps := rng.randi_range(7, 11)
	if family == "late_fragmentation":
		steps = rng.randi_range(5, 8)
	var first_year := -95 if family == "late_fragmentation" else start + 12
	var final_year := -48 if family == "late_fragmentation" else -110
	var consolidation := ""
	for step in range(steps):
		var year := first_year + int(float(final_year - first_year) * step / maxi(1, steps - 1))
		var specs: Array[Dictionary] = []
		var eligible := _eligible()
		for operation: String in BIASES[family]:
			if operation == "split":
				for children in [2, 3]:
					for retain in [false, true]:
						specs.append({"operation": operation, "children": children, "retain": retain, "delta": children - int(not retain)})
			elif operation in ["merge", "reorganization"]:
				for parents in ([2, 3] if operation == "merge" else [1, 2]):
					if family == "consolidation_resplit" and step == 0 and parents == _active.size():
						continue
					if parents <= eligible.size():
						specs.append({"operation": operation, "parents": parents, "delta": 1 - parents})
			else:
				specs.append({"operation": operation, "delta": -1 if operation == "extinction" else 0 if operation == "join" else 1})
		var mandatory := ""
		if family == "consolidation_resplit" and step == 0:
			mandatory = "merge"
		elif family == "consolidation_resplit" and step == 2:
			mandatory = "split"
		elif family == "late_fragmentation" and step == 0:
			mandatory = "split"
		elif family == "layered_migration" and step in [0, 2]:
			mandatory = "newcomer"
		var choices: Array[Dictionary] = []
		var remaining := steps - step - 1
		var target: int = result.configuration.target_factions
		for spec in specs:
			var after: int = _active.size() + spec.delta
			if not mandatory.is_empty() and spec.operation != mandatory:
				continue
			if eligible.is_empty() and spec.operation != "newcomer":
				continue
			# Leave an actionable lineage beside any protected continuity anchor.
			if after < 2 or after > target + 2:
				continue
			# Count is part of the operation plan, never a final padding stage.
			if after + 3 * remaining < target or after - remaining > target:
				continue
			if remaining == 0 and after != target:
				continue
			choices.append(spec)
		assert(not choices.is_empty(), "Bounded topology plan has no legal operation")
		var spec: Dictionary = choices[rng.randi_range(0, choices.size() - 1)]
		var forced_parent := consolidation if family == "consolidation_resplit" and step == 2 else ""
		if not forced_parent.is_empty():
			_protected.erase(forced_parent)
		var created := _perform(spec, year, "step_%02d" % step, rng, forced_parent)
		if family == "consolidation_resplit" and step == 0:
			consolidation = created
			_protected.append(consolidation)
	assert(_active.size() == result.configuration.target_factions)
	for id in _active:
		var faction := result.entity(id)
		var scholarly := faction.way_of_life in ["infrastructure_guild", "facility_community"]
		if _g._rng(result.seed, "knowledge/" + id).randi_range(0, 99) < (65 if scholarly else 8):
			faction.knowledge_tags.append("observer_scholarly_term")

func _root(year: int, heir: bool, enclave: bool, source: String) -> void:
	var id := _new_id()
	var parents: Array[String] = []
	if heir:
		parents.append("precursor")
	var formation := "enclave_continuity" if enclave else "direct_successor" if heir else "reorganization"
	var ancestry := "direct_successor" if heir else "no_political_predecessor"
	var sources: Array[String] = []
	if not source.is_empty():
		sources.append(source)
	var origins: Array = _profiles[source].duplicate() if not source.is_empty() else _local_profile(id)
	var effects := _birth(id, parents, formation, ancestry, heir, origins, sources, "inherit" if not sources.is_empty() else "seed")
	var cause: Array[String] = ["h_found" if enclave else "h_collapse"]
	_g._emit(_result, "t_root_" + id, year, "enclave_survives" if enclave else "local_successor", [], cause, effects)
	if enclave:
		_protected.append(id)

func _perform(spec: Dictionary, year: int, key: String, rng: RandomNumberGenerator, forced: String) -> String:
	var candidates := _eligible()
	_shuffle(candidates, rng)
	var parent: String = forced if not forced.is_empty() else candidates[0] if not candidates.is_empty() else ""
	var operation: String = spec.operation
	if operation == "extinction":
		_extinction(parent, year, key)
		return ""
	if operation in ["newcomer", "join"]:
		return _arrival(year, key, parent if operation == "join" else "", rng)
	var event_id := "t_" + key
	var effects: Array[Dictionary] = []
	var actors: Array[String] = [parent]
	var causes: Array[String] = [_result.entity(parent).created_event_id]
	var created: Array[String] = []
	if operation == "split":
		for child_index in range(spec.children):
			var id := _new_id()
			var profile: Array = _profiles[parent].duplicate()
			var mode := "inherit"
			if profile.size() > 1 and rng.randi_range(0, 1) == 0:
				profile = [profile[rng.randi_range(0, profile.size() - 1)]]
				mode = "subset"
			effects.append_array(_birth(id, [parent], "fragmentation", "split_descendant", _result.entity(parent).political_continuity, profile, [parent], mode))
			created.append(id)
		if not spec.retain:
			effects.append_array(_dissolve(parent, created[0]))
		else:
			effects.append(_g._relation(_result.seed, parent, created[0], -25, -5, key))
	elif operation in ["merge", "reorganization"]:
		actors.clear()
		causes.clear()
		for i in range(spec.parents):
			actors.append(candidates[i])
			causes.append(_result.entity(candidates[i]).created_event_id)
		var id := _new_id()
		# Political participants and actual population contributors need not coincide.
		var contributors := actors.duplicate() if rng.randi_range(0, 1) == 0 else [actors[0]]
		var origins: Array = []
		for source: String in contributors:
			for origin in _profiles[source]:
				if origin not in origins:
					origins.append(origin)
		var continuity := false
		for source in actors:
			continuity = continuity or _result.entity(source).political_continuity
		if operation == "reorganization":
			continuity = false
		effects.append_array(_birth(id, actors, "merger" if operation == "merge" else "reorganization",
			"merge_descendant" if operation == "merge" else "reorganized_descendant", continuity, origins, contributors,
			"co_residence" if contributors.size() > 1 else "inherit"))
		for source in actors:
			effects.append_array(_dissolve(source, id))
		created.append(id)
	else:
		var id := _new_id()
		effects.append_array(_birth(id, [parent], "migration_settlement", "split_descendant",
			_result.entity(parent).political_continuity, _profiles[parent], [parent], "inherit"))
		effects.append(_g._relation(_result.seed, parent, id, 5, 20, key))
		created.append(id)
	var narrative := {"split": "political_split", "merge": "political_merge", "reorganization": "political_reorganization", "migration": "population_migration"}
	_g._emit(_result, event_id, year, narrative[operation], actors, causes, effects)
	return created[0]

func _arrival(year: int, key: String, target: String, rng: RandomNumberGenerator) -> String:
	var cohort := "cohort_%02d" % _cohort_number
	_cohort_number += 1
	_g._entity(_result, cohort, "group")
	# Other-region residents, not automatic extraterrestrial/Observer arrivals.
	var profile: Array = [["Human-derived"], ["Unknown"], ["Planetary"], ["Innerworld"]][rng.randi_range(0, 3)].duplicate()
	_profiles[cohort] = profile
	var effects: Array[Dictionary] = [_g._activate(cohort), _g._population(cohort, profile, [], "arrival")]
	var actors: Array[String] = []
	var causes: Array[String] = []
	var id := target
	if target.is_empty():
		id = _new_id()
		effects.append_array(_birth(id, [], "newcomer_formation", "newcomer", false, profile, [cohort], "inherit"))
	else:
		actors.append(target)
		causes.append(_result.entity(target).created_event_id)
		var joined: Array = _profiles[target].duplicate()
		for origin in profile:
			if origin not in joined:
				joined.append(origin)
		effects.append(_g._population(target, joined, [target, cohort], "join"))
		_profiles[target] = effects[-1].origin_ids.duplicate()
	_g._emit(_result, "t_" + key, year, "population_join" if not target.is_empty() else "newcomer_entry", actors, causes, effects)
	return id

func _birth(id: String, parents: Array[String], formation: String, ancestry: String, heir: bool, origins: Array, sources: Array, mode: String) -> Array[Dictionary]:
	var life: String = _g._pick(_result.seed, "topology/lifestyle/" + id, HistoryMotifs.SUCCESSOR_A + HistoryMotifs.SUCCESSOR_B + HistoryMotifs.FORMATION_C)
	var faction: HistoricalEntity = _g._entity(_result, id, "faction", parents, life)
	faction.formation_origin = formation
	faction.ancestry_kind = ancestry
	faction.political_continuity = heir
	faction.regional_roles = [_g._pick(_result.seed, "topology/role/" + id, HistoryMotifs.REGIONAL_ROLES)]
	if parents.is_empty():
		faction.naming_lineage_id = id
	var population: Dictionary = _g._population(id, origins, sources, mode)
	faction.population_origin_profile.assign(population.origin_ids)
	_profiles[id] = population.origin_ids.duplicate()
	_active.append(id)
	var site_id := "home_" + id
	_g._entity(_result, site_id, "settlement")
	_homes[id] = [site_id]
	return [_g._activate(id), population, _g._activate(site_id), _g._settlement(site_id, id)]

func _dissolve(id: String, successor: String) -> Array[Dictionary]:
	var effects: Array[Dictionary] = []
	for site: String in _homes[id]:
		effects.append({"kind": "site_owner", "entity_id": site, "owner_id": successor})
		_homes[successor].append(site)
	effects.append(_g._retire(id))
	_active.erase(id)
	_homes.erase(id)
	return effects

func _extinction(id: String, year: int, key: String) -> void:
	var effects: Array[Dictionary] = [_g._retire(id)]
	for site: String in _homes[id]:
		effects.append(_g._retire(site))
	effects.append(_g._ruin("abandoned_" + id, "administrative_site"))
	_g._emit(_result, "t_" + key, year, "political_extinction", [id], [_result.entity(id).created_event_id], effects)
	_active.erase(id)
	_homes.erase(id)

func _eligible() -> Array[String]:
	var ids: Array[String] = []
	for id in _active:
		if id not in _protected:
			ids.append(id)
	return ids

func _new_id() -> String:
	var id := "f_%02d" % _number
	_number += 1
	return id

func _local_profile(id: String) -> Array:
	var roll: int = _g._rng(_result.seed, "population/local/" + id).randi_range(0, 9)
	return ["Human-derived", "Planetary"] if roll < 2 else ["Human-derived", "Unknown"] if roll == 2 else ["Human-derived"]

func _event(id: String) -> HistoricalEvent:
	for event in _result.objective_timeline:
		if event.id == id:
			return event
	return null

func _shuffle(ids: Array[String], rng: RandomNumberGenerator) -> void:
	for i in range(ids.size() - 1, 0, -1):
		var j := rng.randi_range(0, i)
		var item := ids[i]
		ids[i] = ids[j]
		ids[j] = item
