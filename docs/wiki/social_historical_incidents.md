+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M042 — codex/history-social-incidents-v1; 5000 histories / full37 scripts PASS; main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-social-incidents-v1/docs/specs/social_historical_incidents.md"
icon = "🏘️"
+++
# 사회사 사건: 문화적 신념의 실제 근거

Canon은 가능한 사실을 제한하고, History는 실제 일어난 일을 정한다.
Culture는 그 의미를 해석하며, Simulation은 다음에 일어날 일을 결정한다.
M042는 세력이 왜 특정 신념을 가지는지 실제 과거로 설명할 수 있게 한다.

정치 계보와 현재 세력이 먼저 만들어진 뒤, 최근 외교 관계 이전에 독립적인
사회사 층을 생성한다. 정치 세력을 추가하거나 없애지 않는다. 기계 갈등·협력·
자동화 통제, 실제 생명공학 프로그램, 복제 공동체와 후속 제도 변화, 식별 가능한
고향 상실, 인간의 실제 Deep 거주·퇴거, 순환 공직이 사건과 effect로 남는다.
사건에 교리 이름을 넣거나 문화 증거부터 발명하지 않는다.

복제 장비 회수와 저장 유전체가 먼저 기록되고 cohort가 실제 생성된 뒤 통합·해방·
병목·분화·신분 고정이 가능하다. 대체 정통성 분쟁에는 창건자 복제와 원본 인물의
별도 사망 기록이 필요하다. 복제는 새 Origin·혈통·동일 인물·유전자 설계를 뜻하지 않는다.

현재 능력과 제도는 `social_facts`, 일어난 일의 전체 기록은 `social_history`가
보존한다. 해방은 현재 종속 제도를 없애지만 과거를 지우지 않는다. 문화 쿼리는
그 기록에서 사건 ID·대상 site/cohort·승인 콘텐츠 ID를 가진 증거를 읽는다.
고향 회복과 Deep 귀환 후보도 실제 잃은 site를 참조할 수 있으나 행동을 실행하지 않는다.

희귀성은 비싼 콘텐츠를 숨기기보다 서로 다른 사건·해석·조합을 만든다.
세계당 기억할 만한 family 에피소드는 최대3개이며, 준비·강화·후속 사건은 별도로
기록한다(최대12 objective events, 최종 corpus 관측 최대11). 독립 RNG는 기존
정치 계보·형성·이름·관계 생성을 보존한다. Generation3 / architecture2와 v2의
정확한 기존 결과도 유지한다.

5,000세계에서 에피소드0/1/2/3개는14.46%/44.64%/30.70%/10.20%였다.
광신 교리가 있는 세계는29.86%다. 온건은 허용 가능한 선호, 강경은 중요한 제도적 규범,
광신은 타협하기 어려운 핵심 정체성이다. 광신은 관련 증거3개 이상과 서로 다른
객관적 사건2개 이상을 요구하며, 마지막 소확률 추첨은 없다. Actor에 대한 유용성·
금기·혼합 이유는 함께 보존하며, standing 요약을 최종 행동 결정으로 쓰지 않는다.

기존 휴면 교리9개는 shipping에서 실제 선택된다. Ecological Communion,
Last Human Measure, Many Bodies One People, Thinking Threshold, Kin Beyond Thought는
승인된 적응 혈통·복수 혈통·준지성 역사 접촉이 없어 휴면이다. 테스트용 생성 경로는
검증하지만 출현률을 위해 생물종이나 상세 생리를 발명하지 않는다. 기계 제조 계보는
미분류이며 Observer/Core/orbital 의지나 RESERVED 목적도 해결하지 않는다.

전체37개 검사와 원문29개·게이트 사례5개의 검토가 완료되었다. 실제 NPC, 접근 집행,
경제·전쟁·생식·이주 시뮬레이션, UI·플레이어 지식 정책은 다음 별도 작업의 책임이다.

[알고리즘·전제조건·증거 계약](../specs/social_historical_incidents.md),
[전체 분포·검증 보고서](../reviews/social_incidents_v1/delivery.md),
[원문 사례 검토](../reviews/social_incidents_v1/qualitative_review.md).
