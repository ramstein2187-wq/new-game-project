class_name HistoryV5Scaffold
extends HistoryGenerator

func build(seed: int) -> HistoryResult:
	var result := HistoryResult.new()
	result.seed = seed
	result.generation_version = 5
	result.architecture_version = 3
	result.canon = CanonPolicy.snapshot()
	result.configuration = _configuration(seed)
	var local := _local_collapse(result)
	HistoryV5Topology.new().build(result, local, self)
	SocialIncidentPlanner.new(_incidents).build(result, self)
	_later_history_v3(result)
	# Birth/lifecycle provenance remains in entities/effects. It is not a motive
	# for a later trade dispute, discovery or custodial decision.
	for event in result.objective_timeline:
		if event.id.begins_with("h_relation") or event.id in ["h_last", "h_discovery"]:
			event.cause_event_ids.clear()
	result.objective_timeline.sort_custom(func(a: HistoricalEvent,b: HistoricalEvent)->bool:return a.year<b.year or (a.year==b.year and a.id<b.id))
	return result

func _local_collapse(result: HistoryResult) -> Dictionary:
	super._local_collapse(result)
	# The old scaffold's pressure-response-failure story is not v5's regional
	# history. Keep only independently documented foundation, pressure and end.
	result.objective_timeline.assign(result.objective_timeline.filter(func(event:HistoricalEvent)->bool:return event.id not in ["h_response","h_failure"]))
	result.entities.assign(result.entities.filter(func(entity:HistoricalEntity)->bool:return entity.id not in ["province","terminal_site"]))
	var collapse_year := _rng(result.seed,"regional/end").randi_range(-300,-215)
	for event in result.objective_timeline:
		event.cause_event_ids.clear()
		if event.id=="h_collapse":
			event.year=collapse_year
			event.actor_ids.erase("province")
			event.entity_ids.erase("province")
			event.effects.assign(event.effects.filter(func(effect:Dictionary)->bool:return effect.get("entity_id","")!="province"))
	return {"collapse_year":collapse_year}
