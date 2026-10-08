extends SceneTree

# The v4 civilizational layer never edits political formations. Measure its
# authoritative scaffold directly, avoiding an unnecessary second v4 lore corpus.
func _init()->void:
	var output:Dictionary={"generation_version":4,"worlds":5000,"scope":"Exact v4 scaffold political effects; Project/Scar/name layers do not change political formation","families":{},"formation_distribution":{},"operations":{},"faction_count_distribution":{}}
	var generator:=HistoryGenerator.new(null,HistoryMotifs.DISCOVERIES,4)
	for seed in range(1,5001):
		var result:=generator._generate_scaffold(seed)
		var projected:=HistoryProjector.new().project(result.entities,result.objective_timeline)
		var family:String=result.configuration.topology_family
		if not output.families.has(family):output.families[family]={"worlds":0,"active_factions":0,"faction_count_distribution":{},"formation_distribution":{},"operations":{},"lineage_depth_distribution":{},"direct_heirs":0,"newcomers":0}
		var row:Dictionary=output.families[family]
		bump(row,"worlds")
		bump(row.faction_count_distribution,str(projected.active_factions.size()))
		bump(output.faction_count_distribution,str(projected.active_factions.size()))
		for faction:Dictionary in projected.active_factions:
			bump(row,"active_factions")
			bump(row.formation_distribution,faction.formation_origin)
			bump(output.formation_distribution,faction.formation_origin)
			bump(row.lineage_depth_distribution,str(depth(result,faction.id)))
			if faction.political_continuity:bump(row,"direct_heirs")
			if faction.formation_origin=="newcomer_formation":bump(row,"newcomers")
		for event in result.objective_timeline:
			if event.id.begins_with("t_"):
				bump(row.operations,event.type_name())
				bump(output.operations,event.type_name())
		if seed<=8:
			var full:=generator.generate(seed)
			if projected.active_factions.map(func(faction:Dictionary)->String:return faction.formation_origin)!=full.present.active_factions.map(func(faction:Dictionary)->String:return faction.formation_origin):printerr("v4 scaffold/full mismatch");quit(1);return
		if seed%1000==0:print("Measured v4 political scaffold %d/5000" % seed)
	var file:=FileAccess.open("res://docs/reviews/history_v5/topology_v4_baseline.json",FileAccess.WRITE)
	file.store_string(JSON.stringify(output,"\t")+"\n")
	quit()

func bump(counts:Dictionary,key:String)->void:
	counts[key]=int(counts.get(key,0))+1

func depth(result:HistoryResult,id:String)->int:
	var entity:=result.entity(id)
	if entity==null or entity.parent_ids.is_empty():return 0
	var value:=0
	for parent:String in entity.parent_ids:value=maxi(value,depth(result,parent)+1)
	return value
