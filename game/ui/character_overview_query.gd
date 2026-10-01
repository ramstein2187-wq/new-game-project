class_name CharacterOverviewQuery
extends RefCounted

# Ephemeral scalar/value presentation data. No Actor/Resource snapshots or cache.
static func read(game: TimeCostGame, actor_id: StringName = &"player") -> Dictionary:
	var actor := game.get_actor(actor_id)
	if actor == null:
		return {}
	var attributes: Array[Dictionary] = []
	for stat in AbilityScores.NAMES:
		var breakdown := actor.ability_modifier_breakdown(stat)
		attributes.append({"id": stat, "value": breakdown.value,
			"modifier": breakdown.modifier, "breakdown": breakdown})
	var states: Array[Dictionary] = []
	for part: Dictionary in actor.body.parts.values():
		if part.current < part.maximum:
			states.append({"name": part.name, "state": actor.body.state(part.id),
				"current": part.current, "maximum": part.maximum})
	# Public snapshots are isolated; only scalar labels/provenance enter the UI.
	for instance in actor.active_effect_instances():
		states.append({"name": CharacterOverviewText.source_label(instance.definition.id), "effect_id": instance.definition.id,
			"source_id": instance.source_id})
	return {"name": actor.display_name, "type": actor.definition.display_name,
		"attributes": attributes, "hp": actor.hp, "max_hp": actor.max_hp,
		"max_hp_breakdown": actor.max_hp_breakdown(),
		"attack": game.attack_breakdown(actor_id), "armor": actor.body.average_armor_breakdown(),
		"move": MoveAction.new(Vector2i.RIGHT).cost_breakdown(game, actor_id), "states": states}
