+++
status = "구현 완료"
areas = ["월드 생성", "월드/영속성", "시간/액션", "전투", "UI/로그"]
milestones = "M048 History v6 Phase C; 작업 브랜치 Vertical Slice"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-v6-phase-c-playable-world/docs/specs/history_playable_world.md"
icon = "🌍"
+++
# 역사에서 플레이 가능한 세계로 — v6 Phase C

전용 브랜치의 opt-in 씬 `scenes/debug/history_world_playground.tscn`에서
세 개의 실제 연결 Locality를 탐험한다. 기존 F5 기본 씬과 전투 테스트룸은 유지한다.

## 현재 가능한 행동

8방향 이동, 기존 Actor/신체 전투·Rat AI, 문 개폐, 실제 잔존 자산 회수,
잔해 제거, 일반 구조 수리, 제한적 피난처 회복, 지역 이동, 선택적 기록 조사와
Save/Load를 실행한다. 현재 위험은 실제 HP 피해를 주고, 진행 중 사업은 작업
공간과 시설 이용을 제한한다. 미지의 기계는 수리로 작동하지 않는다.

지역 공동체가 관리하는 물건의 무단 회수는 그 공동체의 출입·시설 이용 제한으로
이어진다. 회수한 자재를 기여하면 제한을 해소할 수 있으며, 생존 또는 사업 유지가
급한 공동체에는 더 많은 자재가 필요하다. 완전한 외교·사회 AI는 아니다.

## 권위와 영속성

역사적 Manifest는 시작 시점의 불변 스냅샷이다. 이후 변화는 Runtime State가
소유한다. 기록·자산·고유 물건을 회수하면 원래 위치에서 사라진다. 문·제거한
잔해·수리·보관권·중요한 Rat의 사망·플레이어 신체/효과·전투 RNG는 재방문과
저장 후에도 유지한다. 역사 생성기를 다시 돌려 플레이 결과를 덮어쓰지 않는다.

기존 TimeScheduler가 하나의 게임 시간을 소유한다. 지역을 떠나면 NPC 상태와
남은 행동 지연을 동결하고, 활성 지역에서만 상세 AI를 실행한다. 자원 재생,
광역 경제·NPC 이동이나 대규모 비활성 전투는 구현하지 않았다.

## 조작과 확인

WASD/방향키·숫자패드 이동, Space 대기, E 문, G 회수, X 제거, T 지역 이동,
I 조사, P 수리, U 피난처, V 기록 기반 위험 안정화, O 자재 배상.
C는 기존 Character Overview, H는 습득 정보, F3는 개발자 정보다.
씬 안의 F5/F9와 버튼은 저장/복원이다. 에디터에서는 이 씬을 F6로 실행한다.

자동 행동·저장·Seed·그래픽 렌더 검증과 인간의 플레이 재미 평가는 구분한다.
[상세 계약](../specs/history_playable_world.md),
[검증·통계·수동 체크리스트](../reviews/history_v6_phase_c/report.md)를 따른다.
