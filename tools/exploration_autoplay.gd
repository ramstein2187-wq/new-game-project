class_name ExplorationAutoplay
extends RefCounted
## Test/review driver only: all movement, interactions and combat use real Actions.
## The policy has full geometry knowledge; this is not a human/blinded playtest.

static func operate(g: HistoryPlayableGame, id: String, op: StringName, cautious: bool = true) -> bool:
	if not g.initial_world.zones[g.runtime.current_zone].objects.has(id): return false
	var o := g.runtime.object(g.runtime.current_zone, id)
	var cell := HistoryWorldRealization.vector(o.cell)
	if not walk(g, cell, cautious): return false
	g.facing = cell - g.player_position if cell != g.player_position else Vector2i.RIGHT
	return g.perform_action(&"player", InteractAction.new(cell, op))

static func walk(g: HistoryPlayableGame, target: Vector2i, cautious: bool = true, limit: int = 700) -> bool:
	var route: Array[Vector2i] = []
	for step in range(limit):
		if g.game_over or not g.simulation_error.is_empty(): return false
		if (g.player_position - target).length_squared() <= 1: return true
		if route.size() < 2 or route[0] != g.player_position:
			route = path(g, target, cautious)
		if route.size() < 2: return false
		var next := route[1]
		if g.is_wall(next):
			var acted := false
			for o in g.objects_at(next):
				if o.kind == "door": acted = g.perform_action(&"player", InteractAction.new(next)); break
				if o.kind in ["rubble", "stump", "cart", "fence", "boulder"] or o.get("verb", "") == "clear": acted = g.perform_action(&"player", InteractAction.new(next, &"clear")); break
			if not acted: return false
		else:
			if cautious and g.actors.occupant_at(next) != null: route.clear(); continue
			if not g.player_move(next - g.player_position): return false
			if g.player_position == next: route.pop_front()
	return false

static func path(g: HistoryPlayableGame, target: Vector2i, cautious: bool) -> Array[Vector2i]:
	var grid := AStarGrid2D.new(); grid.region = Rect2i(0, 0, g.map_width, g.map_height)
	grid.diagonal_mode = AStarGrid2D.DIAGONAL_MODE_NEVER; grid.update()
	for y in range(g.map_height):
		for x in range(g.map_width):
			var c := Vector2i(x, y)
			var wall := g.is_wall(c)
			if wall and g.terrain_rows[y][x] not in ["R", "T", "~"]:
				wall = not g.objects_at(c).any(func(o: Dictionary) -> bool: return (o.kind in ["door", "rubble", "stump", "cart", "fence", "boulder"] or o.get("verb", "") == "clear") and g.runtime.has_permission(o.owner_id))
			grid.set_point_solid(c, wall)
			if cautious and g.hazard_at(c) > 0: grid.set_point_weight_scale(c, 100)
	if cautious:
		for a in g.actors.all():
			if a.id == &"player" or not a.is_alive(): continue
			for dy in range(-8, 9):
				for dx in range(-8, 9):
					var c := a.position + Vector2i(dx, dy)
					if g.is_inside(c) and c.distance_to(a.position) <= 8: grid.set_point_weight_scale(c, 100)
			grid.set_point_solid(a.position, true)
	grid.set_point_solid(g.player_position, false)
	var best: Array[Vector2i] = []
	var best_cost := INF
	for d in TimeCostGame.CARDINAL_DIRECTIONS:
		var end := target + d
		if not g.is_inside(end) or grid.is_point_solid(end): continue
		var route := grid.get_id_path(g.player_position, end)
		var cost := 0.0
		for c in route: cost += grid.get_point_weight_scale(c)
		if not route.is_empty() and cost < best_cost: best = route; best_cost = cost
	return best
