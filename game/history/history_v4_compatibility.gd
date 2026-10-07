class_name HistoryV4Compatibility
extends RefCounted

# The only migration boundary. Historical vocabulary and RNG paths stay frozen.
# New v4 effects are never passed through the old validator as if old facts.
const IDS := {
	"core_intervention": "preservator_intervention", "deep_core": "planetary_regulation_network",
	"environmental_infrastructure": "environmental_regulation_module", "core_intent": "preservator_current_intent",
	"core_intervention_purpose": "preservator_intervention_purpose", "core_tidal_energy": "preservator_tidal_energy",
	"core_and_some_management_systems": "preservator_and_some_management_systems", "core_capabilities": "preservator_capabilities",
	"bounded_core_intervention": "bounded_preservator_intervention", "extra_core": "extra_preservator",
	"core_quarantine": "regulation_quarantine", "core_route_isolation": "network_severance",
	"core_underground_closure": "sealed_horizon", "core_rainfall_shift": "hydrological_reversal",
	"core_boundary_adjustment": "climate_desynchronization", "core_shutdown": "service_cascade",
	"core_slope_failure": "subsurface_pressure_bloom", "core_fault_release": "regulation_spasm",
	"ritual": "faith", "ritual_authority": "religious_authority", "ritual_schism": "religious_schism",
	"ritual_site": "sacred_site", "ritual_stewardship": "sacred_stewardship",
	"facility_community": "facility_enclave", "resource_or_trade_commune": "exchange_commune",
	"regional_body": "regional_assembly", "office_fragmentation": "administrative_breakdown",
	"impact_machine": "crater_machine", "mineral_object": "embedded_artifact", "erosion_seal": "sealed_chamber",
	"salvage_custom": "salvage_tradition", "human_final_authority": "human_authority_reaffirmed",
	"rotating_office_compact": "office_rotation_charter", "maintenance_secession": "maintainer_secession",
	"h_legacy_core": "h_legacy_preservator", "legacy_core": "legacy_preservator",
}
static var _reverse_ids: Dictionary = {}

static func translate_ids(value: Variant, reverse: bool = false) -> Variant:
	var mapping := IDS
	if reverse:
		if _reverse_ids.is_empty():
			for key: String in IDS:
				_reverse_ids[IDS[key]] = key
		mapping = _reverse_ids
	if value is Dictionary:
		var output := {}
		for key in value:
			output[translate_ids(key, reverse)] = translate_ids(value[key], reverse)
		return output
	if value is Array:
		var output: Array = []
		for item in value:
			output.append(translate_ids(item, reverse))
		return output
	if value is String:
		var parts: PackedStringArray = value.split(":")
		for i in range(parts.size()):
			parts[i] = mapping.get(parts[i], parts[i])
		return ":".join(parts)
	return value

static func migrate(result: HistoryResult) -> void:
	result.configuration = translate_ids(result.configuration)
	if result.configuration.collapse_pattern == "evacuation":
		result.configuration.collapse_pattern = "mass_exodus"
	result.canon = canon()
	for entity in result.entities:
		entity.id = translate_ids(entity.id)
		entity.way_of_life = translate_ids(entity.way_of_life)
		entity.parent_ids.assign(translate_ids(entity.parent_ids))
		entity.created_event_id = translate_ids(entity.created_event_id)
		entity.retired_event_id = translate_ids(entity.retired_event_id)
	for event in result.objective_timeline:
		event.narrative_key = translate_ids(event.narrative_key)
		if event.narrative_key == "evacuation":
			event.narrative_key = "mass_exodus"
		event.id = translate_ids(event.id)
		event.cause_domain = translate_ids(event.cause_domain)
		event.actor_ids.assign(translate_ids(event.actor_ids))
		event.entity_ids.assign(translate_ids(event.entity_ids))
		event.cause_event_ids.assign(translate_ids(event.cause_event_ids))
		event.effects.assign(translate_ids(event.effects))

static func canon() -> Dictionary:
	var policy: Dictionary = translate_ids(CanonPolicy.snapshot())
	policy.locked.merge({"preservator_architecture": CanonPolicy.PRESERVATOR_TERMINOLOGY.duplicate(true),
		"observer_era_facilities": "largely concealed; gradual post-control exposure",
		"present_command_hierarchy": "unresolved; no assumed unified current will"})
	policy.reserved.append_array(["consciousness_survival", "same_person_continuity", "far_sky_signal_origin", "last_descent_killer"])
	return policy

static func legacy_view(result: HistoryResult) -> HistoryResult:
	var view := HistoryResult.new()
	view.seed = result.seed
	view.generation_version = 3
	view.architecture_version = 2
	view.canon = CanonPolicy.snapshot()
	view.configuration = translate_ids(result.configuration, true)
	for key in ["v4_revision", "project_budget", "scar_budget", "signature_pressure", "signature_response", "signature_collapse"]:
		view.configuration.erase(key)
	view.configuration.content_revision = HistoryMotifs.CONTENT_REVISION_V3
	if view.configuration.collapse_pattern == "mass_exodus":
		view.configuration.collapse_pattern = "evacuation"
	view.configuration.discovery_motif = "impact_machine"
	for entity in result.entities:
		if entity.id.begins_with("v4_"):
			continue
		var copy := HistoricalEntity.new()
		var fields: Dictionary = translate_ids(entity.to_dict(), true)
		for field in fields:
			if field == "generated_name":
				copy.generated_name = entity.generated_name
			elif field in ["parent_ids", "knowledge_tags", "regional_roles"]:
				copy.get(field).assign(fields[field])
			else:
				copy.set(field, fields[field])
		view.entities.append(copy)
	for event in result.objective_timeline:
		if event.id.begins_with("v4_"):
			continue
		var copy := HistoricalEvent.new()
		var fields: Dictionary = translate_ids(event.to_dict(), true)
		for field in fields:
			if field == "event_type":
				copy.event_type = HistoricalEvent.Type[fields[field]]
			elif field in ["actor_ids", "location_ids", "entity_ids", "cause_event_ids", "effects"]:
				copy.get(field).assign(fields[field])
			else:
				copy.set(field, fields[field])
		copy.effects = copy.effects.filter(func(effect: Dictionary) -> bool: return effect.kind != "history_record")
		if copy.narrative_key == "mass_exodus":
			copy.narrative_key = "evacuation"
		if copy.cause_domain == "core_intervention":
			for i in range(copy.effects.size()):
				if copy.effects[i].kind == "system_trace":
					copy.effects[i] = HistoryMotifs.system_effect(copy.narrative_key, copy.effects[i].id)
			if copy.id != "h_pressure":
				copy.actor_ids.clear()
		if copy.id == "h_discovery":
			copy.narrative_key = "impact_machine"
			copy.effects[0].observation = HistoryMotifs.DISCOVERY_OBSERVATIONS.impact_machine
		view.objective_timeline.append(copy)
	view.present = HistoryProjector.new().project(view.entities, view.objective_timeline)
	return view
