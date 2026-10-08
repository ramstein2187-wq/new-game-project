"""Synthetic authored v5 facts and archaeology grammar; no external lore dataset."""
import copy,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
old=json.loads((ROOT/'content/history/history_v4.json').read_text())
data=copy.deepcopy(old);data['revision']='history-v5-authored-1'
projects={p['id']:p for p in data['projects']}
events={e['id']:e for e in data['events']}
trace_rows='''launch_memorial|Launch memorial|institutional|ark
selection_register|Departure selection register|documentary|ark
launch_cradle|Damaged launch cradle|physical|ark
guidance_log|Guidance capture log|documentary|ark
vessel_fragment|Recovered vessel fragment|physical|ark
departure_tracking|Interrupted departure tracking|documentary|ark
descent_staging|Limited descent staging works|physical|deep
shaft_gate|Sealed expedition shaft|physical|deep
expedition_register|Final expedition register|documentary|deep
depth_measurements|Incomplete depth measurements|documentary|deep
expedition_taboo|Expedition access compact|institutional|deep
survivor_station|Return and treatment station|physical|deep
sky_receiver|Far-Sky receiver tower|physical|sky
signal_log|Signal and silence log|documentary|sky
array_alignment|Array alignment instruments|physical|sky
listening_calendar|Observation calendar|documentary|sky
array_access|Listening station access charter|institutional|sky
genome_registry|Genetic sample registry|documentary|genome
preservation_chamber|Sample preservation chamber|physical|genome
viability_log|Preservation viability measurements|documentary|genome
sample_custody|Sample custody agreement|institutional|genome
archive_cooling|Archive cooling junction|physical|genome
neural_interface|Human neural interface|physical|cortical
linked_cohort_register|Linked human cohort registry|documentary|cortical
computation_lattice|Parallel cortical network|physical|cortical
computation_log|Computation measurements|documentary|cortical
network_consent|Neural network consent record|institutional|cortical
reference_stone|Survey reference stone|physical|meridian
survey_tower|Geodetic survey tower|physical|meridian
conflicting_maps|Conflicting reference-frame maps|documentary|meridian
survey_standard|Survey standard charter|institutional|meridian
survey_measurements|Triangulation measurements|documentary|meridian
emulation_bench|Simple machine emulation bench|physical|mind
prototype_telemetry|Autonomous prototype telemetry|documentary|mind
repair_unit|Constructed self-repair unit|living|mind
learning_log|Distributed learning observations|documentary|mind
prototype_access|Prototype isolation agreement|institutional|mind
resource_hypothesis|Resource requirement study|documentary|simplification
consent_registry|Developmental program consent registry|institutional|simplification
developmental_lab|Developmental trial equipment|physical|simplification
generation_measurements|Multi-generation capacity measurements|documentary|simplification
cohort_institution|Human cohort support institution|living|simplification
aging_district|Aging settlement care district|physical|reproduction
birth_registry|Multi-generation birth registry|documentary|reproduction
care_compact|Surviving-household care compact|institutional|reproduction
empty_habitation|Empty previously inhabited quarter|physical|disappearance
missing_census|Interrupted resident census|documentary|disappearance
missing_residents_memorial|Missing residents memorial|institutional|disappearance
disconnected_network|Disconnected neural works|physical|fracture
fragmented_shared_records|Incompatible shared records|documentary|fracture
fragmented_council|Fractured cohort institutions|institutional|fracture
retreat_clinic|Cognitive redesign clinic|physical|chosen
retreat_measurements|Consenting cohort measurements|documentary|chosen
consent_compact|Recorded voluntary redesign compact|institutional|chosen
coercion_facility|Forced developmental intervention facility|physical|imposed
treatment_order|Signed biological intervention order|documentary|imposed
target_register|Registered targeted human cohort|documentary|imposed
coercion_enforcement|Coercive cohort institution|institutional|imposed
service_junction|Damaged service dependency junction|physical|infrastructure
cascade_log|Dependent service failure log|documentary|infrastructure
service_workers|Displaced service-worker institution|institutional|infrastructure
destroyed_district|Destroyed targeted dwellings|physical|extermination
killing_order|Recorded removal and killing order|documentary|extermination
survivor_registry|Targeted survivors registry|institutional|extermination
altered_workplace|Workplace adapted to changed human morphology|physical|alteration
regional_biology|Regional morphology observations|documentary|alteration
adapted_community|Authorized human variation community|living|alteration
occupied_machine_works|Occupied autonomous works|physical|autonomy
command_telemetry|Autonomous behavior telemetry|documentary|autonomy
machine_safety_compact|Human machine-safety compact|institutional|autonomy
integration_machinery|Irreversible body-network linkage machinery|physical|assimilation
linkage_measurements|Bodily and behavioral linkage observations|documentary|assimilation
network_households|Network-dependent human households|living|assimilation
abandoned_habitat|Enduring hazardous former habitat|physical|habitat
hazard_survey|Regional habitability survey|documentary|habitat
evacuation_register|Displaced residents registry|institutional|habitat
credential_gate|Credential-locked former civic facility|physical|severance
broken_civic_archive|Conflicting identity and ownership archives|documentary|severance
succession_petition|Unresolved civic succession petition|institutional|severance
impact_belt|Matched orbital impact belt|physical|orbit
reentry_log|Tracked artificial-object descent log|documentary|orbit
wreckage_site|Wreckage-built surviving worksite|institutional|orbit
abandoned_office|Abandoned political offices|physical|politics
civic_charter|Recorded civic founding charter|documentary|politics
border_works|Old political boundary works|physical|politics
merged_archives|Merged civic archives|documentary|politics
migration_register|Registered population arrival|documentary|migration
arrival_compact|Newcomer settlement compact|institutional|migration
ancestral_site|Recorded former homeland site|physical|homeland
homeland_register|Evacuation and homeland register|documentary|homeland
clone_register|Authorized clone cohort registry|documentary|clone
clone_status_law|Clone civic status institution|institutional|clone
maintenance_site|Machine maintenance worksite|physical|machine
maintenance_compact|Current machine maintenance compact|institutional|machine
lost_deep_home|Evacuated human Deep residence|physical|residence
deep_home_register|Former Deep residence records|documentary|residence
reuse_layers|Inhabited repurposed ruin layers|physical|reuse
reuse_custody|Ruin reuse access rights|institutional|reuse
trade_receipt|Recorded exchange and route receipts|documentary|trade
old_route|Surviving trade route markers|physical|trade'''
traces=[]
family_by_category={'physical':['exploration','hazardous_traversal','technical_inspection','artifact_comparison','escort_recovery','destruction_preservation'], 'documentary':['technical_inspection','negotiation','trade','theft','faction_access','evidence_disclosure'], 'institutional':['negotiation','faction_access','custody_choice','evidence_disclosure'], 'living':['biological_inspection','machine_interaction','escort_recovery','negotiation']}
by_theme={}
for row in trace_rows.splitlines():
    key,title,category,theme=row.split('|');families=family_by_category[category][:]
    if theme in ['meridian','trade','habitat','residence']: families+=['map_comparison']
    if theme in ['genome','simplification','chosen','imposed','alteration','clone','assimilation','reproduction']: families+=['biological_inspection']
    if theme in ['mind','autonomy','machine','cortical','infrastructure','sky']: families+=['repair_reactivation','machine_interaction','controlled_activation']
    if category=='physical': families+=['combat','stealth','environmental_manipulation']
    traces.append(dict(id=key,display_name=title,category=category,theme=theme,interaction_families=sorted(set(families)),tags=[category,theme],current_state='surviving_evidence',source_semantics='actual_authored_material_observation'))
    by_theme.setdefault(theme,[]).append(key)
project_themes=dict(zip(projects,['ark','deep','sky','genome','cortical','meridian','mind','simplification']))
scar_themes=dict(zip([s['id'] for s in data['scars']],['ark','deep','reproduction','disappearance','fracture','chosen','imposed','infrastructure','extermination','alteration','autonomy','assimilation','habitat','severance','orbit']))
phase_texts={
'genome_archive_project':['Named samples received stable registry identifiers and storage custody.','Preservation trials measured viability losses under defined storage conditions.','Insulated sample chambers and their cooling junctions were assembled.','Operators recorded recurring viability checks and replacement of failed seals.'],
'cortical_array':['Interface experiments recorded signal transfer between human neural tissue and instruments.','Registered human participants were connected under recorded consent arrangements.','Parallel cortical links were assembled and tested for signal routing.','The linked human network performed repeated measured computation; individual survival and one consciousness remain unknown.'],
'meridian_project':['Surveyors issued initial measurement standards and jurisdiction for the survey.','Reference stones were laid out as a measured coordinate network.','Survey towers and geodetic observation instruments were erected.','Measured coordinates were compared with historical maps; discrepancies retain error, reference-frame and geological possibilities.'],
'second_mind_project':['Technicians logged recovered machine behavior without identifying its intention.','Simple emulations reproduced a limited subset of those observed responses.','A constructed prototype performed unsupervised actions in recorded trials.','The prototype repaired measured local damage and changed part of its structure.','Distributed trials recorded newly learned behavior and persistence without supervision; consciousness remains unknown.'],
'adaptive_simplification_program':['Resource studies proposed reduced developmental demands as a human adaptation.','A human participant registry recorded explicit consent to developmental trials.','Biological trials recorded bounded changes in development and cognitive tasks.','Longitudinal human cohort measurements recorded changes across multiple generations.'],
'ark_project':['Feasibility studies compared propulsion limits and candidate departure paths.','The authority commissioned an Ark and named its limited departure goal.','Selection officers registered candidates under the recorded policy.','A launch vessel and its staging cradle were assembled.','Launch instruments recorded the actual liftoff or its physical absence.'],
'deep_descent_project':['Survey teams measured shallow access and identified the limits of existing shafts.','The authority commissioned a bounded descent campaign.','Engineers assembled limited staging works and expedition access controls.','Successive expeditions carried instruments below the known staging boundary.'],
'deep_space_listening_array':['Astronomical instruments measured candidate sky directions.','Recorded councils disputed which observations justified construction.','Receivers and alignment instruments were assembled into the Far-Sky Array.','Operators activated the completed array and logged its first observation interval.']}
def material_record(key,items):
    return {'record_type':'observation','record_id':'v5_materials__'+key,'target':'facility','facts':{'observed_materials':items,'historical_observation':True,'hidden_origin':'unknown'}}
for key,p in projects.items():
    theme=project_themes[key];pool=by_theme[theme]
    for i,stage in enumerate(p['stages']):
        e=events[stage];texts=phase_texts[key];e['narrative']=texts[min(i,len(texts)-1)]
        e['records'].append({'record_type':'observation','record_id':'v5_phase__'+stage,'target':'facility','facts':{'documented_step':stage,'new_state':e['narrative']}})
        e['records'].append(material_record(stage,[pool[i%len(pool)],pool[(i+1)%len(pool)]]))
    for ending in p['outcomes']:
        last=events[ending[-1]]
        if last['category']!='scar':
            last['records'].append(material_record(last['id'],[pool[-1],pool[0]]))
            if last['id'].startswith(key):
                status=last['id'].removeprefix(key+'_').replace('_',' ')
                last['narrative']=f"{p['display_name']} entered its recorded {status} state; inspection preserved its limited result and remaining uncertainty."
for scar in data['scars']:
    pool=by_theme[scar_themes[scar['id']]]
    for variant in scar['variants']:
        for i,stage in enumerate(variant['stages']):
            events[stage]['records'].append(material_record(stage,[pool[i%len(pool)],pool[(i+1)%len(pool)]]))

episode_text={
'acute_breakdown':['Local service damage was observed in the recorded locality.','Dependent services failed before repair crews could restore their connections.'],
'managed_retreat':['Eastern districts were evacuated under recorded retreat arrangements.','Essential offices remained functional after the evacuation; this episode did not terminate the polity.'],
'political_bifurcation':['Rival administrations began issuing overlapping civic decisions.','Competing offices coexisted; their later political fate is not explained by this episode.'],
'slow_erosion':['Maintenance intervals lengthened and access to peripheral districts declined.','Repeated inspections recorded gradual loss of service reach while central institutions persisted.'],
'partial_stabilization':['Repair crews restored a bounded set of affected services.','Recorded measurements confirmed partial stabilization without explaining later political changes.'],
'displacement':['Residents moved away from the affected locality under documented access limits.','Receiving districts rebuilt limited infrastructure; no complete population fate is inferred.']}
for kind,texts in episode_text.items():
    for i,text in enumerate(texts):
        key=f'episode_{kind}_{i}'
        data['events'].append(dict(id=key,narrative=text,category='phase',domain='human',gate='none',requires=[],records=[{'record_type':'episode','record_id':key,'target':'participant','facts':{'episode_kind':kind,'observation':text,'regional_collapse':False}},material_record(key,['service_junction','cascade_log'] if kind in ['acute_breakdown','partial_stabilization','slow_erosion'] else ['migration_register','arrival_compact'] if kind in ['managed_retreat','displacement'] else ['merged_archives','civic_charter'])]))
data['episode_kinds']=list(episode_text)
ordinary={
'local_successor':['civic_charter','abandoned_office','border_works'], 'enclave_survives':['civic_charter','border_works','arrival_compact'], 'political_split':['border_works','civic_charter','succession_petition'], 'political_merge':['merged_archives','civic_charter','abandoned_office'], 'political_reorganization':['abandoned_office','merged_archives','civic_charter'], 'newcomer_entry':['migration_register','arrival_compact','old_route'], 'population_migration':['migration_register','old_route','arrival_compact'], 'population_join':['migration_register','arrival_compact','merged_archives'], 'political_extinction':['abandoned_office','broken_civic_archive','border_works'], 'collapse':['abandoned_office','broken_civic_archive','civic_charter'], 'site_reuse':['reuse_layers','reuse_custody','abandoned_office'], 'border_dispute':['border_works','succession_petition'], 'trade_reopening':['trade_receipt','old_route'], 'local_alliance':['civic_charter','trade_receipt'], 'maintenance_accord':['maintenance_site','maintenance_compact'], 'recent_rivalry':['border_works','succession_petition'], 'history_custody':['sample_custody','reuse_custody']}
social={'cloning':['clone_register','clone_status_law','genome_registry'],'deep':['lost_deep_home','deep_home_register','expedition_taboo'],'homeland':['ancestral_site','homeland_register','evacuation_register'],'machine':['maintenance_site','maintenance_compact','command_telemetry'],'biotechnology':['regional_biology','generation_measurements','developmental_lab'],'stewardship':['civic_charter','merged_archives','reuse_custody']}
question_rows='''departure_loss|What stopped this departure attempt?|ark|recoverable_fact
departure_selection|Who was admitted to the departure program?|ark|recoverable_fact
deep_final_expedition|What happened to the final Deep expedition?|deep|open_mystery
deep_access|Which staging works can safely be approached?|deep|recoverable_fact
sky_signal|What do the preserved Far-Sky observations establish?|sky|open_mystery
genome_custody|Who has custody of the preserved genetic samples?|genome|contested_interpretation
genome_viability|Which preservation procedure was actually tested?|genome|recoverable_fact
linked_identity|Were the linked participants still individual people?|cortical|open_mystery
computation_scope|What computation did the human network perform?|cortical|recoverable_fact
maps_disagree|Why do the reference-frame maps disagree?|meridian|open_mystery
survey_route|Which reference markers support a safer survey route?|meridian|recoverable_fact
constructed_machine|What behavior did humans actually construct and measure?|mind|recoverable_fact
machine_personhood|Does the prototype have consciousness or continuity?|mind|open_mystery
program_consent|What consent did the developmental registry record?|simplification|recoverable_fact
degeneration_evaluation|How should the measured human changes be judged?|simplification|contested_interpretation
reproduction_loss|What establishes the generation-scale loss of reproduction?|reproduction|recoverable_fact
resident_disappearance|Did these residents leave, die or disappear?|disappearance|open_mystery
fractured_cognition|What persisted after the shared network fragmented?|fracture|open_mystery
chosen_limits|What biological choice was actually consented to?|chosen|recoverable_fact
coercive_responsibility|Who authorized this coercive biological program?|imposed|recoverable_fact
coercive_custody|Who should receive the surviving coercion records?|imposed|contested_interpretation
service_dependency|Which failed junction controlled access to other services?|infrastructure|recoverable_fact
targeted_policy|Which authorities ordered the recorded removal and killings?|extermination|recoverable_fact
altered_humans|What human morphological changes were observed?|alteration|recoverable_fact
autonomous_damage|Did machinery act under command or autonomously?|autonomy|open_mystery
irreversible_linkage|Which bodily and social links became irreversible?|assimilation|recoverable_fact
lost_habitat|Which hazards made the former habitat unusable?|habitat|recoverable_fact
civic_identity|Can the conflicting civic credentials establish an original title?|severance|contested_interpretation
orbital_objects|Was the falling wreckage part of actual artificial orbital objects?|orbit|recoverable_fact
orbital_operator|Who caused these objects to descend?|orbit|open_mystery
legal_successor|Is the present polity an institutional heir?|politics|contested_interpretation
fragmented_archive|Why are fragments of civic archives held under different rights?|politics|contested_interpretation
old_boundary|Which surviving works mark the recorded older boundary?|politics|recoverable_fact
arrival_membership|What membership did the arrival compact grant?|migration|recoverable_fact
former_homeland|Where did displaced households formerly reside?|homeland|recoverable_fact
clone_status|What status did registered clone-born humans receive?|clone|contested_interpretation
maintenance_rights|Who may inspect or maintain the recorded machinery?|machine|contested_interpretation
failed_deep_home|What is known about the evacuated Deep residence?|residence|open_mystery
reuse_rights|Which recorded access rights attach to the repurposed ruin?|reuse|contested_interpretation
old_trade_route|Which route evidence could support reopening travel?|trade|recoverable_fact'''
questions=[]
for row in question_rows.splitlines():
    key,text,theme,kind=row.split('|');questions.append(dict(id=key,text=text,theme=theme,classification=kind,min_evidence=3,max_evidence=5,conclusion_policy='source_facts_only',remaining_uncertainty='Evidence does not settle unrecorded motives, missing originals or reserved Canon.'))
hook_rows={
'exploration':['survey_ruin','find_sealed_entrance','follow_old_border','scout_abandoned_quarter'],
'hazardous_traversal':['traverse_shaft','cross_impact_belt','isolate_damaged_junction'],
'combat':['secure_defense_position','protect_recovery_party','cross_contested_site'],
'stealth':['enter_restricted_archive','evade_site_patrol','duplicate_record_unnoticed'],
'repair_reactivation':['restore_reader_power','repair_reading_head','patch_local_sensor'],
'technical_inspection':['read_telemetry','inspect_service_dependency','verify_interface','read_guidance_log'],
'biological_inspection':['compare_generational_measures','analyze_preserved_sample','verify_genetic_registry'],
'map_comparison':['triangulate_reference_frames','compare_conflicting_charts','trace_historical_boundary'],
'artifact_comparison':['match_wreck_fragments','compare_civic_seals','align_archive_fragments'],
'negotiation':['petition_archive_custodian','negotiate_cohort_consent','arbitrate_access_dispute'],
'trade':['barter_archive_fragment','buy_route_records','exchange_protected_copies'],
'theft':['steal_restricted_register','extract_guarded_telemetry'],
'faction_access':['earn_archive_permit','return_ancestral_object'],
'escort_recovery':['escort_record_specialist','carry_fragile_sample','recover_exposed_register'],
'environmental_manipulation':['drain_document_chamber','stabilize_ventilation','redirect_local_service'],
'machine_interaction':['challenge_machine_handshake','listen_to_machine_passively','isolate_command_interface'],
'custody_choice':['register_exclusive_custody','share_archive_custody','contest_custody_rights'],
'destruction_preservation':['stabilize_fragile_evidence','seal_evidence_in_place','dismantle_evidence_hazard'],
'controlled_activation':['run_limited_array_test','test_bounded_emulation','cycle_isolated_junction'],
'evidence_disclosure':['publish_policy_evidence','redact_personal_identifiers','share_corroborated_dossier']}
required={'combat':['hostile_occupants','combat_ready'],'stealth':['restricted_access','stealth_ready'],'technical_inspection':['technical_tools'],'biological_inspection':['biological_tools','consent_or_record_access'],'repair_reactivation':['repair_tools','safe_isolation'],'controlled_activation':['technical_tools','safe_isolation'],'machine_interaction':['safe_isolation'],'environmental_manipulation':['environmental_tools'],'hazardous_traversal':['traversal_equipment'],'negotiation':['dialogue_access'],'trade':['trade_access'],'theft':['restricted_access','theft_ready'],'faction_access':['faction_contact'],'escort_recovery':['recovery_equipment'],'custody_choice':['custody_authority'],'destruction_preservation':['evidence_handling_tools'],'evidence_disclosure':['disclosure_channel']}
hooks=[]
for family,variants in hook_rows.items():
    for key in variants:
        hooks.append(dict(id=key,interaction_type=family,required_runtime_tags=required.get(family,[]),possible_access_modes=['authorized','negotiated','contested'] if family not in ['theft','stealth'] else ['covert'],information_gain='source_assertions_only',world_action_hooks=['record_evidence','propose_permission'],description=key.replace('_',' '),ethical_answer=None))
actions='''new_location_access|Access another recorded context
safer_route|Plan a route from corroborated measurements
hazard_prediction|Use the observed hazard to plan traversal
machine_bypass|Request bypass of a local machine interface
facility_activation|Propose a bounded local activation
facility_shutdown|Propose isolation of a local facility
dialogue_evidence|Present corroborated evidence in faction dialogue
challenge_claim|Challenge a current interpretation with source facts
support_claim|Support a current claim within recorded limits
reveal_custody|Reveal an actual custody record
transfer_archive|Choose an archive recipient
destroy_evidence|Choose to destroy a recovered evidence object
preserve_evidence|Choose to preserve a recovered evidence object
technical_procedure|Use a procedure that is actually recorded
usable_machinery|Identify machinery for current inspection
material_recipient|Choose who receives recovered material
alter_access_rights|Propose changing current access rights
expose_responsibility|Disclose recorded historical responsibility
keep_information_secret|Keep learned evidence private
reopen_site|Propose reopening a recorded site
seal_site|Propose sealing a recorded site'''
action_rows=[dict(id=k,description=t,requires_corroboration=True,world_mutation='consumer_proposal_only',historical_truth_mutation=False) for k,t in (r.split('|') for r in actions.splitlines())]
arch=dict(revision='history-v5-archaeology-1',traces=traces,questions=questions,interactions=hooks,actions=action_rows,ordinary_sources=ordinary,social_sources=social)
# Revision2: stage manifests are authored observations, never a theme carousel.
data['revision']='history-v5-authored-2'
arch['revision']='history-v5-archaeology-2'
extra_rows='''cohort_register|Registered historical human cohort|documentary|population
prior_dwellings|Previously inhabited registered dwellings|physical|population
basis_record|Recorded physical basis and its limits|documentary|basis
custody_register|Custody of surviving records and access|institutional|custody
maintenance_roster|Human service-duty agreement|institutional|politics
inspection_log|Bounded local inspection measurements|documentary|infrastructure
arrival_register|Population entry and receiving-community register|documentary|migration
arrival_houses|Recorded receiving-community dwellings|physical|migration
human_oversight|Human oversight of recorded machine risks|institutional|autonomy
clone_equipment|Recovered cloning equipment|physical|genome
biotech_equipment|Recovered local biological testing equipment|physical|alteration
occupied_deep_home|Documented inhabited Deep residence|physical|residence
discovery_object|Observed unresolved object or structure|physical|discovery
discovery_record|Recorded discovery observations and limits|documentary|discovery
discovery_access|Custodian of an unresolved discovery record|institutional|discovery'''
for row in extra_rows.splitlines():
    key,title,category,theme=row.split('|')
    traces.append(dict(id=key,display_name=title,category=category,theme=theme,tags=[category,theme],current_state='surviving_evidence',source_semantics='actual_authored_material_observation',interaction_families=[]))
trace_by_id={t['id']:t for t in traces}
linkage=dict(id='linkage_institution',display_name='Recorded irreversible human-network institution',category='institutional',theme='assimilation',tags=['institutional','assimilation'],current_state='surviving_evidence',source_semantics='actual_authored_material_observation',interaction_families=[])
traces.append(linkage);trace_by_id[linkage['id']]=linkage
# These names attest only to the state actually described by their sources.
for key,title in {'launch_cradle':'Recorded launch staging works','depth_measurements':'Recorded bounded depth measurements','expedition_taboo':'Recorded expedition access register','array_access':'Recorded array operation access','sample_custody':'Recorded genetic sample custody','birth_registry':'Longitudinal reproduction measurements','missing_residents_memorial':'Missing residents record institution','cohort_institution':'Human cohort support institution','repair_unit':'Constructed self-repair prototype evidence','service_junction':'Recorded service junction','cascade_log':'Recorded dependent service failures','migration_register':'Recorded population movement','arrival_compact':'Recorded newcomer settlement formation','broken_civic_archive':'Interrupted or conflicting civic records','succession_petition':'Recorded succession or boundary dispute','maintenance_compact':'Recorded human-machine cooperation compact','wreckage_site':'Surviving orbital wreckage remains'}.items():
    trace_by_id[key]['display_name']=title
for key,title in {'guidance_log':'Departure engineering and guidance records','prototype_telemetry':'Machine study and prototype telemetry','shaft_gate':'Recorded expedition shaft access structure','survivor_station':'Recorded expedition staging remains','prior_dwellings':'Previously occupied community sites','service_workers':'Recorded service-loss and displaced-household institutions'}.items():trace_by_id[key]['display_name']=title

phase_materials={
'exodus_feasibility_study':['guidance_log'], 'ark_project':['launch_memorial'], 'ark_selection':['selection_register'], 'ark_construction':['launch_cradle'], 'ark_launch':['departure_tracking','launch_cradle'],
'deep_survey':['depth_measurements'], 'deep_descent_project':['expedition_taboo'], 'descent_staging_construction':['descent_staging'], 'successive_expeditions':['expedition_register','depth_measurements'],
'astronomical_survey':['listening_calendar'], 'signal_debate':['array_access'], 'array_construction':['sky_receiver','array_alignment'], 'array_activation':['signal_log','listening_calendar'],
'genome_archive_project_sample_registry':['genome_registry','sample_custody'], 'genome_archive_project_preservation_trials':['viability_log'], 'genome_archive_project_archive_construction':['preservation_chamber','archive_cooling'], 'genome_archive_project_archive_operation':['viability_log','archive_cooling'],
'cortical_array_neural_interface':['neural_interface'], 'cortical_array_linked_cohort':['linked_cohort_register','network_consent'], 'cortical_array_parallel_cortical_network':['computation_lattice'], 'cortical_array_persistent_computation':['computation_log','computation_lattice'],
'meridian_project_survey_authority':['survey_standard'], 'meridian_project_reference_network':['reference_stone'], 'meridian_project_geodetic_construction':['survey_tower','reference_stone'], 'meridian_project_map_comparison':['conflicting_maps','survey_measurements'],
'second_mind_project_ancient_behavior_study':['prototype_telemetry'], 'second_mind_project_simple_emulation':['emulation_bench'], 'second_mind_project_autonomous_prototype':['prototype_telemetry','prototype_access'], 'second_mind_project_self_repair_trials':['repair_unit','prototype_telemetry'], 'second_mind_project_distributed_learning':['learning_log','repair_unit'],
'adaptive_simplification_program_resource_hypothesis':['resource_hypothesis'], 'adaptive_simplification_program_consenting_registry':['consent_registry'], 'adaptive_simplification_program_developmental_trials':['developmental_lab'], 'adaptive_simplification_program_generational_program':['generation_measurements','cohort_institution']}
terminal_materials={
'ark':['launch_memorial','vessel_fragment','departure_tracking'], 'deep':['shaft_gate','expedition_register','survivor_station','expedition_taboo'], 'sky':['signal_log','sky_receiver','array_access'], 'genome':['preservation_chamber','viability_log'], 'cortical':['computation_log','computation_lattice'], 'meridian':['conflicting_maps','survey_tower'], 'mind':['learning_log','prototype_access'], 'simplification':['generation_measurements','cohort_institution'],
'reproduction':['birth_registry','aging_district','care_compact'], 'disappearance':['empty_habitation','missing_census','missing_residents_memorial'], 'fracture':['disconnected_network','fragmented_shared_records','fragmented_council'], 'chosen':['retreat_clinic','retreat_measurements','consent_compact'], 'imposed':['coercion_facility','coercion_enforcement','target_register'], 'infrastructure':['service_junction','cascade_log','service_workers'], 'extermination':['destroyed_district','killing_order','survivor_registry'], 'alteration':['regional_biology','altered_workplace','adapted_community'], 'autonomy':['occupied_machine_works','command_telemetry','machine_safety_compact'], 'assimilation':['integration_machinery','linkage_measurements','network_households'], 'habitat':['abandoned_habitat','hazard_survey','evacuation_register'], 'severance':['credential_gate','broken_civic_archive','succession_petition'], 'orbit':['impact_belt','reentry_log','wreckage_site']}
scar_stage_materials={'independent_launch_attempt':['departure_tracking'], 'independent_descent':['expedition_register','descent_staging'], 'linked_cognition':['fragmented_shared_records'], 'cognitive_consent':['consent_compact'], 'chosen_generational_effect':['retreat_measurements'], 'diminution_target':['target_register'], 'diminution_authorization':['treatment_order'], 'diminution_intervention':['coercion_facility'], 'diminution_enforcement':['coercion_enforcement'], 'diminution_generational_effect':['target_register'], 'orbital_objects':['guidance_log'], 'orbital_descent':['reentry_log'], 'orbital_impacts':['impact_belt']}
terminal_materials['assimilation'].append('linkage_institution')

def replace_manifest(e, items, theme):
    e['records']=[r for r in e['records'] if not r['record_id'].startswith('v5_materials__')]
    if not items:return
    r=material_record(e['id'],sorted(set(items)))
    r['facts']['material_theme']=theme
    e['records'].append(r)

for p in data['projects']:
    theme=project_themes[p['id']]
    for stage in p['stages']:replace_manifest(events[stage],phase_materials[stage],theme)
    for chain in p['outcomes']:
        for key in chain:
            e=events[key]
            if e['category']!='scar' and key not in p['stages']:
                items=terminal_materials[theme]
                if theme=='ark':items=['launch_memorial','departure_tracking'] if key=='ark_containment' else ['launch_memorial','departure_tracking','launch_cradle']
                replace_manifest(e,items,theme)
events['adaptive_simplification_program_consenting_registry']['records'].insert(-1,{'record_type':'institution','record_id':'adaptive_simplification_program_consenting_registry','target':'cohort','facts':{'explicit_consent':True,'agency':'chosen','recorded_subject':'developmental_trials','present_consent_not_granted':True}})
for scar in data['scars']:
    theme=scar_themes[scar['id']]
    for variant in scar['variants']:
        for key in variant['stages']:
            e=events[key];ids=[r['record_id'] for r in e['records']]
            if e['category']=='scar':items=terminal_materials[theme]
            elif 'registered_cohort' in ids:items=['cohort_register','prior_dwellings']
            elif any(k.endswith('_basis') for k in ids):items=['basis_record']
            else:items=[m for k in ids for m in scar_stage_materials.get(k,[])]
            replace_manifest(e,items,theme)
            if scar['id']=='mass_morphogenic_event' and variant['id']!='biotechnology':
                e['records']=[r for r in e['records'] if r['record_id']!='population_modification']
# The factual phase observation records make the consent and staged trials
# explicit in v5; inherited generic fields are retained solely for compatibility.
for key in ['array_access','launch_memorial']:
    trace_by_id[key]['display_name']='Recorded array deliberation/access' if key=='array_access' else 'Departure undertaking and remembrance register'
for e in data['events']:
    if e['id'].startswith('episode_'):
        kind=e['id'].removeprefix('episode_').rsplit('_',1)[0]
        e['narrative']=e['narrative'].replace(' during the recorded regional pressure',' in the recorded locality')
        items=['service_junction','cascade_log'] if kind=='acute_breakdown' else ['service_junction','inspection_log'] if kind in ['partial_stabilization','slow_erosion'] else ['migration_register','arrival_houses'] if kind in ['managed_retreat','displacement'] else ['merged_archives','civic_charter']
        replace_manifest(e,items,'infrastructure' if kind in ['acute_breakdown','partial_stabilization','slow_erosion'] else 'migration' if kind in ['managed_retreat','displacement'] else 'politics')
    if e['category']=='discovery':replace_manifest(e,['discovery_object','discovery_record','discovery_access'],'discovery')

arch['ordinary_sources'].update({'maintenance_accord':['maintenance_roster'], 'history_custody':['custody_register'], 'population_migration':['migration_register','arrival_houses','old_route'], 'population_join':['arrival_register','arrival_houses','merged_archives'], 'newcomer_entry':['arrival_register','arrival_compact','arrival_houses'], 'enclave_survives':['civic_charter','border_works'], 'local_alliance':['civic_charter','trade_receipt']})
# Each social event is gated by its actual record IDs, including operation.
arch['social_sources']={
'cloning_archive_recovery':['genome_registry','clone_equipment'], 'local_population_decline':['prior_dwellings'],
'clone_settlement':['clone_register','clone_status_law'], 'emergency_reconstitution':['clone_register','clone_status_law'], 'founder_replication':['clone_register','clone_status_law'], 'military_batch':['clone_register','clone_status_law'], 'clone_caste':['clone_status_law'], 'clone_bottleneck':['clone_register'], 'clone_divergence':['clone_register'], 'clone_integration':['clone_status_law'], 'clone_emancipation':['clone_status_law'], 'founder_template_death_record':['genome_registry'], 'replacement_crisis':['clone_register'],
'deep_residence_record':['occupied_deep_home','deep_home_register'], 'deep_settlement_evacuation':['lost_deep_home','deep_home_register'], 'deep_memory_register':['deep_home_register'],
'ancestral_site_loss':['ancestral_site','homeland_register'], 'forced_evacuation':['ancestral_site','homeland_register'], 'homeland_displacement':['ancestral_site','homeland_register'], 'homeland_memory_charter':['homeland_register','evacuation_register'],
'machine_aid_compact':['maintenance_site','maintenance_compact'], 'machine_maintenance_cooperation':['maintenance_site','maintenance_compact'], 'machine_compact_renewal':['maintenance_compact'], 'automation_oversight_compact':['command_telemetry','human_oversight'], 'autonomous_authority_dispute':['command_telemetry','human_oversight'], 'human_final_authority':['human_oversight'], 'autonomous_machine_conflict':['command_telemetry','occupied_machine_works'], 'defense_network_hostility':['command_telemetry','occupied_machine_works'], 'machine_control_failure':['command_telemetry'], 'machine_safety_reform':['human_oversight'],
'biotech_workshop_recovery':['biotech_equipment'], 'bodily_adaptation_program':['regional_biology','altered_workplace'], 'designed_descent_program':['regional_biology'], 'lineage_preservation_program':['genome_registry','sample_custody'],
'rotating_office_compact':['civic_charter'], 'office_rotation_review':['civic_charter'], 'anti_entrenchment_reform':['civic_charter']}

anchors={
'departure_loss':['failed_exodus','ark_launch'], 'departure_selection':['ark_selection','registered_cohort'], 'deep_final_expedition':['last_descent'], 'deep_access':['independent_descent','descent_staging_construction'], 'sky_signal':['array_activation','unclassified_signal','signal_fixation','deep_space_listening_array_outcome'], 'genome_custody':['genome_archive_project_sample_registry','genetic_preservation'], 'genome_viability':['genome_archive_project_preservation_trials'], 'linked_identity':['linked_cohort_register','cortical_array_linked_cohort','memory_convergence','distributed_identity'], 'computation_scope':['cortical_array_persistent_computation'], 'maps_disagree':['coordinate_discrepancy'], 'survey_route':['survey_reference_network','meridian_project_reference_network'], 'constructed_machine':['autonomous_prototype_behavior'], 'machine_personhood':['autonomous_prototype_behavior'], 'program_consent':['adaptive_simplification_program_consenting_registry'], 'degeneration_evaluation':['simplification_longitudinal_records'], 'reproduction_loss':['reproductive_shutdown'], 'resident_disappearance':['silent_depopulation'], 'fractured_cognition':['collective_mind_fracture'], 'chosen_limits':['chosen_cognitive_regression'], 'coercive_responsibility':['diminution_authorization','imposed_cognitive_regression'], 'coercive_custody':['imposed_cognitive_regression'], 'service_dependency':['infrastructure_cascade','episode_acute_breakdown_1'], 'targeted_policy':['targeted_extermination'], 'altered_humans':['mass_morphogenic_event','environmental_adaptation'], 'autonomous_damage':['autonomous_systems_crisis','machine_hostility','autonomous_machine_harm'], 'irreversible_linkage':['mechanogenic_assimilation'], 'lost_habitat':['habitable_zone_loss'], 'civic_identity':['record_severance'], 'orbital_objects':['orbital_impacts','orbital_fall'], 'orbital_operator':['orbital_fall'], 'legal_successor':['@topology'], 'fragmented_archive':['@topology'], 'old_boundary':['@topology'], 'arrival_membership':['@arrival'], 'former_homeland':['homeland_loss'], 'clone_status':['clone_caste','clone_emancipation','clone_integration','clone_dependency'], 'maintenance_rights':['cooperation','machine_aid_renewal'], 'failed_deep_home':['deep_settlement_loss'], 'reuse_rights':['@reuse'], 'old_trade_route':['@trade']}
rewrites={'arrival_membership':'Which population entries and receiving communities are actually recorded?', 'fragmented_archive':'How do the recorded civic archives compare across communities?', 'legal_successor':'Which current communities retain recorded institutional succession?', 'old_boundary':'Which surviving works attest to recorded political boundaries?', 'departure_selection':'Who was registered in the departure undertaking?', 'service_dependency':'Which recorded failures affected dependent services?', 'genome_custody':'Which actual genetic sample records and custodians survive?', 'clone_status':'How did recorded clone-born legal status change?', 'maintenance_rights':'Which recorded human-machine cooperation arrangements can inform present access?', 'reuse_rights':'Which actual repurposed site and registered access can be investigated?'}
for q in questions:
    q['required_anchor_records']=anchors[q['id']]
    q['scope']='regional_comparison' if q['theme'] in ['politics','migration','trade'] else 'actual_subject'
    q['text']=rewrites.get(q['id'],q['text'])
    q['support_themes']=['politics'] if q['id']=='reuse_rights' else []
normative_text={
'legal_successor':'Which recorded succession should present authorities recognize as legitimate?',
'fragmented_archive':'Which competing civic records should govern present ownership claims?',
'genome_custody':'Who should receive or gain access to the surviving genetic samples?',
'clone_status':'How should recorded dependency, caste or emancipation inform present clone-born rights?',
'reuse_rights':'Who should control present access to the recorded repurposed site?',
'departure_loss':'Which physical failure or tracking loss does the departure record actually establish?',
'deep_access':'Which staging works and recorded access limits survive for a current safety survey?'}
for q in questions:q['text']=normative_text.get(q['id'],q['text'])

# Variant eligibility names exact objects. Conditional runtime requirements are
# checked during evidence collection; generated hooks do not assert those conditions.
eligibility={
'find_sealed_entrance':['shaft_gate','credential_gate','discovery_object'], 'follow_old_border':['border_works'], 'scout_abandoned_quarter':['empty_habitation','abandoned_office','abandoned_habitat','prior_dwellings'], 'traverse_shaft':['shaft_gate','descent_staging','lost_deep_home','occupied_deep_home'], 'cross_impact_belt':['impact_belt'], 'isolate_damaged_junction':['service_junction','archive_cooling'], 'read_telemetry':['prototype_telemetry','command_telemetry','signal_log','computation_log'], 'inspect_service_dependency':['service_junction','cascade_log','inspection_log','archive_cooling'], 'verify_interface':['neural_interface','computation_lattice','integration_machinery'], 'read_guidance_log':['guidance_log','departure_tracking','reentry_log'], 'compare_generational_measures':['generation_measurements','birth_registry','retreat_measurements','target_register'], 'analyze_preserved_sample':['genome_registry','preservation_chamber'], 'verify_genetic_registry':['genome_registry','clone_register'], 'triangulate_reference_frames':['survey_tower','reference_stone','survey_measurements'], 'compare_conflicting_charts':['conflicting_maps'], 'trace_historical_boundary':['border_works','old_route','homeland_register'], 'match_wreck_fragments':['vessel_fragment','impact_belt','wreckage_site'], 'compare_civic_seals':['civic_charter','merged_archives','broken_civic_archive','custody_register'], 'align_archive_fragments':['merged_archives','broken_civic_archive','fragmented_shared_records','discovery_record'], 'negotiate_cohort_consent':['consent_registry','consent_compact','network_consent','clone_status_law','cohort_institution','network_households'], 'buy_route_records':['trade_receipt','migration_register','old_route','conflicting_maps'], 'return_ancestral_object':['ancestral_site','homeland_register'], 'carry_fragile_sample':['preservation_chamber','genome_registry'], 'drain_document_chamber':['preservation_chamber','discovery_object'], 'stabilize_ventilation':['service_junction','descent_staging','occupied_deep_home','preservation_chamber'], 'redirect_local_service':['service_junction','archive_cooling'], 'challenge_machine_handshake':['repair_unit','occupied_machine_works','maintenance_site'], 'listen_to_machine_passively':['repair_unit','occupied_machine_works','sky_receiver','discovery_object'], 'isolate_command_interface':['occupied_machine_works','repair_unit','command_telemetry'], 'run_limited_array_test':['sky_receiver','array_alignment'], 'test_bounded_emulation':['emulation_bench','repair_unit'], 'cycle_isolated_junction':['service_junction','archive_cooling'], 'restore_reader_power':['discovery_record','prototype_telemetry','signal_log','computation_log'], 'repair_reading_head':['discovery_record','genome_registry'], 'patch_local_sensor':['sky_receiver','survey_tower','service_junction']}
category_eligibility={'exploration':['physical'], 'combat':['physical'], 'hazardous_traversal':['physical'], 'stealth':['physical','documentary'], 'technical_inspection':['physical','documentary'], 'biological_inspection':['documentary','physical'], 'map_comparison':['physical','documentary'], 'artifact_comparison':['physical','documentary','institutional'], 'negotiation':['documentary','institutional','living'], 'trade':['documentary'], 'theft':['documentary'], 'faction_access':['documentary','institutional'], 'escort_recovery':['physical','documentary','living'], 'custody_choice':['institutional','documentary'], 'destruction_preservation':['physical','documentary'], 'evidence_disclosure':['documentary','institutional'], 'environmental_manipulation':['physical'], 'controlled_activation':['physical','living'], 'machine_interaction':['physical','documentary','living'], 'repair_reactivation':['physical','documentary']}
eligibility['extract_guarded_telemetry']=['prototype_telemetry','command_telemetry','signal_log','computation_log','guidance_log','departure_tracking','reentry_log']
variant_categories={'enter_restricted_archive':['documentary'], 'duplicate_record_unnoticed':['documentary'], 'recover_exposed_register':['documentary']}
runtime_conditions={'find_sealed_entrance':['verified_sealed_access'], 'evade_site_patrol':['verified_current_patrol'], 'recover_exposed_register':['verified_exposed_record'], 'escort_record_specialist':['current_escort_actor_bound'], 'compare_civic_seals':['observed_authenticity_marks'], 'match_wreck_fragments':['current_material_comparison_samples'], 'dismantle_evidence_hazard':['verified_current_evidence_hazard']}
for h in hooks:
    h['eligible_categories']=variant_categories.get(h['id'],category_eligibility[h['interaction_type']])
    h['eligible_archetypes']=eligibility.get(h['id'],[])
    tags=h['required_runtime_tags']
    for tag in ['current_context_bound','current_access_valid']:
        if tag not in tags:tags.append(tag)
    if h['interaction_type'] in ['repair_reactivation','controlled_activation','machine_interaction']:tags.extend(['compatible_live_interface','approved_local_procedure'])
    if h['interaction_type']=='environmental_manipulation':tags.append('verified_local_environment_control')
    if h['id']=='drain_document_chamber':tags.append('documented_water_intrusion')
    if h['id']=='listen_to_machine_passively':tags.append('verified_current_signal')
    if h['interaction_type']=='biological_inspection':tags.append('approved_noninvasive_protocol')
    if h['interaction_type'] in ['custody_choice','negotiation','faction_access']:tags.append('current_contact_bound')
    if h['interaction_type']=='escort_recovery':tags.append('approved_recovery_plan')
    if h['interaction_type']=='evidence_disclosure':tags.append('disclosure_authority')
    tags.extend(runtime_conditions.get(h['id'],[]))
    h['historical_condition_asserted']=False
for t in traces:
    t['interaction_families']=sorted({h['interaction_type'] for h in hooks if t['category'] in h['eligible_categories'] and (not h['eligible_archetypes'] or t['id'] in h['eligible_archetypes'])})
alternate_phases={
'ark_project':['Engineers compared prospective departure paths with measured propulsion limits.','The limited departure undertaking received its recorded commission.','Candidates entered the departure registry under the specified selection policy.','Construction joined the launch vessel to its local staging works.','The launch record distinguishes actual liftoff from an attempt that stayed on the ground.'],
'deep_descent_project':['Measurements established how far the existing shallow shafts could be approached.','A descent campaign was commissioned within recorded limits.','Staging construction provided local access works for the planned expeditions.','Instruments were carried below the established staging boundary in successive expeditions.'],
'deep_space_listening_array':['The first survey measured candidate directions in the sky.','Council records preserve disagreement over the case for a listening array.','Construction assembled the receivers and the instruments that aligned them.','The completed array began operation with a recorded first observation interval.'],
'genome_archive_project':['Registry workers identified the named samples and recorded who held them.','Defined storage trials measured the samples that remained viable and those lost.','Archive construction installed insulated chambers and cooling connections.','Recurring tests and seal replacements became the archive’s recorded operation.'],
'cortical_array':['Interface trials measured transfers between human neural tissue and instruments.','The registered human cohort entered the links under documented consent.','Construction and routing tests established parallel cortical connections.','Repeated computation was measured across the linked human network; personal continuity remains unresolved.'],
'meridian_project':['The survey began with measurement standards and a recorded jurisdiction.','Reference stones established the measured coordinate network.','Builders erected the survey towers and geodetic instruments.','Survey coordinates conflicted with old maps; error, reference changes and geology remain possible.'],
'second_mind_project':['Ancient machine responses were logged while their intentions remained unknown.','Simple emulation reproduced only a bounded part of the recorded behavior.','Unsupervised actions appeared in trials of the constructed prototype.','Trials measured local repair and changes to the prototype’s own structure.','Distributed trials recorded learned behavior and continued unsupervised operation; consciousness was not established.'],
'adaptive_simplification_program':['Resource studies advanced a developmental adaptation hypothesis for humans.','The human registry explicitly recorded consent to developmental trials.','Trials measured limited developmental and cognitive-task changes.','Longitudinal records measured the human cohort over multiple generations.']}
arch['renderer_phase_variants']={}
for p in data['projects']:
    for i,key in enumerate(p['stages']):arch['renderer_phase_variants'][key]=[phase_texts[p['id']][i],alternate_phases[p['id']][i]]
for filename,value in [('history_v5.json',data),('history_v5_archaeology.json',arch)]:
    (ROOT/'content/history'/filename).write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Authored:',len(traces),'trace archetypes,',len(questions),'questions,',len(hooks),'interaction variants,',len(action_rows),'actions; eight semantically distinct Project phase sequences.')
