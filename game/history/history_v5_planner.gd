class_name HistoryV5Planner
extends HistoryV4Planner

const EPISODES := ["acute_breakdown","managed_retreat","political_bifurcation","slow_erosion","partial_stabilization","displacement"]

func _init(catalog: HistoryV4Catalog = null) -> void:
	super(catalog if catalog!=null else HistoryV5Catalog.new())

func generate(seed: int, generator: HistoryGenerator) -> HistoryResult:
	_generator=generator
	var scaffold:=HistoryV5Scaffold.new(generator._names,generator._discovery_pool,5,generator._populations,generator._incidents)
	_result=scaffold.build(seed)
	HistoryV4Compatibility.migrate(_result)
	_result.configuration.content_revision=_catalog.data.revision
	_result.configuration.v5_revision=_catalog.data.revision
	_result.configuration.archaeology_revision=HistoryV5Catalog.archaeology_content().revision
	_regional_pressure()
	_event("v4_planning_context",_year_of("h_found")+2,"planning_context_"+str(_result.configuration.pressure_domain),"precursor","region","region","",[],{})
	_result.objective_timeline[-1].cause_event_ids.clear()
	_episodes()
	var draw:=_rng(seed,"project/budget").randi_range(0,99)
	var budget:=0 if draw<40 else 1 if draw<90 else 2
	_result.configuration.project_budget=budget
	_result.configuration.scar_budget=2
	var pool:=_catalog.sorted_rows("projects")
	for slot in range(budget):
		var selected:=_context_pick(pool,"project/choice/%d" % slot)
		pool.erase(selected)
		_project(selected,slot)
	if _scar_count<2 and _rng(seed,"scar/budget").randi_range(0,99)<65:
		var existing:Array[String]=[]
		for event in _result.objective_timeline:
			for effect in event.effects:
				if effect.kind=="history_record" and effect.record_type=="scar":existing.append(effect.record_id)
		var scars:=_catalog.sorted_rows("scars").filter(func(row:Dictionary)->bool:return row.id not in existing)
		_scar(_context_pick(scars,"scar/choice"))
	_discovery()
	for event in _result.objective_timeline:
		if event.id=="h_discovery":event.cause_event_ids.clear()
		var unique:Array[String]=[]
		for cause:String in event.cause_event_ids:
			if cause not in unique:unique.append(cause)
		event.cause_event_ids=unique
	HistoryV5Materials.observe(_result)
	_result.objective_timeline.sort_custom(func(a:HistoricalEvent,b:HistoricalEvent)->bool:return a.year<b.year or (a.year==b.year and a.id<b.id))
	var used:Dictionary={}
	var definitions:=_result.entities.duplicate()
	definitions.sort_custom(func(a:HistoricalEntity,b:HistoricalEntity)->bool:return a.id<b.id)
	for entity in definitions:generator._names.assign(entity,seed,used,5)
	_result.present=HistoryProjector.new().project(_result.entities,_result.objective_timeline)
	_result.historical_claims=HistoryV4Claims.new().build(_result)
	_result.archaeology=HistoryArchaeology.new().derive(_result)
	_result.validation_report=HistoryV5Validator.new(generator._populations,generator._incidents,_catalog).validate(_result)
	return _result

func _episodes() -> void:
	var count:=_rng(_result.seed,"episodes/budget").randi_range(1,3)
	var available:=EPISODES.duplicate()
	var selected:Array[String]=[]
	for slot in range(count):
		var index:=_rng(_result.seed,"episodes/choice/%d" % slot).randi_range(0,available.size()-1)
		var kind:String=available[index]
		available.remove_at(index)
		selected.append(kind)
		var start:=_year_of("h_found")+40+slot*65+_rng(_result.seed,"episodes/start/%d" % slot).randi_range(0,15)
		var gap:=_rng(_result.seed,"episodes/gap/%d" % slot).randi_range(18,45) if kind=="slow_erosion" else _rng(_result.seed,"episodes/gap/%d" % slot).randi_range(2,17)
		start=mini(start,_year_of("h_collapse")-gap-5)
		var first:=_event("v4_episode_%d_0" % slot,start,"episode_%s_0" % kind,"precursor","region","region","",[],{})
		var second:=_event("v4_episode_%d_1" % slot,start+gap,"episode_%s_1" % kind,"precursor","region","region","",[],{})
		first.cause_event_ids.clear()
		second.cause_event_ids.clear()
		# Two observations of an episode do not automatically prove causation.
		_result.historical_associations.append({"from_event":first.id,"to_event":second.id,"relationship":"historical_association","basis":"same_recorded_episode"})
	_result.configuration.regional_episodes=selected

func _discovery()->void:
	super._discovery()
	for event in _result.objective_timeline:
		if event.id!="h_discovery":continue
		var definition:=_catalog.definition(event.narrative_key)
		# V4 emits a fixed first observation; v5 additionally projects the authored
		# material contracts. No maker, origin, person or motive is inferred.
		for record:Dictionary in _catalog.records(definition,event.actor_ids[0],event.actor_ids[0],event.actor_ids[0],"",{}):
			if record.data.has("observed_materials"):event.effects.append(record)

func _aftermath(id:String,year:int,participant:String,previous:String,effects:Array[Dictionary])->void:
	super._aftermath(id,year,participant,previous,effects)
	_result.objective_timeline[-1].cause_event_ids.clear()
	_result.historical_associations.append({"from_event":previous,"to_event":id,"relationship":"historical_association","basis":"documented_remains_custody"})

func _chain_dates(chain:Array,start:int)->Array[int]:
	var dates:=super._chain_dates(chain,start)
	var offset:=0
	for i in range(1,dates.size()):
		offset+=_rng(_result.seed,"phase/gap/"+str(chain[i])).randi_range(0,7)
		dates[i]+=offset
	return dates

func _rng(seed:int,namespace_id:String)->RandomNumberGenerator:
	return HistoryV5Catalog.stream(seed,namespace_id)
