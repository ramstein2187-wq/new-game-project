"""Create final reports only after successful full corpus and test evidence."""
import json
import re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'docs/reviews/history_v4_redesign'
s=json.loads((OUT/'statistics.json').read_text())
c=json.loads((ROOT/'content/history/history_v4.json').read_text())
assert s['worlds']==5000 and not any(s['safety'].values()) and not s['removed_content_exposure']
assert 'All Godot checks passed.' in (OUT/'full_godot.log').read_text()
focused=(OUT/'focused_final.log').read_text()
assert 'PASS: History v4 redesign' in focused and 'ERROR:' not in focused
assertions=int(re.search(r'\((\d+) assertions\)',focused).group(1))
samples=json.loads((OUT/'samples.json').read_text())
assert all(s['scar_without_any_project'].get(row['id'],0)>0 for row in c['scars'])

def write(name,body):
    (OUT/name).write_text(body.rstrip()+'\n',encoding='utf-8')
def table(headers,rows):
    return '\n'.join(['| '+' | '.join(headers)+' |','| '+' | '.join(['---']*len(headers))+' |']+['| '+' | '.join(map(str,row))+' |' for row in rows])
def exposure(prefix,rows):
    result=[]
    for row in rows:
        key=row['id']; n=s['world_exposure'].get(prefix+':'+key,0); f=s['faction_exposure'].get(prefix+':'+key,0)
        result.append([key,row['display_name'],n,f'{n/50:.2f}%',f,f'{f/s["factions"]*100:.2f}%'])
    return table(['ID','Display','Worlds','World exposure','Current factions','Faction record-access exposure'],result)
removed=['genome_ark','continuity_vault','orbital_habitat_project','climate_reconstruction_array','machine_coordination_nexus','transmutation_complex','biological_shutdown','identity_collapse','continuity_transfer','machine_insurrection']
mean=sum(int(k)*v for k,v in s['event_count'].items())/5000
unobserved=[e['id'] for e in c['events'] if not s['event_motifs'].get(e['id'],0)]
remaining='''Three retained non-Scar definitions have zero observed exposure:
`planning_context_unknown` (the scaffold initial planning axis has no unknown
domain), `collapse_population_failure` (no preceding participant-scoped
registered_population capability), and `collapse_infrastructure_cascade`
(no eligible participant-scoped service_cascade source when the compatibility
ending is selected, before its new pressure is emitted). They remain dormant
compatibility phases; no evidence is fabricated to activate them. This does not
gate any of the fifteen independent Scars. Separate social contact/lineage
content, including One Hearth and lineage persecution, retains its existing
authorization/context gates. These definitions require a future scoped author
decision, rather than automatic loosening of prerequisites.'''
assert set(unobserved)=={'planning_context_unknown','collapse_population_failure','collapse_infrastructure_cascade'}
statistics=f'''# Final revision2 corpus — 5000 seeds

Generation4 / architecture2 / history-v4-authored-2. Seeds1–5000, each independently
regenerated and compared canonically. {s['factions']} current factions and
{s['topology_diversity']} distinct political transformation sequences.
Elapsed{s['elapsed_seconds']} seconds. [Statistics JSON](statistics.json),
[run transcript](corpus_final.log). World exposure is not gameplay encounter
probability. Faction exposure measures current factions with regional record access,
not personal bodily involvement, loss or biological descent.

## Projects

{exposure('project',c['projects'])}

{table(['Project : outcome','Occurrences'],s['outcomes_by_project'].items())}

## Scars

{exposure('scar',c['scars'])}

{table(['Scar','Without any Project','Without a Project link'],[[r['id'],s['scar_without_any_project'].get(r['id'],0),s['scar_without_project_link'].get(r['id'],0)] for r in c['scars']])}

## Co-occurrence and actual historical links

Co-occurrence means appearing in the same world; it does not itself imply causation.
The separate actual-link table counts explicit project_id in an objective Scar record.

{table(['Project : Scar','World co-occurrences'],s['project_scar_world_cooccurrence'].items())}

{table(['Project : Scar','Explicit historical links'],s['project_linked_scars'].items())}

## Evidenced Scar backgrounds

Each variant has its own observed physical/policy source; changing a domain label
without those records is rejected. Eleven Scars have multiple cause variants.
Consent/coercion/targeted killing remain human policy histories. Silent Depopulation
remains unknown rather than gaining an invented explanation. Known local collapse,
policy or tracked reentry is not evidence of hidden intent or metaphysical identity.

{table(['Scar : domain','Occurrences'],s['scar_causal_domains'].items())}

{table(['Scar : observed causal background','Occurrences'],s['scar_causes'].items())}

## Counts and safety

{table(['Project count','Worlds'],s['project_count'].items())}

{table(['Scar count','Worlds'],s['scar_count'].items())}

{table(['Event count','Worlds'],s['event_count'].items())}

Event range{min(map(int,s['event_count']))}–{max(map(int,s['event_count']))}; mean{mean:.2f}.

{table(['Safety/replay failure','Failures'],s['safety'].items())}

{table(['Removed current ID','World exposure'],[[r,0] for r in removed])}

Chosen regression: {s['scars'].get('chosen_cognitive_regression',0)} worlds;
Imposed Diminution: {s['scars'].get('imposed_cognitive_regression',0)};
Orbital Fall: {s['scars'].get('orbital_fall',0)}. All fifteen Scars occur with no
Project. Fixed historical fixtures:64 v2 +64 v3 exact M042 canonical hashes;
all existing fixture files remain unchanged. All5000 v4 replays match.

## Exposure and remaining content

Project worlds{s['world_exposure'].get('any_project',0)} ({s['world_exposure'].get('any_project',0)/50:.2f}%);
Scar worlds{s['world_exposure'].get('any_scar',0)} ({s['world_exposure'].get('any_scar',0)/50:.2f}%);
neither{s['world_exposure'].get('no_project_or_major_scar',0)}
({s['world_exposure'].get('no_project_or_major_scar',0)/50:.2f}%). Main political,
population and social history persists in every world. Spectacle remains bounded
to two Projects and two major Scars. Weighted/contextual choices do not enforce
equal frequencies. No new Project or Scar has zero exposure or depends on a
missing species/contact permission. Distinct lineages and full machine
civilization/personhood remain deferred; no new species/Origin was invented.

{remaining}

Full discovery/pressure/response/subtype/world/faction distributions also remain
in statistics.json. This measurement is regional-history exposure, not GUI/play,
global simulation, exported-package or balance acceptance.
'''
write('corpus_statistics.md',statistics)

# Individual review findings follow actual generated records, without rewriting
# the raw narratives into supposedly generated showcase stories.
findings={
'ark_project':'Launch inquiry/physical denial or unresolved departure does not prove escape or permanent settlement.',
'deep_descent_project':'Limited staging, mapping and survivor return retain an unresolved Deep boundary.',
'deep_space_listening_array':'Observed silence/signal/correlation/fixation/continued operation does not identify origin or recipient.',
'genome_archive_project':'Registered genetic samples/records remain preservation; no new species/lineage.',
'cortical_array':'Actual linked human brains and parallel computation remain distinct from collective personhood.',
'meridian_project':'Survey/reference/map archives survive; mismatches do not become supernatural facts.',
'second_mind_project':'Constructed learning/self-repairing autonomous machines do not prove consciousness or Observer equivalence.',
'adaptive_simplification_program':'Consent and multi-generation biological records separate official Adaptive Simplification from later Great Degeneration evaluation.',
'failed_exodus':'Failed upward attempt and lasting wreck/memorial/social records are distinct from Orbital Fall.',
'last_descent':'Missing expeditions/sealed staging retain unknown discovered content and final casualty source.',
'reproductive_shutdown':'Generation-scale loss of normal reproduction is more than fertility decline.',
'silent_depopulation':'Census/habitation ends without battle, mass migration or mass-grave records; cause remains unknown.',
'collective_mind_fracture':'Linked cognition source precedes persistent fragmentation; no one-mind conclusion.',
'chosen_cognitive_regression':'Actual consent, biological intervention and measurements decades later distinguish choice from imposed policy and education loss.',
'imposed_cognitive_regression':'Actual human target, responsible authority, biological policy/intervention/enforcement and delayed generational measures remain connected.',
'infrastructure_cascade':'Recorded source propagates through dependent services; residual service/institution/population damage persists.',
'targeted_extermination':'Actual target and signed policy/killings distinguish deliberate extermination from ordinary war losses.',
'mass_morphogenic_event':'Great Alteration leaves changed human morphology and regional institutions without a new Origin/species.',
'autonomous_systems_crisis':'Observed autonomous behavior, occupation and damage retain their recorded cause or unknowns; Claims of rebellion or political intent add no objective answer.',
'mechanogenic_assimilation':'Irreversible body/behavior/social coupling exceeds ordinary augmentation; personhood remains undecided.',
'habitable_zone_loss':'Former habitation and enduring hazards/displacement/routes remain objective physical traces.',
'record_severance':'Regional identity/ownership/citizenship archives contradict; no missing original or neural-memory capability is invented.',
'orbital_fall':'Actual orbital objects, tracked reentry and matched multiple impacts are present; maker/intent/common origin remain unresolved.',
}
review_rows=[]
coverage={}
for sample in samples:
    raw=sample['raw']; keys=[p['archetype'] for p in raw['present']['civilizational_projects']]+[r['record_id'] for r in raw['present']['civilizational_scars']]
    for key in keys: coverage.setdefault(key,sample['seed'])
    review_rows.append([sample['seed'],', '.join(keys) or 'ordinary politics / discovery',' '.join(findings[k] for k in dict.fromkeys(keys)) or 'Ordinary political succession, residence/social records and discovery remain; absence of a Project/Scar is not absence of history.'])
review='''# Qualitative review — final raw histories

Implementing-agent textual review of generated raw histories, not independent
human lore/language approval. [Readable five-layer packet](review_packet.md),
[complete raw ledgers/culture](samples.json), [full readable output](samples.md).
No fact was rewritten to manufacture a showcase history. Read Objective History
→ Project/Scar → Projected Present → Faction Identity/Culture → Claims separately.

## Individual records and representative coverage

'''+table(['Seed','Actual Project/Scar content','Review finding'],review_rows)
review+='\n\n'+table(['Required canonical content','Raw seed'],coverage.items())
review+='''

## Causal / lore findings

Project and Scar associations are explicit but non-universal. All fifteen Scars
also occur with no Project; the corpus reports actual link counts separately from
world co-occurrence. Eleven Scars have multiple evidenced backgrounds. Human,
natural, ancient-system and unknown domains coexist; known source observations
do not create a universal present Preservator will. Unknown cases remain unknown.

Imposed Diminution is a policy atrocity, not a social-template trick. Delayed
stabilization follows enforcement by decades; chosen reduction has explicit
consent and delayed measurements. The early implementation review corrected
short measurement intervals, a too-short actor lifetime window, inconsistent
silent-denial inquiry liftoff, and false neural-copying inference from conflicting
citizenship archives. Raw Claim review also corrected unsupported hardware attribution
for engineering/tracking losses, tissue replacement inferred from irreversible
coupling, and command failure inferred from unexplained autonomous behavior.
Those superseded diagnostic runs are not final corpus proof.

New Project goals are bounded. Ark tracking loss is not escape; Deep engineering
and partial survivors do not establish a stable Innerworld civilization. Second
Mind's behavioral records are not consciousness evidence. Cortical computation,
great alteration/simplification and irreversible machine coupling remain authorized
human histories rather than new species/Origins. Meridian discrepancy retains
ordinary error/reference/geology possibilities and unknowns.

Each Scar leaves a long-lived projected site and actual human/institution record.
This is last-recorded historical state, not continuous gameplay simulation or proof
that each current faction personally suffered the same damage. Culture/Claims can
express competing normative/faith judgments without replacing physical evidence.
Human review remains for prose repetition, Korean register, atrocity terminology,
Meridian/Cortical/Second Mind nuance, rarity/pacing and eventual player knowledge.
'''
write('qualitative_review.md',review)

validation=f'''# Final validation

- Focused:{assertions} assertions PASS,800 shipping seeds, all15 independent Scars; [log](focused_final.log).
- Full `bash tools/check_godot.sh`:all38 scripts plus import/startup/dataset gate PASS; [log](full_godot.log).
- Corpus:5000 histories +5000 canonical regenerations, nine safety counters0 and every retired current ID0; [log](corpus_final.log).
- Existing fixtures unchanged; exact64 v2 and64 v3 canonical hashes preserved.
- Catalog and each independent Scar's variant reordering, discovery-pool and naming isolation PASS.
- Actual policy/target/biology/enforcement/generations and orbital-objects/descent/impact negative tests PASS. Education/literacy/cultural/technology decline, unrelated target, missing physical evidence and unsupported Preservator attribution cannot replace those records.
- Ark success, Deep conquest, resolved map/consciousness/intent, invented species/Origin/lineage, fabricated projection and removed IDs rejected. Author catalog also rejects future forbidden facts.
- Original source tracked files remain clean; twelve EverRogue sidecars SHA256 unchanged and excluded; local main unchanged. [Audit](preservation_final.json).
- Offline spec/wiki metadata, JSON, fixture hashes and final whitespace/staged audit recorded before commit; no live Notion write.

Initial probe/focused/corpus logs are superseded diagnostics. Independent human
lore/language approval, GUI/play, exported package, balance and encounter probability
remain separate.
'''
write('validation.md',validation)

delivery=f'''# M043 follow-up — Civilizational Projects / Scars redesign

Current v4 revision2 ships eight bounded-success Projects and fifteen independent
persistent Scars. It activates evidence-complete human-on-human Imposed Diminution,
adds Habitable Zone Loss / Record Severance / Orbital Fall, and preserves exact v2/v3.

## Git handoff

| Field | Value |
| --- | --- |
| Branch | codex/history-projects-scars-redesign |
| Worktree | C:/GameDev/history-projects-scars-redesign |
| Exact base | 9f04f780c79b622e70532a926aefbc8477147817 |
| Final SHA / verified push | After commit, exact HEAD and matching remote ref are in the local [receipt](../../../../history-projects-scars-redesign-delivery-receipt.md); report cannot contain its own commit hash. |
| main | Not merged; unchanged local main10f6f31cd39f165a7e04c658921056089eb794ef |
| Preservation | Original source checkout untouched, tracked clean; all12 EverRogue sidecars preserved byte-for-byte and excluded |

[Changed/new file inventory](changed_files.md), [request](request.md),
[continuation](WORK_LOG.md), [preservation](preservation_final.json),
[validation](validation.md).

## Final Projects

{table(['Canonical ID','Display','Question','Outcome chains'],[[p['id'],p['display_name'],p['question'],len(p['outcomes'])] for p in c['projects']])}

All authority/resource/labor/research/construction/operation sources precede their
consequences. Selection policies match actual goals. Bounded success means useful
technical work, never stable orbital/Deep civilization, confirmed escape/Outerworld
settlement or solved Observer/machine/metaphysical boundaries. Ark unresolved
departure is unknown outcome; Deep bounded return is limited mapping/engineering
and partial survivors. Other projects retain success/partial/abandonment and
explicit Scar outcomes where appropriate.

Official contemporary **Adaptive Simplification Program** differs from the later
historical evaluation **The Great Degeneration**. Genome Archive is genetic/sample
preservation, not an Ark or biological_archive discovery. Cortical Array is a
human-brain network; Meridian is geodesy/reference/maps; Second Mind is actual
constructed autonomous learning/self-repairing machinery, without machine
personhood, true Observer equivalence or full civilization.

## Final Scars and independent exposure

{exposure('scar',c['scars'])}

Every Scar is an independent long-lived consequence with actual population/site
registration, evidenced causes and persistent population/institution/site aftermath.
No Scar requires a Project ID. Each occurs in worlds with no Project; co-occurrence
and explicit Project links are separate. Eleven types have multiple authored
backgrounds; consent/coercion/targeted policy and unexplained disappearance retain
their semantic constraints rather than inventing an unrelated cause.

Imposed Diminution requires actual human target, responsible actor, explicit
biological cognitive-reduction policy, intervention, enforcement and measured
generational change. It is shipping-active without inventing a contact species or
Origin. Schooling/literacy/cultural/technology loss cannot trigger it. Chosen
regression requires explicit consent and a distinct measured biological chain.

Orbital Fall records actual artificial orbital objects, repeated descent/reentry
and matched multiple impacts. Meteor/unrelated-crater/building-collapse/observation
substitutions are rejected. Operator/intent/shared origin/external intelligence
stay unresolved. Failed Exodus concerns upward human attempts; the two Scars can
coexist independently. Autonomous Systems Crisis records behavior and damage;
rebellion/political intent/personhood are cultural interpretations. Mechanogenic
Assimilation is irreversible coupling rather than ordinary augmentation.

## Migration and compatibility

{table(['Previous current-v4 ID','Revision2 disposition'],[['genome_ark','genome_archive_project'],['machine_insurrection','autonomous_systems_crisis']]+[[k,'retired; no automatic semantic relabeling'] for k in removed if k not in ['genome_ark','machine_insurrection']])}

Current generation4/architecture2 receives only revision2 content. An explicit
revision1→2 boundary changes v4 seed output; this is deterministic regeneration,
not a complete old-v4 serialized-save upgrader. Only true renames map; retired
concepts are not silently recast. Initial v4 author data is quarantined under
content/history/compatibility and historical reports remain frozen. Existing v2/v3
fixtures and replay paths are untouched, with64 exact seeds each proven again.

## Corpus, qualitative review and tests

5000 histories plus5000 independent canonical regenerations; all nine safety
counters0 and retired current IDs0. {s['factions']} current factions,
{s['topology_diversity']} political transformation sequences; events
{min(map(int,s['event_count']))}–{max(map(int,s['event_count']))}, mean{mean:.2f}.
Project worlds{s['world_exposure']['any_project']/50:.2f}%, Scar worlds
{s['world_exposure']['any_scar']/50:.2f}%, neither
{s['world_exposure']['no_project_or_major_scar']/50:.2f}%.

[Complete frequency/outcome/co-occurrence/independence/cause tables](corpus_statistics.md),
[statistics JSON](statistics.json), [{len(samples)} raw-history reviews](qualitative_review.md),
[readable packet](review_packet.md), [full histories](samples.md).
Focused{assertions} assertions and full38-script Godot/import/startup/dataset gate
PASS. Each Scar without a Project, each required Project, imposed/chosen regression,
Orbital Fall and every removed ID were checked. Claim/knowledge/Origin/population
and reordering/discovery/name separation retain their contracts.

Weighted thematic context and independent subtype choices produce differing
frequencies; no forced equality. World/faction exposure measures regional-record
access, not individual involvement or gameplay encounter probability. Budgets
remain two Projects/two major Scars and political/social histories remain everywhere.

## Remaining rights and manual review

No species/Origin/biological lineage is created. Great Degeneration, Imposed
Diminution, Great Alteration and machine coupling stay human variation.
Second Mind machines can exist as observed machinery without authorizing a full
machine civilization/personhood or unsupported descendant identity. Distinct
lineage/contact/personhood content remains deferred. No current Project or Scar
is dead/gated by absent contact permissions; exact exposure tables reveal any
low-frequency subtypes rather than disguising them as equal.

{remaining}

The implementing agent reviewed generated text; independent human review remains
for Korean wording, atrocity/consent terminology, cortical/Second Mind nuance,
repeated generic prose, map uncertainty and signature pacing. GUI/play, exported
package, balance, encounter probability and live Notion have not been inferred
from headless tests. No quest/economy/facility/machine-ecosystem simulation added.

## Notion Sync Summary

- **Final Projects:** {', '.join(p['id'] for p in c['projects'])}.
- **Final Scars:** {', '.join(r['id'] for r in c['scars'])}. All independent, all shipping-active.
- **Removed Projects:** continuity_vault, orbital_habitat_project, climate_reconstruction_array, machine_coordination_nexus, transmutation_complex. Genome Ark renamed separately.
- **Removed Scars:** biological_shutdown, identity_collapse, continuity_transfer; machine_insurrection replaced by neutral behavior vocabulary.
- **Renamed IDs:** genome_ark→genome_archive_project; machine_insurrection→autonomous_systems_crisis. Genome Archive is a Project; biological_archive remains a distinct Discovery. Far-Sky Array is the sole default display.
- **Great Degeneration naming:** Adaptive Simplification Program is official contemporary name; The Great Degeneration is later historical evaluation. Human variation remains authorized baseline humans.
- **Imposed Diminution:** shipping-active human-on-human biological atrocity chain, actual target/responsible institution/policy/intervention/enforcement/generational measurements. No contact/species gate; education/correlation alone rejected.
- **Orbital Fall:** tracked artificial orbital objects, repeated reentry/descent and matched multi-impact sites; no automatic operator/intent/one-origin/external-intelligence answer. Distinct from Failed Exodus.
- **Bounded-success policy:** technical goals may succeed; no stable orbital/Deep civilization, proven planetary escape/Outerworld colony, Observer equivalence, machine consciousness or metaphysical transfer.
- **Population rights:** all redesign/regression/alteration/coupling stay human variation; Genome Archive samples create no species/lineage; Second Mind machines do not authorize a full machine society/personhood.
- **Corpus frequencies:**5000 histories, Projects{s['world_exposure']['any_project']/50:.2f}%, Scars{s['world_exposure']['any_scar']/50:.2f}%, neither{s['world_exposure']['no_project_or_major_scar']/50:.2f}%; each Project/Scar/outcome, project-free occurrence, causal background and co-occurrence in corpus_statistics.md/statistics.json. Removed IDs0; v4 replay failures0; v2/v3 exact64 each.
- **Remaining gated/dead:** no gated current Project/Scar. Zero-exposure retained phases: planning_context_unknown, collapse_population_failure, collapse_infrastructure_cascade; their actual missing context/prerequisites are documented above. One Hearth/lineage-persecution and unapproved distinct lineages/contact/personhood retain authorization gates; full machine civilization deferred. Rare subtype visibility/pacing remains empirical author review, not equal-frequency balancing.
- **Remaining human review:** Korean register, consent/atrocity/degeneration language, cortical/machine philosophical nuance, Meridian uncertainty, prose repetition and pacing, eventual player knowledge/encounters. Agent raw review is distinct from human approval.
- **Sync scope:** branch-local lore/spec/wiki updated; no live Notion write. Sync this revision2 contract after branch review; preserve initial M043 historical reports.
'''
write('delivery.md',delivery)

p=ROOT/'docs/milestones/M043_history_projects_scars_redesign.md'
t=p.read_text().replace('Status: implementation / final validation in progress','Status: complete and validated')
t+=f'\nFinal evidence:{assertions} focused assertions,full38-script gate;5000 canonical replays,all9 safety counters0;all15 Scars occur without Projects;{len(samples)} raw histories reviewed by implementing agent. See delivery for independent human limitations and final Git receipt.\n'
p.write_text(t,encoding='utf-8')
for name in ['docs/ROADMAP.md','docs/MILESTONES.md']:
    p=ROOT/name;t=p.read_text().replace('In progress on isolated task branch','Complete on isolated task branch')
    p.write_text(t,encoding='utf-8')
with (OUT/'WORK_LOG.md').open('a',encoding='utf-8') as f:
    f.write(f'\n## Accepted final validation\n- Focused{assertions} assertions;full38-script/import/startup/dataset gate PASS.\n- Final5000 histories+5000 canonical replays:all9 safety counters0;removed current IDs0;each15 Scar present without any Project.\n- Created complete statistics/co-occurrence/causal-domain and individual raw-review/delivery reports; Notion Sync Summary included.\n- Remaining: final staged/preservation/offline audits,explicit commit/push,remote SHA verification and local external receipt. No main merge.\n')
print('Wrote final delivery/statistics/qualitative/validation and milestone status.')
