"""Assemble manually read/scored notes; never generates qualitative scores."""
import argparse, hashlib, json, re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
base = root / 'docs/reviews/history_v5'
parser = argparse.ArgumentParser()
parser.add_argument('round', choices=['round1', 'round2'])
args = parser.parse_args()
selection = json.loads((base / f'selection_{args.round}.json').read_text(encoding='utf-8'))
seeds = selection['seeds']
metrics = ['Lore Fit', 'Historical Plausibility', 'Interest', 'Political Diversity',
           'Imaginative Space', 'Non-Repetition', 'Temporal Depth', 'Gameplay Potential']
rows, defects = [], {}
samples = [f'# Raw samples — {args.round}', '',
           'OS randomness was drawn after the completed corpus; files are immutable snapshots.', '',
           '| Seed | Raw lines | SHA256 | Full reading note |', '|---|---:|---|---|']
for seed in seeds:
    name = f'seed_{seed:04d}.md'
    path = base / f'raw_{args.round}' / name
    note = (base / f'reading_notes_{args.round}' / name).read_text(encoding='utf-8')
    match = re.search(r'Gameplay Potential\):\s*([\d., ]+)\.', note)
    assert match, name
    values = [float(x) for x in match[1].split(',')]
    assert len(values) == 8
    rows.append((seed, values, note))
    defect = re.search(r'Observed defects:(.*?)(?:\n\n|$)', note, re.S)
    if defect:
        for item in re.split(r';\s*', defect[1].replace('\n', ' ')):
            key = ' '.join(item.strip().rstrip('.').split())
            key = {'duplicate explicit cause IDs':'duplicate cause IDs', 'unsupported capability':'unsupported capability inference', 'unrelated evidence bundling':'unrelated evidence bundled under one subject', 'salient history omitted':'salient history omitted from major questions', 'hostile machines presented as cooperative maintenance':'unsupported cooperative machine evidence', 'redundant questions':'redundant major questions'}.get(key,key)
            if key and key != 'none': defects[key] = defects.get(key, 0) + 1
    raw = path.read_bytes()
    samples.append(f'| {seed} | {len(raw.decode("utf-8").splitlines())} | `{hashlib.sha256(raw).hexdigest()}` | [note](reading_notes_{args.round}/{name}) |')
means = [sum(row[1][i] for row in rows) / len(rows) for i in range(8)]
ranked = sorted(rows, key=lambda row: (sum(row[1]) / 8, row[0]))
lines = [f'# Qualitative review — {args.round}', '',
         'All20 raw histories were read from beginning to end, including effects, Traces, Questions, hooks and Claims. Eight scores are manual judgments on a10-point scale. These are not engine-play scores.', '',
         '| Seed | ' + ' | '.join(metrics) + ' | Overall |', '|---|' + '---:|' * 9]
for seed, values, _ in rows:
    lines.append('| ' + str(seed) + ' | ' + ' | '.join(f'{x:.1f}' for x in values) + f' | {sum(values)/8:.3f} |')
lines.append('| Mean | ' + ' | '.join(f'{x:.3f}' for x in means) + f' | {sum(means)/8:.3f} |')
for title, group in [('Best3 by unweighted eight-score mean', list(reversed(ranked[-3:]))), ('Worst3 by the same rule', ranked[:3])]:
    lines.extend(['', f'## {title}', ''])
    for seed, values, note in group:
        paragraph = note.split('Two concrete hooks:')[0].split('Gameplay Potential):')[1]
        paragraph = re.sub(r'^\s*[\d., ]+\.\s*', '', paragraph).strip()
        lines.append(f'- Seed{seed}: {sum(values)/8:.3f}. {paragraph}')
lines += ['', '## Defect incidence', '',
          'Counts are worlds with the defect recorded in their full-reading note, not individual occurrences. Different tags can overlap.', '',
          '| Defect | Worlds |', '|---|---:|']
lines += [f'| {key} | {n} |' for key, n in sorted(defects.items(), key=lambda item: (-item[1], item[0]))]
lines += ['', '## Every world and its two concrete hooks', '']
for seed, _, note in rows:
    lines += [f'### Seed{seed}', '', note]
(base / f'qualitative_review_{args.round}.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
(base / f'samples_{args.round}.md').write_text('\n'.join(samples) + '\n', encoding='utf-8')
(base / f'qualitative_scores_{args.round}.json').write_text(json.dumps(dict(metrics=metrics, means=means, scores={str(seed): values for seed, values, _ in rows}, defects=defects, best=[r[0] for r in reversed(ranked[-3:])], worst=[r[0] for r in ranked[:3]]), indent=2) + '\n', encoding='utf-8')
print(json.dumps(dict(round=args.round, means=means, best=[r[0] for r in reversed(ranked[-3:])], worst=[r[0] for r in ranked[:3]], defects=defects), indent=2))
