+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M036 architecture / M037 v2 / M038 v3 — main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v0.3/docs/specs/history_generator.md"
icon = "📜"
+++
# 최근 역사: 정치 계보와 population의 기원

History Generator v0.3은 이름·재난 종류 외에 현재 세력이 만들어진 계보를 바꾼다.
기존 v2의 A/B/C와 필수 재난지 재점유 대신, 일곱 topology family의 제약·가중치 아래
공통 split/merge/migration/newcomer/reorganization/extinction 연산을 조합한다.
현재6–8세력은 계획된 역사 변환의 결과이며 마지막에 숫자 맞추기용 세력을 보충하지 않는다.

정치적 `parent_ids`, `formation_origin`, population의 `source_ids`·Origin profile,
현재 생활 방식·지역 역할을 구분한다. 합병은2–3부모를 표현하지만 생물학적 혼합을
강제하지 않는다. Origin은 Planetary / Human-derived / Observer / Innerworld /
Outerworld / Unknown이며 복수값을 유지한다. Composite는 별도 Origin이 아니다.
기존 주민이 새 조직을 세울 수 있고, 외부 집단이 추가되며, 사라진 정치체의 기록도 남는다.

Canonical entity/event/effect → present projection → 별도 claims → validation 흐름은
유지된다. Historical polities에는 소멸한 세력도 포함하며 active subset만 현재 행동한다.
인구 출처·형성 사건·정착지 소유 이전의 event ID로 현재 세력을 설명할 수 있다.
Renderer는 이 사실을 읽는다. Claim은 사실이나 projection을 변경하지 않는다.

관계는 sparse하다. 사건의 relation delta와 현재 누적 score를 별도 scope/evidence로
참조하므로 과거 적대 사건을 현재 협력 문장으로 바꾸지 않는다. 유적 재사용은 optional이며
site type/hazard와 용도·생활 방식의 compatibility를 요구한다. 화학/불발병기/restricted
위험은 해제하지 않는다. 재난지가 방치되는 결과도 정상이다.

[세계 Canon](../lore/world_canon_v0_1.md)의 LOCKED/RESERVED는 유지한다.
Observer/Core의 v2확률·희귀 예산·물리적 제한을 보존했고, default에서 살아 있는 Observer
문명이나 Outerworld국가를 생성하지 않는다. Observer 용어는 기존 학술 knowledge gate를
따른다. M035 naming과 SeedDeriver를 재사용하며 en/ko명명 콘텐츠는 계보를 변경하지 않는다.

1,000seed:오류·invariant·재생 mismatch0;현재6/7/8개=340/333/327,역사정치체9..24,
깊이1..11. Observer/Core없는 역사861,Observer38,Core103,궤도폭격11,유적재사용414.
[상세 모델/제약](../specs/history_generator.md), [통계](../reviews/history_v3/diversity.json),
[10개 원문 출력](../reviews/history_v3/samples.md), [구조 비교](../reviews/2026-10-06-history-generator-v0_3.md).

`codex/history-generator-v0.3`에서 완료, main미병합. v2명시 실행/48,463assertions은 보존했다.
게임플레이·실시간 population/경제/전쟁/문화 시뮬레이션은 이후 범위다. 진단 JSON은 exporter
출력이며 저장 게임이나 외부 snapshot입력 계약이 아니다.
