"""Aggregate delivery tables from the measured corpus, never from lore prose."""
from pathlib import Path
import argparse,json

root=Path(__file__).resolve().parents[1]
review=root/'docs/reviews/history_v5'
parser=argparse.ArgumentParser();parser.add_argument('round',choices=['round1','round2']);args=parser.parse_args()
d=json.loads((review/f'statistics_{args.round}.json').read_text(encoding='utf-8'))
content=json.loads((root/'content/history/history_v5_archaeology.json').read_text(encoding='utf-8'))
catalog=json.loads((root/'content/history/history_v5.json').read_text(encoding='utf-8'))
# Measured reached + unreachable IDs retain the historical definition inventory.
# Do not report today's enlarged catalog as round1's authored breadth.
for collection in ['traces','questions','interactions']:
    measured=set(d['content_reachability'][collection]) | set(d['unreachable'][collection])
    content[collection]=[dict(id=key) for key in sorted(measured)]
lines=[f'# Corpus statistics — {args.round}',f"\nGeneration5 / architecture3 / {d['authored_revision']} / {d['archaeology_revision']}.",f"Seeds1–{d['worlds']}; each generated twice and compared. Hard failures: `{d['hard_failures']}`.",f"Elapsed{d['elapsed_seconds']:.1f}s. All figures describe generated contracts, not actual encounters or executed game actions."]
lines += ['\n## Sparse causality',f"Event explanation proxy (event has explicit cause/prerequisite):{d['explanation_coverage']:.2%}; outside Project/Scar:{d['non_project_scar_explanation_coverage']:.2%}. This is not a percentage of current lifestyles explained.",f"Edge target categories: `{d['causal_edges']}`. Historical associations are excluded.",f"Episode exposure: `{d['episodes']}`. Different recorded episodes do not require explanatory closure.",'\n## Family structure','| Family | Worlds | Mean factions | Count distribution | Direct heirs/current | Newcomers/current | Lineage depth distribution |','|---|---:|---:|---|---:|---:|---|']
if 'causal_density' in d:
    lines.insert(8, f"Actual edge scopes: `{d['causal_density']}`. These categories are disjoint. Internal means both ends belong to the same recorded Project/Scar facility. Topology includes population/institution lineage edges. Boundary prerequisites identify available population, formation, planning context or reusable ruins, not inferred motives. Cross-episode counts all remaining edges crossing recorded episode scopes, including social incident dependencies; it is not forced to zero.")
for family,row in sorted(d['families'].items()):
    mean=sum(int(k)*v for k,v in row['faction_count_distribution'].items())/row['worlds']
    lines.append(f"| {family} | {row['worlds']} | {mean:.2f} | `{row['faction_count_distribution']}` | {row['direct_heirs']/row['active_factions']:.1%} | {row['newcomers']/row['active_factions']:.1%} | `{row['lineage_depth_distribution']}` |")
for family,row in sorted(d['families'].items()):lines += [f"\n### {family}",f"Current formation counts: `{row['formation_distribution']}`.",f"Historical operation counts: `{row['operations']}`."]
lines += ['\n## Formation change from v4']
baseline=review/'topology_v4_baseline.json'
if baseline.exists():
    old=json.loads(baseline.read_text(encoding='utf-8'));a=old['formation_distribution'];b=d['formation_distribution'];na=sum(a.values());nb=sum(b.values())
    lines += ['Same seed interval; v4 authoritative political scaffold only. Civilizational/name layers do not alter these formations. Different version RNG domains mean this is a distribution comparison.', '| Current formation | v4 count | v4 share | v5 count | v5 share |','|---|---:|---:|---:|---:|']
    for key in sorted(set(a)|set(b)):lines.append(f"| {key} | {a.get(key,0)} | {a.get(key,0)/na:.2%} | {b.get(key,0)} | {b.get(key,0)/nb:.2%} |")
lines += ['\n## Content breadth',f"Authored Project stage narratives:{sum(len(x['stages']) for x in catalog['projects'])}. Trace archetypes:{len(content['traces'])}; Question archetypes:{len(content['questions'])}; interaction variants:{len(content['interactions'])}; action types:{len(content['actions'])}.",'| Contract/world | Mean |','|---|---:|']
for key in ['traces','major_questions','minor_discoveries','interactions','consequences','contexts']:lines.append(f"| {key} | {d['totals'][key]/d['worlds']:.2f} |")
lines += [f"\nTrace category counts: `{d['trace_categories']}`.",f"Question classification counts: `{d['question_classifications']}`.",f"Evidence links/question:{d['totals']['evidence_links']/d['totals']['major_questions']:.2f}; distinct source events/question:{d['totals']['question_source_diversity']/d['totals']['major_questions']:.2f}; contexts/question:{d['totals']['question_context_diversity']/d['totals']['major_questions']:.2f}.",f"Shared Question Traces:{d['totals']['shared_question_traces']}; Question budget distribution:`{d['question_budget_distribution']}`.",f"Interaction family counts:`{d['interaction_types']}`. Action proposal types:`{d['action_types']}`.",'Implemented world action executions:0. Gameplay families are structured consumer contracts; they require existing runtime prerequisites. Evidence gathering and permission proposals are implemented. No percentage below should imply combat/stealth/repair/map execution has shipped.']
if 'gameplay_metrics' in d:
    g=d['gameplay_metrics']
    lines += [f"\nMultiple-use Traces:{g['traces_multiple_possible_uses']}. Questions with consequences:{g['questions_with_consequences']}/{d['totals']['major_questions']}. Interaction families/question distribution:`{g['interaction_families_per_question']}`.",f"Documentary-only evidence Questions:{g['documentary_only_question_percentage']:.2f}%; passive-reading-only contract Questions:{g['passive_reading_only_contract_percentage']:.2f}%. Passive reading means every offered hook is read_telemetry/read_guidance_log. Negotiation, custody, recovery and comparison are structured contracts; they count beyond reading only at the contract level. Engine-bound Questions:{g['engine_bound_question_count']}. All generated map/encounter/action bindings remain integration work."]
for collection in ['traces','questions','interactions']:
    reached=d['content_reachability'][collection];rows=sorted(reached.items(),key=lambda x:(-x[1],x[0]));total=len(content[collection])
    lines += [f'\n## {collection} exposure',f"Reached{len(reached)}/{total} ({len(reached)/total:.1%}); unreachable:`{d['unreachable'][collection]}`.",'\nTop10 (world exposure):','| Archetype | Worlds | Exposure |','|---|---:|---:|']
    for key,n in rows[:10]:lines.append(f'| {key} | {n} | {n/d["worlds"]:.2%} |')
    lines += ['\nBottom10 reached (world exposure):','| Archetype | Worlds | Exposure |','|---|---:|---:|']
    for key,n in sorted(reached.items(),key=lambda x:(x[1],x[0]))[:10]:lines.append(f'| {key} | {n} | {n/d["worlds"]:.2%} |')
(review/f'corpus_statistics_{args.round}.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
print('Wrote corpus tables',args.round)
