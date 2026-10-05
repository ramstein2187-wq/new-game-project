# History Generation Canon Contract v0.1

Canon constrains what can be true. History generation decides what happened.
Cultures decide what it means. Simulation decides what happens next.

## LOCKED — 변경 불가능한 객관적 진실

- 인간 원형은 지구 Homo sapiens이며 현재 여러 변형 계통이 존재한다.
- 현대 주민 대부분은 실제 기원을 모른다. 어떤 팩션도 전체 진실을 알지 못한다.
- 젊은 항성계(약 13.5억 년), 원래 인간 거주 부적합 행성, 행성 규모 환경 개조.
- 관리자 제국 실재, 인간 문명의 관찰/보존/제한, 관리자 시대 폐쇄 항성계.
- 관리자 제국 소멸, 남은 코어/일부 관리 시스템, 현재 대부분 소실된 외부 차폐.
- 드문 Outerworld 유입 가능; Outerworld는 단일 종족/국가도 Administrator도 아니다.
- 과거 대규모 정치체, 현재 붕괴 후 파편화된 작은 세력의 시대.
- 가까운 주요 정규위성 네 개와 복잡하지만 예측 가능한 강한 복합 조석.

## UNKNOWN / RESERVED — 작가도 답을 정하지 않은 미스터리

**UNKNOWN은 랜덤 생성 가능이라는 뜻이 아니다.**

인간 도래의 정확한 경위, 최초 테라포머, 관리자 정확한 기원/소멸 원인,
관리자 이전 개입자, 코어의 현재 진짜 의도, 고대사 전체 연표,
현대 대기 정확한 조성, 인간 변형 계통 전체 역사, Outerworld 전체 정치/문명 구조,
대국들을 무너뜨린 최종 세계 Canon 원인은 objective history에서 답을 만들지 않는다.
고리와 코어의 조석 에너지 회수는 강한 후보이며 LOCKED로 승격하지 않는다.

## GENERATABLE — seed별 지역 객관사

최근 300~600년의 국가/도시/부족, 지역 대국의 이름/형태, 왕조와 성립,
전쟁/내전, 기근/이주, 종교 분열, 동맹/배신, 정착지, 지역 재해,
유적 재점유, 난민집단과 후계 팩션, 지역 영토 변화, Innerworld/관리자 유적 발견,
소규모 외부 유입물 발견과 지역 이상현상. v0.1은 이 중 작은 subset만 구현한다.
붕괴의 지역적 기여 요인은 생성할 수 있지만 세계 전체의 최종 원인으로 일반화하지 않는다.

## BELIEF-ONLY — 현재 세력이 주장하는 해석

인간 기원, 관리자 성격, 최초 테라포머, 창조, 코어 목적, Outerworld 정체,
대국 붕괴의 진짜 이유, 정당한 후계자라는 주장은 자유롭게 생성 가능하다.
틀린 믿음과 상충하는 해석이 가능하다. belief는 objective truth를 수정하지 않는다.
허용: “성광교는 관리자가 인간을 창조했다고 믿는다.”
금지: Objective History에 “관리자가 인간을 창조했다.”를 저장하는 것.
허용: “어떤 학파는 최초 테라포머가 관리자였다고 주장한다.”
금지: 최초 테라포머 = 관리자라는 objective fact.

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
