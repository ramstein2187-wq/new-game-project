# 생성 맵 전투 통합

## 개요

M011–M015의 시간, Action, AI, 로그를 절차 생성 맵 위에 연결한 통합 계층이다.

## 현재 동작

- 생성 rows가 실제 이동 경계와 장애물의 기준이 된다.
- tree와 ruin은 플레이어와 NPC 모두를 막는다.
- Actor들은 기존 Move/Attack/Wait Action과 TimeScheduler, RatTactics, CombatEvent를 재사용한다.
- 스폰은 결정적이며 서로 다른 연결 가능한 위치를 요구한다.
- reset/reconfigure 시 지형, 스폰, 시간, HP, 로그, AI 상태를 복원한다.

## 설계 경계

M016 자체가 별도의 전투 규칙을 만들지 않는다. 생성 맵은 기존 production 규칙의 어댑터로 동작한다. 전체 맵 관찰 정책은 아직 실제 sight/hearing 시스템이 아니다.
