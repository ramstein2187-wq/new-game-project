extends SceneTree
var captures: Array = []
var failures: Array = []
func _init() -> void: call_deferred("run")
func run() -> void:
	DirAccess.make_dir_recursive_absolute("res://docs/reviews/microhistory_v7/screenshots")
	root.size=Vector2i(1440,900); root.content_scale_size=root.size
	var used: Dictionary={}
	for seed in [42,1,123,777]:
		if captures.size()>=8: break
		var scene:=preload("res://scenes/debug/microhistory_playground.tscn").instantiate()
		scene.world_seed=seed; root.add_child(scene)
		for f in range(3): await process_frame
		for zi in range(scene.game.initial_world.selected.size()):
			var region: String=scene.game.initial_world.selected[zi]
			for incident: Dictionary in scene.game.initial_world.zones[region].microhistory:
				if captures.size()>=8 or incident.placement!="placed" or used.has(incident.layout): continue
				used[incident.layout]=true
				scene.review_region.select(zi); scene._review_region_changed(zi)
				scene.review_incident.select(scene.review_rows.find(incident)); scene._review_visit()
				scene.zoom=4
				# Show player evidence in the side panel; debug truth can be requested separately.
				scene._refresh()
				var d: Dictionary=MicrohistoryPlanner.catalog.definitions.filter(func(v: Dictionary)->bool:return v.id==incident.definition_id)[0]
				scene.feedback.text=GameText.text(d.title_key)+" · "+GameText.text("micro.age."+incident.age_band)+" · DEBUG camera relocation"
				var descriptions: Array[String]=[]
				for e in incident.evidence:
					var o: Dictionary=scene.game.runtime.object(region,e.id)
					descriptions.append(MicrohistoryText.describe(o,false))
				scene.records.text="\n\n".join(descriptions)
				for f in range(5): await process_frame
				await RenderingServer.frame_post_draw
				var path: String="res://docs/reviews/microhistory_v7/screenshots/" + "%02d_%d_%s.png" % [captures.size()+1,seed,incident.definition_id]
				if root.get_texture().get_image().save_png(path)!=OK: failures.append("Cannot save "+path)
				captures.append({"file":path,"seed":seed,"region":region,"incident":incident.id,"definition":incident.definition_id,"layout":incident.layout,"placement":incident.anchor,"evidence":incident.evidence.map(func(e: Dictionary)->String:return e.kind),"method":"actual Godot GPU; explicit debug relocation, not traversal proof"})
				print("CAPTURE ",path)
		scene.queue_free(); await process_frame
	if captures.size()<8: failures.append("Fewer than 8 distinct spatial scenes")
	FileAccess.open("res://docs/reviews/microhistory_v7/captures.json",FileAccess.WRITE).store_string(JSON.stringify({"renderer":RenderingServer.get_video_adapter_name(),"captures":captures,"failures":failures},"\t",true)+"\n")
	print("GPU ",captures.size()," captures; failures ",failures)
	quit(0 if failures.is_empty() else 1)
