+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M036 architecture / M037 v2 / M038 initial v3 / M039 contract fixup / M040 identity / M041 derived culture query — main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/faction-culture-doctrines-v1/docs/specs/history_generator.md"
icon = "📜"
+++
# 최근 역사: 정치 계보와 population의 기원

History Generator v0.3은 일곱 family의 구조적 제약과 공통 transformation으로
정치 계보를 바꾼다. M039 후속 수정에서 **현재4–8세력**으로 계약을 정렬했다.
정확한 개수를 사전에 뽑지 않는다. family 핵심 사건과 최소 단계 수를 충족하고
생존 세력이 허용 band 안에 있으면 독립 RNG로 종료한다. 최대 단계 수가 있으며
마지막 숫자 맞추기용 faction이나 소멸 처리는 없다. 4세력도 긴 역사와 소멸 기록을 가진다.

Historical/current faction, 정치적 `parent_ids`, `formation_origin`, population의
`source_ids`, 생활 방식·지역 역할은 별개다. 합병은 복수 정치 부모와 실제 인구 donor를
따로 기록한다. 정치체가 사라져도 인구가 전멸한 것은 아니다. 객관적 사건은 인구의
후계 흡수 또는 추적 중단을 명시하고, 기존 인구 stock과 유적 기록을 보존한다.

Origin canonical ID는 `planetary/human_derived/observer/innerworld/outerworld/unknown`이다.
표시 이름은 영어·한국어 mapping으로 분리한다. Composite는 독립 Origin이 아니다.
**Mixed society**는 서로 다른 single-Origin strata의 공존이고,
**multi-Origin lineage**는 한 stratum 자체가 복수 Origin을 갖는 경우다.
Profile은 `strata[{template_id,origins,prevalence}]`이며 prevalence는 정성적 구간이다.
합병/join은 strata를 합하고 split은 기존 strata를 상속한다. 정치 사건이 hybrid를 만들지 않는다.

SocialPopulationCatalog가 authored template의 세력 구성·무작위 생성·newcomer 허가를
검사한다. taxonomy만으로 지성 종족을 발명하지 않는다. 현재 shipping은 허가된
`human_baseline=[human_derived]`만 사용한다. 비인간·mixed·hybrid 기능은 명시적
test-only catalog로 검증하며 새 세계관으로 등록하지 않는다. Unknown도 filler가 아니다.

Generation3은 **architecture2**, legacy generation2는 **architecture1**이다.
Canonical effect → projection → 별도 Claim → renderer 흐름을 유지한다.
M040에서는 그 사이에 저장되지 않는 **Faction identity / cultural interpretation lens**를
추가했다. 각 현재 세력은 기존 역사에서 `continuity stance / social anchor /
adaptive stance / interpretation mode / memory frame`을 deterministic하게 유도한다.
이 profile은 새 객관적 사실을 만들거나 저장하지 않고 필요할 때 재계산한다.

예를 들어 같은 궤도 재난도 technical 세력은 물증과 미확정 원인을 강조하고,
skeptical 세력은 과잉 해석을 경계하며, ritual 세력은 의례적 의미와 물리적 원인을
구분하고, pragmatic 세력은 현재의 위험과 활용 가능한 사실을 우선한다.
그럼에도 사건 relation Claim은 당시 delta, 현재 Claim은 누적 score를 읽으며
Core 목적·Observer 발동/표적 이유·발견물 기원은 계속 미확정이다.

유적 재사용은 optional이며 hazard/type/용도 compatibility를 검사한다.
Observer/Core의 기존 희귀 예산과 Canon mystery, M035 naming/SeedDeriver는 유지한다.

M041에서는 이 변경 없는 M040 위에 저장하지 않는 사회 특성·교리 조회를 추가했다.
실제 역사 증거에서 사회 조직 방식과 규범적 욕구를 별도로 유도하고,
개인 semantic 표현과의 반응 및 future goal 후보를 제공한다.
[세력 사회 특성·교리](faction_culture.md)에서 별도 경계와 dormant content를 설명한다.

[모델·band·종료 조건](../specs/history_generator.md),
[5000-seed 통계](../reviews/history_v3_fixup/diversity.json),
[대표 역사 원문](../reviews/history_v3_fixup/samples.md),
[후속 검토·검증 결과](../reviews/2026-10-06-history-generator-v0_3-fixup.md).
이 저장 샘플은 M039 시점의 Claim 문구이며 M040 identity wording 이전 기록이다.
M038 최초 review의6..8과 flat "multi-origin334"는 당시 구현 기록으로 남기고 후속 report에서 정정했다.
`codex/history-generator-v0.3-fixup`은 main 미병합이다. 실제 NPC·경제·전쟁·지도·문화·save migration은 범위 밖이다.
