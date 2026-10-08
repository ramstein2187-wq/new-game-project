"""Audit committed review evidence without substituting automated scores for reading."""
import hashlib, json, re
from pathlib import Path

root = Path(__file__).resolve().parents[1]
base = root / 'docs/reviews/history_v5'
selected = []
raw_rows = []
for round_id in ('round1', 'round2'):
    selection = json.loads((base / f'selection_{round_id}.json').read_text(encoding='utf-8'))
    seeds = selection['seeds']
    assert len(seeds) == len(set(seeds)) == 20
    selected.append(set(seeds))
    metadata = {row['seed']: row for row in json.loads((base / f'samples_{round_id}.json').read_text(encoding='utf-8'))}
    scores = json.loads((base / f'qualitative_scores_{round_id}.json').read_text(encoding='utf-8'))
    assert set(map(int, scores['scores'])) == set(seeds)
    assert all(len(values) == 8 for values in scores['scores'].values())
    for seed in seeds:
        path = base / f'raw_{round_id}' / f'seed_{seed:04d}.md'
        raw = path.read_bytes()
        # Round1 exporter hashed the renderer before its stored trailing LF.
        hashed = raw if metadata[seed].get('raw_sha256_includes_final_lf') else raw[:-1]
        assert hashlib.sha256(hashed).hexdigest() == metadata[seed]['raw_sha256'], path
        lines = raw.decode('utf-8').splitlines()
        assert lines[0] == f'# History v5 — seed {seed}'
        assert lines[-1].startswith('Validation: ')
        assert not json.loads(lines[-1][12:])['errors']
        note = (base / f'reading_notes_{round_id}' / path.name).read_text(encoding='utf-8')
        assert re.search(r'Read (?:the )?complete raw file|Read all\d+ raw lines', note), path
        asserted_lines = re.search(r'Read all(\d+) raw lines', note)
        if asserted_lines:
            assert int(asserted_lines[1]) == len(lines), path
        assert 'Two concrete hooks:' in note, path
        hook_text = note.split('Two concrete hooks:', 1)[1].split('Observed defects:', 1)[0]
        assert re.search(r'^1\.', hook_text, re.M) and re.search(r'^2\.', hook_text, re.M), path
        assert 'Observed defects:' in note
        raw_rows.append(dict(round=round_id, seed=seed, lines=len(lines), bytes=len(raw),
                             full_file_sha256=hashlib.sha256(raw).hexdigest()))
assert selected[0].isdisjoint(selected[1])
required = ['delivery.md', 'architecture.md', 'validation.md', 'statistics.json',
            'corpus_statistics.md', 'qualitative_review_round1.md',
            'qualitative_review_round2.md', 'samples_round1.md', 'samples_round2.md',
            'self_critique.md', 'changed_files.md', 'continuation.md', 'before_after.md']
assert all((base / name).is_file() for name in required)
assert '# What I got wrong' in (base / 'self_critique.md').read_text(encoding='utf-8')
files = [path for path in base.rglob('*') if path.is_file()]
assert not any(path.suffix == '.json' and path.name.startswith('seed_') for path in files)
report = dict(raw_samples=raw_rows, distinct_sample_count=40,
              required_files_present=required, review_files=len(files),
              review_total_bytes=sum(path.stat().st_size for path in files),
              largest_review_files=[dict(path=path.relative_to(root).as_posix(), bytes=path.stat().st_size)
                                    for path in sorted(files, key=lambda p: p.stat().st_size, reverse=True)[:10]],
              scope='Metadata/hash/completeness audit; manual notes establish full reading and judgment.')
(base / 'artifact_audit.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
print(f'Audited40 immutable raw samples, scores and required reports; {report["review_total_bytes"]:,} review bytes.')
