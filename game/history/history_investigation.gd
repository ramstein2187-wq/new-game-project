class_name HistoryInvestigation
extends RefCounted

var _archaeology:Dictionary
var _known:Dictionary={}

func _init(archaeology:Dictionary)->void:
	_archaeology=archaeology.duplicate(true)

func perform(interaction_id:String,context_id:String,runtime_tags:Array[String]=[])->Dictionary:
	for hook:Dictionary in _archaeology.interactions:
		if hook.id!=interaction_id:continue
		if context_id not in hook.required_context_ids or not hook.required_runtime_tags.all(func(tag:String)->bool:return tag in runtime_tags):return {"allowed":false,"reason":"missing_context_or_runtime_requirement","evidence_gain":[]}
		for id:String in hook.evidence_gain_trace_ids:_known[id]=true
		return {"allowed":true,"evidence_gain":hook.evidence_gain_trace_ids.duplicate(),"resolved_historical_truth":false,"ethical_answer":null}
	return {"allowed":false,"reason":"unknown_interaction","evidence_gain":[]}

func permissions()->Array[Dictionary]:
	var result:Array[Dictionary]=[]
	for consequence:Dictionary in _archaeology.consequences:
		var count:=0
		var sources:Dictionary={}
		var contexts:Dictionary={}
		for trace:Dictionary in _archaeology.traces:
			if trace.id in consequence.evidence_trace_ids and _known.has(trace.id):
				count+=1
				for source:String in trace.source_event_ids:sources[source]=true
				for context:String in trace.context_ids:contexts[context]=true
		var anchor_known:bool=consequence.anchor_trace_ids.any(func(id:String)->bool:return _known.has(id))
		if anchor_known and count>=consequence.required_evidence_count and sources.size()>=consequence.required_source_count and contexts.size()>=consequence.required_context_count:
			var permission:Dictionary=consequence.duplicate(true)
			permission.permission_state="available_proposal"
			result.append(permission)
	return result

func propose(consequence_id:String)->Dictionary:
	for permission:Dictionary in permissions():
		if permission.id==consequence_id:return {"allowed":true,"proposal":permission,"historical_truth_mutation":false,"ethical_answer":null}
	return {"allowed":false,"reason":"insufficient_corroboration"}
