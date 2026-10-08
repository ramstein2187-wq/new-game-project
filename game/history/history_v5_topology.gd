class_name HistoryV5Topology
extends HistoryTopology

const WEIGHTS := {"polycentric_succession": {"split": 2, "merge": 1, "migration": 1, "reorganization": 2, "extinction": 1}, "remnant_mosaic": {"split": 1, "merge": 1, "newcomer": 3, "join": 2, "reorganization": 5, "extinction": 2}, "late_fragmentation": {"split": 7, "merge": 1, "reorganization": 1, "extinction": 1}, "consolidation_resplit": {"split": 2, "merge": 4, "reorganization": 1, "migration": 1, "extinction": 1}, "layered_migration": {"migration": 3, "newcomer": 5, "join": 2, "reorganization": 1, "split": 1, "extinction": 2}, "no_direct_heir": {"newcomer": 5, "migration": 2, "reorganization": 2, "split": 1, "extinction": 2}, "enclave_continuity": {"split": 1, "migration": 2, "newcomer": 3, "join": 2, "reorganization": 2, "extinction": 2}}

func build(result: HistoryResult, local: Dictionary, generator: HistoryGenerator) -> void:
	_g = generator
	_result = result
	_profiles.precursor = result.entity("precursor").population_origin_profile.duplicate(true)
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
	var minimum_steps := 4 if family == "late_fragmentation" else 5
	var maximum_steps := 8 if family == "late_fragmentation" else 11
	var band: Array = BANDS[family]
	var first_year := -95 if family == "late_fragmentation" else start + 12
	var final_year := -48 if family == "late_fragmentation" else -90
	var consolidation := ""
	for step in range(maximum_steps):
		# Count is observed here, never drawn as a generation input. By minimum_steps
		# each family anchor is complete. A separate stop stream cannot perturb choices.
		if step >= minimum_steps and _active.size() >= band[0] and _active.size() <= band[1]:
			if step == maximum_steps - 1 or _g._rng(result.seed, "topology/stop/%d" % step).randi_range(0, 99) < 55:
				break
		var year := first_year + int(float(final_year - first_year) * step / maxi(1, maximum_steps - 1))
		var specs: Array[Dictionary] = []
		var eligible := _eligible()
		for operation: String in WEIGHTS[family]:
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
		var remaining := maximum_steps - step - 1
		for spec in specs:
			var after: int = _active.size() + spec.delta
			if not mandatory.is_empty() and spec.operation != mandatory:
				continue
			if eligible.is_empty() and spec.operation != "newcomer":
				continue
			# Leave an actionable lineage beside any protected continuity anchor.
			if after < 2 or after > band[1]:
				continue
			# The protected consolidation still has to split at the next step.
			if family == "consolidation_resplit" and step == 1 and after >= band[1]:
				continue
			# Reserve enough legal growth for the minimum band, never an exact target.
			if after + 3 * remaining < band[0]:
				continue
			if remaining == 0 and after < band[0]:
				continue
			choices.append(spec)
		assert(not choices.is_empty(), "Bounded topology plan has no legal operation")
		var operation := choose_operation(choices,WEIGHTS[family],_g._rng(result.seed,"topology/operation/%d" % step))
		var parameters: Array = choices.filter(func(row:Dictionary)->bool:return row.operation==operation)
		var parameter_rng := _g._rng(result.seed,"topology/parameters/%d" % step)
		var spec: Dictionary = parameters[parameter_rng.randi_range(0,parameters.size()-1)]
		var forced_parent := consolidation if family == "consolidation_resplit" and step == 2 else ""
		if not forced_parent.is_empty():
			_protected.erase(forced_parent)
		var created := _perform(spec, year, "step_%02d" % step, rng, forced_parent)
		if family == "consolidation_resplit" and step == 0:
			consolidation = created
			_protected.append(consolidation)
	assert(_active.size() >= band[0] and _active.size() <= band[1])
	for id in _active:
		var faction := result.entity(id)
		var scholarly := faction.way_of_life in ["infrastructure_guild", "facility_community"]
		if _g._rng(result.seed, "knowledge/" + id).randi_range(0, 99) < (65 if scholarly else 8):
			faction.knowledge_tags.append("observer_scholarly_term")

static func choose_operation(parameters:Array,weights:Dictionary,rng:RandomNumberGenerator)->String:
	var available := {}
	for row:Dictionary in parameters: available[row.operation]=true
	var operations:Array=available.keys()
	operations.sort()
	var total:=0
	for operation:String in operations: total+=int(weights.get(operation,1))
	var draw:=rng.randi_range(1,total)
	for operation:String in operations:
		draw-=int(weights.get(operation,1))
		if draw<=0: return operation
	return operations[-1]

func _root(year:int,heir:bool,enclave:bool,source:String)->void:
	super._root(year,heir,enclave,source)
	if not heir or enclave:
		_result.objective_timeline[-1].cause_event_ids.clear()
