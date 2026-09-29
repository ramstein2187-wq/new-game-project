+++
status = "구현 완료"
areas = ["AI", "전투"]
milestones = "M015, M024, M028"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M028_extensible_melee_ai.md"
icon = "🧠"
+++
# 설명 가능한 전술 AI

## 개요

`basic_melee_v3`는 근접 NPC가 공격, 접근, 대기, 재배치, 후퇴와 무기별 선택 행동을 같은 후보 경쟁 안에서 고르는 전술 AI다. 선택 결과는 기존 공통 Action 시스템으로 실행되며, 판단 원인은 reason/factor trace로 보존된다.

Rat 전용 `RatTactics`는 별도 정책으로 유지된다.

## 관찰 경계

`MeleeContext`가 실제 Actor/Game 상태를 작은 관찰 스냅샷으로 바꾼다.

현재 사용하는 정보는 다음과 같다.

- 자신의 healthy/wounded/critical 상태
- aggression과 fear
- 공격/이동 capability
- 상대의 coarse health 상태
- 거리, 현재 노출, 주변 혼잡
- 관찰 가능한 대표 Armor Profile
- 자신의 사용 가능한 기본 공격과 Weapon Action

상대의 정확한 HP, Armor 절대값, 능력치, 명중률, 피해 기대값, RNG 상태, ready time, 미래 행동은 utility 점수에 사용하지 않는다.

현재 프로토타입 맵은 완전 가시성을 가정한다. 향후 perception/knowledge 시스템이 생기면 `MeleeContext.capture()`의 관찰 계층을 교체한다.

## 확장 가능한 공격 후보

`MeleeAttackOption`이 기본 공격과 현재 무기의 `WeaponActionDefinition`을 같은 작은 형태로 변환한다.

AI는 Longsword, Warhammer 같은 구체적인 무기 ID를 알지 않는다. 다음과 같은 행동 성질만 본다.

- damage type
- base 대비 penetration 변화
- action cost / commitment band
- flat damage modifier
- situation modifier

따라서 새 Weapon Action을 데이터에 추가하면 AI 코드를 수정하지 않아도 후보 경쟁에 들어간다. 미래의 다른 근접 스킬도 같은 관찰 형태로 투영할 수 있도록 경계를 둔다.

## 질적 전술 판단

공격 선택은 정확한 기대 피해를 계산하지 않는다.

- Armor Profile 배율이 0.8 수준이면 해당 피해 유형을 유리한 matchup으로 본다.
- 1.2 수준이면 불리한 matchup으로 본다.
- 상대가 장갑 상태일 때 자기 행동의 penetration 증가를 작은 질적 이점으로 본다.
- 빠른 행동은 critical target이나 부상 상태에서 tempo 가치가 올라간다.
- committed/heavy 행동은 aggression이 높을수록 받아들이기 쉽고 fear/부상이 높을수록 꺼린다.
- 행동 자체의 authored damage/situation tradeoff도 제한된 범위에서 반영한다.

이 점수는 선택 이유를 만들기 위한 authored heuristic이며 최적 DPS 계산이나 승률 탐색 결과가 아니다.

## 신중 행동과 생존 후퇴

Hold/Retreat/Reposition의 반복 루프를 막기 위해 Actor마다 target별 caution 상태를 가진다.

- 처음 두 번: 일반 Hold / Retreat / Reposition 가능
- 두 번 소비 후: critical, 높은 fear, 공격 기능 상실 같은 명확한 위험에서만 비상 Retreat 1회 가능
- 비상 Retreat까지 소비하면 추가 방어 행동 대신 교전 진전이 필요
- 실제 Attack 실행 시 caution이 0으로 초기화
- target이 바뀌면 새 target 기준으로 다시 시작

이 구조는 "두 번 물러났으니 무조건 공격"보다 생존 행동을 허용하면서도 무한 카이팅을 방지한다.

## 설명 가능성

선택된 goal, score, factors, reason codes와 고려 후보 목록은 CombatEvent까지 보존된다. 같은 Action 클래스의 여러 공격을 구분하기 위해 planner trace에는 optional `option_id` / `option_label`이 들어간다.

플레이어에게 내부 점수를 그대로 보여주지는 않는다. 기존 retreat cue처럼 관찰 가능한 행동 표현은 같은 원인 데이터에서 파생한다.

## 현재 한계

시야/청각, faction, ally support, target switching, formation, cooldown/resource 평가, 다수 적 위협, generic skill framework, 장기 계획은 아직 없다. Threat Rating은 새 AI 정책 기준으로 별도 재측정해야 한다.
