class_name MicrohistoryInteractions
extends RefCounted

static func failure(game: RefCounted, o: Dictionary, operation: StringName) -> Dictionary:
	if operation == &"repair":
		if o.used: return {"code":"intact","args":{}}
		if game.runtime.bag("materials")<1: return {"code":"materials","args":{"required":1,"available":game.runtime.bag("materials")}}
	return {}

static func execute(game: RefCounted, o: Dictionary, operation: StringName) -> void:
	match operation:
		&"inspect":
			if o.id not in game.runtime.knowledge: game.runtime.knowledge.append(o.id)
			game._notify("inspect",{"object_id":o.id})
		&"recover":
			game.runtime.change(o.id,{"taken":true}); game.runtime.gather("materials",o.quantity)
			game._notify("recovered",{"count":o.quantity,"item":"materials"})
		&"clear":
			game.runtime.change(o.id,{"removed":true}); game._notify("cleared")
		&"repair":
			game.runtime.inventory.materials=game.runtime.bag("materials")-1
			game.runtime.change(o.id,{"used":true}); game._notify("repaired")
	game.action_feedback = str(game.notice.code)
