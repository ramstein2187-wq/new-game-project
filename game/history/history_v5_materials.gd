class_name HistoryV5Materials
extends RefCounted

# Observed material manifests are objective authored effects. Archaeology may
# project these observations; it must never synthesize evidence from Claims.
static func pool_for(event:HistoricalEvent,content:Dictionary)->Array:
	if event.event_type==HistoricalEvent.Type.SOCIAL_INCIDENT:
		return content.social_sources.get(event.narrative_key,[])
	return content.ordinary_sources.get(event.narrative_key,[])

static func reference_for(event:HistoricalEvent)->String:
	# Custody refers to its actual site; social observations retain the recorded
	# cohort/home rather than merging every contact into a regional category.
	for effect:Dictionary in event.effects:
		if effect.kind in ["history_record","social_record"] and not effect.get("data",{}).has("observed_materials"):
			if effect.get("reference_id","")!="":return effect.reference_id
	for effect:Dictionary in event.effects:
		if effect.kind=="reoccupy":return effect.ruin_id
	for effect:Dictionary in event.effects:
		if effect.kind=="settlement":return effect.entity_id
		if effect.kind=="ruin":return effect.id
	return event.actor_ids[0] if not event.actor_ids.is_empty() else "region"

static func manifest_for(event:HistoricalEvent,content:Dictionary)->Dictionary:
	var materials:=pool_for(event,content).duplicate()
	materials.sort()
	return {"kind":"history_record","record_type":"observation","record_id":"v5_materials__"+event.narrative_key,"entity_id":event.actor_ids[0],"reference_id":event.actor_ids[0],"project_id":"","data":{"observed_materials":materials,"recorded_subject_id":reference_for(event),"historical_observation":true,"hidden_origin":"unknown"}}

static func observe(result:HistoryResult)->void:
	var content:=HistoryV5Catalog.archaeology_content()
	for event in result.objective_timeline:
		var pool:=pool_for(event,content)
		if pool.is_empty():continue
		# Distinct physical/documentary observations, not new political causes.
		if event.actor_ids.is_empty():event.actor_ids.append("region")
		event.effects.append(manifest_for(event,content))
