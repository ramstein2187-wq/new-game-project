class_name ExplorationInteractions
extends RefCounted
## Current physical environment only. No historical stock, faction or relic creation.
const SUPPLIES := ["branches", "stone_cache", "supply_cache"]

static func failure(game: RefCounted, o: Dictionary, operation: StringName) -> Dictionary:
	if operation == &"inspect" or operation == &"recover" or operation == &"clear": return {}
	if o.get("used", false) and o.kind != "tool_rack": return {"code": "environment_used", "args": {}}
	if o.kind in ["bridge", "workbench"] and game.runtime.bag("materials") < 2:
		return {"code": "materials", "args": {"required": 2, "available": game.runtime.bag("materials")}}
	if o.kind in ["camp", "shelter"] and game.player_hp >= game.PLAYER_MAX_HP: return {"code": "healthy", "args": {}}
	if o.kind == "tool_rack":
		var definition := CombatContentCatalog.weapon(StringName(o.weapon_id))
		if definition == null: return {"code": "no_target", "args": {}}
	return {}

static func execute(game: RefCounted, o: Dictionary, operation: StringName) -> void:
	var runtime: HistoryRuntimeState = game.runtime
	match operation:
		&"recover":
			runtime.change(o.id, {"taken": true}); runtime.gather(o.asset_kind, int(o.quantity))
			game._notify("environment_gathered", {"count": o.quantity})
		&"clear":
			runtime.change(o.id, {"removed": true}); game._notify("cleared")
		&"inspect":
			if o.id not in runtime.knowledge: runtime.knowledge.append(o.id)
			game._notify("inspect", {"object_id": o.id})
		&"repair":
			runtime.inventory.materials = runtime.bag("materials") - 2
			runtime.change(o.id, {"used": true}); game._notify("bridge_ready")
		&"use":
			var player: Actor = game.get_actor(&"player")
			if o.kind == "tool_rack":
				var previous := String(player.weapon_id)
				if player.set_weapon(CombatContentCatalog.weapon(StringName(o.weapon_id))):
					runtime.change(o.id, {"used": true, "weapon_id": previous}); game._notify("tool_swapped")
			elif o.kind == "lookout":
				if not player.has_effect(&"route_survey"):
					var effect := GameplayEffectDefinition.new(); effect.id = &"route_survey"
					var modifier := ActionCostModifier.new(); modifier.source_id = &"route_survey"
					modifier.required_tags = [&"MOVE"]; modifier.operation = 1; modifier.value = -0.1
					effect.action_cost_modifiers.append(modifier); player.add_effect(effect, StringName(o.id))
				runtime.change(o.id, {"used": true})
				if o.id not in runtime.knowledge: runtime.knowledge.append(o.id)
				game._notify("surveyed")
			else:
				if o.kind == "workbench":
					runtime.inventory.materials = runtime.bag("materials") - 2
					for part in player.body.parts.values():
						if part.current > 0: part.current = mini(part.maximum, part.current + 1)
				player.hp = mini(player.max_hp, player.hp + (6 if o.kind == "workbench" else 4))
				runtime.change(o.id, {"used": true}); game._notify("field_recovery")
	game.action_feedback = str(game.notice.code)

static func progress(game: RefCounted) -> Dictionary:
	var zone: String = game.runtime.current_zone
	var e: Dictionary = game.runtime.exploration[zone]
	var goals := 0
	for kind in ["lookout", "bridge"]:
		if game.runtime.object(zone, "env:" + zone + ":" + kind).used: goals += 1
	return {"visited": e.visited.size(), "sites": e.sites.size(), "goals": goals, "actions": e.actions}
