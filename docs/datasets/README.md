# Documented Data Catalogs

이 디렉터리는 현재 구현되었거나 명시적으로 설계된 콘텐츠 수치를 구조화해 기록한다.

- `monsters.json`: 몬스터/적 Actor의 전투·AI 기준값과 다른 데이터 레코드 연결 키.
- `skills.json`: 기본 공격 및 향후 액티브/패시브 스킬 수치.
- `body_templates.json`: 종별 신체 부위, integrity, 피격 가중치, 기능과 기본 방어.
- `equipment.json`: 무기·방어구·장비. 실제 장비 시스템이 없는 hard-coded 방어층은 부분 구현으로 표시.
- `statuses_traits.json`: 특성, 파생 상태, 상태이상과 태그.
- `threat_ratings.json`: Threat 모델 버전과 몬스터별 측정 기록. 미검증 점수는 0이 아니라 null.

현재는 **문서/밸런스 카탈로그**이며 런타임 데이터의 권위 있는 소유자는 기존 Godot 코드/Resource다.
따라서 코드의 숫자나 공식이 바뀌는 작업은 같은 PR에서 관련 카탈로그도 갱신해야 한다.

Threat Rating은 특히 측정 결과에서 파생되는 값으로 취급한다. 구현되지 않은 모델 가중치나 최종 점수를
문서 편의를 위해 임의로 채우지 않는다.

장기적으로 콘텐츠가 충분히 늘어나면 Godot Resource를 실제 데이터 원본으로 전환하고 이 문서를
그 데이터에서 생성하는 방향을 검토한다.
