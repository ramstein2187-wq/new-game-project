# Documented Data Catalogs

이 디렉터리는 현재 구현되었거나 명시적으로 설계된 콘텐츠 수치를 구조화해 기록한다.

- `monsters.json`: 몬스터/적 Actor의 전투·AI 기준값과 다른 데이터 레코드 연결 키. 선택적 `taxonomy` 객체로 기원(origin), 구성(composition), 지능(cognition), 전투 역할(combat_roles), 행동 동기(behavior_motivations)를 기록한다. 신체 구조는 신체 템플릿에서 파생한다.
  `hp`는 authored initial CON을 적용한 새 Actor의 no-Effect resolved Max HP다.
  ActorDefinition.max_hp는 Base HP이며 encounter 중 현재 HP/Effect 값과 구분한다.
- `skills.json`: 기본 공격 및 향후 액티브/패시브 스킬 수치.
- `body_templates.json`: 종별 신체 부위, integrity, 피격 가중치, 기능과 기본 방어.
- `equipment.json`: runtime weapon/armor 정의, 공통 Normal Melee 비용, 1H/2H 기능 요구, Weapon Actions, M027 armor profile 배율을 mirror. M031 Weapon Action `cost_percent`는 delta (+0.25 = +25% 시간)이며 외부 Percent와 합산한다.
- `statuses_traits.json`: 특성, 파생 상태, 상태이상과 태그.
- `threat_ratings.json`: Threat 모델 버전과 몬스터별 측정 기록. 미검증 점수는 0이 아니라 null.

현재는 **문서/밸런스 카탈로그**이며 런타임 데이터의 권위 있는 소유자는 Godot Resource와 `CombatContentCatalog`다.
따라서 코드의 숫자나 공식이 바뀌는 작업은 같은 PR에서 관련 카탈로그도 갱신해야 한다.

Threat Rating은 특히 측정 결과에서 파생되는 값으로 취급한다. 구현되지 않은 모델 가중치나 최종 점수를
문서 편의를 위해 임의로 채우지 않는다.

몬스터 taxonomy도 같은 원칙을 따른다. 아직 세계관상 확정되지 않은 분류는 임의로 채우지 않고 null/빈 배열로
남긴다. Notion의 관리 대상 몬스터 레코드는 Git 카탈로그에서 파생되므로 taxonomy 값은 Git에서 수정한다.

장기적으로 콘텐츠가 충분히 늘어나면 Godot Resource를 실제 데이터 원본으로 전환하고 이 문서를
그 데이터에서 생성하는 방향을 검토한다.
