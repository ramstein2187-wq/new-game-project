class_name PrimaryAttributeCheck
extends RefCounted

# A gameplay check consumes exactly one resolved primary modifier.
# Alternate is optional and must be explicitly authored; modifiers are never added.
static func resolve(actor, primary: StringName, alternate: StringName = &"") -> Dictionary:
	if actor == null or not StatCatalog.is_primary(primary):
		return _invalid(primary, alternate)
	if alternate != &"" and (alternate == primary or not StatCatalog.is_primary(alternate)):
		return _invalid(primary, alternate)

	var selected := primary
	var score: float = actor.resolved_stat(primary)
	var modifier := AbilityScores.modifier(int(score))

	if alternate != &"":
		var alternate_score: float = actor.resolved_stat(alternate)
		var alternate_modifier := AbilityScores.modifier(int(alternate_score))
		if alternate_modifier > modifier:
			selected = alternate
			score = alternate_score
			modifier = alternate_modifier

	return {
		"valid": true,
		"primary": primary,
		"alternate": alternate,
		"selected": selected,
		"domain": StatCatalog.primary_domain(selected),
		"score": score,
		"modifier": modifier,
	}


static func _invalid(primary: StringName, alternate: StringName) -> Dictionary:
	return {
		"valid": false,
		"primary": primary,
		"alternate": alternate,
		"selected": &"",
		"domain": "",
		"score": 0.0,
		"modifier": 0,
	}
