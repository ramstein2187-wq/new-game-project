+++
status = "구현 완료"
areas = ["AI", "전투"]
milestones = "M015, M024, M026"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/basic-melee-v2/docs/milestones/M026_basic_melee_v2.md"
icon = "🧠"
+++
# 설명 가능한 전술 AI

## 개요

M026의 `basic_melee_v2`는 현재 target을 상대로 한 행동을 결정하는 지역적 후보 비교 정책이다. 구현 범위는 `codex/basic-melee-v2` 브랜치이며 main 통합 상태를 의미하지 않는다. 기존 RatTactics는 변경하지 않았다.

## 현재 행동

- Attack: 근접 공격도 다른 합법 후보와 점수를 비교한다.
- Approach / Interact: 기존 BFS의 다음 칸으로 이동하거나 경로의 닫힌 문을 연다.
- Hold: 접근 경로가 있지만 낮은 공격성이나 두려움 때문에 잠시 기다린다. `hold_position` 목표로 기록한다.
- Reposition: target과 같은 8방향 거리를 유지하면서 주변 점유 혼잡을 줄이는 한 칸 이동이다.
- Retreat: 두 칸 이내의 target에서 한 칸 물러나 거리를 늘린다. 기존 retreat 관찰 cue를 재사용한다.
- Wait: 의미 있는 행동을 할 수 없을 때 `wait` 목표와 기능 손실/경로 차단 등의 이유를 남긴다.

## 제한된 판단

자기 상태와 aggression/fear는 사용할 수 있지만 상대 HP는 healthy / wounded / critical 세 범주로만 전달한다. 현재 prototype에서는 actor 존재와 위치, 지도 이동 가능 여부를 안다. target만 확실한 적으로 취급하고 다른 actor는 점유·혼잡 정보로만 사용한다. 노출은 target의 현재 위치에서 해당 칸에 근접 도달 가능한지 0/1로만 판단하며, 상대 공격 능력이나 미래 이동을 추정하지 않는다.

상대 능력치·방어 수치·명중 확률·RNG·미래 행동·scheduler ready-time을 점수 계산에 사용하지 않는다. 승률이나 기대 피해 최적화, target 교체, 다중 턴 탐색, 협공·formation은 구현하지 않았다.

## 망설임과 실행

같은 target에 대해 공격 사이 Hold/Retreat/Reposition을 합쳐 최대 두 번 허용한다. 예산이 소진되면 가능한 공격/접근에 전념한다. 실제 실행된 공격은 명중 여부와 관계없이 예산을 초기화한다. 단순 선택 조회·실패한 Action·접근·문 열기·target의 이동은 예산을 초기화하지 않는다. Actor마다 독립 상태를 가지며 reset 때 함께 초기화된다.

이는 완벽한 도주보다 읽을 수 있는 잠깐의 망설임을 표현하기 위한 의도된 제약이다. 공격 기능이 사라지거나 경로가 영구 차단된 경우에는 Wait가 계속될 수 있다.

## 설명과 검증

기존 TacticalChoice → TacticalPlanner → TimeAction → perform_action → CombatEvent 흐름으로 goal, score, reasons, factors, considered candidates를 보존한다. v2 이벤트에는 `ai_policy_revision=basic_melee_v2`도 남긴다. 플레이어 로그는 기존 관찰 cue와 필터를 유지하며 수치 trace는 개발자용이다.

A–H를 포함한 12개 자동 시나리오, 전체 23개 테스트, production 조합 120회 표본이 통과했다. 수동 플레이의 가독성·재미·페이싱은 아직 확인하지 않았다. [검증 기록](../reviews/2026-09-28-m026-validation.md), [점수와 상태 전이](../specs/tactical_ai.md).

## 한계와 후속

실제 시야/청각, 기억, ally confidence, 다수 적 노출, 종별 성격 프로필, 비용 기반 routing, 장기 목표는 후속 범위다. BFS는 여전히 step-count 기준이다. 혼잡 회피는 아군 의도나 통로 전체 흐름을 알지 못한다. NPC 이동은 기존 원자적 이동이며 별도 애니메이션을 추가하지 않았다.

행동이 실질적으로 달라졌으므로 M025 TR은 v2 revision으로 재측정해야 한다. 이번 변경은 TR 데이터나 기존 calibration 결과를 수정하지 않는다. 설계 철학은 `docs/decisions/believable_tactical_ai.md`를 따른다.
