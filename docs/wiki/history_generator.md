+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M036–M043 historical foundation / M044 History v5 Sparse History and Playable Archaeology — 작업 브랜치 구현·검증 완료; main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v5/docs/specs/history_generator.md"
icon = "📜"
+++
# 최근 역사: 정치 계보와 population의 기원

## M044 v5 — sparse history와 playable archaeology

현재 작업 브랜치의 기본 generation은 **5 / architecture3**이다. 명시적2/3/4
경로는 각각 동결 출력으로 보호한다. 아래의 v0.3/v4 설명은 해당 버전의 계약이다.
v5는 독립 지역 episode 사이의 빈 공간을 허용한다. 사실의 시간 순서나 인구 계보가
현재 생활 방식의 동기를 설명한다는 뜻은 아니다. Project/Scar 내부의 관측·선행 조건은
인과 사슬로 유지하고, 후대 보관권 등은 별도 historical association으로 기록한다.

Topology는 operation을 먼저 family 가중치로 추첨하고 그 안의 parameter를 별도로
추첨한다. split parameter 조합을 늘려도 split 확률이 증가하지 않는다. 기존 일곱
family의 구조적 anchor와4–8세력 band는 유지한다.

실제 authored material observation을 Historical Trace로 투영한다. 물리·문서·제도·
생존 집단의 evidence와3–5개 Trace를 요구하는 주요 Question을 분리한다.
`HistoryInvestigation`은 context/runtime requirement 검사, 증거 수집, 복수 출처·맥락
대조 후 현재 행동의 permission proposal을 제공한다. Question의 ethical answer나
숨겨진 Canon 정답을 생성하지 않으며, 조사가 과거 사실을 수정하지 않는다.

2차 일반 수정은 `history-v5-authored-2 / history-v5-archaeology-2`를 사용한다.
단계별 실제 관측에서만 흔적을 만들고, Question은 실제 대상과 핵심 기록을 요구한다.
복제 이전 법적 지위나 자연적 변화의 생물공학 능력을 만들어내지 않는다.
현재 보관자의 별도 접촉 맥락, 역할에 따른 Issue 후보, 실제 관계를 행동 제안에
담되 현재 입장은 대화 확인 전 후보이며 과거 동기의 설명이 아니다. 상호작용은
자료의 종류와 구체적 대상에 맞아야 하고, 핵심 증거와 복수 출처를 모아야 열린다.

전투·은신·수리·협상 등의 정의는 **consumer hook**이다. 지도 배치, 실제 Actor 대화,
전투와 시설의 실행은 통합 전이다. living Trace도 현재 가동·접근 상태를 보장하지 않는다.
전체39-script Godot gate와 최종5000 replay가 통과했고, 일반 수정 전/후 각각
무작위20개 원문을 끝까지 검토했다. Trace116/Question40/variant60은 전부 도달했다.
비반복성6.990·플레이 잠재력7.725는 목표8 미달이며, 일반 메뉴·맥락·약한 현재
stakes와 정치 질문 중복은 남아 있다. 실제 게임 실행·지도/Actor 통합은 후속 작업이다.
[최종 결과와 한계](../reviews/history_v5/delivery.md).
[v5 구조·계약](../reviews/history_v5/architecture.md),
[작업 재개 기록](../reviews/history_v5/WORK_LOG.md).

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

## M042 실제 사회사 → 문화 해석

Topology/세력 형성 뒤, recent relations 앞에 bounded social incident layer를 둔다.
기계 갈등·협력·인간의 자동화 감독, 실제 생물공학 프로그램, human-derived clone
cohort와 선행 조건을 가진 후속 사건, 실제 소유한 고향 상실, Human의 Deep 거주·
퇴거, 순환 공직이 event/effect/projected record로 남는다. 새 정치 faction은 없다.
독립 social namespace로 기존 topology/formation/naming/관계 RNG를 보존한다.

15/45/30/10%를0/1/2/3개 family episode의 초기 budget으로 사용하고,
준비/후속/강화 objective events도 별도로 모두 측정한다. 콘텐츠 희귀성은
종류·조합·문화적 결론에서 만들며 한두 세계만 보는 플레이어에게 거의 숨기지 않는다.
Generation3/architecture2, 기존45/45/8/2 pressure와 rare-system policy는 유지한다.
승인된 lineage/준지성 접촉은 별도 catalog gate이고 없으면 synthetic 검증만 한다.

Canon constrains what can be true. History generation decides what happened.
Cultures decide what it means. Simulation decides what happens next.

[M042 사회사 계약](../specs/social_historical_incidents.md),
[새 문화 계약](../specs/faction_culture.md), [5000 corpus](../reviews/social_incidents_v1/statistics.json).

## M043: 문명 프로젝트와 상흔

현재 task branch의 기본 생성기는 **generation4 / architecture2**다. 명시적
v2/v3 재현 경로는 유지한다. 8종 장기 Project는 성공·부분 성공·중단·미상·재난
결과를 갖고, 최대2개 major Scar와 구분된다. 정치사·생활사 사이에 발사 거부,
마지막 심부 탐사, Far-Sky 신호, 세대에 걸친 생식 실패, 기계/신체/기록 사건이
실제 사건·인구 기록·시설·후대 관리·문화 근거를 남긴다.

v4 canonical vocabulary는 The Preservator / Planetary Regulation Network /
Environmental Regulation Module과 Faith / Religious / Sacred다. 기존 Core와
추상 ritual ID는 과거 직렬화 호환 경로에 남는다. unknown은 미해결 답으로
유지하며 신호 기원·의식 생존·동일인·개입 의도를 코드가 확정하지 않는다.

[M043 범위·검증·인계](../milestones/M043_history_generator_v4.md),
[최신 세계 단위 노출 통계](../reviews/history_v4_redesign/statistics.json). main에는 미병합이다.


## 현재 v4 revision2: 독립적인 프로젝트와 상흔

Ark, Deep Descent, Far-Sky Array, Genome Archive, Cortical Array, Meridian,
Second Mind, Adaptive Simplification의8종 사업을 생성한다. 성공은 제한된 기술
목표 달성이다. 안정적인 궤도·심부 문명이나 확인된 행성 탈출을 뜻하지 않는다.
15종 상흔은 자체 인구·정책·물리적 증거·장기 흔적을 갖고 사업 없이도 발생한다.
강제 인지 축소(Imposed Diminution)는 인간 대상·책임 주체·생물학적 개입·세대
측정이 있는 실제 역사다. 궤도낙하는 실제 궤도 물체·재진입·다중 충돌을 요구한다.
기계 의식·지도 불일치의 초자연적 설명·미지의 책임 주체를 임의 확정하지 않는다.
초기 v4 seed 출력과 달라질 수 있는 명시적 revision 경계이며 v2/v3는 그대로다.

[현재 계약과 인계](../milestones/M043_history_projects_scars_redesign.md).
