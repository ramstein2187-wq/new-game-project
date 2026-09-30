+++
status = "구현 완료"
areas = ["시간/액션", "코어", "전투"]
milestones = "M014"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M014_common_action_system.md"
icon = "🎬"
+++
# 공통 Action 시스템

## 목적

플레이어 입력과 NPC 판단이 같은 행동 실행 경로를 사용하도록 만든 공통 계층이다.

## 핵심 인터페이스

`TimeAction`은 다음 책임을 가진다.

- `can_execute(game, actor_id)`
- `get_cost(game, actor_id)`
- `cost_breakdown(game, actor_id)` (M031 task branch; source/operation/value/result)
- `execute(game, actor_id, cost)` → `CombatEvent`

현재 구체 Action은 `MoveAction`, `AttackAction`, `InteractAction`, `WaitAction`이다.

## 실행 경로

`TimeCostGame.perform_action(actor_id, action)`이 공통 진입점이다. 유효하지 않은 행동, 죽은 Actor, 등록되지 않은 Actor, 차례가 아닌 Actor, 비정상 비용은 거부하며 시간과 이벤트를 소비하지 않는다.

## 설계 효과

새 행동을 추가할 때 스케줄러 자체를 수정하지 않아도 된다. 시간 계산, 행동 규칙, 로그, AI를 서로 분리하는 기반이다.

## 비용 해석 (M031 task branch)

M031 task branch에서 모든 비용은 ActionCostResolver를 통과한다. Action 표준
비용, Weapon Action 배율, Move speed/Body, 태그 외부 modifier를 합성한 뒤
한 번 ceil한다. [비용 명세](../specs/action_cost_resolution.md).

## 아직 없는 것

데이터 기반 Ability 리소스, wind-up/interrupt, 애니메이션 실행 큐는 아직 이 계층에 포함되지 않는다.
