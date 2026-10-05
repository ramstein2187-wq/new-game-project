class_name CanonPolicy
extends RefCounted

const LOCKED := {
	"human_origin": "Earth Homo sapiens", "human_lineages": "multiple modified lineages",
	"modern_origin_knowledge": "mostly lost", "system_age": "about 1.35 billion Earth years",
	"original_habitability": "unsuitable for humans", "planetary_environment_modification": true,
	"observers_existed": true, "observer_role": "observe preserve constrain civilization",
	"observer_system": "closed", "observer_civilization": "gone", "observer_term": "developer and modern scholarly classification, not self-name",
	"core_and_some_management_systems": "remain", "external_shield": "mostly lost",
	"residual_orbital_assets": "may remain and act rarely", "remaining_systems": "not one unified current AI",
	"core_capabilities": "bounded existing infrastructure and local boundary conditions",
	"outerworld_arrivals": "rare possible", "outerworld": "origin category, not a single polity or Observer",
	"past_great_states": true, "present_politics": "fragmented after collapse",
	"faction_knows_all_truth": false, "major_regular_moons": 4, "tides": "strong complex predictable cycles",
}
const RESERVED := ["human_arrival", "first_terraformer", "observer_self_name", "observer_political_system",
	"observer_origin", "observer_disappearance", "pre_observer_intervention", "core_intent", "core_intervention_purpose",
	"orbital_activation_reason", "orbital_target_selection_reason", "original_command_hierarchy",
	"complete_ancient_chronology", "modern_atmosphere_composition", "complete_human_lineage_history",
	"outerworld_civilizations", "global_collapse_cause", "rings", "core_tidal_energy"]
const GENERATABLE := ["regional_polities", "dynasties", "founding", "war", "civil_war", "famine", "migration",
	"schism", "alliance", "betrayal", "settlement", "local_disaster", "ruin_reoccupation", "refugees",
	"successors", "local_territory", "buried_facility_discovery", "small_anomalous_discovery",
	"rare_orbital_legacy", "bounded_core_intervention"]
const BELIEF_ONLY := ["human_origin", "observer_character", "first_terraformer", "world_creation",
	"core_intent", "outerworld_identity", "global_collapse_cause", "legitimate_successor",
	"orbital_activation_reason", "orbital_target_selection_reason"]
const ENTITY_KINDS := ["region", "precursor_state", "group", "faction", "settlement"]
const WAYS_OF_LIFE := [""] + HistoryMotifs.SUCCESSOR_A + HistoryMotifs.SUCCESSOR_B + HistoryMotifs.FORMATION_C
const KNOWLEDGE_TAGS := ["observer_scholarly_term"]
const RUIN_KINDS := ["abandoned_farmland", "damaged_route", "chemical_exposure_site", "abandoned_hamlet",
	"abandoned_archive", "battlefield", "administrative_site", "watchtower", "legacy_damage_site"]
const OBSERVATIONS := ["machine_in_coastal_crater", "object_in_mineral_layer", "unfamiliar_manufacturing",
	"sealed_object_in_erosion", "fragment_in_old_stratum", "unidentified_surface_wreckage"]
const DOMAINS := ["natural", "human", "observer_legacy", "core_intervention", "unknown"]
const EFFECT_FIELDS := {
	"activate": ["kind", "entity_id"], "retire": ["kind", "entity_id"],
	"settlement": ["kind", "entity_id", "owner_id", "location_id"],
	"ruin": ["kind", "id", "ruin_kind", "location_id"],
	"relationship": ["kind", "a", "b", "delta"],
	"reoccupy": ["kind", "ruin_id", "owner_id", "settlement_id"],
	"discovery": ["kind", "id", "location_id", "observation", "origin"],
	"system_trace": ["kind", "id", "system_id", "operation", "physical_basis", "intent", "activation_reason", "target_selection_reason"],
}
const NARRATIVES := HistoryMotifs.NARRATIVES

static func snapshot() -> Dictionary:
	return {"locked": LOCKED.duplicate(true), "reserved": RESERVED.duplicate(),
		"generatable": GENERATABLE.duplicate(), "belief_only": BELIEF_ONLY.duplicate()}

static func narrative(event: HistoricalEvent) -> String:
	return NARRATIVES.get(event.narrative_key, ["", "INVALID NARRATIVE"])[1]

static func effect_errors(effect: Dictionary) -> Array[String]:
	var errors: Array[String] = []
	var kind: String = str(effect.get("kind", ""))
	if not EFFECT_FIELDS.has(kind):
		return ["Unknown objective effect: " + kind]
	var fields: Array = EFFECT_FIELDS[kind]
	for field in fields:
		if not effect.has(field):
			errors.append("Missing objective effect field: " + field)
	for field in effect:
		if field not in fields:
			errors.append("Forbidden objective fact field: " + str(field))
	for field in fields:
		if field == "delta" or not effect.has(field):
			continue
		if not effect[field] is String or effect[field].is_empty():
			errors.append("Effect field must be a nonempty String: " + field)
	if kind == "relationship" and (not effect.get("delta") is int or absi(int(effect.get("delta", 0))) > 100):
		errors.append("Relationship delta must be an integer in -100..100")
	if kind == "ruin" and effect.get("ruin_kind") not in RUIN_KINDS:
		errors.append("Unknown ruin kind")
	if kind == "discovery":
		if effect.get("origin") != "unknown":
			errors.append("Generic discovery cannot resolve origin or a RESERVED mystery")
		if effect.get("observation") not in OBSERVATIONS:
			errors.append("Unknown objective observation")
	if kind == "system_trace":
		for field: String in ["intent", "activation_reason", "target_selection_reason"]:
			if effect.get(field) != "unknown":
				errors.append("RESERVED system reason resolved: " + field)
	return errors
