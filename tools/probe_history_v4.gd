extends SceneTree

func _init() -> void:
	var seeds := [1,2,3,42,1001]
	for seed in seeds:
		var result := HistoryGenerator.new().generate(seed)
		print("seed=%d projects=%d scars=%d events=%d errors=%s" % [seed,result.present.civilizational_projects.size(),result.present.civilizational_scars.size(),result.objective_timeline.size(),result.validation_report.errors])
		if not result.validation_report.errors.is_empty():
			for claim in result.historical_claims:
				print(JSON.stringify(claim.to_dict()))
			quit(1)
			return
	print("v4 probe PASS")
	quit()
