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

## 한계

NPC 이동은 아직 tween 애니메이션 없이 결과가 원자적으로 적용된다. 시야/청각, 목표 기억, 세력, 동료, 장기 목표, 더 많은 능력은 별도 확장 항목이다.
