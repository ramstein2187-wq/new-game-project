+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M036 — codex/history-generator-v0.1; main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v0.1/docs/specs/history_generator.md"
icon = "📜"
+++
# 최근 역사 생성과 현재의 흔적

History Prototype v0.1은 task branch의 독립 최근 지역사 vertical slice다.
repo 최소 [Canon](../lore/world_canon_v0_1.md)과
[생성 계약](../lore/history_generation_contract.md)을 먼저 고정했다.
최근 430~560년 안에 하나의 지역 대국이 붕괴하고 세 후계 공동체가 남는다.
지역적 붕괴 기여 요인만 생성하며 세계 전체 붕괴의 최종 원인은 확정하지 않는다.

Canon → objective timeline → present projection → 별도 claims → validation 순서다.
기근/전쟁 또는 재해/계승 분쟁 또는 지진/종교 분열/이주가 붕괴로 이어진다.
군사 잔존세력·상업집단·혈연집단, 난민·마을연합·변형인 공동체, 종교 또는
시설 주변 공동체가 형성된다. Faction은 생존과 공동체를 유지하는 방식이다.

과거 사건은 현재 관계, 혈통, 정착지, 유적, 미확인 발견물에 source event ID를
남긴다. A/B 전쟁은 적대와 폐탑, B/C 분열과 피난민 지원은 변한 관계,
운하 재점유는 현재 펌프 정착지로 설명된다. 15/16 사건, 유적4, 정착지4,
claims9 규모이며 현재 상태는 연대기 effects를 replay하여 얻는다.

같은 붕괴/발견에 상충하는 주장을 저장해도 객관적 연대기는 바뀌지 않는다.
발견된 기계의 객관적 기원은 unknown이다. Administrator 기기/외부 유입물이라는
주장은 믿음일 뿐이다. 코어 의도, 최초 테라포머 등 RESERVED를 객관사에서 풀지 않는다.
confidence는 세력의 확신이며 진실 확률이 아니다. 숨겨진 Canon 출력은 개발자용이다.

독립 seed RNG, 안정된 참조/정렬, optional replay 검사로 동일 seed 결과를 확인한다.
validator는 lifecycle/참조/혈통/정책/재투영/중요 사건 scar coverage를 검사한다.
구조 오류는 error, 해석 다양성 부족 등은 warning으로 구분한다. 자연어 진실 판정기는
아니므로 새 objective template는 Canon 검토가 필요하다.

M035 naming을 pure Callable로 연결할 수 있으며 기본 실행은 naming content에
의존하지 않는다. worldgen/faction 연결은 stable IDs와 projected records를 소비하는
다음 단계다. 현재 gameplay/map/save/simulation과 연결하지 않았다.

실행: `tools/preview_history.gd -- 42` (Godot headless script); `--json`으로 canonical
결과를 볼 수 있다. 상세 API/검증/경계는 [상세 설계](../specs/history_generator.md),
검증 기록은 [M036](../milestones/M036_history_generator_v0_1.md) 참조.
