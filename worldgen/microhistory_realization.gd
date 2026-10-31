class_name MicrohistoryRealization
extends RefCounted
## Bounded relational scenes. Never overwrites existing objects, trails or facilities.
const OFFSETS := {
	"camp": [[-1,0],[1,0],[1,1],[0,2],[-1,-1],[2,1]],
	"work": [[0,0],[1,0],[-1,0],[0,-1],[1,2],[-2,1]],
	"garden": [[-1,-1],[-1,0],[-1,1],[1,0],[1,1],[0,2]],
	"room": [[-1,-1],[1,-1],[-1,0],[1,0],[0,-1],[-1,1]],
	"memorial": [[0,-1],[0,0],[1,0],[-1,1],[1,2],[0,2]],
	"convoy": [[-1,-1],[0,0],[1,1],[2,2],[-2,0],[0,2]],
	"cache": [[-1,-1],[0,-1],[1,-1],[0,1],[-1,1],[1,2]],
	"rescue": [[0,-2],[0,-1],[0,1],[1,1],[-1,1],[0,2]],
	"nest": [[0,0],[-1,0],[1,-1],[1,1],[-1,1],[0,2]],
	"experiment": [[-1,-1],[0,-1],[1,-1],[0,1],[-1,1],[1,1]],
	"dig": [[0,0],[1,0],[-1,0],[0,-1],[-1,1],[1,2]]}

static func apply(manifest: Dictionary, zone: Dictionary) -> void:
	zone["microhistory"] = MicrohistoryPlanner.generate(manifest, zone)
	zone["micro_reserved"] = {}
	var reachable := reach(zone)
	var occupied := {}
	for o in zone.objects.values(): occupied[HistoryWorldRealization.vector(o.cell)] = true
	for c in zone.npc_spawns: occupied[HistoryWorldRealization.vector(c)] = true
	occupied[HistoryWorldRealization.vector(zone.spawn)] = true
	for incident: Dictionary in zone.microhistory:
		incident["placement"] = "erased" if incident.evidence.is_empty() else "no_safe_space"
		incident["anchor"] = []
		if incident.evidence.is_empty(): continue
		var candidates: Array[Vector2i] = []
		for y in range(5, zone.height - 5, 2):
			for x in range(7, 90, 2):
				var center := Vector2i(x, y)
				if not reachable.has(center + Vector2i(0,4)): continue
				if incident.definition_id == "washed_crossing" and not near_tile(zone,center,"~",5): continue
				if incident.family == "travel" and not near_tile(zone,center,"#",8): continue
				if not incident.context.facility_id.is_empty():
					var site: Dictionary = zone.facilities[incident.context.facility_id]
					if center.distance_to(HistoryWorldRealization.vector(site.center)) > 24: continue
				var valid := true
				for dy in range(-3,4):
					for dx in range(-3,4):
						var c := center + Vector2i(dx,dy)
						if occupied.has(c) or zone.micro_reserved.has(c) or zone.hazards.has(HistoryWorldRealization.key(c)) or zone.rows[c.y][c.x] in ["#", ":", "R", "~"]: valid = false; break
					if not valid: break
				if valid: candidates.append(center)
		if candidates.is_empty(): continue
		var r := MicrohistoryPlanner.rng(int(manifest.seed), zone.id, [incident.id, "placement"])
		var center: Vector2i = candidates[r.randi_range(0, candidates.size()-1)]
		incident.placement = "placed"; incident.anchor = [center.x,center.y]
		for dy in range(-3,4):
			for dx in range(-3,4):
				var c := center + Vector2i(dx,dy)
				zone.micro_reserved[c] = incident.id
				HistoryWorldRealization._tile(zone,c,".")
		if incident.layout == "room":
			for dy in range(-2,3):
				for dx in range(-2,3):
					var wall := absi(dx)==2 or absi(dy)==2
					HistoryWorldRealization._tile(zone,center+Vector2i(dx,dy),"R" if wall else ":")
			HistoryWorldRealization._tile(zone,center+Vector2i(0,2),":")
			# Genuine doorway with a distinct, adjacent inner barricade.
			if incident.age <= 10:
				var door_id: String = incident.id + ":door"
				zone.objects[door_id] = {"id":door_id,"kind":"door","cell":[center.x,center.y+2],"facility_id":"","owner_id":"","blocks":true,"open":true,"reachable":true,"micro_incident":incident.id}
		var slots: Array = OFFSETS[incident.layout]
		for i in range(incident.evidence.size()):
			var evidence: Dictionary = incident.evidence[i]
			var delta: Array = slots[i]
			if evidence.kind == "barricade": delta = [0,1]
			if evidence.kind == "outside_remains": delta = [1,3]
			if evidence.kind == "scratch" and incident.layout == "room": delta = [-1,3]
			var cell := center + Vector2i(int(delta[0]),int(delta[1]))
			var o := {"id":evidence.id,"kind":"micro_evidence","cell":[cell.x,cell.y],"facility_id":"","owner_id":"",
				"blocks":evidence.kind=="barricade", "reachable":true,"micro_incident":incident.id,
				"evidence_kind":evidence.kind,"verb":evidence.verb,"condition":evidence.condition,
				"provenance":MicrohistoryPlanner.REVISION,"sprite":MicrohistoryPlanner.catalog.evidence[evidence.kind].sprite,
				"active":evidence.active,"taken":false,"removed":false,"used":false,
				"quantity":evidence.quantity,"asset_kind":"materials"}
			zone.objects[o.id] = o
			if evidence.active or evidence.kind == "beam":
				zone.hazards[HistoryWorldRealization.key(cell)] = {"damage":1,"facility_id":"","source":incident.id,"control_id":o.id}
	zone.erase("micro_reserved")

static func near_tile(zone: Dictionary,center: Vector2i,tile: String,radius: int) -> bool:
	for y in range(maxi(1,center.y-radius),mini(zone.height-1,center.y+radius+1)):
		for x in range(maxi(1,center.x-radius),mini(zone.rows[0].length()-1,center.x+radius+1)):
			if zone.rows[y][x]==tile: return true
	return false

## Structural reach permits only genuinely openable/removable obstacles.
static func reach(zone: Dictionary, structural: bool = true) -> Dictionary:
	var blocked := {}
	for o in zone.objects.values():
		if not o.blocks or o.get("open",false) or o.get("removed",false): continue
		if structural and (o.kind in ["door","rubble","cart","stump","fence","boulder"] or o.get("verb","")=="clear"): continue
		blocked[HistoryWorldRealization.vector(o.cell)] = true
	var start := HistoryWorldRealization.vector(zone.spawn)
	var seen := {start:true}; var queue: Array[Vector2i] = [start]; var i := 0
	while i < queue.size():
		var c := queue[i]; i += 1
		for delta in TimeCostGame.CARDINAL_DIRECTIONS:
			var n := c+delta
			if n.x<1 or n.y<1 or n.x>=zone.rows[0].length()-1 or n.y>=zone.height-1: continue
			if seen.has(n) or blocked.has(n) or zone.rows[n.y][n.x] in ["T","R","~"]: continue
			seen[n]=true; queue.append(n)
	return seen

static func validate(zone: Dictionary) -> Array[String]:
	var errors: Array[String] = []; var cells := {}; var reachable := reach(zone)
	for o: Dictionary in zone.objects.values():
		var c := HistoryWorldRealization.vector(o.cell)
		if cells.has(c): errors.append("Overlap: "+o.id)
		cells[c]=o.id
		if not o.has("micro_incident") and o.kind != "exit": continue
		if zone.rows[c.y][c.x] in ["R","T","~"]: errors.append("Evidence in terrain: "+o.id)
		if not TimeCostGame.CARDINAL_DIRECTIONS.any(func(d: Vector2i)->bool:return reachable.has(c+d)): errors.append("Inaccessible scene/exit: "+o.id)
	for incident: Dictionary in zone.microhistory:
		if incident.placement != "placed": continue
		var anchor := HistoryWorldRealization.vector(incident.anchor)
		if incident.definition_id=="washed_crossing" and not near_tile(zone,anchor,"~",5): errors.append("Crossing is not beside water")
		if incident.family=="travel" and not near_tile(zone,anchor,"#",8): errors.append("Travel scene away from travel route")
		for evidence: Dictionary in incident.evidence:
			if not zone.objects.has(evidence.id): errors.append("Missing physical evidence: "+evidence.id); continue
			var c := HistoryWorldRealization.vector(zone.objects[evidence.id].cell)
			if c.distance_to(anchor)>4: errors.append("Broken evidence relationship")
			if evidence.kind=="barricade" and c!=anchor+Vector2i(0,1): errors.append("Barricade is not inside door")
	return errors
