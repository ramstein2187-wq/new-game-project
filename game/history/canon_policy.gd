class_name CanonPolicy
extends RefCounted

const LOCKED := {
	"human_origin": "Earth Homo sapiens", "human_lineages": "multiple modified lineages",
	"modern_origin_knowledge": "mostly lost", "system_age": "about 1.35 billion Earth years",
	"original_habitability": "unsuitable for humans", "planetary_environment_modification": true,
	"administrators_existed": true, "administrator_role": "observe preserve constrain civilization",
	"administrator_system": "closed", "administrator_empire": "gone",
	"core_and_some_management_systems": "remain", "external_shield": "mostly lost",
	"outerworld_arrivals": "rare possible", "outerworld": "origin category, not a single polity or Administrator",
	"past_great_states": true, "present_politics": "fragmented after collapse",
	"faction_knows_all_truth": false, "major_regular_moons": 4, "tides": "strong complex predictable cycles",
}
const RESERVED := ["human_arrival", "first_terraformer", "administrator_origin", "administrator_disappearance",
	"pre_administrator_intervention", "core_intent", "complete_ancient_chronology", "modern_atmosphere_composition",
	"complete_human_lineage_history", "outerworld_civilizations", "global_collapse_cause", "rings", "core_tidal_energy"]
const GENERATABLE := ["regional_polities", "dynasties", "founding", "war", "civil_war", "famine", "migration",
	"schism", "alliance", "betrayal", "settlement", "local_disaster", "ruin_reoccupation", "refugees",
	"successors", "local_territory", "buried_facility_discovery", "small_anomalous_discovery"]
const BELIEF_ONLY := ["human_origin", "administrator_character", "first_terraformer", "world_creation",
	"core_intent", "outerworld_identity", "global_collapse_cause", "legitimate_successor"]
const ENTITY_KINDS := ["region", "precursor_state", "group", "faction", "settlement"]
const WAYS_OF_LIFE := ["", "military_remnant", "village_union", "refugee_community", "trading_house",
	"kinship_clan", "facility_community", "religious_community", "modified_human_community"]
const RUIN_KINDS := ["canal", "battlefield", "administrative_site", "watchtower", "abandoned_hamlet"]
const OBSERVATIONS := ["machine_in_coastal_crater", "machine_in_salt_deposit", "unfamiliar_manufacturing"]
const EFFECT_FIELDS := {
	"activate": ["kind", "entity_id"], "retire": ["kind", "entity_id"],
	"settlement": ["kind", "entity_id", "owner_id", "location_id"],
	"ruin": ["kind", "id", "ruin_kind", "location_id"],
	"relationship": ["kind", "a", "b", "delta"],
	"reoccupy": ["kind", "ruin_id", "owner_id", "settlement_id"],
	"discovery": ["kind", "id", "location_id", "observation", "origin"],
}
# A small, closed v0.1 content vocabulary: no external fact/text injection.
const NARRATIVES := {
	"compact": ["FOUNDING", "A regional compact was founded."],
	"crown": ["FOUNDING", "A regional crown united river towns."],
	"league": ["FOUNDING", "A regional trade league was established."],
	"drought": ["DISASTER", "Drought damaged the canal and reduced the grain supply."],
	"flood": ["DISASTER", "Floods destroyed canal gates and displaced river households."],
	"tremor": ["DISASTER", "An earthquake broke the canal and interrupted regional transport."],
	"levies": ["SPLIT", "A province broke away after refusing grain levies."],
	"succession": ["SPLIT", "A succession dispute divided the regional government."],
	"sanctuary": ["SCHISM", "A provincial sanctuary rejected the central authority."],
	"civil_war": ["WAR", "The central authority and the breakaway province fought a civil war."],
	"evacuation": ["MIGRATION", "Households evacuated the provincial seat; local offices and supply depots were abandoned."],
	"collapse": ["COLLAPSE", "The regional state and provincial government ceased functioning after these local pressures."],
	"remnants": ["FOUNDING", "Two remnant groups and a refugee assembly organized after the collapse."],
	"remnant_merge": ["MERGE", "Two remnant groups merged into a successor community."],
	"refugees": ["MIGRATION", "Refugee households migrated and founded a successor community and settlement."],
	"community_split": ["SPLIT", "A community separated over access to surviving facilities."],
	"community_schism": ["SCHISM", "A religious dispute formed a new community."],
	"town": ["FOUNDING", "A successor community founded a settlement."],
	"border_war": ["WAR", "Two successor communities fought over a border watchtower."],
	"refugee_aid": ["MIGRATION", "One community sheltered displaced households from another."],
	"reoccupation": ["RUIN_REOCCUPIED", "A community reoccupied the old canal pumping site."],
	"crater": ["ANOMALOUS_DISCOVERY", "An unknown machine was recovered from a coastal impact site. Its origin remains unresolved."],
	"salt": ["ANOMALOUS_DISCOVERY", "An unknown machine was exposed in a salt deposit. Its origin remains unresolved."],
	"manufacture": ["ANOMALOUS_DISCOVERY", "A recovered machine showed unfamiliar manufacturing marks. Its origin remains unresolved."],
	"second_war": ["WAR", "A later struggle over canal access worsened relations between two communities."],
}

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
			errors.append("Discovery cannot resolve origin or a RESERVED mystery")
		if effect.get("observation") not in OBSERVATIONS:
			errors.append("Unknown objective observation")
	return errors
