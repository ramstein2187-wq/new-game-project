class_name ExplorationText
extends RefCounted

const HINTS := {
	"branches": "[G] Gather finite unowned materials. Useful for the crossing and field recovery.",
	"stone_cache": "[G] Gather finite unowned materials. Useful for the crossing and field recovery.",
	"supply_cache": "[G] Gather finite unowned materials. Useful for the crossing and field recovery.",
	"lookout": "[U] Survey the current terrain: reveal the dry bypass and reduce movement cost by 10% (once, no stacking).",
	"bridge": "[P] Brace the crossing for 2 materials. Or take the longer dry path to the south for free.",
	"workbench": "[U] Spend 2 materials: recover up to 6 HP and mend 1 point on each surviving limb. Once per station.",
	"tool_rack": "[U] Swap your weapon with the hunting knife on this rack. Swap again to retrieve the stored weapon.",
	"camp": "[U] Rest with finite field supplies: recover up to 4 HP, once here.",
	"shelter": "[U] Rest with finite field supplies: recover up to 4 HP, once here.",
	"trail_sign": "The path leads east to a lookout, a loose crossing, supplies and the region exits. Side trails lead to historical sites.",
	"waystone": "Follow the eastern bank north or south to a connected region. Your changes here will persist.",
	"stump": "[X] Clear this solid obstacle with physical work.",
	"cart": "[X] Clear this solid obstacle with physical work.",
	"fence": "[X] Clear this solid obstacle with physical work.",
	"boulder": "[X] Clear this solid obstacle with physical work.",
	"scrap": "[X] Clear loose debris. It does not contain historical salvage.",
	"crate": "[X] Clear loose debris. It does not contain historical salvage.",
	"flowers": "Ground vegetation. It does not block movement.",
}

static func hint(o: Dictionary) -> String:
	var text := GameText.text(HINTS.get(o.kind, ""))
	if o.get("used", false): text += "\n" + GameText.text("Already used here.")
	return text

static func objectives(game: HistoryPlayableGame) -> String:
	var zone: String = game.runtime.current_zone
	var p := ExplorationInteractions.progress(game)
	var next := "branches"
	if game.runtime.object(zone, "env:" + zone + ":branches").taken: next = "lookout"
	if game.runtime.object(zone, "env:" + zone + ":lookout").used: next = "bridge"
	if game.runtime.object(zone, "env:" + zone + ":bridge").used: next = "supply_cache"
	var o := game.runtime.object(zone, "env:" + zone + ":" + next)
	if o.get("taken", false):
		for candidate in game.initial_world.zones[zone].objects.values():
			if candidate.kind == "exit": o = candidate; break
	var delta := HistoryWorldRealization.vector(o.cell) - game.player_position
	var direction := "East" if delta.x > 0 else "West"
	if absi(delta.y) > absi(delta.x): direction = "South" if delta.y > 0 else "North"
	return GameText.text("Exploration · {visited} cells walked · {sites} landmarks found · {goals}/2 field goals\nSuggested next: {target} · {distance} tiles {direction}. Side trails and history are optional.",
		{"visited": p.visited, "sites": p.sites, "goals": p.goals, "target": GameText.term(o.kind), "distance": absi(delta.x) + absi(delta.y), "direction": GameText.text(direction)})
