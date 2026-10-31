+++
status = "구현 완료"
areas = ["월드 생성", "월드/영속성", "시간/액션", "UI/로그"]
milestones = "M049 Microhistory v7; 작업 브랜치 전용, main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v7-microhistory/docs/specs/history_microhistory_v7.md"
icon = "🔎"
+++
# 지역의 작은 과거 — Microhistory v7

거대한 Project나 Scar와 무관하게 작은 삶·이동·갈등·사고가 있었던 장소를 만든다.
36개 원형과 서로 다른 결과가 남길 수 있는 증거를 먼저 결정하고, 시간·환경에 따라
남은 것만 실제 지역에 배치한다. 무덤 옆 꽃, 안쪽의 가구 봉쇄, 버려진 수레와 도구,
물가의 끊어진 줄을 볼 수 있다. 모든 장소가 퀘스트나 보상으로 이어지지는 않는다.

플레이어는 환경을 보고 지나갈 수 있다. 일부 흔적을 조사하고, 실제 자재를 회수하고,
장해물을 치우거나 받침을 보강할 수 있다. 조사는 범인과 전체 과거를 자동 설명하지 않는다.
이 행동들은 기존 Action과 시간, 인벤토리, Save/Load를 사용한다. 재방문해도 회수한 물건이
다시 생기지 않고, 플레이어의 행동은 이미 발생한 과거를 바꾸지 않는다.

전용 검토 씬 `scenes/debug/microhistory_playground.tscn`에서 실행한다. 기존 기본 씬과
이전 /1,/2 저장을 유지한다. 자동 기계 의식, 신규 계통, 실시간 주민 생활, 모든 사건의
현재 NPC는 구현 범위가 아니다. v5 물질 흔적 어휘와 실제 Trace 참조 어댑터를 재사용하지만
v5 전체 조사 질문을 자동으로 현재 장소에 연결하지 않는다.

원형 수와 접근 검사 통과를 재미/자연스러움의 최종 판정으로 취급하지 않는다.
시간이 지나 단일 물건만 남는 장면, 제한된 11개 공간 양식의 반복, 배치 공간 부족을
보고서에 공개한다. [설계](../specs/history_microhistory_v7.md) ·
[생성·화면·한계 보고](../reviews/microhistory_v7/report.md).
