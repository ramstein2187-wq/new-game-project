"""Independent OS-random sample; never select or replace a seed by its output."""
import argparse,json,random,datetime
from pathlib import Path

root=Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('round',choices=['round1','round2'])
args=parser.parse_args()
review=root/'docs/reviews/history_v5'
destination=review/f'selection_{args.round}.json'
if destination.exists():raise SystemExit('Selection already exists; no resampling permitted.')
statistics=json.loads((review/f'statistics_{args.round}.json').read_text(encoding='utf-8'))
if statistics['worlds']!=5000 or statistics['hard_failures']:raise SystemExit('A clean5000 corpus is required before selection.')
excluded=[]
if args.round=='round2':excluded=json.loads((review/'selection_round1.json').read_text(encoding='utf-8'))['seeds']
seeds=random.SystemRandom().sample([x for x in range(1,5001) if x not in excluded],20)
record=dict(round=args.round,method='Python SystemRandom using OS entropy, independent of generator RNG; drawn before raw review; no rerolls',selected_at=datetime.datetime.now(datetime.timezone.utc).isoformat(),seeds=seeds,excluded_seeds=excluded)
destination.write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(record,ensure_ascii=False))
