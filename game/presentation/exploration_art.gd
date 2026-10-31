class_name ExplorationArt
extends RefCounted
## Cached terrain and named atlas sprites; all coordinates remain real game cells.
const ATLAS := preload("res://assets/tilesets/exploration/exploration.png")
static var index: Dictionary = JSON.parse_string(FileAccess.get_file_as_string("res://assets/tilesets/exploration/atlas.json")).tiles
var terrain: Texture2D
var zone_id := ""
var source_world: RefCounted

static func region(name: String) -> Rect2:
	var i := int(index.get(name, index.ground0).index)
	return Rect2((i % 16) * 16, (i / 16) * 16, 16, 16)

func prepare(game: HistoryPlayableGame) -> void:
	if source_world == game.initial_world and zone_id == game.runtime.current_zone: return
	source_world = game.initial_world; zone_id = game.runtime.current_zone
	var source := ATLAS.get_image()
	var buffer := Image.create(game.map_width * 16, game.map_height * 16, false, Image.FORMAT_RGBA8)
	for y in range(game.map_height):
		for x in range(game.map_width):
			var cell := Vector2i(x, y); var tile: String = game.terrain_rows[y][x]
			var ground := "ground" + str(posmod(x * 7 + y * 11 + int(game.initial_world.manifest.seed), 8))
			buffer.blit_rect(source, Rect2i(region(ground)), cell * 16)
			var sprite := ""
			if tile in ["R", "#", "~"]:
				var mask := 0
				for i in range(4):
					var d: Vector2i = [Vector2i.UP, Vector2i.RIGHT, Vector2i.DOWN, Vector2i.LEFT][i]
					var n := cell + d
					if not game.is_inside(n) or game.terrain_rows[n.y][n.x] != tile: mask |= 1 << i
				sprite = {"R": "wall", "#": "path", "~": "water"}[tile] + str(mask)
			elif tile == ":":
				sprite = "floor"
				for f in game.initial_world.zones[zone_id].facilities.values():
					if f.has("form") and HistoryWorldRealization.vector(f.center).distance_to(cell) < 12:
						sprite = "floor_" + str(f.form); break
			elif tile in [",", "!"]: sprite = "gravel"
			elif tile == "T": sprite = "tree"
			if not sprite.is_empty(): buffer.blend_rect(source, Rect2i(region(sprite)), cell * 16)
	terrain = ImageTexture.create_from_image(buffer)

static func sprite(canvas: CanvasItem, name: String, cell: Vector2i, tint: Color = Color.WHITE) -> void:
	canvas.draw_texture_rect_region(ATLAS, Rect2(Vector2(cell) * 16, Vector2(16, 16)), region(name), tint)

func draw(canvas: Node2D, game: HistoryPlayableGame, visible: Rect2) -> void:
	prepare(game)
	canvas.draw_texture(terrain, Vector2.ZERO)
	var zone: Dictionary = game.initial_world.zones[game.runtime.current_zone]
	for key: String in zone.hazards:
		var xy := key.split(","); var cell := Vector2i(int(xy[0]), int(xy[1]))
		if visible.has_point(Vector2(cell) * 16) and game.hazard_at(cell) > 0: sprite(canvas, "hazard", cell, Color(1, 1, 1, 0.8))
	# Ground markers first, objects second, Actor silhouettes last (no canopy hides play).
	for id in zone.objects:
		var o := game.runtime.object(game.runtime.current_zone, id)
		var cell := HistoryWorldRealization.vector(o.cell)
		if not visible.has_point(Vector2(cell) * 16) or o.get("taken", false) or o.get("removed", false): continue
		if o.kind == "record" and not game.record_present(o): continue
		var name: String = o.get("sprite", o.kind)
		if name == "door" and o.open: name = "door_open"
		if name == "bridge" and o.used: name = "bridge_used"
		var tint := Color(0.62, 0.68, 0.65) if o.get("used", false) and o.kind not in ["tool_rack", "bridge"] else Color.WHITE
		if o.kind == "micro_evidence" and o.condition != "fresh": tint *= Color(0.68, 0.67, 0.60)
		if o.kind not in ["flowers", "scar"] and o.get("verb", "") != "passive":
			canvas.draw_rect(Rect2(Vector2(cell) * 16 + Vector2(1, 13), Vector2(14, 2)), Color("79d6c1") if o.owner_id.is_empty() else Color("e7a252"))
		if o.blocks and not o.get("open", false):
			canvas.draw_rect(Rect2(Vector2(cell) * 16, Vector2(16, 16)), Color(0.08, 0.12, 0.15, 0.5))
		if o.kind == "micro_evidence": MicrohistoryArt.draw(canvas,o,cell,tint)
		else: sprite(canvas, name, cell, tint)
	# A player may walk over a dead Actor. Corpses must never cover that silhouette.
	var render_actors := game.actors.all()
	render_actors.sort_custom(func(a: Actor, b: Actor) -> bool:
		var a_layer := 0 if not a.is_alive() else (2 if a.id == &"player" else 1)
		var b_layer := 0 if not b.is_alive() else (2 if b.id == &"player" else 1)
		return a_layer < b_layer)
	for a in render_actors:
		if not visible.has_point(Vector2(a.position) * 16): continue
		if not a.is_alive(): sprite(canvas, "corpse", a.position); continue
		if a.id != &"player":
			canvas.draw_rect(Rect2(Vector2(a.position) * 16 + Vector2(1, 14), Vector2(14, 2)), Color("cf6559"))
		else:
			canvas.draw_rect(Rect2(Vector2(a.position) * 16, Vector2(16, 16)), Color("79d6c1"), false, 1)
		sprite(canvas, "player" if a.id == &"player" else String(a.definition.type_id), a.position)
	var target := game.player_position + game.facing
	canvas.draw_rect(Rect2(Vector2(target) * 16, Vector2(16, 16)), Color(0.9, 0.9, 0.7, 0.6), false, 1)
