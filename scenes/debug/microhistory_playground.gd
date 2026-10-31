extends "res://scenes/debug/history_world_playground.gd"
## Review controls are developer-only and visibly separated from player inspection.
var review_region: OptionButton
var review_incident: OptionButton
var review_rows: Array = []
var reviewed_world: HistoryWorldRealization

func _ready() -> void:
	microhistory_enabled = true
	save_path = "user://microhistory_v7.json"
	super._ready()
	var bar := HFlowContainer.new(); side.add_child(bar); side.move_child(bar,0)
	var label := Label.new(); label.text = GameText.text("micro.review")+" (DEBUG)"; bar.add_child(label)
	review_region = OptionButton.new(); bar.add_child(review_region)
	review_incident = OptionButton.new(); review_incident.custom_minimum_size.x=130; bar.add_child(review_incident)
	_button(bar,GameText.text("micro.visit"),_review_visit)
	review_region.item_selected.connect(_review_region_changed)
	_fill_regions()

func _generate() -> void:
	super._generate()
	if review_region != null: _fill_regions()

func _fill_regions() -> void:
	reviewed_world = game.initial_world
	review_region.clear()
	for id in game.initial_world.selected: review_region.add_item(GameText.locality(game,id))
	_review_region_changed(0)

func _review_region_changed(index: int) -> void:
	review_rows=game.initial_world.zones[game.initial_world.selected[index]].get("microhistory", [])
	review_incident.clear()
	for incident in review_rows:
		var d: Dictionary=MicrohistoryPlanner.catalog.definitions.filter(func(v: Dictionary)->bool:return v.id==incident.definition_id)[0]
		review_incident.add_item(GameText.text(d.title_key)+(" · ∅" if incident.placement!="placed" else ""))

func _review_visit() -> void:
	if review_incident.selected<0: return
	var incident: Dictionary=review_rows[review_incident.selected]
	if incident.placement!="placed":
		records.text=MicrohistoryText.debug_incident(incident)+"\n"+incident.placement; return
	# Explicit debug relocation; it is never counted as production travel evidence.
	game._capture_zone()
	var center:=HistoryWorldRealization.vector(incident.anchor)
	game._activate(incident.region_id,center+Vector2i(0,3))
	game.facing=Vector2i.UP
	developer_visible=false; records_visible=false; _refresh()
	records.text=MicrohistoryText.debug_incident(incident)

func _refresh() -> void:
	super._refresh()
	if review_region != null and reviewed_world != game.initial_world: _fill_regions()
