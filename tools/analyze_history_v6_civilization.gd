extends SceneTree
## Corpus diagnostics and random sample export; never repairs generated results.
var failures: Array[String] = []

func tally(index: Dictionary, key: String, amount: int = 1) -> void: index[key] = index.get(key, 0) + amount

func _init() -> void:
	var count := 1000; var horizon := 600; var limit := 256
	var directory := "res://docs/reviews/history_v6_phase_b"
	var samples := false
	var supplied_samples: Array[int] = []
	for arg in OS.get_cmdline_user_args():
		if arg.begins_with("--count="): count = int(arg.trim_prefix("--count="))
		if arg.begins_with("--horizon="): horizon = int(arg.trim_prefix("--horizon="))
		if arg.begins_with("--limit="): limit = int(arg.trim_prefix("--limit="))
		if arg.begins_with("--output="): directory = arg.trim_prefix("--output=")
		if arg == "--samples": samples = true
		if arg.begins_with("--sample-seeds="):
			for number in arg.trim_prefix("--sample-seeds=").split(","): supplied_samples.append(int(number))
	DirAccess.make_dir_recursive_absolute(directory)
	var selected: Array[int] = []
	if not supplied_samples.is_empty(): selected = supplied_samples
	elif samples:
		var random := RandomNumberGenerator.new(); random.randomize()
		while selected.size() < 20:
			var seed := random.randi_range(100000, 2000000000)
			if seed not in selected: selected.append(seed)
	if not selected.is_empty(): write(directory + "/sample_seeds.json", JSON.stringify(selected))
	var stats := {"version": HistoryCivilizationContent.VERSION, "count": count, "horizon": horizon,
		"safety_limit": limit, "failures": [], "rule_counts": {}, "operation_counts": {}, "reasons": {},
		"initial_factions": {}, "final_factions": {}, "project_outcomes": {}, "project_statuses": {},
		"scar_kinds": {}, "scar_sources": {}, "stop_reasons": {}, "event_counts": {}, "final_years": {},
		"initial_population": 0, "final_population": 0, "lost_population": 0, "enabling_edges": 0,
		"trigger_count": 0, "recovered_scars": 0, "reused_facilities": 0, "all_ruined_worlds": 0,
		"faction_event_deltas": {}, "faction_peak_counts": {}, "faction_minimum_counts": {}, "population_round_trips": 0,
		"structure_signatures": 0, "project_signatures": 0, "manifest_signatures": 0,
		"sample_seeds": selected, "project_duration_range": [1000000, 0], "longest_gap": 0}
	var structures: Dictionary = {}; var project_shapes: Dictionary = {}; var manifests: Dictionary = {}
	for index in range(count + selected.size()):
		var seed: int = index + 1 if index < count else selected[index - count]
		var result := HistoryEngine.new().generate_civilization(seed, horizon, limit)
		var replay := HistoryReducer.new().replay(result.initial, HistoricalEventLog.from_json(result.log.canonical()))
		var manifest := HistoryWorldManifest.build(result)
		var consumer := HistoryWorldManifest.from_json(manifest.canonical())
		if not result.errors.is_empty() or not replay.ok() or replay.state.canonical() != result.final_state.canonical() or not consumer.errors.is_empty():
			failures.append("seed %d: generate=%s replay=%s manifest=%s" % [seed, result.errors, replay.errors, consumer.errors]); continue
		if index >= count:
			write(directory + "/world_%d.json" % seed, JSON.stringify({"history": result.data(), "manifest": manifest.payload}, "\t", true))
			write(directory + "/world_%d.md" % seed, readable(result, manifest))
			continue
		var s := result.final_state; var b := s.civilization
		tally(stats.initial_factions, str(result.initial.active_ids().size())); tally(stats.final_factions, str(s.active_ids().size()))
		tally(stats.stop_reasons, result.stop_reason); tally(stats.event_counts, str(result.log.size())); tally(stats.final_years, str(s.year))
		for size in result.initial.source_totals.values(): stats.initial_population += size
		for p in s.populations.values(): stats.final_population += p.size
		for lost in b.losses.values(): stats.lost_population += lost
		var sequence: Array[String] = []; var previous := 0
		var active := result.initial.active_ids().size(); var peak := active; var minimum := active
		var locations: Dictionary = {}; var earlier: Dictionary = {}
		for p in result.initial.populations.values(): locations[p.id] = p.site_id
		for event in result.log.events():
			tally(stats.rule_counts, event.rule_id); tally(stats.reasons, event.reason)
			stats.enabling_edges += event.cause_ids.size(); stats.trigger_count += event.trigger_keys.size()
			stats.longest_gap = maxi(stats.longest_gap, event.year - previous); previous = event.year
			var delta := 0
			for e in event.effects:
				var operation: String = HistoryV6Event.Operation.keys()[e.operation]
				tally(stats.operation_counts, operation); sequence.append(operation)
				if e.operation == HistoryV6Event.Operation.CREATE_FACTION: delta += 1
				elif e.operation in [HistoryV6Event.Operation.RETIRE_FACTION, HistoryV6Event.Operation.ABSORB_FACTION]: delta -= 1
				if e.operation == HistoryV6Event.Operation.DIVIDE_POPULATION: locations[e.subject] = e.location
				if e.operation == HistoryV6Event.Operation.RELOCATE_POPULATION and locations.get(e.subject, "") != e.location:
					if earlier.get(e.subject, "") == e.location: stats.population_round_trips += 1
					earlier[e.subject] = locations.get(e.subject, ""); locations[e.subject] = e.location
			active += delta; peak = maxi(peak, active); minimum = mini(minimum, active)
			if delta != 0: tally(stats.faction_event_deltas, str(delta))
		tally(stats.faction_peak_counts, str(peak)); tally(stats.faction_minimum_counts, str(minimum))
		var conditions: Array[String] = []; var functions: Array[String] = []; var project_signature: Array[String] = []
		for f in b.facilities.values():
			conditions.append(s.sites[f.id].condition)
			functions.append("%s/%s/%s/%d/%d/%d/%d/%s" % [f.kind, s.sites[f.id].condition, f.function, f.materials, f.equipment, f.records, b.localities[f.locality_id].hazard, str(b.usable(s, f.id))])
		conditions.sort(); functions.sort()
		if conditions.all(func(c: String) -> bool: return c == "ruined"): stats.all_ruined_worlds += 1
		for p in b.projects.values():
			tally(stats.project_statuses, p.kind + "/" + p.status); tally(stats.project_outcomes, p.kind + "/" + p.outcome)
			project_signature.append(p.kind + "/" + p.status + "/" + p.outcome + "/" + str(p.invested))
			stats.project_duration_range[0] = mini(stats.project_duration_range[0], p.changed - p.started)
			stats.project_duration_range[1] = maxi(stats.project_duration_range[1], p.changed - p.started)
		for scar in b.scars.values():
			tally(stats.scar_kinds, scar.kind); tally(stats.scar_sources, "independent" if scar.project_id.is_empty() else "project_derived")
			if scar.recovered: stats.recovered_scars += 1
		for event in result.log.events():
			if event.reason == "facility_reuse": stats.reused_facilities += 1
		project_signature.sort()
		structures[JSON.stringify([sequence, conditions, s.active_ids().size()])] = true
		project_shapes[JSON.stringify(project_signature)] = true
		manifests[JSON.stringify([functions, s.active_ids().size(), project_signature])] = true
		if (index + 1) % 100 == 0: print("Validated %d/%d histories" % [index + 1, count])
	stats.structure_signatures = structures.size(); stats.project_signatures = project_shapes.size(); stats.manifest_signatures = manifests.size()
	stats.failures = failures
	write(directory + "/stats_%d_%d.json" % [count, horizon], JSON.stringify(stats, "\t", true))
	print("Corpus complete: %d failures; %d structures; %d Manifest signatures" % [failures.size(), structures.size(), manifests.size()])
	quit(0 if failures.is_empty() else 1)

func write(path: String, content: String) -> void:
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null: failures.append("Cannot write " + path)
	else: file.store_string(content)

func readable(result: HistoryEngine.Result, manifest: HistoryWorldManifest) -> String:
	var s := result.final_state
	var lines: Array[String] = ["# Random world %d" % result.seed, "", "Content: %s; local clock 0–%d; stop: %s." % [result.content_version, s.year, result.stop_reason], "",
		"Initial: %d fragments of a collapsed regional polity, %d localities, %d facilities, %d population groups." % [result.initial.active_ids().size(), result.initial.civilization.localities.size(), result.initial.sites.size(), result.initial.populations.size()], "",
		"## 초기 인구와 시설", "", "| 집단 | 출처 / 소속 | 지역 | 인구 |", "| --- | --- | --- | --- |"]
	for p in result.initial.populations.values(): lines.append("| %s | %s / %s | %s | %d |" % [p.id, p.source_id, p.faction_id, p.site_id, p.size])
	lines.append_array(["", "| 초기 시설 | 지역 / 점유자 | 상태 / 기능 | 자재 / 장비 / 유전체 기록 / 샘플 |", "| --- | --- | --- | --- |"])
	for f in result.initial.civilization.facilities.values():
		var physical := result.initial.sites[f.id]
		lines.append("| %s | %s / %s | %s / %s | %d / %d / %d / %d |" % [f.id, f.locality_id, physical.owner_id, physical.condition, f.function, f.materials, f.equipment, f.records, f.samples])
	lines.append_array(["", "## Chronological objective record", "", "| Year | Event | Action and condition | Explicit enabling sources |", "| --- | --- | --- | --- |"])
	for event in result.log.events():
		var actions: Array[String] = []
		for e in event.effects:
			actions.append(describe(e))
		lines.append("| %d | %s | %s: %s | %s |" % [event.year, event.id, event.reason, "; ".join(actions), ", ".join(event.cause_ids)])
	lines.append_array(["", "## Political lineage", ""])
	for f in manifest.payload.factions: lines.append("- %s: formation=%s; absorbed=%s; active=%s; need=%s." % [f.id, f.predecessors, f.absorbed_contributors, f.active, f.current_need])
	lines.append_array(["", "## Persistent Projects", ""])
	for p in manifest.payload.projects: lines.append("- %s %s: %s → %s; %d–%d; %s / %s; invested=%d; blockers=%s; events=%s." % [p.id, p.kind, p.initiator, p.actor, p.started, p.changed, p.status, p.outcome, p.invested_materials, p.blockers, p.provenance])
	lines.append_array(["", "## Scars and later effects", ""])
	for scar in manifest.payload.scars: lines.append("- %s %s: sites=%s, actual residue=%d, hazard=%d, project=%s; source=%s; later=%s." % [scar.id, scar.kind, scar.sites, scar.actual_residue, scar.hazard, scar.project_id, scar.event_id, scar.later_events])
	lines.append_array(["", "## Present World Manifest", "", "| Facility / locality | Owner | Condition / access | Function / usable | Assets | Hazard / provenance |", "| --- | --- | --- | --- | --- | --- |"])
	for f in manifest.payload.facilities:
		var assets: Array[String] = []
		for a in f.assets:
			if a.actual_quantity > 0: assets.append("%s=%d" % [a.kind, a.actual_quantity])
		lines.append("| %s / %s | %s | %s / %s | %s / %s | %s | %d / %s |" % [f.id, f.locality_id, f.owner_id, f.condition, f.accessible, f.local_function, f.function_usable, ", ".join(assets), f.hazard, f.provenance])
	lines.append_array(["", "## 현재 지리와 접근", "", "| 지역 / 지형 | 연결 | 인구 / 수용량 | 위험 / 통행 | 수급 가능한 자재 |", "| --- | --- | --- | --- | --- |"])
	for l in manifest.payload.localities: lines.append("| %s / %s | %s | %d / %d | %d / %s | %d |" % [l.id, l.terrain, ", ".join(l.neighbors), l.population, l.capacity, l.hazard, l.passage_open, l.gatherable_materials])
	lines.append_array(["", "명시적 인구 손실: " + JSON.stringify(manifest.payload.losses), "", "실제 물건 보관과 생존 가능성:", ""])
	for a in manifest.payload.objects: lines.append("- %s: 장소=%s, 보관자=%s, 실제 존재 확인=%s, 생존 가능=%s, 장치 작동 확인=false." % [a.id, a.site_id, a.owner_id, a.actually_present, a.possible_survival])
	lines.append_array(["", "Lost objects remain possible survivors; they are not confirmed loot. Ancient mechanisms remain unverified and inoperable.", "", "Review annotations and interesting connections are recorded in the corpus report after reading this sample. No gameplay test is implied.", ""])
	return "\n".join(lines)

func describe(e: HistoryV6Event.Effect) -> String:
	const Op = HistoryV6Event.Operation
	match e.operation:
		Op.CREATE_FACTION: return "%s에서 새 정치조직 %s 형성" % [e.target, e.subject]
		Op.RETIRE_FACTION: return "%s 은퇴: 인구 재배분 완료" % e.subject
		Op.SPEND_SPLIT_CAPACITY: return "%s의 조직 분리 여력 소모" % e.subject
		Op.DIVIDE_POPULATION: return "%s에서 %d명을 분리해 %s로 기록, %s 거주/%s 소속" % [e.target, e.value, e.subject, e.location, e.detail]
		Op.JOIN_POPULATION: return "%s를 같은 출처·거주지·소속의 %s와 통합" % [e.subject, e.target]
		Op.RELOCATE_POPULATION: return "%s의 거주지/소속을 %s/%s로 변경" % [e.subject, e.location, e.target]
		Op.ABSORB_FACTION: return "협력 관계의 %s를 %s가 흡수; 인구·소유·관리 이관" % [e.subject, e.target]
		Op.CIVIL_SITE_OWNER: return "%s 점유자: %s" % [e.subject, e.target if not e.target.is_empty() else "없음(유기)"]
		Op.BUILD_FACILITY: return "%s 자재로 %s에 독립 피난처 %s 건설" % [e.target, e.location, e.subject]
		Op.REPAIR_FACILITY: return "%s가 %s 구조를 자재로 복구(%s); 장비·기록은 재생되지 않음" % [e.target, e.subject, e.detail]
		Op.REPURPOSE_FACILITY: return "%s가 %s의 용도를 %s로 전환" % [e.target, e.subject, e.detail]
		Op.RECOVER_MATERIALS: return "%s가 %s의 확인된 잔존물에서 자재 %d 회수" % [e.target, e.subject, e.value]
		Op.GATHER_MATERIALS: return "%s가 지역 공급에서 자재 %d를 수급해 %s에 보관" % [e.target, e.value, e.subject]
		Op.TRANSFER_RECORDS: return "%s에서 %s로 %s %d 이전(실제 보관권 확인)" % [e.subject, e.target, e.detail, e.value]
		Op.SHARE_MAINTENANCE: return "%s/%s가 %s를 자재로 공동 복구; 협력 기록" % [e.target, e.detail, e.subject]
		Op.CONTEST_CUSTODY: return "%s/%s의 %s 점유권 분쟁: 실제 거주·피난처 압박" % [e.target, e.detail, e.subject]
		Op.START_PROJECT: return "%s가 %s에서 %s 사업 %s 승인/시작" % [e.target, e.location, e.detail, e.subject]
		Op.INVEST_PROJECT: return "%s가 %s에 실제 자재 1단위 투자" % [e.target, e.subject]
		Op.PROJECT_ACTOR: return "%s의 현재 관리 주체를 실제 점유자 %s로 인계" % [e.subject, e.target]
		Op.PROJECT_STATUS: return "%s 상태를 %s로 변경(현재 조건 검증)" % [e.subject, e.detail]
		Op.ATTEMPT_PROJECT: return "%s의 실제 보존/진입/발사 시도: %s, 기록된 인구 손실 %d" % [e.subject, e.detail, e.value]
		Op.RESOLVE_PROJECT: return "%s의 실제 시도 결과를 사업 종결 상태에 반영" % e.subject
		Op.ORBITAL_IMPACT: return "%s에 궤도 잔해 낙하 관측: %s, 위험 %d; 운영 의도 미상" % [e.target, e.subject, e.value]
		Op.DAMAGE_FACILITY: return "%s의 국지적 장애/손상; 실제 자산 손실" % e.subject
		Op.CASCADE_FAILURE: return "%s의 확인된 기능 의존 시설 %s에 장애 전파: %s" % [e.target, e.location, e.subject]
		Op.EXODUS_ATTEMPT: return "%s에서 독립적 물리 발사 실패: %s, 인구 손실 %d" % [e.target, e.subject, e.value]
		Op.RECOVER_SCAR: return "%s가 %s의 실제 잔존물 %d 회수·위험 제거" % [e.target, e.subject, e.value]
	return HistoryV6Event.Operation.keys()[e.operation] + " " + e.subject
