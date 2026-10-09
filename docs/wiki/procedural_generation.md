+++
status = "구현 완료"
areas = ["월드 생성"]
milestones = "M003–M009"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M009_playable_procedural_map.md"
icon = "🌲"
+++
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

## M049: 대형 지역의 시각적 기준 (task branch)

`chat/ever-rogue-region-slice`의 별도 Godot 씬은 96×96 숲속 폐허 지역을 실제 Ever Rogue 1.0 타일 이미지로 표시한다. 장소·도로·폐허·연못은 개발자가 지정하고, 숲 밀도만 seed에 따라 달라진다. `M`으로 전체 지도를 확인하고 `R`로 시드를 변경한다. 전투와 이동 판정은 기존 `GeneratedMapCombatGame`을 재사용하며, 물은 기존 충돌 규약상 T로 저장한다. 본 브랜치의 시각적 수용 및 main 병합은 아직 완료되지 않았다. [M049](../milestones/M049_ever_rogue_region_slice.md).

## 중요 경계

이 시스템은 완성된 광역 월드 생성기가 아니라 현재 지역 맵 프로토타입이다. 광역 world/region 구조와 persistence는 별도 설계다.
