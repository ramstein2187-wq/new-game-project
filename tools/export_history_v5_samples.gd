extends SceneTree

func _init()->void:
	var args:=OS.get_cmdline_user_args()
	var round_id:String=args[0] if not args.is_empty() else "round1"
	var folder:String="res://docs/reviews/history_v5/raw_"+round_id
	DirAccess.make_dir_recursive_absolute(folder)
	var selection:Dictionary=JSON.parse_string(FileAccess.get_file_as_string("res://docs/reviews/history_v5/selection_"+round_id+".json"))
	var index:Array=[]
	if FileAccess.file_exists("res://docs/reviews/history_v5/samples_"+round_id+".json"):
		printerr("Immutable sample metadata already exists; raw export refused")
		quit(1)
		return
	for seed:float in selection.seeds:
		var result:=HistoryGenerator.new().generate(int(seed))
		if not result.validation_report.errors.is_empty():printerr(str(result.validation_report));quit(1);return
		var text:=HistoryV5Renderer.new().format(result)
		var filename:String="seed_%04d.md" % int(seed)
		if FileAccess.file_exists(folder+"/"+filename):printerr("Immutable raw sample already exists");quit(1);return
		var file:=FileAccess.open(folder+"/"+filename,FileAccess.WRITE)
		file.store_string(text+"\n")
		index.append({"seed":int(seed),"file":filename,"bytes":(text+"\n").to_utf8_buffer().size(),"raw_sha256":(text+"\n").sha256_text(),"raw_sha256_includes_final_lf":true,"canonical_sha256":result.canonical_output().sha256_text(),"family":result.configuration.topology_family,"projects":result.present.civilizational_projects.map(func(row:Dictionary)->String:return row.archetype),"scars":result.present.civilizational_scars.map(func(row:Dictionary)->String:return row.record_id),"questions":result.archaeology.questions.map(func(row:Dictionary)->String:return row.archetype_id)})
	var file:=FileAccess.open("res://docs/reviews/history_v5/samples_"+round_id+".json",FileAccess.WRITE)
	file.store_string(JSON.stringify(index,"\t")+"\n")
	print("Exported20 unchanged random raw samples: "+round_id)
	quit()
