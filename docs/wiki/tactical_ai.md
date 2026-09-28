+++
status = "구현 완료"
areas = ["AI", "전투"]
milestones = "M015, M024"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M015_tactical_ai_prototype.md"
icon = "🧠"
+++
# 설명 가능한 전술 AI

## 개요

Rat AI가 가능한 행동 후보를 평가하고 부상과 성향 같은 현재 상태에 따라 행동을 선택하도록 만든 전술 AI 프로토타입이다.

## 핵심 원칙

- 행동 선택과 행동 실행을 분리한다.
- 선택 결과에는 이유를 남겨 디버깅과 플레이어 피드백에 재사용한다.
- 복잡한 내부 수치가 실제 관찰 가능한 행동이나 결과로 이어져야 한다.
- 선택된 행동은 공통 Action 시스템을 통해 한 번에 한 행동씩 실행한다.

## 현재 범위

기존 RatTactics는 공격, 접근, 후퇴를 선택한다. M024의 `basic_melee`는 신규 hostile에 대해 legal melee attack → 접근 → 대기만 제공하며, 선택된 행동은 동일한 production Action path를 사용한다. 8방향 접근과 후퇴는 같은 코너/이동 규칙을 사용한다.

## 다음 설계 방향 — believable tactical AI

향후 `basic_melee_v2`는 승률 최적화보다 **그럴듯하고 읽을 수 있는 불완전한 판단**을 목표로 한다. AI는 자기 상태는 정확히 알 수 있지만, 상대는 관찰 가능한 부상·위치·최근 행동 같은 제한된 정보만 사용하고 숨겨진 정확 수치·미래 RNG·완전한 ready-time 계획을 기본적으로 읽지 않는다.

한 활성화마다 한 행동만 결정하고 다시 관찰한다. Attack/Approach/Hold/Reposition/Retreat 같은 여러 후보를 기존 `TacticalPlanner`에 넘기며, 공격성·공포·자기 부상·대략적인 상대 상태·주변 아군·노출 같은 소수의 지역적 요인으로 판단한다. 성격과 생물 archetype은 완벽한 플레이를 보정하는 것이 아니라 의도된 편향과 실수를 만든다.

AI 품질은 승률만으로 평가하지 않는다. 행동 이유의 이해 가능성, 생물별 차이, 플레이어가 행동을 읽고 역이용할 수 있는지, 불필요한 진동/대기/비상식적 행동이 없는지를 함께 본다. 자세한 설계는 `docs/decisions/believable_tactical_ai.md`를 따른다.

## 한계

현재 구현은 여전히 `basic_melee`의 legal attack → 접근 → 대기 수준이며 위 v2 설계는 아직 구현되지 않았다. NPC 이동은 tween 애니메이션 없이 결과가 원자적으로 적용된다. 시야/청각, 목표 기억, 세력, 동료, 장기 목표, 더 많은 능력은 별도 확장 항목이다.
