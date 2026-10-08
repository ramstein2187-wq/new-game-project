"""Compare measured corpora and manually scored disjoint full raw reviews."""
import json, re
from collections import Counter, defaultdict
from pathlib import Path

base=Path(__file__).resolve().parents[1]/'docs/reviews/history_v5'
scores=[json.loads((base/f'qualitative_scores_round{i}.json').read_text(encoding='utf-8')) for i in (1,2)]
stats=[json.loads((base/f'statistics_round{i}.json').read_text(encoding='utf-8')) for i in (1,2)]
targets=[9,8,8,8,8.5,8,8,8]
assert set(scores[0]['scores']).isdisjoint(scores[1]['scores'])
assert all(len(s['scores'])==20 for s in scores)
assert all(s['worlds']==5000 and not s['hard_failures'] for s in stats)
lines=['# Before / after — independent full raw reviews','',
       'Revision1 and revision2 each have5000 generated/validated/replayed histories. Each review uses20 OS-random worlds; round2 excludes all round1 seeds. Scores are honest manual judgments, not a paired experiment or proof of actual engine play.','',
       '| Axis | Round1 mean | Round2 mean | Change | Target | Round2 result |', '|---|---:|---:|---:|---:|---|']
for name,a,b,target in zip(scores[0]['metrics'],scores[0]['means'],scores[1]['means'],targets):
    lines.append(f'| {name} | {a:.3f} | {b:.3f} | {b-a:+.3f} | {target:.1f} | {"met" if b>=target else "missed"} |')
lines += ['', '## Worst3 by the same eight-score mean', '', '| Review | Seeds | Mean of their overall scores |', '|---|---|---:|']
for i,s in enumerate(scores,1):
    worst_mean=sum(sum(s['scores'][str(seed)])/8 for seed in s['worst'])/3
    lines.append(f'| Round{i} | {s["worst"]} | {worst_mean:.3f} |')
lines += ['', '## Recurring defects', '', 'Counts are reviewed worlds with a recorded defect, not occurrences. Zero means no such defect was documented in this20-world sample; it is not a universal semantic-safety proof. New round2 tags (generic action menus, procedural wording, missing contacts, repetitive formation) were not systematically scored in round1: their round1 zero is unrecorded, not proof of absence or regression. Redundant questions and redundant major questions are one normalized tag.', '', '| Recorded defect | Round1 /20 | Round2 /20 |', '|---|---:|---:|---|']
for key in sorted(set(scores[0]['defects'])|set(scores[1]['defects'])):
    lines.append(f'| {key} | {scores[0]["defects"].get(key,0)} | {scores[1]["defects"].get(key,0)} |')
lines += ['', '## Political distribution', '',
          'The v5 topology algorithm did not change during the evidence/prose revision. The measured distributions below test that separation; the v4→v5 distribution comparison is in corpus_statistics.md.', '',
          '| Current formation | Round1 count | Round2 count | Round2 share |', '|---|---:|---:|---:|']
total=sum(stats[1]['formation_distribution'].values())
for key in sorted(set(stats[0]['formation_distribution'])|set(stats[1]['formation_distribution'])):
    a=stats[0]['formation_distribution'].get(key,0);b=stats[1]['formation_distribution'].get(key,0)
    lines.append(f'| {key} | {a} | {b} | {b/total:.2%} |')
lines += ['', '## Observed Project phase prose repetition', '',
          'An observation is a mandatory Project phase event with a v5_phase source record. The numerator counts observations beyond the first instance of each exact phase sentence. This is a narrow measured prose-reuse fraction, not a semantic-progression score; samples can contain different Projects.', '',
          '| Review | Phase observations | Phase keys | Distinct sentences | Reused-sentence fraction | Keys with two observed alternatives |', '|---|---:|---:|---:|---:|---:|']
phase_metrics=[]
for i in (1,2):
    counts=defaultdict(Counter)
    for path in (base/f'raw_round{i}').glob('*.md'):
        sentence=''
        for line in path.read_text(encoding='utf-8').splitlines():
            match=re.match(r'^-?\d+ · \w+ · (.*)$',line)
            if match:sentence=match[1]
            if line.startswith('Fact: '):
                row=json.loads(line[6:])
                if str(row.get('record_id','')).startswith('v5_phase__'):
                    counts[row['data']['documented_step']][sentence]+=1
    observations=sum(sum(v.values()) for v in counts.values())
    unique=sum(len(v) for v in counts.values())
    reuse=(observations-unique)/max(1,observations)
    alternatives=sum(len(v)>1 for v in counts.values())
    phase_metrics.append(dict(round=i,observations=observations,phase_keys=len(counts),distinct_sentences=unique,reuse_fraction=reuse,keys_with_multiple_alternatives=alternatives))
    lines.append(f'| Round{i} | {observations} | {len(counts)} | {unique} | {reuse:.2%} | {alternatives} |')
lines += ['', '## Content and gameplay contracts', '', '| Metric | Round1 | Round2 |', '|---|---:|---:|']
for collection in ['traces','questions','interactions']:
    lines.append(f'| Reached {collection} definitions | {len(stats[0]["content_reachability"][collection])} | {len(stats[1]["content_reachability"][collection])} |')
for key in ['traces','major_questions','interactions','consequences','contexts']:
    lines.append(f'| {key}/world | {stats[0]["totals"][key]/5000:.3f} | {stats[1]["totals"][key]/5000:.3f} |')
lines += [f'| Reached interaction families | {len(stats[0]["interaction_types"])} | {len(stats[1]["interaction_types"])} |',
          f'| Reached action types | {len(stats[0]["action_types"])} | {len(stats[1]["action_types"])} |', '',
          'Family count alone did not improve: revision1 already reached20 but attached many variants to incompatible objects. Revision2 adds exact material eligibility, actual premise/subject checks and current execution requirements. The qualitative notes assess whether that general correction worked in fresh worlds.', '',
          'Evidence collection and corroborated permissions are implemented. Combat, stealth, repairs, biological application, Actor dialogue and map placement are consumer contracts; implemented historical-world action executions remain0. Candidate current positions require dialogue confirmation and do not establish historical motives.']
(base/'before_after.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
(base/'prose_repetition.json').write_text(json.dumps(phase_metrics,indent=2)+'\n',encoding='utf-8')
print('Wrote honest before/after comparison from both complete reviews.')
