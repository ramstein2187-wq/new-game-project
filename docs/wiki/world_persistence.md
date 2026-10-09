+++
status = "부분 구현"
areas = ["월드/영속성", "코어"]
milestones = "M048 Phase C prototype; broader world persistence remains design"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-v6-phase-c-playable-world/docs/specs/history_playable_world.md"
icon = "💾"
+++
# 월드 영속성 · 비활성 지역 시뮬레이션

## 상태

M048 전용 브랜치에서 세 지역의 문·자산·수리·고유 보관권·Actor 상태와
단일 게임 시간의 재방문·Save/Load를 구현했다. 큰 월드의 배경 사건·재생·
광역 NPC 이동은 아직 설계다. main에 구현됐다고 주장하지 않는다.

## 핵심 방향

- 공간 후보 계층: World → Sector → Zone → cells/entities
- Site는 별도 필수 격자층이 아니라 여러 Zone을 묶을 수 있는 콘텐츠 개념
- 주요 장소와 일반 wilderness는 서로 다른 영속성 정책을 사용한다.

## 정책

주요 장소는 구조물 파괴, 문/상자 상태, 퀘스트 진행, named NPC 사망, unique item 이동 같은 중요한 변화를 보존한다.

일반 wilderness는 deterministic baseline 지형을 재생성할 수 있고 평범한 개체/자원은 명시된 회복 규칙을 사용할 수 있다. 다만 플레이어가 만든 중요한 변화는 야생이라도 보존한다.

## 시간 처리

- ACTIVE: 현재 Zone에서 세부 Action 스케줄링
- FROZEN: 퇴장 시 상태 저장 후 세부 AI 정지
- BACKGROUND WORLD EVENTS: 중요한 교차 지역 사건만 시간순 처리
- LAZY EFFECTS: 재생/만료 같은 효과는 재진입 시 시간차로 계산

M048에서는 ACTIVE/FROZEN과 단일 기존 Scheduler 시간만 구현했다.
BACKGROUND/LAZY 항목은 후속 설계이며 자산을 자동 재생성하지 않는다.

## 구현 전에 남은 결정

월드 크기, zone 크기, 인접 전환, 지하층, fast travel, 저장 schema와 세계 clock 계약 등.
