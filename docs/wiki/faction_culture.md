+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M041 foundation / M042 social incidents / M043 canonical v4 Project and Scar evidence — task branch, main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v4/docs/specs/faction_culture.md"
icon = "🏘️"
+++
# 세력 사회 특성과 교리

M042는 실제 사회사를 생성하고 M041의 문화 조회가 그 사실을 해석하게 한다.
**Objective History → Present → M040 Identity/Interpretation → Society Traits →
Doctrines → Values/Taboos/Desires/Fears** 경계를 유지한다. Culture 자체는 역사를
수정하지 않는다. Generation3/architecture2와 legacy2/architecture1을 유지한다.

20개 Trait과33개 Doctrine은 authored catalog에서 all/any/preferences/forbids로
자격을 판정한다. 선택 목표는 Trait2–4개, Doctrine0–2개이며 근거가 적으면
더 적게 반환한다. 일상적 관습의 유연성은 **Adaptive Customs**, 규범적으로
전통을 깨야 한다는 믿음은 Doctrine **Practical Heresy**로 구분한다.
Truth Through Trial은 실제 research reuse/기록된 testing을 요구한다.
Hazard Memory와 Local Mandate도 해당 세력의 기억·역할·locality 근거를 더한다.
ritual 해석과 실제 실험적 교리의 조합은 허용한다.

강도는 **moderate/온건**, **hardline/강경**, **fanatic/광신**이다.
온건은 반대·위반을 대체로 허용하는 선호, 강경은 중요한 사회 규범,
광신은 타협하기 어려운 핵심 정체성이다. 광신은3개 이상 관련 강화 tag와
서로 다른 실제 사건2개 이상을 요구한다. 추가12% lottery는 없다.
역할/접근 제한이나 집행은 restriction/enforcement **candidate**다.
이름이 강한 Doctrine도 온건일 때의 허용 범위를 설명한다.

기계 갈등/실패/협력/자동화 권한, 생물공학, clone cohort와 후속 시민권·해방·
bottleneck·divergence·template 위기, 실제 고향 상실, Deep 거주·퇴거,
순환 공직이 객관적 사건/효과/현재·과거 기록을 남긴다. Pure Flesh,
Machine Kinship, Silent Circuit, Bounded Automation, Mutable Human, Ancestral
Genome, Designed Kinship, Reclamation, Return to the Deep의 shipping 경로가 열린다.
Rotating Stewardship도 실제 공직 제도에서 나온다.

승인된 distinct lineage와 준지성 historical contact가 없으므로 Ecological
Communion, Last Human Measure, Many Bodies, One People, Thinking Threshold,
Kin Beyond Thought는 shipping에서 dormant다. 별도의 synthetic **객관적 역사**로
경로를 검증하며 shipping validator는 fixture의 content ID를 거부한다.
cloning은 human_derived Origin을 유지하고 자체로 biotech/다중lineage/
동일 인격/설계된 후손을 뜻하지 않는다. Deep 거주는 Human의 실제 거주 역사이며
Innerworld Origin으로 바꾸지 않는다. 같은 퇴거에서 return과 taboo를 허용한다.

Actor `{expresses:[...]}` 조회는 긍정·부정·혼합 이유와 role/dialogue/event/access
hooks를 동시에 보존한다. **standing != final decision**이다. 광신 Pure Flesh도
기술자의 유용성을 지우지 않는다. 실제 Actor Trait/NPC/대화/UI/정책 집행은 없다.

CultureGoalQuery는 `status=candidate`와 source provenance를 반환한다.
잃은 site의 historical reference ID는 후속 consumer가 확인할 수 있지만
target acquisition이나 실제 전쟁·이주·연구·경제·영토·quest·AI를 실행하지 않는다.

[문화 계약](../specs/faction_culture.md), [객관적 사회사](../specs/social_historical_incidents.md),
[5,000 history 분석](../reviews/social_incidents_v1/statistics.json),
[raw 사례](../reviews/social_incidents_v1/samples.md).
branch는 main 미병합이며 player knowledge/실제 정책·simulation 통합,
GUI/play/package/언어·balance/live Notion 검증은 별도 경계다.

## M043: v4 문화 근거

generation4는 canonical 신앙·종교·성소 용어와 Project/Scar의 실제 사건 근거를
사용한다. 한 Failed Exodus를 떠나지 말아야 할 경고 또는 재도전 욕망으로 해석할
수 있다. 그 해석은 왜 궤도 시설이 작동했는지나 의식이 살아남았는지를 결정하지
않는다. 지역 기록 접근과 개인의 생물학적 경험·혈통도 구분한다.
기존 conjunction gate는 유지하며, 허가된 종·lineage·회귀 population이 없으면
관련 content는 계속 잠긴다. [인계 보고](../reviews/history_v4/delivery.md).
