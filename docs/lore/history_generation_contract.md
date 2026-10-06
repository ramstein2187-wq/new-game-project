# History Generation Canon Contract v0.1

Canon constrains what can be true. History generation decides what happened.
Cultures decide what it means. Simulation decides what happens next.

> **Implementation note:** M038 v0.3은 아래 LOCKED/RESERVED를 유지한다. v0.1의 세 faction과 고정 크기 예시는 원래 slice 범위이며, v3은 역사적 변환 결과로 현재6–8faction을 만든다. v2의 Observer 명칭/학술 knowledge gate, 희귀 예산을 유지한다. 최신 구현·테스트 범위는 [History Generator spec](../specs/history_generator.md)을 따른다.

## LOCKED — 변경 불가능한 객관적 진실

- 인간 원형은 지구 Homo sapiens이며 현재 여러 변형 계통이 존재한다.
- 현대 주민 대부분은 실제 기원을 모른다. 어떤 팩션도 전체 진실을 알지 못한다.
- 젊은 항성계(약 13.5억 년), 원래 인간 거주 부적합 행성, 행성 규모 환경 개조.
- 고도로 발전한 성간 문명이 실제로 존재했고 인간 문명을 관찰/보존/제한했다.
- 개발 문서와 일부 현대 학술 분류에서는 이 문명을 **관찰자 / the Observers**라고 부른다.
- Observer는 실제 자칭이 아니다. 정확한 자칭과 정치체제는 확인되지 않았다.
- 관찰자 시대 항성계는 사실상 폐쇄되어 있었고, 관찰자 문명은 이후 사라졌다.
- Deep Core와 일부 행성 관리 시스템이 남아 있으며 외부 차폐는 대부분 소실되었다.
- 관찰자 시대의 일부 궤도 감시/요격/군사 시설과 대형 전투함급 자산이 잔존할 수 있다.
- 일부 잔존 궤도 군사자산은 매우 드물게 무기체계를 재활성화할 수 있다.
- Deep Core는 격리, 장기적 강수 조정, 접근로/지하시설 폐쇄, 기존 지질 응력을 이용한 국지적 지반 개입 같은 보존 행동을 수행할 수 있다.
- Deep Core, 궤도 방어망, 잔존 함대, 환경조정 시설은 현재 하나의 통합 의지를 가진 단일 AI로 취급하지 않는다.
- 드문 Outerworld 유입 가능; Outerworld는 단일 종족/국가도 Observer도 아니다.
- 과거 대규모 정치체, 현재 붕괴 후 파편화된 작은 세력의 시대.
- 가까운 주요 정규위성 네 개와 복잡하지만 예측 가능한 강한 복합 조석.

## UNKNOWN / RESERVED — 작가도 답을 정하지 않은 미스터리

**UNKNOWN은 랜덤 생성 가능이라는 뜻이 아니다.**

인간 도래의 정확한 경위, 최초 테라포머, 관찰자 문명의 실제 자칭,
관찰자의 정확한 기원/소멸 원인/정확한 정치체제, 관찰자 이전 개입자,
Deep Core의 현재 진짜 의도, 개별 Core 개입의 최종 목적,
잔존 궤도 군사자산이 왜 다시 활성화되는지와 실제 표적선정 논리,
고대사 전체 연표, 현대 대기 정확한 조성, 인간 변형 계통 전체 역사,
Outerworld 전체 정치/문명 구조, 대국들을 무너뜨린 최종 세계 Canon 원인은
objective history에서 답을 만들지 않는다.
고리와 코어의 조석 에너지 회수는 강한 후보이며 LOCKED로 승격하지 않는다.

## GENERATABLE — seed별 지역 객관사

최근 300~600년의 국가/도시/부족, 지역 대국의 이름/형태, 왕조와 성립,
전쟁/내전, 기근/이주, 종교 분열, 동맹/배신, 정착지, 지역 재해,
유적 재점유, 난민집단과 후계 팩션, 지역 영토 변화, Innerworld/관찰자계 유적 발견,
소규모 외부 유입물 발견과 지역 이상현상은 생성할 수 있다.

관찰자 궤도 유산의 희귀한 국지적 작동, Deep Core-associated 격리/환경 개입도
지역 objective history의 사건으로 생성할 수 있다. 이 경우 **무슨 현상이 실제로
일어났는지와 어느 잔존 시스템 계통에서 비롯되었는지**는 objective fact가 될 수 있지만,
왜 그 체계가 그렇게 행동했는지라는 최종 동기나 상위 명령은 RESERVED로 남긴다.

v0.1은 이 중 작은 subset만 구현한다. 붕괴의 지역적 기여 요인은 생성할 수 있지만
세계 전체의 최종 원인으로 일반화하지 않는다.

## BELIEF-ONLY — 현재 세력이 주장하는 해석

인간 기원, 관찰자의 성격, 최초 테라포머, 창조, 코어 목적, Outerworld 정체,
궤도 포격의 이유, 대국 붕괴의 진짜 이유, 정당한 후계자라는 주장은 자유롭게 생성 가능하다.
틀린 믿음과 상충하는 해석이 가능하다. belief는 objective truth를 수정하지 않는다.

Observer는 개발자용/학술 분류명이다. Faction Claim에서 해당 단어를 쓰려면
그 세력이나 화자가 이 학술 용어를 알고 있다는 근거가 있어야 한다.
그렇지 않은 공동체는 각자의 민간 명칭이나 기능적 표현을 사용해야 한다.

허용: “어떤 학파는 관찰자가 인간을 창조했다고 주장한다.”
금지: Objective History에 “관찰자가 인간을 창조했다.”를 저장하는 것.
허용: “어떤 학파는 최초 테라포머가 관찰자였다고 주장한다.”
금지: 최초 테라포머 = 관찰자라는 objective fact.
허용: “주민들은 궤도 포격을 하늘의 심판이라고 믿는다.”
금지: Objective History에 포격의 activation reason을 근거 없이 확정하는 것.

## 코드 계약과 규모

`CanonPolicy` → `HistoricalEntity` / `HistoricalEvent` → `HistoryProjector`
→ `HistoryState` → 별도 `HistoricalClaim` → `HistoryValidator` / `HistoryResult`.
플레이 이후 Simulation은 범위 밖이다. Markdown은 runtime 입력이 아니다.
seed당 한 region, 한 precursor great state, 세 current factions, 10~20 events,
3~5 ruins, 몇 개 settlements, 5개 이상의 claims를 목표로 한다.

Objective facts는 허용된 지역 narrative key와 엄격한 effect schema로 제한한다.
자유 prose fact 또는 mystery 답을 끼워 넣는 extra key/unknown effect는 error다.
표시 narrative는 코드의 검토 가능한 template로 생성한다. entity 이름은 라벨이다.
이는 자연어 의미 판별기가 아니다. 새 narrative template는 Canon 문서와 코드 리뷰가 필요하다.

## 생성과 흔적

Canon skeleton → 지역 대국 → 2~5-event 붕괴 사슬 → 후계 세력 → 최근 지역사
→ 현재 투영 → 팩션별 주장 → 검증. 전체 forward simulation은 만들지 않는다.
연도는 play start=0 상대 연도이며 세계 내부 달력이나 Earth year라고 확정하지 않는다.

WAR는 관계/전장, MIGRATION은 정착/혈통, SCHISM은 후계/해석 차이,
COLLAPSE는 후계/유적, RUIN_REOCCUPIED는 현재 거주지,
ANOMALOUS_DISCOVERY는 origin=unknown인 관찰 record를 남긴다.
현재 surviving state의 source_event_ids로 중요한 사건의 scar를 측정한다.
단순 scar 텍스트 로그는 인정하지 않는다. 직접 source와 인과 ancestor coverage를 구분한다.
최소 75% causal coverage가 필요하며 직접 coverage 부족은 warning이다.

같은 seed/version/default name provider는 동일 canonical output을 만든다.
독립 RNG와 안정된 배열/정렬을 사용한다. 외부 name provider는 deterministic/pure 계약을 지켜야 한다.
validator는 ID/reference, chronology/lifecycle, ancestry, effect semantics, policy,
재투영 일치, 현재 규모/흔적, claims 분리/불일치와 optional replay determinism을 검사한다.
