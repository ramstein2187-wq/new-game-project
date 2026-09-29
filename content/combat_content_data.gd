class_name CombatContentData
extends Resource

@export var weapons: Array[WeaponDefinition] = []
@export var armor: Array[ArmorDefinition] = []
# resource_name is the lookup key (several species intentionally use attack id "bite").
@export var natural_attacks: Array[AttackDefinition] = []
@export var actors: Array[CombatActorContent] = []

func validation_errors() -> PackedStringArray:
	var errors := PackedStringArray()
	for group in [weapons, armor, natural_attacks, actors]:
		var ids := {}
		for item in group:
			if item == null:
				errors.append("Missing resource reference")
				continue
			var id: String
			if item is CombatActorContent:
				id = String(item.definition.type_id) if item.definition != null else ""
			elif item is AttackDefinition:
				id = item.resource_name
			else:
				id = String(item.id)
			if id.is_empty() or ids.has(id):
				errors.append("Empty or duplicate content ID: " + id)
			ids[id] = true
			if item is CombatActorContent:
				var definition: ActorDefinition = item.instantiate_definition()
				if definition == null or not definition.is_valid() or not is_finite(item.body_size) or item.body_size <= 0:
					errors.append("Invalid actor/body: " + id)
					continue
				var body := BodyInstance.new(definition.combat_species.body_template, definition.active_attack().required_capability)
				if body.attack_efficiency(definition.active_attack().required_capability, definition.active_attack().required_capability_count) <= 0:
					errors.append("Body cannot use authored attack: " + id)
				for ability in definition.initial_scores:
					if not AbilityScores.NAMES.has(ability) or not definition.initial_scores[ability] is int:
						errors.append("Invalid ability score: " + id)
				var source: ActorDefinition = item.definition
				if source.combat_species != null:
					errors.append("Author body only through body_template_id: " + id)
				if source.equipped_weapon != null and not weapons.has(source.equipped_weapon):
					errors.append("Unregistered weapon reference: " + id)
				if source.attack_definition != null and not natural_attacks.has(source.attack_definition):
					errors.append("Unregistered natural attack reference: " + id)
				for piece in source.equipped_armor:
					if not armor.has(piece):
						errors.append("Unregistered armor reference: " + id)
				if source.ai_policy not in [&"wait", &"rat_tactics", &"basic_melee"]:
					errors.append("Unknown AI policy: " + id)
			else:
				if not item.is_valid():
					errors.append("Invalid content: " + id)
				if item is ArmorDefinition:
					var part_types: Array[StringName] = []
					for template in [BodyTemplate.human(), BodyTemplate.quadruped(), BodyTemplate.quadruped_canine(), BodyTemplate.beetle(), BodyTemplate.lizard(), BodyTemplate.spider(), BodyTemplate.crab()]:
						for part in template.parts:
							part_types.append(part.type)
					for part_type in item.coverage:
						if not part_types.has(part_type):
							errors.append("Unknown armor coverage: " + id)
				if item is WeaponDefinition and item.attack_definition != null and not is_finite(item.attack_definition.penetration):
					errors.append("Nonfinite weapon penetration: " + id)
				if item is AttackDefinition and not is_finite(item.penetration):
					errors.append("Nonfinite penetration: " + id)
	return errors
