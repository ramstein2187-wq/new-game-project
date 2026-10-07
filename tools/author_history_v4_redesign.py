"""Reproduce authored v4 revision 2; never changes historical v2/v3 fixtures."""
import copy
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'content/history/compatibility/history_v4_authored_1.json'
old = json.loads(SOURCE.read_text(encoding='utf-8-sig'))
events = []
projects = []
scars = []

def rec(kind, key, facts=None, target='facility'):
    return dict(record_type=kind, record_id=key, target=target, facts=facts or {})

def event(key, text, records, requires=(), category='phase', domain='human'):
    events.append(dict(id=key, narrative=text, records=records, requires=list(requires), category=category, domain=domain, gate='none'))
    return key

def phase(key, text, records=None, requires=()):
    return event(key, text, records or [rec('observation',key)], requires)

def project(key, name, question, stages, outcomes, weights, later_name=''):
    projects.append(dict(id=key, display_name=name, later_historical_name=later_name,
                         question=question, gate='none', weight=weights[0], context_weights=weights[1],
                         success_policy='bounded_technical_success', selection_policies=['genome_only','specialist_priority'] if key=='genome_archive_project' else ['lottery','specialist_priority','children_priority','political_elite_capture','religious_selection'] if key=='ark_project' else ['specialist_priority','lottery'], stages=stages, outcomes=outcomes))

phase('project_authorization','A recorded polity authorized a multi-decade undertaking; its institution and labor obligations were entered in public records.',[rec('institution','project_authority',target='participant')])
phase('resource_concentration','Specialist appointments, workshop quotas, relocated workers and sustained labor levies concentrated resources across decades.',[rec('practice','labor_mobilization',target='participant'),rec('institution','specialist_office',target='participant'),rec('population','workplace_relocation',{'population_template':'human_baseline','new_lineage':False},'cohort')],['project_authority'])
events[0]['requires']=['project_context']
for domain,text in [('human','Offices documented sustained institutional and resource capacity, contested allocation and actual human workforces.'),('natural','Early field measurements documented terrain, habitation pressure and environmental variation before the undertaking.'),('preservator_intervention','Early technical surveys measured bounded local ancient-regulation behavior; no current unified will was inferred.'),('observer_legacy','Recovered structure surveys and automated response logs supplied a bounded engineering study context.'),('unknown','Early surveys recorded unresolved local observations; they established a research question rather than a cause.')]:
    event('planning_context_'+domain,text,[rec('capability','project_context',{'historical_context':domain,'physical_basis':text},'participant')],domain=domain)

# Each Scar has its own prerequisite chain, an evidenced causal background and
# long-term aftermath. Project outcomes can explicitly reuse a chain; no Scar
# requires a Project ID. Causal variants do not merely relabel an unknown cause.
def scar(key, display, variants, change, traces, requires=(), min_years=36):
    base_weights={'infrastructure_cascade':5,'habitable_zone_loss':5,'record_severance':4,'imposed_cognitive_regression':2,'mechanogenic_assimilation':2,'silent_depopulation':2}
    row=dict(id=key,display_name=display,weight=base_weights.get(key,3),context_weights={},min_years=min_years,variants=[])
    for suffix,domain,weight,observation in variants:
        prefix=key+'__'+suffix
        register=event(prefix+'_population', 'Census and residence registers identify the actual baseline-human population affected by this history.',
                       [rec('population','registered_cohort',{'population_template':'human_baseline','origin':'human_derived'},'cohort'),rec('site','prior_habitation',{'state':'inhabited','population_present':True})])
        if key=='record_severance':
            events[-1]['records'].append(rec('institution','prior_registry_coverage',{'identity_citizenship_ownership_inheritance':True,'regional_coverage':True,'original_contents':'not_reconstructed'},'participant'))
        evidence=event(prefix+'_evidence',observation,[rec('observation',prefix+'_basis',{'causal_domain':domain,'physical_basis':observation},'participant')],['registered_cohort'],domain=domain)
        history=[register,evidence]
        extra=list(requires)
        if key=='imposed_cognitive_regression':
            history += [phase(prefix+'_designation','The responsible human authority designated the registered target population for forced developmental reduction.',[rec('institution','diminution_target',{'target_reference':'variable','responsible_actor':'participant'},'participant')],['registered_cohort']),
                phase(prefix+'_authorization','Signed program orders explicitly sought biological reduction of abstract reasoning, language and long-term planning in the designated human cohort.',[rec('institution','diminution_authorization',{'target_reference':'variable','responsible_actor':'participant','aim':'biological_cognitive_reduction'},'participant')],['diminution_target']),
                phase(prefix+'_intervention','Intervention logs and developmental tests record biological treatment of the target cohort; this is not education loss or cultural suppression.',[rec('population','diminution_intervention',{'target_reference':'variable','biological_intervention':True,'population_template':'human_baseline'},'cohort')],['diminution_authorization']),
                phase(prefix+'_enforcement','The recorded human authority enforced treatment and reproduction controls over successive generations.',[rec('institution','diminution_enforcement',{'responsible_actor':'participant','coercion':True},'participant')],['diminution_intervention']),
                phase(prefix+'_stabilization','Longitudinal birth and capacity measurements show persistent biological/developmental cognitive reduction across generations.',[rec('population','diminution_generational_effect',{'population_template':'human_baseline','multiple_generations':True,'measured_cognitive_reduction':True},'cohort')],['diminution_enforcement'])]
            extra += ['diminution_target','diminution_authorization','diminution_intervention','diminution_enforcement','diminution_generational_effect']
        if key=='chosen_cognitive_regression':
            history += [phase(prefix+'_consent','Registered residents and accountable assemblies deliberately consented to generation-scale biological cognitive reduction; benefit claims remain unproven.',[rec('institution','cognitive_consent',{'agency':'chosen','explicit_consent':True},'participant'),rec('capability','cognitive_modification',target='participant')],['registered_cohort']),
                phase(prefix+'_measurement','Biological intervention and longitudinal tests document reduced abstract reasoning and language complexity in multiple generations, not merely lost schooling.',[rec('population','chosen_generational_effect',{'biological_intervention':True,'multiple_generations':True,'population_template':'human_baseline'},'cohort')],['cognitive_consent'])]
            extra += ['cognitive_consent','chosen_generational_effect']
        if key=='collective_mind_fracture':
            history += [phase(prefix+'_link','Neural-interface logs record linked human cohorts and persistent shared computation; no single personhood is established.',[rec('observation','linked_cognition',{'human_cohorts':True,'persistent_computation':True,'one_consciousness':'unknown'})],['registered_cohort'])]
            extra+=['linked_cognition']
        if key=='orbital_fall':
            history += [event(prefix+'_orbit','Tracking records document multiple actual artificial structures or debris in orbit; their common origin is not established.',[rec('observation','orbital_objects',{'artificial_objects':True,'multiple_objects':True,'common_origin':'unknown'})],domain='observer_legacy'),
                event(prefix+'_reentry','Tracking and debris measurements document successive descent and reentry from orbit, not a surface meteor or unrelated crater.',[rec('observation','orbital_descent',{'tracked_reentry':True,'multiple_objects':True})],['orbital_objects'],domain='observer_legacy'),
                event(prefix+'_impact','Matched orbital debris, buried structures and destroyed habitation record a belt of multiple impact sites.',[rec('observation','orbital_impacts',{'multiple_sites':True,'orbital_material_match':True}),rec('site','impact_belt',{'state':'hazardous','crater_fields':True})],['orbital_descent'],domain='observer_legacy')]
            extra += ['orbital_objects','orbital_descent','orbital_impacts']
        if key=='failed_exodus':
            history += [phase(prefix+'_attempt','Vessel registers and propulsion logs document the actual organized launch attempt, including whether physical liftoff occurred; this record can be a later inquiry into the same attempt.',[rec('observation','independent_launch_attempt',{'attempt_registered':True,'physical_launch':'variable','confirmed_escape':False})],['registered_cohort'])]
            extra+=['independent_launch_attempt']
        if key=='last_descent':
            history += [phase(prefix+'_expedition','Repeated expedition rosters document real human descent, a limited staging site and eventual communication loss; neither the Deep nor its casualty source is explained.',[rec('observation','independent_descent',{'communications':'lost','killer':'unknown','discovery':'unknown'}),rec('site','descent_staging_site',{'state':'limited_outpost','deep_conquest':False})],['registered_cohort'])]
            extra+=['independent_descent']
        facts=dict(change,causal_domain=domain,cause=suffix if domain!='unknown' else 'unknown',long_term=True,new_species=False,new_origin=False,new_lineage=False)
        if key=='orbital_fall':
            facts.update(perpetrator='unknown',intent='unknown',common_origin='unknown',external_intelligence='unknown')
        if key in ['failed_exodus','last_descent']:
            facts.update(intent='unknown',perpetrator='unknown')
        terminal=event(prefix, f'{display} left lasting population, institutional or spatial damage. {traces} The recorded causal basis establishes only the stated physical background; unrecorded purpose and metaphysical answers are not supplied.',
                       [rec('scar',key,facts)]+[rec('population',key+'_aftermath',{'population_template':'human_baseline','effect':traces},'cohort'),rec('site',key+'_remains',{'state':'persistent_scar','traces':traces})],
                       [prefix+'_basis','registered_cohort']+extra, category='scar', domain=domain)
        history.append(terminal)
        row['variants'].append(dict(id=suffix,domain=domain,weight=weight,stages=history))
    scars.append(row)
    return row

scar('failed_exodus','Failed Exodus',[
    ('interception','observer_legacy',5,'Matched orbital-system logs and vessel damage document physical interception; activation, operator and intent remain unknown.'),
    ('launch_failure','human',4,'Engineering records identify structural/propulsion failure during launch; no external actor is inferred.'),
    ('lost_tracking','unknown',2,'The launch attempt ended with loss and recovered wreckage; the responsible mechanism remains unknown.')],
    {'confirmed_escape':False},'Launch memorials, recovered vessel fragments and displaced candidate households persist.')
scar('last_descent','Last Descent',[
    ('shaft_failure','natural',3,'Monitoring records show a geological shaft collapse near the expedition route; the final casualty source and discoveries remain unknown.'),
    ('access_loss','unknown',5,'Survey access and communications ended at an unmapped structure; nothing identifies what the final expedition found or what killed it.')],
    {'killer':'unknown','discovery':'unknown','deep_conquest':False},'Sealed shafts, missing expedition registers and inaccessible staging works persist.')
scar('reproductive_shutdown','Reproductive Shutdown',[
    ('developmental_treatment','human',4,'Longitudinal biological treatment records match loss of ordinary reproduction across registered generations.'),
    ('toxic_exposure','natural',4,'Repeated contaminant assays and birth-cohort tests establish reproductive incapacity after sustained exposure.'),
    ('unclassified_loss','unknown',3,'Birth and physiological records establish generation-scale reproductive shutdown; its trigger is unknown.')],
    {'normal_reproduction':'lost_across_generations','fertility_decline_only':False},'Aging settlements, care institutions and relocation of surviving households persist.')
scar('silent_depopulation','Silent Depopulation',[
    ('unclassified_disappearance','unknown',7,'Repeated habitation censuses end without evidence of war, mass migration or a mass grave.')],
    {'battle_record':False,'mass_migration':False,'mass_grave':False,'cause_resolution':'unknown'},'Empty inhabited districts and missing resident registers remain.')
scar('collective_mind_fracture','Collective Mind Fracture',[
    ('network_failure','human',4,'Interface maintenance and routing logs document persistent partition of linked cognition after control failure.'),
    ('geological_partition','natural',3,'Measured ground displacement severed a physically registered neural network.'),
    ('unclassified_partition','unknown',3,'Linked computation fragmented; logs do not identify the initiating mechanism.')],
    {'one_consciousness':'unknown','persistent_cognitive_social_disruption':True},'Disconnected neural facilities, incompatible shared records and fractured cohort institutions persist.')
scar('chosen_cognitive_regression','Chosen Cognitive Regression',[
    ('consensual_redesign','human',6,'Consent registers and measured resource pressure document an institutionally chosen biological simplification policy.')],
    {'agency':'chosen','belief_validity':'unknown','human_variation':True},'Reduced abstract reasoning/language/planning capacities and smaller stable institutions persist across generations.',min_years=48)
scar('imposed_cognitive_regression','Imposed Diminution',[
    ('coercive_human_program','human',6,'Responsible human offices documented an atrocity program against another registered human cohort; no Preservator responsibility is inferred.')],
    {'agency':'imposed','human_variation':True,'responsible_actor':'participant','target_reference':'variable','biological_cognitive_reduction':True},'Coerced developmental reduction, impaired language/planning and enforced cohort institutions persist across generations.',min_years=72)
scar('infrastructure_cascade','Infrastructure Cascade',[
    ('war_damage','human',4,'War orders, strike records and damaged service junctions document destruction of interdependent infrastructure.'),
    ('geological_failure','natural',3,'Seismic measurements and broken conduits document propagation of failures across dependent services.'),
    ('regulation_failure','preservator_intervention',3,'Matched module operations and local service telemetry establish failure propagation through a bounded regulation installation; current purpose is unknown.'),
    ('unclassified_failure','unknown',2,'Power, water, transport and communication records show cascading failure without an identified initiating cause.')],
    {'failed_services':['power','water','transport','communication','production'],'intent':'unknown'},'Damaged junctions, isolated districts and displaced service workers remain.')
scar('targeted_extermination','Targeted Extermination',[
    ('human_policy','human',5,'Signed removal/killing orders identify responsible offices and the actual target cohort; enforcement registers document systematic killings.')],
    {'responsible_actor':'participant','target_reference':'variable','documented_policy':True,'actual_killing_removal':True},'Destroyed homes, survivor registries and abandoned target districts persist.')
scar('mass_morphogenic_event','The Great Alteration',[
    ('biotechnology','human',4,'Biological program records and regional developmental measurements document widespread human morphological change.'),
    ('environmental_exposure','natural',3,'Matched environmental assays and repeated developmental observations document geographic clustering of altered human forms.'),
    ('unclassified_alteration','unknown',3,'Multiple regional cohorts show large developmental/form changes, without an identified mechanism.')],
    {'multiple_human_cohorts':True,'geographic_clustering':True,'human_variation':True},'Persistent altered human morphology, adaptations in workplaces and regional biological archives remain.')
scar('autonomous_systems_crisis','Autonomous Systems Crisis',[
    ('command_failure','human',5,'Human command hierarchies failed; automated defenses attacked humans and autonomous units occupied recorded facilities.'),
    ('legacy_response','observer_legacy',3,'Recorded ancient defenses ceased responding to expected human commands; access logs and damage identify actual systems but not their original purpose.'),
    ('novel_behavior','unknown',3,'Autonomous machines changed expected behavior and occupied facilities; operator, mechanism and intention remain unknown.')],
    {'machine_consciousness':'unknown','political_intent':'unknown','machine_civilization':False},'Occupied works, inaccessible defenses and relocated human workers persist.')
scar('mechanogenic_assimilation','Mechanogenic Assimilation',[
    ('human_integration','human',5,'Clinical and control logs document irreversible coupling of registered human bodies, behavior and social functions with machine systems.'),
    ('unclassified_coupling','unknown',3,'Human tissues and social functions remain inseparable from a measured machine network; the initiating mechanism is unknown.')],
    {'irreversible_coupling':True,'ordinary_augmentation_only':False,'same_person':'unknown','original_person_dead':'unknown'},'Irreversible body/function linkage, network-dependent households and inaccessible integration machinery remain.')
scar('habitable_zone_loss','Habitable Zone Loss',[
    ('contamination','natural',4,'Repeated chemical assays and residence records establish persistent contamination of formerly inhabited territory.'),
    ('warfare','human',3,'War damage and field assays establish lasting destruction of viable human habitation conditions.'),
    ('regulation_malfunction','preservator_intervention',3,'Local environmental-module operations and habitation telemetry establish a bounded malfunction that made an inhabited region unviable; intent remains unknown.'),
    ('unclassified_hazard','unknown',2,'Former residence records and hazard surveys establish lasting loss of habitability; initiating cause remains unknown.')],
    {'formerly_inhabited':True,'long_duration_uninhabitable':True,'intent':'unknown'},'Regional hazards, abandoned settlements, displaced households and diverted trade routes persist.')
scar('record_severance','Record Severance',[
    ('administrative_purge','human',4,'Signed archive destruction and registry replacement policies severed identity, ownership, citizenship and succession records across multiple districts.'),
    ('distributed_failure','human',3,'Distributed registry corruption left mutually incompatible citizenship, inheritance and ownership histories; no lost original is reconstructed.'),
    ('unclassified_loss','unknown',3,'Surviving archives contradict at regional scale; original lineage/citizenship/property records cannot be objectively recovered.')],
    {'regional_identity_ownership_legitimacy_loss':True,'reconstructed_original':False},'Competing ownership, conflicting citizenship, disputed succession and inaccessible credential-bound facilities persist.')
scar('orbital_fall','Orbital Fall / 궤도낙하',[
    ('orbital_instability','observer_legacy',4,'Orbital tracking documents instability of actual artificial debris before repeated reentry; no common maker or intention is established.'),
    ('documented_destruction','human',3,'Recorded human attacks damaged identified orbiting hardware before repeated descent; this does not establish a stable orbital civilization.'),
    ('unclassified_fall','unknown',5,'Orbital objects fell in multiple waves; no record identifies an operator or initiating mechanism.')],
    {'continuous_multiple_impacts':True},'Impact belts, crater fields, buried orbital structures, wreckage-built sites and inaccessible impact zones persist.')

def variant(key,index=0):
    return copy.deepcopy(next(s for s in scars if s['id']==key)['variants'][index]['stages'])

# Bounded Project goals: none establishes permanent boundary conquest.
ark=[phase('exodus_feasibility_study','Recorded propulsion trials and launch-route surveys established a bounded engineering capability.',[rec('capability','spaceflight_engineering',target='participant')]),
     phase('ark_project','The polity chartered an Ark carrying actual selected human residents; no destination was known.'),
     phase('ark_selection','Registers identify baseline-human candidate residents and the contested selection policy.',[rec('institution','ark_selection',{'policy':'variable','population_template':'human_baseline'},'participant')]),
     phase('ark_construction','Workshop and labor records document vessel and launch-complex construction.',[rec('site','launch_complex',{'state':'constructed'}),rec('capability','exodus_vehicle',target='participant')]),
     phase('ark_launch','The attempt entered launch operations; recorded liftoff is distinguished from launch preparation.',[rec('observation','launch_attempt',{'physical_launch':'variable','attempt_registered':True})],['exodus_vehicle'])]
ark_ends=[]
for kind in ['launch_destruction','guidance_capture','propulsion_suppression','orbital_containment','silent_denial','failed_return','wreckage_recovery']:
    end=phase('ark_'+kind,'Physical observations document '+kind.replace('_',' ')+'. No successful planetary escape, destination or current unified system intention is inferred.',[rec('observation','ark_denial',{'subtype':kind,'confirmed_escape':False,'intent':'unknown'})],['launch_attempt'])
    ark_ends.append([end]+variant('failed_exodus',0 if kind not in ['failed_return','wreckage_recovery'] else 1))
phase('ark_departure_unresolved','Local tracking ended after the vessel departed coverage. The last observation does not prove escape, destination, survival or permanent orbital settlement.',[rec('observation','exodus_departure',{'destination':'unknown','survival':'unknown','confirmed_escape':False})],['launch_attempt'])
project('ark_project','Ark Project','Can humans leave this planet?',ark,ark_ends+[['ark_departure_unresolved']],(3,{'unknown':2,'human':1}))

deep=[phase('deep_survey','Survey logs and support tests mapped a limited depth interval.',[rec('capability','deep_engineering',target='participant')]),phase('deep_descent_project','Successive institutions chartered repeated limited exploration below known strata.'),phase('descent_staging_construction','Shafts, ventilation and a durable staging outpost were constructed; this is not a large Deep civilization.',[rec('site','descent_staging_site',{'state':'limited_outpost','deep_conquest':False})]),phase('successive_expeditions','Registered human expeditions reused the shaft and recorded unmapped structures without classifying ultimate origin.',[rec('observation','expedition_rosters',{'population_template':'human_baseline','successive':True,'ultimate_nature':'unknown'})],['deep_engineering'])]
phase('deep_bounded_return','Some teams returned with limited engineering and map records; communication loss and contradictory maps bound further access.',[rec('observation','deep_mapping_return',{'returned_fraction':'partial','boundary':'unresolved','deep_conquest':False,'stable_deep_civilization':False})],['expedition_rosters'])
project('deep_descent_project','Deep Descent Project','How far can humans descend?',deep,[['deep_bounded_return'],variant('last_descent')],(3,{'natural':3,'preservator_intervention':1}))

listen=[phase('astronomical_survey','A measured receiving direction and equipment requirements entered public astronomical records.',[rec('capability','radio_astronomy',target='participant')]),phase('signal_debate','Institutions disputed receiving costs and interpretations without identifying a signal origin.'),phase('array_construction','Specialist workshops constructed the Far-Sky Array.',[rec('site','far_sky_array',{'state':'constructed'})]),phase('array_activation','The receiving array began documented observations.',[rec('observation','array_active',{'mode':'receive'})],['radio_astronomy'])]
for key,text,facts in [('array_silence','No meaningful signal was found; sponsorship and later operation declined.',{'meaningful_signal':False}),('unclassified_signal','Repeated signals were measured without a known origin or meaning.',{'origin':'unknown','meaning':'unknown'}),('orbital_reaction','An orbital-system state change was close in time to activation; correlation is not causation.',{'relation':'temporal_correlation','causality':'unknown','intent':'unknown'}),('signal_fixation','Operators spent decades fixating on measured patterns; their beliefs establish no recipient.',{'origin':'unknown','recipient':'unknown'}),('transmission_reversal','Instrumentation records a change to transmission; modifier and destination are unknown.',{'modifier':'unknown','recipient':'unknown'}),('array_continues','The array continued bounded observation without settling any origin.',{'origin':'unknown','continued_observation':True})]:
    phase(key,text,[rec('observation',key,facts)],['array_active'])
project('deep_space_listening_array','Far-Sky Array','What lies outside?',listen,[[s] for s in ['array_silence','unclassified_signal','orbital_reaction','signal_fixation','transmission_reversal','array_continues']],(4,{'observer_legacy':3,'unknown':1}))

families=[
('genome_archive_project','Genome Archive','How long can genetic information be preserved?', ['sample_registry','preservation_trials','archive_construction','archive_operation'],'genome_preservation','Registered human genomic records, cell lines, microbial samples, plant/animal material and ecological restoration records were preserved; viability assays and inventories establish neither a new species nor a lineage.',(4,{'natural':3})),
('cortical_array','Cortical Array','How far can human minds be linked?',['neural_interface','linked_cohort','parallel_cortical_network','persistent_computation'],'cognitive_pattern_storage','Neural interfaces linked actual human brains into persistent parallel biological computation for modeling, logistics and science; individual survival, collective personhood and emergent consciousness remain unknown.',(4,{'human':2,'preservator_intervention':1})),
('meridian_project','Meridian Project','Can humans measure their world?',['survey_authority','reference_network','geodetic_construction','map_comparison'],'geodetic_reference','Survey towers, reference stones, geodetic stations and map archives recorded terrain/strata/reference frames; accumulated error, geology, infrastructure loss and unknown mismatches are distinguished without supernatural resolution.',(5,{'natural':3,'unknown':2})),
('second_mind_project','Second Mind Project','Can human-built machines imitate ancient cognition?',['ancient_behavior_study','simple_emulation','autonomous_prototype','self_repair_trials','distributed_learning'],'machine_coordination','Human researchers studied recoverable machine structures, ancient automated behavior and permitted fragments; actual constructed prototypes learned, self-repaired and changed structures without proven consciousness, Observer equivalence or machine civilization.',(4,{'observer_legacy':4,'preservator_intervention':2})),
('adaptive_simplification_program','Adaptive Simplification Program','What can humans relinquish to survive?',['resource_hypothesis','consenting_registry','developmental_trials','generational_program'],'cognitive_modification','A consenting registered human population tested generation-scale reduced reasoning, language/planning complexity, development time and resource needs; measured change remains human variation. The Great Degeneration is a later evaluative historical name, not contemporary official wording.',(3,{'natural':4,'human':1})),
]
for key,name,question,stage_ids,cap,text,weights in families:
    stages=[]
    for i,label in enumerate(stage_ids):
        records=[rec('observation',key+'_'+label,{'population_template':'human_baseline','consciousness':'unknown','new_species':False})]
        if i==0: records.append(rec('capability',cap,target='participant'))
        if i==1: records.append(rec('population','registered_cohort',{'population_template':'human_baseline','origin':'human_derived'},'cohort'))
        if i==2: records.append(rec('site',key+'_facility',{'state':'constructed'}))
        if key=='genome_archive_project' and i==1:
            records.append(rec('observation','preserved_sample_register',{'human_genomic_records':True,'cell_lines':True,'microbiological_samples':True,'plant_genetic_material':True,'animal_genetic_material':True,'ecological_restoration_records':True,'embryos':'only_where_authorized','new_species':False}))
        if key=='cortical_array' and i==1:
            records.append(rec('population','linked_human_cohort',{'population_template':'human_baseline','human_brains':True,'one_consciousness':'unknown','individual_survival':'unknown'},'cohort'))
        if key=='cortical_array' and i==3:
            records.append(rec('observation','persistent_shared_computation',{'parallel_computation':True,'tasks':['climate_prediction','geological_modeling','logistics','scientific_computation','regulation_behavior_modeling'],'emergent_consciousness':'unknown'}))
        if key=='meridian_project' and i==2:
            records += [rec('site','survey_reference_network',{'state':'constructed','survey_towers':True,'reference_stones':True,'geodetic_stations':True}),rec('institution','map_archive',target='participant')]
        if key=='meridian_project' and i==3:
            records.append(rec('observation','coordinate_discrepancy',{'historical_maps':'contradictory','reference_frame':'changed_or_incomplete','error_or_geological_change':'possible','supernatural_cause':'unknown','resolved_original_coordinates':False}))
        if key=='second_mind_project' and i==4:
            records.append(rec('observation','autonomous_prototype_behavior',{'machine_bodies_constructed':True,'autonomous':True,'new_behavior_learned':True,'self_repair':True,'structure_changes':True,'persisted_without_supervision':True,'machine_consciousness':'unknown','observer_equivalence':False,'machine_civilization':False,'descendant_identity':'unknown'}))
        if key=='adaptive_simplification_program' and i==3:
            records.append(rec('population','simplification_longitudinal_records',{'population_template':'human_baseline','multiple_generations':True,'agency':'chosen','official_name':'Adaptive Simplification Program','later_evaluation':'The Great Degeneration','changes':['reduced_abstract_reasoning','reduced_language_complexity','shortened_development','reduced_long_term_planning','smaller_social_groups','hazard_avoidance','lower_resource_requirements'],'new_species':False},'cohort'))
        stages.append(phase(key+'_'+label,text,records,[] if i==0 else [cap]))
    endings=[]
    for status,state in [('bounded_success','active_bounded_use'),('partial_success','partial'),('abandonment','abandoned')]:
        end=phase(key+'_'+status,name+' left documented '+state.replace('_',' ')+' of its limited goal. '+text,[rec('site',key+'_remains',{'state':state}),rec('observation',key+'_outcome',{'bounded_success':status=='bounded_success','boundary_conquest':False,'consciousness':'unknown'})],[cap])
        endings.append([end])
    if key=='cortical_array':
        endings.append(variant('collective_mind_fracture'))
        events[-3]['records'].append(rec('capability','memory_copying',target='participant'))
        events[-3]['records'].append(rec('observation','memory_copy_tests',{'measured_pattern_copying':True,'same_person':'unknown'}))
        for suffix,record in [('memory_convergence','memory_convergence'),('distributed_identity','distributed_identity')]:
            observed=phase('cortical_'+suffix,'Longitudinal interface logs show convergent memory patterns or distributed identity records among linked human participants; one consciousness and original-person survival remain unresolved.',[rec('observation',record,{'linked_human_cohort':True,'same_person':'unknown','one_consciousness':'unknown'}),rec('capability','memory_copying',target='participant')],['cognitive_pattern_storage'])
            endings.append([observed,key+'_bounded_success'])
    if key=='second_mind_project': endings.append(variant('autonomous_systems_crisis'))
    if key=='adaptive_simplification_program': endings.append(variant('chosen_cognitive_regression'))
    project(key,name,question,stages,endings,weights,'The Great Degeneration' if key=='adaptive_simplification_program' else '')

# Preserve canonical discoveries and bounded regional pressures. Removed Scar
# concepts are not retained as misleading current collapse/response variants.
kept=[e for e in old['events'] if e['id'].startswith(('discovery_','v4_','response_','collapse_')) and e['category'] in ['discovery','pressure','phase']]
for e in kept:
    if any(k in json.dumps(e) for k in ['continuity_transfer','identity_collapse','v4_lineage_persecution']): continue
    e=copy.deepcopy(e)
    if e['id']=='v4_continuity_crisis':
        e['requires']=['cognitive_pattern_storage']
    if e['id'] in ['v4_identity_dispute','response_identity_registry']:
        e['requires']=['conflicting_identity_records']
    events.append(e)
pressure=copy.deepcopy(old['pressures'])
pressure=[p for p in pressure if p['id']!='lineage_persecution']
for p in pressure:
    if p['id']=='continuity_crisis': p['requires']=['cognitive_pattern_storage']
    if p['id']=='identity_dispute': p['requires']=['conflicting_identity_records']
responses=copy.deepcopy(old['responses'])
for row in responses:
    if row['id']=='identity_registry': row['requires']=['conflicting_identity_records']
    row['collapses']=[x for x in row['collapses'] if x not in ['identity_collapse','continuity_transfer']]
    if not row['collapses']: row['collapses']=['administrative_breakdown']
# Scar causation defines actual identity/capability context for later pressures.
for e in events:
    if e['category']=='scar' and e['id'].startswith('record_severance__'):
        e['records'].append(rec('capability','conflicting_identity_records',target='participant'))
    if e['category']=='scar' and e['id'].startswith(('mass_morphogenic_event__','mechanogenic_assimilation__','chosen_cognitive_regression__','imposed_cognitive_regression__')):
        e['records'].append(rec('capability','population_modification',target='participant'))

data=dict(revision='history-v4-authored-2',projects=projects,scars=scars,events=events,scenarios=[],discoveries=old['discoveries'],pressures=pressure,responses=responses,collapses=[x for x in old['collapses'] if x not in ['identity_collapse','continuity_transfer']])
(ROOT/'content/history/history_v4.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
# Current culture hooks follow semantic records; existing doctrine breadth stays.
p=ROOT/'content/culture/faction_culture_v4.json'
culture=json.loads(p.read_text())
replacements={'project:genome_ark':'project:genome_archive_project','scar:biological_shutdown':'scar:habitable_zone_loss','scar:machine_insurrection':'scar:autonomous_systems_crisis','scar:identity_collapse':'scar:record_severance','scar:continuity_transfer':'scar:record_severance'}
def migrate(value):
    if isinstance(value,dict): return {k:migrate(v) for k,v in value.items()}
    if isinstance(value,list): return [migrate(v) for v in value]
    return replacements.get(value,value) if isinstance(value,str) else value
p.write_text(json.dumps(migrate(culture),ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(f'Authored {len(projects)} Projects, {len(scars)} Scars, {len(events)} event definitions.')
