+++
status = "구현 완료"
areas = ["시뮬레이션", "전투", "AI"]
milestones = "M022, M023, M024"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M022_headless_combat_batch.md"
icon = "📊"
+++
# 헤드리스 전투 배치 시뮬레이션

## 목적

실제 production Action, AI, 스케줄러, 전투 규칙을 그대로 재사용하면서 수백~수천 번 전투를 headless로 반복해 밸런스와 오류를 측정하는 인프라다.

## 원칙

- 시뮬레이션 전용으로 전투 규칙을 복제하지 않는다.
- 양쪽 모두 기존 AI 선택과 `perform_action` 경로를 사용한다.
- seed 범위, 종료 사유, 행동 수, 월드 시간, 피해량, 행동 종류, hit/miss, armor outcome, damage-die roll 수와 body disable 등을 기록한다.
- 무한 루프 방지를 위한 action/world-time cap을 가진다.

## 2026-09-27 통합 검증

- 최종 main에서 전체 자동 스크립트 검증 통과
- 100회와 1000회 통합 샘플에서 simulation error 0
- 높은 stall 비율은 현재 AI/전투 규칙의 측정 결과이며 M022가 이를 임의로 튜닝하지 않았다.

## 주의

현재 고정 방은 완전히 대칭이 아니므로 A/B 승률을 그대로 종족 밸런스 판정으로 쓰면 안 된다.

M023의 `run_matchup()`은 같은 seed로 side swap을 수행한다. M024는 신규 ActorDefinition을 이 경로에 주입해 세 matchup의 20-pair smoke를 통과했지만, 그 승률은 최종 Threat Rating이 아니다.
