class_name ActorRegistry
extends RefCounted

var _actors: Dictionary = {}

func register(actor: Actor) -> bool:
	if actor == null or actor.id == &"" or _actors.has(actor.id):
		return false
	if actor.is_alive() and occupant_at(actor.position) != null:
		return false
	_actors[actor.id] = actor
	return true

func get_actor(actor_id: StringName) -> Actor:
	return _actors.get(actor_id)

func has_actor(actor_id: StringName) -> bool:
	return _actors.has(actor_id)

func remove(actor_id: StringName) -> bool:
	return _actors.erase(actor_id)

func all() -> Array[Actor]:
	var actors: Array[Actor] = []
	actors.assign(_actors.values())
	return actors

func occupant_at(cell: Vector2i, except_id: StringName = &"") -> Actor:
	for actor: Actor in _actors.values():
		if actor.id != except_id and actor.is_alive() and actor.position == cell:
			return actor
	return null
