+++
status = "구현 완료"
areas = ["시간/액션", "코어"]
milestones = "M011, M013"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M011_time_cost_scheduler.md"
icon = "⏱️"
+++
# Action-Cost 시간 모델 / 스케줄러

## 한 줄 요약

플레이어에게는 한 번에 한 행동으로 보이지만, 내부에서는 각 행동의 비용만큼 시간이 흐르고 각 Actor의 `next_ready_time`으로 행동 순서를 결정한다.

## 현재 규칙

- Human: 문 상호작용 500 / 직선 이동 1000 / 대기 1000 / Normal Melee 1000
- Rat: 문 상호작용 500 / 직선 이동 750 / Normal Melee 1000 / 막힘 대기 1000
- 무기 종류는 Normal Melee 비용을 바꾸지 않는다. M027 Weapon Action 배율을 유지한다.
- M031 task branch: `ceil(1000 또는 1400 / resolved movement_speed / Body 효율)`에 외부 비용 modifier를 최종 반올림 전에 적용한다. 현재 healthy/부상 비용을 보존한다.
- 플레이어 행동 후 플레이어의 다음 준비 시간보다 이른 NPC들을 반복 처리한다.
- 준비 시간이 정확히 같으면 플레이어가 우선한다.
- NPC끼리 동률이면 등록 순서를 사용해 결정성을 유지한다.

## 구현 구조

`game/time/time_scheduler.gd`가 월드 시각과 Actor별 준비 시간을 관리한다. 스케줄러는 행동을 직접 실행하지 않고 다음에 행동할 Actor를 선택하는 책임만 가진다.

## 의미

Quickness 하나로 모든 속도를 해결하기보다 행동 자체의 시간 비용을 전술 변수로 만드는 구조다. M010 Micro-AP는 초기 비교 실험으로서 문서·Git 기록에 보존하며, 전용 프로토타입 코드는 정리 브랜치에서 퇴역한다. 현재 선택된 모델은 M011 계열이다.

## 다음 확장

M031의 query 기반 [Modifier/Effect](attributes_effects.md)는 task branch에 구현했다.
전역 Quickness/DEX 속도는 도입하지 않는다. duration/tick, 반응 행동,
animation/wind-up은 후속 범위다.
