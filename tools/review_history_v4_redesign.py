"""Render compact readable original records; no invented showcase histories."""
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'docs/reviews/history_v4_redesign'
samples=json.loads((OUT/'samples.json').read_text())
blocks=[]
for sample in samples:
    raw=sample['raw']; lines=[f"## Seed {sample['seed']}"]
    lines.append('Objective chronology: '+' | '.join(f"{e['year']}:{e['narrative_key']}({e['cause_domain']})" for e in raw['objective_timeline']))
    for p in raw['present']['civilizational_projects']:
        lines.append(f"Project: {p['archetype']} / {p['status']} / {p['start_year']}..{p['end_year']} / {p['success_policy']} / actor={p['participant_id']} / phases={','.join(p['phase_event_ids'])}")
    for s in raw['present']['civilizational_scars']:
        lines.append(f"Scar: {s['record_id']} / actor={s['entity_id']} / project={s['project_id'] or 'none'} / source={s['source_event_ids']} / facts={json.dumps(s['data'],ensure_ascii=False)}")
    for e in raw['objective_timeline']:
        records=[r for r in e['effects'] if r['kind']=='history_record' and (r['record_id'].startswith('diminution_') or r['record_id'] in ['cognitive_consent','chosen_generational_effect','orbital_objects','orbital_descent','orbital_impacts','coordinate_discrepancy','autonomous_prototype_behavior','linked_human_cohort','simplification_longitudinal_records','prior_registry_coverage'])]
        for r in records: lines.append(f"Source observation {e['year']} {e['id']} {r['record_id']} / reference={r['reference_id']} / causes={e['cause_event_ids']} / facts={json.dumps(r['data'],ensure_ascii=False)}")
    lines.append('Present sites: '+'; '.join(f"{f['id']} ["+', '.join(f"{o['record_id']}:{o['data']}" for o in f['observations'])+']' for f in raw['present']['historical_facilities']))
    lines.append('Present factions: '+','.join(f['id'] for f in raw['present']['active_factions']))
    for p in sample['cultures'][:2]:
        i=p['identity_profile']
        lines.append(f"Culture {p['faction_id']}: {i['interpretation_mode']}/{i['adaptive_stance']}/{i['memory_frame']}; traits="+','.join(t['id'] for t in p['society_traits'])+'; doctrines='+','.join(d['id'] for d in p['doctrines']))
    seen={}
    for claim in raw['historical_claims']:
        event=claim['referenced_event_id']
        if event.startswith('v4_') or event=='h_discovery':
            seen.setdefault(event,0)
            if seen[event]<2:
                lines.append(f"Claim {claim['claimant_entity_id']}/{event}: {claim['interpretation']}")
                seen[event]+=1
    blocks.append('\n'.join(lines))
(OUT/'review_packet.md').write_text('# Raw history review packet\n\n'+'\n\n'.join(blocks)+'\n',encoding='utf-8')
for start in range(0,len(blocks),12):
    (OUT/f'review_packet_{start//12+1}.md').write_text('\n\n'.join(blocks[start:start+12])+'\n',encoding='utf-8')
print(f'Built {len(blocks)} raw readable review entries.')
