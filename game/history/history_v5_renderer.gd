class_name HistoryV5Renderer
extends RefCounted

# Presentation choices use their own namespace and never write HistoryResult.
var _variants:Array[String]
var _phase_variants:Dictionary

func _init(variants:Array[String]=["Recorded evidence","Surviving observation","Historical record"],phase_variants:Dictionary={})->void:
	_variants=variants.duplicate()
	_variants.sort()
	_phase_variants=phase_variants.duplicate(true) if not phase_variants.is_empty() else HistoryV5Catalog.archaeology_content().get("renderer_phase_variants",{})

func format(result:HistoryResult)->String:
	var catalog:=HistoryV5Catalog.new()
	var aliases:Dictionary={}
	for i in range(result.archaeology.traces.size()):aliases[result.archaeology.traces[i].id]="T%02d" % (i+1)
	var lines:Array[String]=["# History v5 — seed %d" % result.seed,"Generation5 / architecture3 / play start0","Topology: "+str(result.configuration.topology_family),"","## Canon boundaries","Human populations retain authored Origin provenance. Preservator and Observer purposes, consciousness, personhood and boundary outcomes remain unresolved.","","## Objective history"]
	for event in result.objective_timeline:
		var definition:=catalog.definition(event.narrative_key)
		var narrative:String=definition.narrative if not definition.is_empty() else CanonPolicy.narrative(event)
		narrative=_narrative(result,event,narrative)
		if event.id=="h_collapse":narrative="The regional polity ceased to function. Surviving records identify its retirement and abandoned offices; an explanation linking this end to earlier episodes is absent."
		lines.append("%d · %s · %s" % [event.year,event.id,narrative])
		lines.append("Actors: %s. Explicit causes: %s." % [", ".join(event.actor_ids),", ".join(event.cause_event_ids) if not event.cause_event_ids.is_empty() else "none recorded"])
		for effect:Dictionary in event.effects:
			if effect.kind=="history_record" and effect.data.has("observed_materials"):
				lines.append("Observed materials: "+", ".join(effect.data.observed_materials))
			else:lines.append("Fact: "+JSON.stringify(effect))
	lines.append("\n## Historical associations")
	for row:Dictionary in result.historical_associations:lines.append("%s ↔ %s: %s; this records association only." % [row.from_event,row.to_event,row.basis])
	lines.append("\n## Present factions and population")
	for row:Dictionary in result.present.historical_factions:
		lines.append("%s (%s), %d..%s; %s; formation=%s; parents=%s; institutional heir=%s; lifestyle=%s; population=%s" % [row.name,row.id,row.formation_year,"present" if row.active else str(row.dissolution_year),"active" if row.active else "retired",row.formation_origin,", ".join(row.parent_ids),row.political_continuity,row.way_of_life,PopulationOrigins.format(row.population_origin_profile)])
	lines.append("\n## Projects, Scars and current sites")
	for row:Dictionary in result.present.civilizational_projects:lines.append("Project: "+JSON.stringify(row))
	for row:Dictionary in result.present.civilizational_scars:lines.append("Scar: "+JSON.stringify(row))
	for row:Dictionary in result.present.ruins:lines.append("Ruin: "+JSON.stringify(row))
	lines.append("\n## Historical Traces")
	lines.append("T aliases identify trace/<source event>/<archetype>. Contexts are consumer placement contracts. Living and machine traces record historical observations; current operation is unverified.")
	for trace:Dictionary in result.archaeology.traces:
		var rng:=RandomNumberGenerator.new()
		rng.seed=SeedDeriver.derive(result.seed,["history-renderer","5",trace.id])
		var label:String=_variants[rng.randi_range(0,_variants.size()-1)] if not _variants.is_empty() else "Record"
		var fields:Array[String]=[]
		for assertion:Dictionary in trace.assertions:
			if assertion.field not in fields:fields.append(assertion.field)
		lines.append("%s %s (%s) [%s] %s; source=%s; subject=%s; at=%s; clue fields=%s" % [aliases[trace.id],trace.display_name,trace.archetype_id,trace.category,label,", ".join(trace.source_event_ids),trace.subject_id,", ".join(trace.context_ids),", ".join(fields)])
	lines.append("\n## Major playable questions")
	for question:Dictionary in result.archaeology.questions:
		lines.append("%s [%s] %s" % [question.id,question.classification,question.text])
		lines.append("Recorded subject: %s; current recorded stakeholders: %s." % [question.subject_id,", ".join(question.stakeholder_ids) if not question.stakeholder_ids.is_empty() else "none; consumer must verify a present contact"])
		for position:Dictionary in question.current_stakes.positions:lines.append("Present issue candidate: %s (%s) could %s; dialogue confirmation required, historical motive unrecorded." % [position.faction_id,position.present_role,position.candidate_position])
		for relationship:Dictionary in question.current_stakes.recorded_present_relationships:lines.append("Recorded current relation %s ↔ %s: score%d; sources=%s." % [relationship.a,relationship.b,relationship.score,", ".join(relationship.source_event_ids)])
		var evidence:Array=question.evidence_trace_ids.map(func(id:String)->String:return aliases[id])
		lines.append("Evidence (need3, two sources and contexts): "+", ".join(evidence))
		lines.append("Remaining: "+question.remaining_uncertainty)
		for hook:Dictionary in result.archaeology.interactions:
			if question.id in hook.question_ids:lines.append("Hook %s [%s] → %s; requires=%s; access=%s (consumer hook)" % [hook.archetype_id,hook.interaction_type,aliases[hook.target_trace_ids[0]],", ".join(hook.required_runtime_tags),", ".join(hook.possible_access_modes)])
		for consequence:Dictionary in result.archaeology.consequences:
			if consequence.question_id==question.id:lines.append("After corroboration: %s — %s; execution requires=%s (consumer proposal; history unchanged)." % [consequence.action_type,consequence.current_issue.present_need,", ".join(consequence.execution_requirements)])
	lines.append("Minor discoveries without major question: %d" % result.archaeology.minor_discovery_count)
	lines.append("\n## Current interpretations (Claims)")
	var groups:Dictionary={}
	for claim in result.historical_claims:
		var key:String=claim.referenced_event_id+"\n"+claim.interpretation
		if not groups.has(key):groups[key]=[]
		groups[key].append("%s (confidence%.2f)" % [claim.claimant_entity_id,claim.confidence])
	var group_ids:Array=groups.keys()
	group_ids.sort()
	for key:String in group_ids:lines.append("%s about %s: %s" % [", ".join(groups[key]),key.get_slice("\n",0),key.get_slice("\n",1)])
	lines.append("\nValidation: "+JSON.stringify(result.validation_report))
	return "\n".join(lines)

func _narrative(result:HistoryResult,event:HistoricalEvent,fallback:String)->String:
	# Complete factual alternatives use only recorded formation semantics. The
	# renderer seed is disjoint from every generation and authored-content stream.
	var variants:Dictionary={
		"local_successor":["Local residents registered a polity and its settlement; population provenance and institutional continuity are recorded separately.","The named local community entered the political record with its settlement and documented population sources.","This community's institutions were registered here. The record distinguishes political continuity from population ancestry."],
		"enclave_survives":["An enclave registered independent local institutions while the older regional polity was still active.","Before the region's older polity ended, this enclave had its own documented settlement and political organization.","The older polity and this local enclave coexisted; the enclave's institutions were registered independently."],
		"political_split":["The recorded polity divided into successor communities, retaining the documented population sources.","Separate political offices emerged from the recorded parent polity; their later lifestyles are not explained here.","The former single political body now had separate successor institutions and settlements."],
		"political_merge":["The named communities formed one polity; the recorded donor populations determine its composition.","A joint political body replaced its participating institutions, with donor provenance retained.","Previously separate communities established a combined polity and a recorded common settlement."],
		"political_reorganization":["A new institutional arrangement replaced the recorded political bodies; its actual population donors are listed separately.","Political institutions were reorganized. Participation in that agreement did not by itself make every participant a population donor.","The registered successor arrangement drew its population from the specified sources and changed the political institutions."],
		"newcomer_entry":["An incoming human population established a local polity without a political parent in the region.","Newly arrived households founded a recorded settlement and independent political institutions.","The register records an arriving population and a new community, rather than descent from an older local faction."],
		"population_migration":["Part of the recorded population moved into a new political settlement; the source community continued.","Migrating households established another polity while the original political body remained active.","The population register links the new settlement to its donor; migration did not retire that donor."],
		"population_join":["Arriving residents entered an existing community; the register records population addition without a new political parent.","The receiving polity retained its institutions and incorporated the recorded incoming residents.","New residents were added to the community's population records; this was not a political merger."],
		"political_extinction":["The recorded polity ended and left its administrative site; surviving household fate beyond the observations is unspecified.","This political body retired from the regional record, leaving an administrative ruin.","The institutional lifecycle ended here. The site record preserves its abandoned administrative remains."],
		"history_custody":["The named current polity registered custody of this site's surviving records and access; this is archival custody, not biological descent.","Surviving records and access were placed under the named polity's recorded custody. The association supplies no missing historical motive.","A current custodian entered this subject in its record and access register; the custody link leaves historical population ancestry unchanged."],
		"local_alliance":["The two named communities entered a local alliance, recorded as a present relationship change.","A negotiated local agreement improved relations between the named communities without recreating a central state.","The recorded relationship improved under a local alliance; this event supplies no regional reunification."],
		"border_dispute":["A local boundary dispute worsened relations and left the recorded damaged watch post.","The named communities' dispute is recorded in both their relationship and the watch-post damage.","Relations deteriorated during the recorded boundary dispute; a damaged military site remained."],
		"maintenance_accord":["Maintainers registered an agreement to share human service duties across community boundaries.","The named communities agreed to share service work; the agreement records human duties rather than a machine compact.","A service-duty agreement improved relations between the named communities; any machinery involved is unspecified."],
		"recent_rivalry":["A recent local rivalry worsened the recorded relationship between the named communities.","The communities' latest dispute left a lower relationship score in the regional record.","Recent competition strained relations between the named communities; earlier historical motives remain unrecorded."]}
	if _phase_variants.has(event.narrative_key):variants[event.narrative_key]=_phase_variants[event.narrative_key].duplicate()
	if not variants.has(event.narrative_key):return fallback
	var rng:=RandomNumberGenerator.new()
	rng.seed=SeedDeriver.derive(result.seed,["history-renderer","5","event",event.id])
	var choices:Array=variants[event.narrative_key]
	choices.sort()
	return choices[rng.randi_range(0,choices.size()-1)]
