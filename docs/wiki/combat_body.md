+++
status = "구현 완료"
areas = ["전투"]
milestones = "M017, M024, M027"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/specs/combat_resolution.md"
icon = "🎯"
+++
# 데이터 기반 D20 전투 · 신체 · 방어구

## 개요

M024는 기존 D20/신체/단일 방어층 파이프라인을 유지하면서 고정 피해를 `DamageDice + Ability Modifier`로 바꿨다. 무기와 Bite/Claw 같은 자연 공격은 동일한 `AttackDefinition`과 resolve 경로를 사용한다.

## 공격 흐름

입력/AI → `AttackAction` → capability/손 수 확인 → 공통 비용 resolver (기본1000, Weapon/external Percent 합, Flat) → D20 → 피격 부위 → 피해 주사위 → 단일 방어층의 profile 배율 × armor → penetration 차감 → 부위/HP 피해 → 이벤트/스케줄러.

## 신체 기능

- 한손 무기는 사용 가능한 `weapon_manipulation` 부위 중 가장 나은 하나를 사용한다.
- Maul은 두 부위를 요구한다.
- Bite/Claw는 손과 독립된 capability다.
- 필수 공격 부위가 damaged면 기존 -2 상황 수정치를 적용한다.

## 데이터셋

M029 작업 브랜치에서는 `content/`의 콘텐츠별 `.tres`가 단일 원본이며, `CombatContentCatalog`가 검증 후 기존 Resource 정의를 반환한다. Rat도 같은 경로를 사용한다. `tools/export_combat_datasets.gd`가 `docs/datasets/equipment.json`과 `monsters.json`을 생성하고, 기존 Notion sync가 이 결과를 읽는다. 숫자는 `.tres`에서만 수정하고 JSON은 재생성한다. 현재 5 weapons, 5 armor, Rat과 10개 신규 hostile Actor가 있다. [편집·검증 절차](../decisions/combat_content_authoring.md).

## 경계

Armor는 body part당 한 층이다. 인벤토리 UI, layered armor, durability, critical, ranged, poison/bleeding, 절단과 최종 Threat Rating은 아직 없다.

## M027 확장

물리 유형은 Cut/Puncture/Blunt다. 초기 방어 프로파일은 SOFT/MAIL/RIGID이며 각각 damage type별 배율을 가진다. 이 셋은 닫힌 enum이 아니라 등록된 초기 데이터이고, 생략된 damage type은 ×1.0으로 처리하므로 향후 chitin/composite 같은 프로파일과 새 공격 속성을 추가할 수 있다. 무기별 선택 행동과 1H/2H capability 요구량은 [전투 결정](../decisions/physical_combat_weapon_actions.md)에 정리한다. 현재 playground의 Test weapon 선택과 행동 버튼은 디버그 테스트용이며 인접 NPC 중 등록 순서상 첫 대상을 공격한다. 기본 공격은 기존 bump다.
