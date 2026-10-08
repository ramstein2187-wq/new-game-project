class_name HistoryCivilizationTransition
extends RefCounted
## Bounded Phase B operations, called only by the authoritative HistoryReducer.
const Op = HistoryV6Event.Operation

static func active(s: HistoryWorldState, id: String) -> bool:
	return s.factions.has(id) and s.factions[id].active

static func fact(s: HistoryWorldState, kind: String, id: String, event_id: String) -> void:
	s.fact_events[kind + ":" + id] = event_id
	if kind == "facility":
		var f := s.civilization.facilities[id]
		var quantities := [f.materials, f.equipment, f.records, f.samples, f.salvage, f.survey_records]
		for i in range(6):
			var asset_kind: String = ["materials", "equipment", "genomic_records", "samples", "inert_salvage", "survey_records"][i]
			if quantities[i] > 0 and asset_kind not in f.historical_assets: f.historical_assets.append(asset_kind)

static func evidence_used(s: HistoryWorldState, event: HistoryV6Event, key: String) -> bool:
	var parts := key.split(":")
	if parts.size() != 2: return false
	for e in event.effects:
		if e.operation < Op.DIVIDE_POPULATION: continue
		# Typed references actually read by operations; no blanket chronological cause.
		if parts[1] in [e.subject, e.target, e.location] and parts[0] in ["population", "facility", "project", "scar", "site_owner", "site_condition", "faction"]: return true
		if s.civilization.projects.has(e.subject):
			var p := s.civilization.projects[e.subject]
			if parts[1] == p.site_id and parts[0] in ["facility", "site_condition", "site_owner"]: return true
		if e.operation == Op.CONTEST_CUSTODY or e.operation == Op.SHARE_MAINTENANCE:
			if parts[0] == "relationship" and parts[1] == HistoryWorldState.pair(e.target, e.detail): return true
	return false

static func _damage(s: HistoryWorldState, id: String, event_id: String) -> void:
	var site := s.sites[id]
	var f := s.civilization.facilities[id]
	site.condition = "damaged" if site.condition == "intact" else "ruined"
	site.accessible = site.condition != "ruined"
	f.records = maxi(0, f.records - 1); f.samples = maxi(0, f.samples - 1)
	f.survey_records = maxi(0, f.survey_records - 1)
	f.equipment = maxi(0, f.equipment - 1)
	if site.condition == "ruined":
		site.owner_id = ""
		for artifact in s.artifacts.values():
			if artifact.site_id == id and artifact.status == "held":
				artifact.status = "lost"; artifact.owner_id = ""
				fact(s, "artifact", artifact.id, event_id)
	fact(s, "site_condition", id, event_id); fact(s, "site_owner", id, event_id)
	fact(s, "facility", id, event_id)

static func _loss(s: HistoryWorldState, group: String, amount: int, event_id: String) -> String:
	if not s.populations.has(group) or amount <= 0 or amount >= s.populations[group].size: return "Loss must be explicit and leave a supported group"
	var p := s.populations[group]
	p.size -= amount; s.civilization.losses[p.source_id] += amount
	fact(s, "population", group, event_id)
	return ""

static func _crew(s: HistoryWorldState, site: String, actor: String) -> String:
	for id in s.residents(site, actor):
		if s.populations[id].size > 10: return id
	return ""

static func _scar(s: HistoryWorldState, id: String, kind: String, sites: Array[String], project: String, event_id: String, residue: int, hazard: int) -> void:
	var row := HistoryCivilizationState.Scar.new()
	row.id = id; row.kind = kind; row.sites = sites; row.project_id = project; row.event_id = event_id
	row.locality_id = s.civilization.facilities[sites[0]].locality_id
	row.residue = residue; row.hazard = hazard; s.civilization.scars[id] = row
	s.civilization.localities[row.locality_id].hazard += hazard
	fact(s, "scar", id, event_id)

static func apply(s: HistoryWorldState, e: HistoryV6Event.Effect, event: HistoryV6Event) -> String:
	if s.civilization == null: return "Civilization operation outside Phase B"
	var b := s.civilization
	var eid := event.id
	# Exact six-field grammar, including rejection of unused arguments.
	var allowed: Array[String] = []
	match e.operation:
		Op.DIVIDE_POPULATION: allowed = ["target", "location", "value", "detail"]
		Op.JOIN_POPULATION, Op.ABSORB_FACTION: allowed = ["target"]
		Op.RELOCATE_POPULATION: allowed = ["target", "location"]
		Op.LOSE_POPULATION: allowed = ["value", "detail"]
		Op.CIVIL_SITE_OWNER: allowed = ["target", "detail"]
		Op.BUILD_FACILITY: allowed = ["target", "location", "detail"]
		Op.REPAIR_FACILITY, Op.REPURPOSE_FACILITY: allowed = ["target", "detail"]
		Op.DAMAGE_FACILITY, Op.CLOSE_PASSAGE: allowed = ["detail"]
		Op.RECOVER_MATERIALS, Op.RECOVER_SCAR, Op.GATHER_MATERIALS: allowed = ["target", "value"]
		Op.SHARE_MAINTENANCE, Op.CONTEST_CUSTODY: allowed = ["target", "detail"]
		Op.START_PROJECT: allowed = ["target", "location", "detail"]
		Op.INVEST_PROJECT, Op.PROJECT_ACTOR: allowed = ["target"]
		Op.PROJECT_STATUS: allowed = ["detail"]
		Op.ATTEMPT_PROJECT: allowed = ["value", "detail"]
		Op.RESOLVE_PROJECT: allowed = []
		Op.ORBITAL_IMPACT: allowed = ["target", "value"]
		Op.CASCADE_FAILURE: allowed = ["target", "location"]
		Op.EXODUS_ATTEMPT: allowed = ["target", "value", "detail"]
		Op.TRANSFER_RECORDS: allowed = ["target", "value", "detail"]
		_: return "Unknown civilization operation"
	if (not e.target.is_empty() and "target" not in allowed) or (not e.location.is_empty() and "location" not in allowed) or (e.value != 0 and "value" not in allowed) or (not e.detail.is_empty() and "detail" not in allowed): return "Surplus civilization effect argument"
	if event.reason.is_empty(): return "Civilization event requires a bounded contextual reason"
	match e.operation:
		Op.DIVIDE_POPULATION:
			if s.contains(e.subject) or e.subject in b.retired_populations or not s.populations.has(e.target): return "Population division reference"
			var parent := s.populations[e.target]
			if e.value <= 0 or e.value >= parent.size or not active(s, e.detail) or not b.localities.has(e.location): return "Population division amount/membership"
			if e.detail != parent.faction_id and s.factions[e.detail].parent_id != parent.faction_id: return "Division cannot invent political membership"
			if e.location != parent.site_id and (e.location not in b.localities[parent.site_id].neighbors or not b.localities[e.location].passage_open): return "Division destination disconnected"
			var p := HistoryWorldState.Population.new()
			p.id = e.subject; p.source_id = parent.source_id; p.size = e.value; p.faction_id = e.detail; p.site_id = e.location
			parent.size -= e.value; s.populations[p.id] = p
			b.population_lineage[p.id] = b.population_lineage[parent.id].duplicate(); b.population_lineage[p.id].append(parent.id)
			b.last_moved[p.id] = s.year
			fact(s, "population", p.id, eid); fact(s, "population", parent.id, eid)
		Op.JOIN_POPULATION:
			if e.subject == e.target or not s.populations.has(e.subject) or not s.populations.has(e.target): return "Population merge references"
			var a := s.populations[e.subject]; var z := s.populations[e.target]
			if a.source_id != z.source_id or a.faction_id != z.faction_id or a.site_id != z.site_id: return "Incompatible population merge"
			z.size += a.size
			for ancestor in b.population_lineage[a.id]:
				if ancestor not in b.population_lineage[z.id]: b.population_lineage[z.id].append(ancestor)
			b.population_lineage[z.id].append(a.id); b.retired_populations.append(a.id)
			s.populations.erase(a.id); b.last_moved.erase(a.id)
			fact(s, "population", e.target, eid)
		Op.RELOCATE_POPULATION:
			if not s.populations.has(e.subject) or not active(s, e.target) or not b.localities.has(e.location): return "Relocation references"
			var p := s.populations[e.subject]
			if p.site_id == e.location and p.faction_id == e.target: return "No-op relocation"
			if p.faction_id != e.target and s.factions[e.target].parent_id != p.faction_id and s.relationships.get(HistoryWorldState.pair(p.faction_id, e.target), 0) != 1: return "Membership transfer requires succession or cooperation"
			if p.site_id != e.location:
				if e.location not in b.localities[p.site_id].neighbors or not b.localities[e.location].passage_open: return "Relocation requires an open geographic edge"
				if s.year - b.last_moved.get(p.id, -100) < 30: return "Relocation lacks time to establish a new home"
			p.site_id = e.location; p.faction_id = e.target; b.last_moved[p.id] = s.year
			fact(s, "population", p.id, eid)
			# Losing the last local custodian is an explicit, deterministic consequence.
			for a in s.artifacts.values():
				if a.status == "held" and s.residents(a.site_id, a.owner_id).is_empty():
					a.status = "lost"; a.owner_id = ""; fact(s, "artifact", a.id, eid)
		Op.LOSE_POPULATION:
			if e.detail not in ["expedition_loss", "impact_loss", "launch_loss"]: return "Unsupported population loss cause"
			return _loss(s, e.subject, e.value, eid)
		Op.ABSORB_FACTION:
			if not active(s, e.subject) or not active(s, e.target) or e.subject == e.target: return "Absorption references"
			if s.relationships.get(HistoryWorldState.pair(e.subject, e.target), 0) != 1: return "Absorption requires recorded cooperation"
			var common := false
			for group in s.groups(e.subject):
				if not s.residents(s.populations[group].site_id, e.target).is_empty(): common = true
			if not common: return "Absorption requires shared geography"
			for p in s.populations.values():
				if p.faction_id == e.subject: p.faction_id = e.target; fact(s, "population", p.id, eid)
			for site in s.sites.values():
				if site.owner_id == e.subject: site.owner_id = e.target; fact(s, "site_owner", site.id, eid)
			for a in s.artifacts.values():
				if a.owner_id == e.subject: a.owner_id = e.target; fact(s, "artifact", a.id, eid)
			for p in b.projects.values():
				if p.actor == e.subject and p.status in ["active", "paused"]:
					p.actor = e.target; p.changed = s.year; p.event_ids.append(eid); fact(s, "project", p.id, eid)
			s.factions[e.subject].active = false
			if not b.faction_absorptions.has(e.target): b.faction_absorptions[e.target] = []
			b.faction_absorptions[e.target].append(e.subject); fact(s, "faction", e.subject, eid)
		Op.CIVIL_SITE_OWNER:
			if not s.sites.has(e.subject): return "Unknown facility owner target"
			var site := s.sites[e.subject]
			if site.owner_id == e.target: return "No-op facility occupation"
			if not e.target.is_empty():
				if not active(s, e.target) or s.residents(site.id, e.target).is_empty() or not site.accessible: return "Occupation requires local residents and physical access"
				if not site.owner_id.is_empty() and e.detail not in ["successor", "contest"]: return "Occupied facility requires a political basis"
				if e.detail == "contest" and s.relationships.get(HistoryWorldState.pair(site.owner_id, e.target), 0) != -1: return "Contested custody requires a recorded dispute"
				if e.detail == "successor" and (not s.factions.has(e.target) or s.factions[e.target].parent_id != site.owner_id): return "False successor occupation"
			site.owner_id = e.target; fact(s, "site_owner", site.id, eid)
		Op.BUILD_FACILITY:
			if s.contains(e.subject) or not active(s, e.target) or not b.facilities.has(e.location) or e.detail != "shelter": return "Build reference/function"
			var donor := b.facilities[e.location]
			if s.sites[donor.id].owner_id != e.target or donor.materials < 3 or s.residents(donor.id, e.target).is_empty(): return "Construction lacks actor/materials"
			donor.materials -= 3
			fact(s, "facility", donor.id, eid)
			var site := HistoryWorldState.Site.new(); site.id = e.subject; site.owner_id = e.target; s.sites[site.id] = site
			var f := HistoryCivilizationState.Facility.new(); f.id = site.id; f.locality_id = donor.locality_id
			f.last_work_year = s.year; b.facilities[f.id] = f; fact(s, "facility", f.id, eid)
		Op.REPAIR_FACILITY:
			if not b.facilities.has(e.subject) or not active(s, e.target): return "Repair references"
			var f := b.facilities[e.subject]; var site := s.sites[f.id]
			if site.condition == "intact" or f.materials < 2 or s.residents(site.id, e.target).is_empty() or b.localities[f.locality_id].hazard > 0: return "Repair lacks damage/resources/crew/safe access"
			if not site.owner_id.is_empty() and site.owner_id != e.target: return "Repair lacks custody"
			if f.ancient and e.detail != "structural_only": return "Unknown ancient mechanism cannot be restored"
			if not f.ancient and e.detail != "local_engineering": return "Unsupported repair capability"
			f.materials -= 2; f.last_work_year = s.year
			site.condition = "damaged" if site.condition == "ruined" else "intact"
			site.accessible = true; site.owner_id = e.target
			fact(s, "site_condition", site.id, eid); fact(s, "site_owner", site.id, eid); fact(s, "facility", site.id, eid)
		Op.DAMAGE_FACILITY:
			if not b.facilities.has(e.subject) or s.sites[e.subject].condition == "ruined" or e.detail != "local_failure": return "Unsupported/repeated facility damage"
			_damage(s, e.subject, eid)
		Op.REPURPOSE_FACILITY:
			if not b.facilities.has(e.subject) or not active(s, e.target): return "Reuse references"
			var f := b.facilities[e.subject]
			if not b.physical_access(s, f.id) or s.sites[f.id].owner_id != e.target or f.materials < 1 or s.residents(f.id, e.target).is_empty(): return "Reuse lacks physical facility/custody/materials"
			if e.detail not in ["shelter", "archive", "survey", "launch"] or e.detail == f.function: return "Unsupported/no-op reuse"
			if f.ancient and e.detail != "shelter": return "Ancient observations do not grant functional technology"
			if e.detail == "archive" and f.records + f.samples == 0: return "Archive conversion lacks information/samples"
			if e.detail == "survey" and b.localities[f.locality_id].terrain != "innerworld_entry": return "Survey requires an actual entry"
			if e.detail in ["survey", "launch"] and f.equipment == 0: return "Reuse lacks equipment"
			f.materials -= 1; f.function = e.detail; f.last_work_year = s.year
			if e.detail == "shelter": f.dependency = "" # Structural reuse no longer requires the former process's supply.
			fact(s, "facility", f.id, eid)
		Op.RECOVER_MATERIALS:
			if not b.facilities.has(e.subject) or not active(s, e.target) or e.value <= 0: return "Salvage reference"
			var f := b.facilities[e.subject]
			if s.residents(f.id, e.target).is_empty() or not s.sites[f.id].accessible or b.localities[f.locality_id].hazard > 0 or f.salvage < e.value: return "Salvage requires accessible finite remains"
			f.salvage -= e.value; f.materials += e.value; fact(s, "facility", f.id, eid)
		Op.GATHER_MATERIALS:
			if not b.facilities.has(e.subject) or not active(s, e.target) or e.value <= 0 or e.value > 3: return "Local material gathering reference/quantity"
			var f := b.facilities[e.subject]; var l := b.localities[f.locality_id]
			if s.residents(f.id, e.target).is_empty() or s.sites[f.id].owner_id not in ["", e.target] or (l.hazard > 1 and e.value > 1) or l.available_materials(s.year) < e.value or f.materials + e.value > 6: return "Gathering lacks local access/reserve or exceeds bounded storage"
			l.material_reserve = l.available_materials(s.year) - e.value; l.gathered_year = s.year
			f.materials += e.value; fact(s, "facility", f.id, eid)
		Op.SHARE_MAINTENANCE, Op.CONTEST_CUSTODY:
			if not b.facilities.has(e.subject) or not active(s, e.target) or not active(s, e.detail) or e.target == e.detail: return "Interaction references"
			if s.residents(e.subject, e.target).is_empty() or s.residents(e.subject, e.detail).is_empty(): return "Interaction requires local participants"
			var f := b.facilities[e.subject]; var site := s.sites[f.id]
			var pair := HistoryWorldState.pair(e.target, e.detail)
			if e.operation == Op.SHARE_MAINTENANCE:
				if site.condition != "damaged" or f.materials < 2 or site.owner_id not in [e.target, e.detail] or b.localities[f.locality_id].hazard > 0: return "Cooperation must perform actual shared repair"
				f.materials -= 2; site.condition = "intact"; site.accessible = true; f.last_work_year = s.year
				s.relationships[pair] = 1; fact(s, "facility", f.id, eid); fact(s, "site_condition", f.id, eid)
			else:
				if site.owner_id != e.target or s.relationships.get(pair, 0) == -1 or b.headcount(s, f.locality_id) <= b.localities[f.locality_id].capacity: return "Dispute lacks actual shelter pressure/custody conflict"
				s.relationships[pair] = -1
			fact(s, "relationship", pair, eid)
		Op.START_PROJECT:
			var definition := HistoryCivilizationContent.project(e.detail)
			if definition == null or s.contains(e.subject) or not active(s, e.target) or not b.facilities.has(e.location): return "Project start references"
			var f := b.facilities[e.location]
			if f.ancient or f.function != definition.function or s.sites[f.id].owner_id != e.target or not b.usable(s, f.id): return "Project lacks authored local capability"
			for old in b.projects.values():
				if old.site_id == f.id and old.kind == e.detail: return "Project already attempted at this facility"
			var p := HistoryCivilizationState.Project.new()
			p.id = e.subject; p.kind = e.detail; p.initiator = e.target; p.actor = e.target
			p.site_id = f.id; p.goal = definition.goal; p.started = s.year; p.changed = s.year
			if not b.blockers(s, p).is_empty(): return "Project start has unmet enabling conditions"
			p.event_ids = [eid]; b.projects[p.id] = p; fact(s, "project", p.id, eid)
		Op.INVEST_PROJECT:
			if not b.projects.has(e.subject): return "Unknown investment project"
			var p := b.projects[e.subject]; var f := b.facilities[p.site_id]
			if p.status != "active" or p.actor != e.target or not b.blockers(s, p).is_empty() or f.materials == 0 or p.invested >= HistoryCivilizationContent.project(p.kind).cost: return "Investment lacks current project conditions"
			f.materials -= 1; p.invested += 1; p.changed = s.year; p.event_ids.append(eid)
			fact(s, "facility", f.id, eid); fact(s, "project", p.id, eid)
		Op.PROJECT_STATUS:
			if not b.projects.has(e.subject): return "Unknown lifecycle project"
			var p := b.projects[e.subject]; var blocked := not b.blockers(s, p).is_empty()
			if e.detail == "paused" and (p.status != "active" or not blocked): return "Pause requires an actual blocker"
			elif e.detail == "active" and (p.status != "paused" or blocked): return "Resume requires resolved blockers"
			elif e.detail == "abandoned":
				if p.status != "paused" or s.year - p.changed < 50: return "Abandonment requires sustained obstruction"
				p.outcome = "abandoned"
			elif e.detail not in ["paused", "active", "abandoned"]: return "Unsupported project status"
			p.status = e.detail; p.changed = s.year; p.event_ids.append(eid); fact(s, "project", p.id, eid)
		Op.PROJECT_ACTOR:
			if not b.projects.has(e.subject) or not active(s, e.target): return "Project takeover references"
			var p := b.projects[e.subject]
			if p.status not in ["active", "paused"] or p.actor == e.target or s.sites[p.site_id].owner_id != e.target or s.residents(p.site_id, e.target).is_empty(): return "Takeover lacks actual facility custody"
			p.actor = e.target; p.changed = s.year; p.event_ids.append(eid); fact(s, "project", p.id, eid)
		Op.ATTEMPT_PROJECT:
			if not b.projects.has(e.subject): return "Unknown physical project attempt"
			var p := b.projects[e.subject]; var f := b.facilities[p.site_id]; var d := HistoryCivilizationContent.project(p.kind)
			if p.status != "active" or p.attempted or not b.blockers(s, p).is_empty() or p.invested < d.cost or s.year - p.started < d.minimum_years: return "Physical attempt lacks invested capability/time/access"
			if p.kind == "genome_archive":
				if e.value != 0 or e.detail not in ["bounded_success", "failure"]: return "Invalid archive result"
				if e.detail == "bounded_success":
					p.outcome = "preserved_samples_and_records" if f.samples > 0 and f.records > 0 else ("preserved_records" if f.records > 0 else "preserved_samples")
				else:
					f.samples = 0
					p.outcome = "partial_records" if f.records > 0 else "archival_material_lost"
			elif p.kind == "deep_descent":
				if e.detail not in ["bounded_success", "failure"] or e.value < 0 or e.value > 5: return "Invalid limited survey result"
				p.outcome = "limited_survey_return" if e.detail == "bounded_success" else "entry_loss"
				if e.value > 0:
					var loss_error := _loss(s, _crew(s, f.id, p.actor), e.value, eid)
					if not loss_error.is_empty(): return loss_error
				if e.detail == "bounded_success": f.survey_records += 1 # Field observations, never genomic/ancient knowledge or loot.
				else: f.equipment -= 1; b.localities[f.locality_id].passage_open = false
			else:
				if e.detail not in ["failure", "unknown"] or e.value < 0 or e.value > 5: return "Ark cannot confirm planetary escape"
				if e.value > 0:
					var loss_error := _loss(s, _crew(s, f.id, p.actor), e.value, eid)
					if not loss_error.is_empty(): return loss_error
				f.equipment -= 1
				p.outcome = "launch_failed" if e.detail == "failure" else "launch_result_unknown"
				if e.detail == "failure":
					_damage(s, f.id, eid)
					_scar(s, "exodus_" + p.id, "failed_exodus", [f.id], p.id, eid, 2, 1)
			p.attempted = true; p.changed = s.year; p.event_ids.append(eid)
			fact(s, "project", p.id, eid); fact(s, "facility", f.id, eid)
		Op.RESOLVE_PROJECT:
			if not b.projects.has(e.subject): return "Unknown resolution project"
			var p := b.projects[e.subject]
			if not p.attempted or p.status != "active": return "Resolution requires an actual unresolved attempt"
			p.status = "unknown" if p.outcome == "launch_result_unknown" else ("failed" if p.outcome in ["launch_failed", "entry_loss", "partial_records", "archival_material_lost"] else "completed")
			p.changed = s.year; p.event_ids.append(eid); fact(s, "project", p.id, eid)
		Op.ORBITAL_IMPACT:
			if s.contains(e.subject) or not b.facilities.has(e.target) or e.value not in [1, 2]: return "Invalid observed orbital impact"
			if s.sites[e.target].condition != "ruined": _damage(s, e.target, eid)
			_scar(s, e.subject, "orbital_fall", [e.target], "", eid, 3, e.value)
		Op.CASCADE_FAILURE:
			if s.contains(e.subject) or not b.facilities.has(e.target) or not b.facilities.has(e.location): return "Cascade references"
			if b.facilities[e.location].dependency != e.target or s.sites[e.target].condition != "ruined" or s.sites[e.location].condition == "ruined": return "Cascade requires recorded functional dependency and actual upstream failure"
			_damage(s, e.location, eid)
			_scar(s, e.subject, "infrastructure_cascade", [e.target, e.location], "", eid, 1, 1)
			b.localities[b.facilities[e.location].locality_id].passage_open = false
		Op.EXODUS_ATTEMPT:
			if s.contains(e.subject) or not b.facilities.has(e.target) or e.detail != "physical_launch_failed" or e.value < 1 or e.value > 5: return "Independent exodus requires physical failed launch"
			var f := b.facilities[e.target]; var actor := s.sites[f.id].owner_id
			if f.function != "launch" or f.ancient or f.equipment == 0 or f.materials < 2 or not active(s, actor) or not b.usable(s, f.id): return "Independent exodus lacks actual launch capability/resources"
			var error := _loss(s, _crew(s, f.id, actor), e.value, eid)
			if not error.is_empty(): return error
			f.materials -= 2; f.equipment -= 1; _damage(s, f.id, eid)
			_scar(s, e.subject, "failed_exodus", [f.id], "", eid, 2, 1)
		Op.RECOVER_SCAR:
			if not b.scars.has(e.subject) or not active(s, e.target): return "Scar recovery references"
			var scar := b.scars[e.subject]
			if scar.recovered or e.value <= 0 or e.value > scar.residue or b.headcount(s, scar.locality_id, e.target) < 10: return "Recovery lacks actual residue/local crew"
			var f := b.facilities[scar.sites[0]]
			if f.materials < 1: return "Hazard clearance requires equipment/material support"
			f.materials -= 1; f.materials += e.value; scar.residue -= e.value
			b.localities[scar.locality_id].hazard -= scar.hazard; scar.hazard = 0
			scar.recovered = true; scar.later_events.append(eid)
			if scar.kind == "infrastructure_cascade": b.localities[b.facilities[scar.sites[1]].locality_id].passage_open = true
			fact(s, "scar", scar.id, eid); fact(s, "facility", f.id, eid)
		Op.CLOSE_PASSAGE:
			if not b.localities.has(e.subject) or not b.localities[e.subject].passage_open or e.detail != "observed_entry_failure": return "Passage closure lacks actual open entry"
			b.localities[e.subject].passage_open = false
		Op.TRANSFER_RECORDS:
			if not b.facilities.has(e.subject) or not b.facilities.has(e.target) or e.value <= 0 or e.detail not in ["records", "samples"]: return "Archive material transfer references"
			var a := b.facilities[e.subject]; var z := b.facilities[e.target]
			var actor := s.sites[z.id].owner_id
			if not active(s, actor) or not b.physical_access(s, a.id) or not b.physical_access(s, z.id) or s.residents(a.id, actor).is_empty() or s.residents(z.id, actor).is_empty(): return "Archive transfer requires actual accessible custodians"
			var source_owner := s.sites[a.id].owner_id
			if not source_owner.is_empty() and source_owner != actor and s.relationships.get(HistoryWorldState.pair(source_owner, actor), 0) != 1: return "Record transfer lacks custody or recorded sharing cooperation"
			if e.detail == "records":
				if a.records < e.value: return "No actual records to transfer"
				a.records -= e.value; z.records += e.value
			else:
				if a.samples < e.value: return "No actual samples to transfer"
				a.samples -= e.value; z.samples += e.value
			fact(s, "facility", a.id, eid); fact(s, "facility", z.id, eid)
	return ""
