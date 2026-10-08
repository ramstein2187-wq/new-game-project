"""Verify final content/runtime remain exact before final selection and handoff."""
import hashlib,json
from pathlib import Path,PureWindowsPath

root=Path(__file__).resolve().parents[1]
review=root/'docs/reviews/history_v5'
checked=[]
for filename,folder in [('final_catalog_hashes.json','content/history'),('final_runtime_hashes.json','game/history')]:
    rows=json.loads((review/filename).read_text(encoding='utf-8-sig'))
    if isinstance(rows,dict):rows=[rows]
    for row in rows:
        path=root/folder/PureWindowsPath(row['Path']).name
        actual=hashlib.sha256(path.read_bytes()).hexdigest().upper()
        assert actual==row['Hash'],f'Final input changed: {path}'
        checked.append(dict(path=path.relative_to(root).as_posix(),sha256=actual.lower()))
(review/'verified_final_inputs.json').write_text(json.dumps(checked,indent=2)+'\n',encoding='utf-8')
print(f'Verified{len(checked)} frozen final content/runtime files.')
