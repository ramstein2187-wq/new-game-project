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

입력/AI → `AttackAction` → capability/손 수 확인 → 기본 비용 1000 × Weapon Action 배율 → D20 → 피격 부위 → 피해 주사위 → 단일 방어층 + 중앙 profile modifier → 부위/HP 피해 → 이벤트/스케줄러.

## 신체 기능

- 한손 무기는 사용 가능한 `weapon_manipulation` 부위 중 가장 나은 하나를 사용한다.
- Maul은 두 부위를 요구한다.
- Bite/Claw는 손과 독립된 capability다.
- 필수 공격 부위가 damaged면 기존 -2 상황 수정치를 적용한다.

## 데이터셋

런타임 권위는 `CombatContentCatalog`의 Godot Resource 정의다. 문서 카탈로그는 `docs/datasets/`에 mirror된다. 현재 5 weapons, 5 armor, Rat과 10개 신규 hostile Actor가 있다.

## 경계

Armor는 body part당 한 층이다. 인벤토리 UI, layered armor, durability, critical, ranged, poison/bleeding, 절단과 최종 Threat Rating은 아직 없다.

## M027 확장

물리 유형은 Cut/Puncture/Blunt다. SOFT/MAIL/RIGID 프로파일, 무기별 선택 행동과 1H/2H capability 요구량은 [전투 결정](../decisions/physical_combat_weapon_actions.md)에 정리한다. 현재 playground의 Test weapon 선택과 행동 버튼은 디버그 테스트용이며 인접 NPC 중 등록 순서상 첫 대상을 공격한다. 기본 공격은 기존 bump다.
