class_name SocietyActorInteraction
extends RefCounted

# Semantic profiles are independent of Actor/real Trait resources. Reactions are
# qualitative reasons and prospective hooks, never reputation/stat modifiers.
const SEMANTIC_HOOKS := {
	"clone_born": ["membership_candidate", "cohort_provenance", "citizenship_review", "settlement"],
	"natural_born": ["membership_candidate", "citizenship_review", "citizenship_review", "settlement"],
	"founder_template": ["inheritance_petitioner", "template_and_personhood", "inheritance_dispute", "office"],
	"batch_sibling": ["cohort_member", "cohort_provenance", "cohort_review", "settlement"],
	"genetically_divergent": ["membership_candidate", "form_and_membership", "membership_review", "settlement"],
	"designed": ["membership_candidate", "heredity_design", "membership_review", "settlement"],
	"inherited_modification": ["membership_candidate", "form_and_membership", "membership_review", "settlement"],
	"duty": ["service_steward", "service_obligations", "duty_review", "service_office"],
	"hospitality": ["shelter_helper", "shelter_obligation", "refuge_request", "shelter"],
	"scavenging": ["salvage_worker", "salvage_rights", "salvage_review", "salvage_site"],
	"modified_lineage": ["membership_candidate", "form_and_membership", "membership_review", "settlement"],
	"technical_competence": ["maintainer", "repair_evidence", "service_request", "workshop"],
	"craftsmanship": ["artisan", "item_provenance", "craft_review", "workshop"],
	"scholarship": ["historical_authority", "compare_sources", "memory_review", "archive"],
	"oral_history": ["historical_authority", "oral_testimony", "memory_performance", "archive"],
	"performance": ["memory_bearer", "oral_testimony", "memory_performance", "assembly"],
	"artistry": ["public_artist", "public_works_priorities", "public_works_review", "public_commission"],
	"public_beauty": ["public_artist", "public_works_priorities", "public_works_review", "public_commission"],
	"item_provenance": ["artisan", "item_provenance", "craft_review", "workshop"],
	"ritualism": ["ritual_steward", "ritual_testimony", "communal_rite", "ritual_site"],
	"compassion": ["shelter_helper", "shelter_obligation", "refuge_request", "shelter"],
	"outsider": ["new_resident", "membership_review", "arrival", "settlement"],
	"skepticism": ["evidence_reviewer", "claim_verification", "unknown_phenomenon_review", "research"],
	"experimentation": ["trial_observer", "test_protocol", "unknown_phenomenon_trial", "research"],
	"institutional_reform": ["reform_advocate", "institutional_review", "office_review", "assembly"],
	"institutional_continuity": ["continuity_steward", "inheritance_review", "office_review", "archive"],
	"bodily_adaptation": ["adaptation_delegate", "form_and_membership", "membership_review", "settlement"],
	"augmented": ["membership_candidate", "machine_integration_review", "integration_dispute", "settlement"],
	"machine_integration": ["membership_candidate", "machine_integration_review", "integration_dispute", "workshop"],
	"delving": ["delving_petitioner", "deep_access_review", "delving_dispute", "deep_access"],
	"sky_signaling": ["signal_petitioner", "sky_access_review", "signal_dispute", "sky_access"],
}

func resolve(profile: Dictionary, actor_profile: Dictionary) -> Dictionary:
	var output := {"positive_reasons": [], "negative_reasons": [], "mixed_reasons": [],
		"standing": "accepted", "role_hooks": [], "dialogue_hooks": [], "event_hooks": [], "access_hooks": []}
	var actor_tags: Array = actor_profile.get("expresses", []).duplicate()
	actor_tags.sort()
	var strongest_negative := -1
	for society_trait: Dictionary in profile.society_traits:
		strongest_negative = maxi(strongest_negative, _match(output, actor_tags, society_trait, "society_trait", "moderate", society_trait.value_tags, society_trait.tension_tags, "tension"))
	for doctrine: Dictionary in profile.doctrines:
		strongest_negative = maxi(strongest_negative, _match(output, actor_tags, doctrine, "doctrine", doctrine.intensity.level, doctrine.values, doctrine.taboos, "taboo"))
	if not output.positive_reasons.is_empty() and not output.negative_reasons.is_empty():
		output.mixed_reasons.append({"explanation": "Social usefulness and cultural suspicion coexist; review both sets of reasons", "positive_sources": _sources(output.positive_reasons), "negative_sources": _sources(output.negative_reasons)})
	if strongest_negative >= 2:
		output.standing = "taboo"
	elif strongest_negative == 1:
		output.standing = "disfavored"
	elif strongest_negative == 0:
		output.standing = "watched"
	elif not output.positive_reasons.is_empty():
		output.standing = "welcomed"
	return output

func _match(output: Dictionary, actor_tags: Array, source: Dictionary, kind: String, intensity: String, values: Array, negatives: Array, negative_kind: String) -> int:
	var strongest := -1
	var seen := {}
	for tag in actor_tags:
		if seen.has(tag):
			continue
		seen[tag] = true
		for positive: bool in [true, false]:
			if tag not in (values if positive else negatives):
				continue
			var reason := {"actor_tag": tag, "source_id": source.id, "source_kind": kind, "intensity": intensity,
				"severity": "preference" if intensity == "moderate" else "restriction_candidate" if intensity == "hardline" else "enforcement_candidate",
				"relation": "value" if positive else negative_kind, "provenance": source.provenance.duplicate(true)}
			output["positive_reasons" if positive else "negative_reasons"].append(reason)
			if not positive:
				strongest = maxi(strongest, CultureRules.INTENSITIES.find(intensity) if negative_kind == "taboo" else 0)
			var hooks: Array = SEMANTIC_HOOKS.get(tag, ["social_participant", "value_and_taboo_review", "social_review", "community_access"])
			for i in range(4):
				var field: String = ["role_hooks", "dialogue_hooks", "event_hooks", "access_hooks"][i]
				output[field].append({"id": hooks[i], "actor_tag": tag, "source_id": source.id, "source_kind": kind,
					"reaction": "consider_eligibility" if positive else "review_restriction", "intensity": intensity})
	return strongest

func _sources(reasons: Array) -> Array:
	var ids: Array = []
	for reason: Dictionary in reasons:
		var key: String = reason.source_kind + ":" + reason.source_id
		if key not in ids:
			ids.append(key)
	ids.sort()
	return ids
