class_name HistoryMotifs
extends RefCounted

# Small authored composition vocabulary, not a simulation/rule engine.
const CONTENT_REVISION := "history-v2-authored-1"
const CONTENT_REVISION_V3 := "history-v3-authored-3"
const TOPOLOGY_FAMILIES := ["polycentric_succession", "remnant_mosaic", "late_fragmentation",
	"consolidation_resplit", "layered_migration", "no_direct_heir", "enclave_continuity"]
const FORMATIONS := ["founding", "direct_successor", "fragmentation", "merger", "migration_settlement",
	"reorganization", "enclave_continuity", "newcomer_formation"]
const ANCESTRY_KINDS := ["root", "direct_successor", "split_descendant", "merge_descendant",
	"reorganized_descendant", "newcomer", "no_political_predecessor"]
const REGIONAL_ROLES := ["local_exchange", "shelter", "maintenance", "archives", "border_watch", "isolation"]
const PRECURSORS := ["trade_league", "dynastic_crown", "provincial_compact", "city_confederation", "administrative_federation"]
const PRESSURES := {
	"natural": ["extreme_seasons", "geophysical_stress", "chemical_exposure", "radiative_haze"],
	"human": ["administrative_fragmentation", "succession_dispute", "military_overextension", "migration_pressure", "trade_failure", "adaptation_tension"],
	"observer_legacy": ["orbital_bombardment", "orbital_reentry", "orbital_fragment", "surveillance_failure"],
	"core_intervention": ["core_quarantine", "core_route_isolation", "core_underground_closure", "core_rainfall_shift", "core_boundary_adjustment", "core_shutdown", "core_slope_failure", "core_fault_release"],
}
const RESPONSES := ["regional_autonomy", "ritual_schism", "maintenance_secession", "household_council"]
const COLLAPSES := ["civil_war", "evacuation", "office_fragmentation"]
const SUCCESSOR_A := ["military_remnant", "trading_house", "kinship_clan", "provincial_council", "infrastructure_guild", "ritual_authority"]
const SUCCESSOR_B := ["refugee_community", "village_union", "modified_human_community", "migrant_confederation", "frontier_settlement_league", "regional_commune"]
const FORMATION_C := ["religious_community", "facility_community", "breakaway_clan", "resource_or_trade_commune"]
const MIDDLE := ["route_reopening", "settlement_competition", "archive_accord"]
const RECENT := ["border_dispute", "trade_reopening", "household_relocation", "local_alliance", "maintenance_accord"]
const DISCOVERIES := ["impact_machine", "mineral_object", "manufactured_fragment", "erosion_seal", "stratum_fragment", "surface_wreckage"]
const BELIEFS := ["pragmatic", "skeptical", "technical", "ritual"]
const ANCESTRY_MODES := ["central_remnants", "mixed_provincial", "provincial_refugees"]
const PRESSURE_RUINS := {
	"extreme_seasons": "abandoned_farmland", "geophysical_stress": "damaged_route",
	"chemical_exposure": "chemical_exposure_site", "radiative_haze": "abandoned_hamlet",
	"administrative_fragmentation": "abandoned_archive", "succession_dispute": "administrative_site",
	"military_overextension": "watchtower", "migration_pressure": "abandoned_hamlet",
	"trade_failure": "damaged_route", "adaptation_tension": "abandoned_hamlet",
}
const DISCOVERY_OBSERVATIONS := {
	"impact_machine": "machine_in_coastal_crater", "mineral_object": "object_in_mineral_layer",
	"manufactured_fragment": "unfamiliar_manufacturing", "erosion_seal": "sealed_object_in_erosion",
	"stratum_fragment": "fragment_in_old_stratum", "surface_wreckage": "unidentified_surface_wreckage",
}
# system, physical operation, bounded mechanism. Motive/activation/target logic stay unknown.
const SYSTEMS := {
	"orbital_bombardment": ["fleet_assets", "bounded_orbital_discharge", "limited_aged_weapon_asset"],
	"orbital_reentry": ["orbital_defense", "asset_reentry", "decaying_orbital_asset"],
	"orbital_fragment": ["orbital_defense", "debris_fall", "fragmenting_orbital_structure"],
	"surveillance_failure": ["orbital_defense", "surveillance_malfunction", "degraded_surveillance_hardware"],
	"core_quarantine": ["deep_core", "quarantine", "existing_barrier_infrastructure"],
	"core_route_isolation": ["deep_core", "route_isolation", "old_access_control_infrastructure"],
	"core_underground_closure": ["deep_core", "underground_closure", "old_tunnel_infrastructure"],
	"core_rainfall_shift": ["environmental_infrastructure", "rainfall_redistribution", "long_term_environmental_equipment"],
	"core_boundary_adjustment": ["environmental_infrastructure", "environmental_boundary_adjustment", "long_term_environmental_equipment"],
	"core_shutdown": ["deep_core", "infrastructure_shutdown", "old_service_infrastructure"],
	"core_slope_failure": ["deep_core", "induced_slope_failure", "existing_slope_stress_and_fluid_pressure"],
	"core_fault_release": ["deep_core", "existing_fault_stress_release", "existing_fault_stress_and_fluid_pressure"],
}
# [event type, narrative, objective domain]. No unbounded physical claims.
const NARRATIVES := {
	"local_successor": ["FOUNDING", "A local political community formed from the surviving population; its recorded formation identifies whether it claimed an old office.", "human"],
	"enclave_survives": ["FOUNDING", "An autonomous enclave established its own institutions before the regional collapse.", "human"],
	"site_reuse": ["RUIN_REOCCUPIED", "A community adopted a recorded compatible use of an older site; the damage and hazard record remained.", "human"],
	"political_split": ["SPLIT", "A political community fragmented into successors; the parent either dissolved or retained its own institutions as recorded in the effects.", "human"],
	"political_merge": ["MERGE", "Existing political communities consolidated into one polity; population contributions are recorded separately and do not imply biological fusion.", "human"],
	"political_reorganization": ["REORGANIZATION", "Residents reorganized political institutions, recording predecessor offices separately from contributing populations.", "human"],
	"population_migration": ["MIGRATION", "Part of an existing population moved to a new political settlement while its source community continued.", "human"],
	"newcomer_entry": ["NEWCOMER", "A population from outside the local political lineage entered the region and established independent institutions.", "human"],
	"population_join": ["MIGRATION", "Arriving residents joined an existing community without making their source a political parent.", "human"],
	"political_extinction": ["EXTINCTION", "A political community ceased to exist, leaving institutional records and an abandoned site; its population origins were not erased from the world.", "human"],
	"trade_league": ["FOUNDING", "A trade league linked regional markets and travel stations.", "human"],
	"dynastic_crown": ["FOUNDING", "A dynastic crown united several regional districts.", "human"],
	"provincial_compact": ["FOUNDING", "A provincial compact pooled local obligations.", "human"],
	"city_confederation": ["FOUNDING", "A confederation joined otherwise autonomous cities.", "human"],
	"administrative_federation": ["FOUNDING", "A federation established a shared regional administration.", "human"],
	"regional_body": ["FOUNDING", "A local assembly formed under the regional polity.", "human"],
	"extreme_seasons": ["DISASTER", "Successive extreme seasons exceeded adapted travel and cultivation schedules; settlements abandoned affected fields.", "natural"],
	"geophysical_stress": ["DISASTER", "Recurrent stress on an already critical fault released locally, damaging structures and travel routes; tidal stress was a small contributor, not a moon-alignment switch.", "natural"],
	"chemical_exposure": ["DISASTER", "Excavation exposed trapped gases and acidic chemical layers left in the modified planet; nearby workplaces were abandoned. The first modifier remains unidentified.", "natural"],
	"radiative_haze": ["DISASTER", "Persistent high-altitude haze and an unusual radiative season disrupted regional activity. The long-term atmospheric mechanism remains unresolved.", "natural"],
	"administrative_fragmentation": ["SPLIT", "District offices stopped recognizing central appointments and formed a dissenting assembly.", "human"],
	"succession_dispute": ["SPLIT", "Rival succession records divided officials into a dissenting assembly.", "human"],
	"military_overextension": ["MIGRATION", "Overextended garrisons withdrew and organized displaced households around abandoned posts.", "human"],
	"migration_pressure": ["MIGRATION", "Arriving households formed an assembly as regional accommodation and representation failed.", "human"],
	"trade_failure": ["DISASTER", "Failures across the regional trade network left stations abandoned and central levies unsupported.", "human"],
	"adaptation_tension": ["SCHISM", "Communities with different environmental adaptations separated from the common assembly.", "human"],
	"orbital_bombardment": ["DISASTER", "An Observer-era orbital military asset discharged once on a bounded area. Surviving ordnance debris records the damage; activation and target-selection reasons are unknown.", "observer_legacy"],
	"orbital_reentry": ["DISASTER", "A degraded Observer-era orbital asset reentered over the region, leaving identified legacy wreckage.", "observer_legacy"],
	"orbital_fragment": ["DISASTER", "Fragments from a failing Observer-era orbital structure fell locally, leaving identified legacy debris.", "observer_legacy"],
	"surveillance_failure": ["DISASTER", "A degraded Observer-era surveillance unit malfunctioned, leaving intermittent signals and damaged hardware.", "observer_legacy"],
	"core_quarantine": ["DISASTER", "Core-associated barriers isolated a district using existing infrastructure. The underlying purpose is unknown.", "core_intervention"],
	"core_route_isolation": ["DISASTER", "Core-associated access systems closed regional routes. The underlying purpose is unknown.", "core_intervention"],
	"core_underground_closure": ["DISASTER", "Core-associated tunnel systems sealed underground access. The underlying purpose is unknown.", "core_intervention"],
	"core_rainfall_shift": ["DISASTER", "Core-associated environmental equipment gradually redistributed regional precipitation over decades. Its purpose is unknown.", "core_intervention"],
	"core_boundary_adjustment": ["DISASTER", "Core-associated equipment gradually changed local environmental boundary conditions. Its purpose is unknown.", "core_intervention"],
	"core_shutdown": ["DISASTER", "Core-associated service systems shut down regional infrastructure. The purpose is unknown.", "core_intervention"],
	"core_slope_failure": ["DISASTER", "Core-associated infrastructure altered fluid pressure in an already stressed slope, inducing local failure. The purpose is unknown.", "core_intervention"],
	"core_fault_release": ["DISASTER", "Core-associated infrastructure changed fluid pressure along an already stressed fault, inducing local stress release without creating new geological energy. Its purpose is unknown.", "core_intervention"],
	"regional_autonomy": ["SPLIT", "Regional delegates separated into an autonomous provincial body in response to the local pressure.", "human"],
	"ritual_schism": ["SCHISM", "A dispute about communal rites formed a provincial body amid the local pressure.", "human"],
	"maintenance_secession": ["SPLIT", "Maintainers withdrew central services and formed a provincial body amid the local pressure.", "human"],
	"household_council": ["SPLIT", "Households established their own provincial council as central coordination failed.", "human"],
	"civil_war": ["WAR", "Central and provincial bodies fought over local authority, leaving a battlefield.", "human"],
	"evacuation": ["MIGRATION", "Officials and households evacuated the regional seat, abandoning local offices.", "human"],
	"office_fragmentation": ["DISASTER", "Regional offices ceased coordinating records and appointments; their administrative site was abandoned.", "human"],
	"collapse": ["COLLAPSE", "Within the broader collapse era, this regional polity and its bodies lost their remaining functions after these local pressures. The global collapse cause remains unresolved.", "human"],
	"remnants": ["FOUNDING", "Two remnant assemblies and a displaced-household group organized after the local collapse.", "human"],
	"remnant_merge": ["MERGE", "Two remnant assemblies merged into a successor community.", "human"],
	"refugees": ["MIGRATION", "Displaced households established a successor community and settlement.", "human"],
	"religious_community": ["SCHISM", "A religious community separated from its parent council over communal rites.", "human"],
	"facility_community": ["SPLIT", "A community separated to maintain and govern surviving facilities.", "human"],
	"breakaway_clan": ["SPLIT", "A clan separated to govern its own households and inherited obligations.", "human"],
	"resource_or_trade_commune": ["SPLIT", "A commune separated to organize workshops, exchange and local access rights.", "human"],
	"town": ["FOUNDING", "A successor community established a settlement.", "human"],
	"reoccupation": ["RUIN_REOCCUPIED", "A community reused accessible portions of an abandoned pressure site as a local service station, without erasing its older damage record.", "human"],
	"route_reopening": ["FOUNDING", "Two communities reopened a travel route and recognized mutual access.", "human"],
	"settlement_competition": ["WAR", "Competition between settlements hardened a boundary dispute.", "human"],
	"archive_accord": ["FOUNDING", "Communities compared succession records and accepted a limited accord.", "human"],
	"border_dispute": ["WAR", "A minor border dispute damaged a watch post and worsened relations.", "human"],
	"trade_reopening": ["FOUNDING", "Communities reopened regional trade and negotiated access obligations.", "human"],
	"household_relocation": ["MIGRATION", "One community accepted relocating households from another.", "human"],
	"local_alliance": ["FOUNDING", "Communities negotiated a local alliance without restoring a large central state.", "human"],
	"maintenance_accord": ["FOUNDING", "Maintainers agreed to share service duties across community boundaries.", "human"],
	"recent_aid": ["MIGRATION", "A community sheltered recently displaced neighbours, changing a strained relationship.", "human"],
	"recent_expansion": ["FOUNDING", "A community established a new settlement during the recent reconstruction.", "human"],
	"recent_rivalry": ["WAR", "A recent disagreement over local representation renewed a rivalry.", "human"],
	"impact_machine": ["ANOMALOUS_DISCOVERY", "An unknown machine was recovered at an impact site; its origin remains unresolved.", "unknown"],
	"mineral_object": ["ANOMALOUS_DISCOVERY", "An object was exposed in a mineral layer; its origin remains unresolved.", "unknown"],
	"manufactured_fragment": ["ANOMALOUS_DISCOVERY", "A fragment showed unfamiliar manufacture; its origin remains unresolved.", "unknown"],
	"erosion_seal": ["ANOMALOUS_DISCOVERY", "Erosion exposed a sealed object; its origin remains unresolved.", "unknown"],
	"stratum_fragment": ["ANOMALOUS_DISCOVERY", "A fragment was embedded in an old geological stratum; its origin and exact age remain unresolved.", "unknown"],
	"surface_wreckage": ["ANOMALOUS_DISCOVERY", "Unidentified wreckage was recovered on the surface; proximity to any sky event does not establish its origin.", "unknown"],
}

static func system_effect(key: String, id: String) -> Dictionary:
	var row: Array = SYSTEMS[key]
	return {"kind": "system_trace", "id": id, "system_id": row[0], "operation": row[1], "physical_basis": row[2],
		"intent": "unknown", "activation_reason": "unknown", "target_selection_reason": "unknown"}

static func config_errors(config: Dictionary, version: int = 2) -> Array[String]:
	var errors: Array[String] = []
	var pools := {"precursor_form": PRECURSORS, "pressure_domain": PRESSURES.keys(), "response_motif": RESPONSES,
		"collapse_pattern": COLLAPSES, "successor_a_form": SUCCESSOR_A, "successor_b_form": SUCCESSOR_B,
		"faction_c_formation": FORMATION_C, "middle_motif": MIDDLE, "recent_motif": RECENT,
		"discovery_motif": DISCOVERIES, "belief_profile": BELIEFS, "ancestry_mode": ANCESTRY_MODES,
		"extra_core": [""] + PRESSURES.core_intervention, "extra_orbital": [""] + PRESSURES.observer_legacy,
		"content_revision": [CONTENT_REVISION]}
	if version == 3:
		for axis in ["successor_a_form", "successor_b_form", "faction_c_formation", "ancestry_mode", "middle_motif", "recent_motif", "belief_profile"]:
			pools.erase(axis)
		pools.content_revision = [CONTENT_REVISION_V3]
		pools.topology_family = TOPOLOGY_FAMILIES
		pools.population_catalog_id = [config.get("population_catalog_id")]
		if not config.get("population_catalog_id") is String or config.get("population_catalog_id", "").is_empty():
			errors.append("Missing population catalog identity")
	for field in pools:
		if config.get(field) not in pools[field]:
			errors.append("Invalid configuration axis: " + field)
	for field in config:
		if field not in pools and field != "pressure_motif":
			errors.append("Forbidden configuration fact: " + str(field))
	if config.get("pressure_motif") not in PRESSURES.get(config.get("pressure_domain"), []):
		errors.append("Pressure motif/domain mismatch")
	return errors
