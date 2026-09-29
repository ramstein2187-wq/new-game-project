class_name CombatActorContent
extends Resource

# Body anatomy remains in BodyTemplate; this is a content reference, not a copy.
@export var body_template_id: StringName = &"human"
@export var body_size := 1.0
@export var definition: ActorDefinition
# Preserve the old ten-prototype listing while allowing actor("rat").
@export var list_in_hostiles := true

func body_template() -> BodyTemplate:
	match body_template_id:
		&"human": return BodyTemplate.human()
		&"quadruped_canine": return BodyTemplate.quadruped_canine()
		&"quadruped": return BodyTemplate.quadruped()
		&"beetle": return BodyTemplate.beetle()
		&"lizard": return BodyTemplate.lizard()
		&"spider": return BodyTemplate.spider()
		&"crab": return BodyTemplate.crab()
	return null

func instantiate_definition() -> ActorDefinition:
	if definition == null:
		return null
	var result: ActorDefinition = definition.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
	result.combat_species = CombatSpecies.create(body_template(), body_size)
	return result
