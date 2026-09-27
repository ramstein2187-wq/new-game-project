# 절차 생성 맵 파이프라인

## 개요

고정 seed에서 재현 가능한 맵 데이터를 만들고 이를 실제 플레이 가능한 Godot 공간까지 연결한 현재 절차 생성 파이프라인이다.

## 발전 단계

- M003: deterministic 40×30 데이터 생성
- M004: 공간적으로 뭉친 숲과 보장된 남북 경로
- M005: 시각적 Godot 프리뷰
- M006: 경로 제약을 고려한 ruin landmark
- M007: 하나의 world seed에서 namespaced sub-seed 파생
- M008: `GenerationSettings`로 조정값 데이터화
- M009: 생성 지형을 렌더링, 충돌, 플레이어 스폰과 연결

## 현재 플레이 공간

ground/path는 통과 가능하고 tree/ruin은 blocking collision으로 변환된다. 플레이어는 생성된 경로 위에 배치되며 R로 다음 seed를 생성할 수 있다.

## 중요 경계

이 시스템은 완성된 광역 월드 생성기가 아니라 현재 지역 맵 프로토타입이다. 광역 world/region 구조와 persistence는 별도 설계다.
