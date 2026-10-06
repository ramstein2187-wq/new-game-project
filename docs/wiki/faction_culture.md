+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M041 Society Traits & Doctrines v1 — task branch, main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/faction-culture-doctrines-v1/docs/specs/faction_culture.md"
icon = "🏘️"
+++
# 세력 사회 특성과 교리

M041은 M040 identity 위에서 재계산하는 얇은 조회 계층이다.
객관적 역사와 현재 projection을 바꾸거나 새 사건·종족·전쟁을 만들지 않는다.
Generation3/architecture2와 legacy generation2/architecture1은 유지한다.

**History → Faction Identity → Society Traits → Doctrines →
Values / Taboos / Desires / Fears → Future Goal Candidates** 흐름이다.
Society Trait은 사회의 조직·일상 방식이고 Doctrine은 무엇을 원하고 금기시하는가다.
Interpretation은 증거를 읽는 습관이며 Doctrine과 별개다. Claim은 계속 지각된 주장이다.

JSON 카탈로그에는 사회 특성20개와 교리33개가 있다. 실제 formation·생활 방식·역할·
사건·지역적 재난·현재 인구 strata와 M040 identity에서 증거를 만들고,
공통 all/any/preferences/forbids 규칙으로 자격을 판정한다. 자격 없는 항목은
무작위로 선택하지 않는다. 보통 사회 특성2–4개, 교리0–2개를 선택하고,
서로 충돌하는 교리는 강도 조건에 따라 제외한다. 모든 결과에 근거와 선택 이유가 남는다.

교리 강도는 `custom / doctrine / orthodoxy`다. 강한 교리는 추가 근거를 요구하고,
orthodoxy는 최소3개 강화 증거와 서로 다른 실제 사건2개 이상이 있어야 한다.
자격을 충족한 뒤에도 별도 희귀 선택이 있어 극단적 사회가 흔해지지 않는다.

현재 shipping population은 human_baseline뿐이다. 기계 전쟁·지성 기계 접촉·
생물공학·실제 신체/lineage 다양성·반지성체 접촉·Innerworld ancestry·잃은 고향의
직접 증거가 없으므로 **교리14개는 의도적으로 dormant**다.
`modified_human_community`라는 이름, Core 터널, 궤도 잔해만으로 이를 활성화하지 않는다.
Rotating Stewardship도 실제 순환 임기 제도가 없으면 dormant다.
합성 fixture는 별도 표시하고 shipping Canon이나 통계에 포함하지 않는다.

**Actor semantic expressions → 가치/금기/긴장 매칭 → 세력 반응과 hooks**는 별도 흐름이다.
실제 Actor Trait 시스템 없이 `{expresses: [...]}`로 조회할 수 있다.
긍정·부정·혼합 이유, welcomed/accepted/watched/disfavored/taboo 상태,
역할·대화·사건·접근 hooks를 돌려준다. reputation 숫자로 상쇄하지 않는다.
예를 들어 증강된 기술자는 Maintenance Covenant에 유용하면서 Pure Flesh에는
의심받을 수 있다. 예술 교리는 역사적 권위·공공 미관·장인 지위·형태와 membership
심사 hooks를 갖는다.

교리의 desires는 선택된 교리에서만 future goal candidates를 만든다.
궤도 링크 복원·깊은 경로 봉쇄·피난민 보호 같은 후보는 의도이며 실행·실재 target·
시설·능력을 뜻하지 않는다. AI·경제·연구·전쟁·이주 simulation은 아직 없다.

[상세 계약과 dormant 목록](../specs/faction_culture.md),
[통계](../reviews/faction_culture_v1/statistics.json),
[읽기용 사례](../reviews/faction_culture_v1/samples.md),
[검토 결과](../reviews/2026-10-06-faction-culture-v1.md).
실제 통합은 player knowledge와 role/dialogue/access 정책 경계에서 시작하는 것이 좋다.
`codex/faction-culture-doctrines-v1`은 main 미병합이며 live Notion sync는 수행하지 않았다.
