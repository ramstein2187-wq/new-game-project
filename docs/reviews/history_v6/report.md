# M045 — History Generator v6 Phase A 검증·비교 보고서

기준: `origin/main c32cce0`, 작업 브랜치 `codex/history-generator-v6-core`,
Godot 4.7.2, 콘텐츠 `phase_a_3`. 요청문의 PR #49와 달리 실제 main의 v5
통합은 PR #50(`c64083b`), 후속 기록은 PR #51(`c32cce0`)이다.

**판정: 작은 사건 집합의 상태 누적·조합·독립 확장 경로를 검증했다.**
v5를 대체할 준비가 끝났다는 판정은 아니다. 지역 간 이동·인구 재편·관계의
동기·세계의 장기 안정성 및 실제 플레이 가치는 검증 범위 밖이다.

[상세 계약](../../specs/history_generator_v6.md), [샘플 10개](samples.md),
[최종 1,000 Seed 통계](statistics_1000.json), [초기 100 Seed](pilot/statistics_100.json),
[중간 조정 통계](iterations/phase_a_2.json), [작업 재개 기록](WORK_LOG.md).

## 구현과 핵심 질문

핵심 책임은 다섯 개다: `HistoryWorldState`, `HistoryEventRule`,
`HistoryEventSelector`, `HistoryReducer`, `HistoricalEventLog`.
조정하는 `HistoryEngine`과 `HistoryInitialWorld`를 포함하면 실행 개념은
일곱 개다. 별도의 typed Event/Effect와 entity row는 데이터 계약이다.
생산 코드 14개 GDScript, 824행이며 이 수치는 우수성의 근거가 아니다.

- 공통 연산을 사용하는 사건은 코어 수정 없이 rule 배열로 주입한다.
  기본 사건 집합에 편입할 때는 등록 목록과 콘텐츠 버전을 갱신한다.
  새로운 상태 능력이 필요하면 schema/reducer 변경이 필요하다.
- 최종 세력 수 목표, 고정 topology family, 강제 후속 사건을 사용하지 않는다.
  분열 후 접촉/적대/점유 변경, 이동 후 재점유, 사고 후 유기/재점유,
  유실 후 회수의 실제 상태 연결을 관찰했다.
- 통제 테스트에서 사건 전후 후보 집합을 비교했다. 처음에는 주민이 없어
  재점유 후보가 없지만 이주 후 생기고, 파괴 후에는 진입/재점유 후보가
  사라진다. 출처·인구 총량·정치 계보는 보존된다.
- v5의 scaffold→topology→social/later history→planner→compatibility→
  projector/claims/archaeology 연결을 v6의 의존성에서 제거했다.
- 대신 v5의 authored breadth, Project/Scar, 이름, 문화, Claim,
  Trace/Question/Investigation, 현행 소비자 계약 및 버전별 표현 기능은
  제공하지 않는다. 기술·경제·인물·전투·퀘스트·세이브 이전도 구현하지 않았다.

## v5와 실제 코드 구조 비교

v5는 풍부한 데이터와 기존 버전의 계약을 보존하는 완성된 생성 파이프라인이다.
Phase A는 동일한 기능 범위를 갖지 않으므로 코드 길이로 평가하지 않는다.

| 항목 | v5 현재 코드 | v6 Phase A |
| --- | --- | --- |
| 핵심 생성 방식 | `history_v5_planner.gd::generate`가 scaffold, 지역 압력, episode, 제한된 Project/Scar, discovery, 관측·투영을 순서대로 수행 | `history_engine.gd::generate`가 매 단계 현재 상태에서 가능한 규칙을 선택·적용 |
| 생성 단계의 결합 | `HistoryV5Planner extends HistoryV4Planner`, `HistoryV5Scaffold extends HistoryGenerator`, `HistoryV5Topology`가 기존 topology 동작 재사용; `_generator`, `_result`, inherited helper에 의존 | 규칙은 모두 단일 `HistoryEventRule` 계약을 직접 구현; selector와 reducer는 구체 규칙을 모름 |
| 사건 추가 | 기존 catalog record 문법 안의 변형은 데이터 수정으로 가능. 새 topology operation은 eligibility/spec construction, `_perform`/operation 구현, 인구·projector/validator 계약 검토가 필요 | 기존 8개 연산 안의 조합이면 rule 구현+등록/주입+테스트. 새 연산이면 reducer/schema/invariant를 확장 |
| 상태 변경 책임 | Planner/scaffold/topology가 entity/event 정의와 인구 배분을 작성하고 `HistoryProjector`가 present를 도출; 기존 validator로 검사 | 규칙은 효과 제안만 함. `HistoryReducer`가 유일한 생성·재생 상태 변경 경로 |
| 결정론 | 기존 namespaced RNG, 안정적 정렬, operation-first topology 선택, 동결 fixture | 기존 `SeedDeriver` 재사용; 유형별 독립 weighted race, 별도 참여자·매개변수·시간 stream, 후보 정렬 |
| 기존 버전 의존 | v4 Planner·Compatibility, 기존 Generator/Topology, shared catalog/projector/claims에 직접 의존 | `CanonPolicy.snapshot()`과 `SeedDeriver`만 사용. CanonPolicy 클래스 자체의 legacy 메서드 참조는 소스에 남으나 호출하지 않음 |
| WorldState와 사건 | objective timeline과 entity 정의를 누적하고 present 투영. v5 topology 내부에는 `_active`/profile 등의 진행 상태도 있음 | 현재 WorldState가 다음 규칙의 입력이며 event log의 효과를 재생해 같은 상태를 재구성 |
| 유지보수 비용 | 동종 authored variation은 catalog 편집만으로 저렴할 수 있음. 새 topology/효과는 여러 기존 소비자·버전 계약 확인이 필요 | 작은 기존 연산 조합은 한 rule과 focused test로 격리. 데이터 모델이 커지면 reducer와 copy/serialization/invariant 비용이 함께 증가 |

근거 소스: `game/history/history_v5_planner.gd`, `history_v5_scaffold.gd`,
`history_v5_topology.gd`, `history_v4_planner.gd`, `history_generator.gd`,
`history_projector.gd`, `tests/test_history_v5.gd`를 조사했다.
v5도 이미 사건 유형을 먼저 뽑아 split parameter multiplicity bias를 막는다.
이를 v6의 독창적인 장점으로 계산하지 않았다.

## 실제 변경·확장 실험

둘 다 `tests/test_history_v6.gd`의 실행 가능한 테스트이며 생산 기본 규칙을
대체하거나 기존 v5를 수정하지 않는다.

1. **기존 migration 조건과 효과 변경:** `SettlingMigration`이 동일한
   `migration` ID로 기존 구현을 합성한다. 후보를 **무주인 목적지**로 좁히고,
   기존 이동 효과에 **그 장소의 소유권 획득**을 추가한다. 후보 감소,
   이동/점유 실제 적용, unmodified engine 실행을 검사했다. 변경 파일은
   테스트 파일 하나, 코어 수정은 0개다. 결합점은 Candidate의 목적지와
   typed SITE_OWNER 연산이다. 생산 migration의 동작 변경을 배포한 것은 아니다.
2. **새 사건 추가:** `AbandonEmptySite`는 주민이 떠난 소유 장소를 유기한다.
   새 rule ID와 조건/효과를 정의해 주입했고 적용 및 로그 재생을 검사했다.
   변경 파일은 테스트 파일 하나, 코어 수정은 0개다. 결합점은 residents()
   query와 SITE_OWNER 연산이다. 별도의 subclass 계층이나 dispatcher 분기 없음.

이 실험은 해당 두 종류의 변경 비용을 보여준다. 새 경제·기술 능력도 같은
비용으로 추가할 수 있다는 주장은 하지 않는다.

## 검증 결과

- Focused: **8,516 assertions, 0 failures**. 초기 상태, 모든 reachable 후보,
  무효 참조/시간/Origin/Canon·기술 위반, 복사 격리, 효과 중간 실패 원자성,
  인구/계보/소유권/물건, 유형 가중치, 100배 후보 증식에도 동일 유형 선택,
  입력/등록 순서, 무효 규칙의 명시적 중단, JSON 로그 재생, 확장 실험 포함.
- 기존 버전: 정확한 base 전용 worktree에서 v2/v3/v4/v5 각 12 Seed를
  캡처한 **48/48 출력 해시 일치**. 새 fixture이며 기존 fixture를 덮어쓰지 않았다.
  full gate의 기존 v5 테스트도 v2/3/4 동결 fixture와 v5 검증을 그대로 실행한다.
- Full `tools/check_godot.sh`: 최종 결과는 [delivery](delivery.md)에 기록한다.
  GUI 플레이·패키지·수동 시각 승인은 별도로 수행하지 않았다. Phase A에는 UI가 없다.

최종 corpus는 1–1000 Seed, 세계당 최대 36개 사건이다. 모든 선택된 사건의
transaction에서 불변조건을 검사하고 모든 로그를 JSON decode 후 재생했다.

| 항목 | 최종 측정 |
| --- | ---: |
| 생성 오류 / 초기·최종 불변조건 위반 | 0 / 0 |
| 동일 Seed 재생성 일치 | 1000/1000 |
| 저장 JSON 로그 재생 일치 | 1000/1000 |
| 총 사건 / 평균 | 35,969 / 35.969 |
| 사건 수 분포 | 31:2, 32:1, 33:2, 34:5, 35:1, 36:989 |
| 분열 / 이주 / 재점유 | 3,100 / 11,942 / 4,618 |
| 관계 변화 / 사고 / 물건 사건 | 6,260 / 3,567 / 6,482 |
| 세력 생성 / 퇴역 | 4,621 / 1,521 |
| 인구 위치·소속 변경 효과 | 17,459 |
| 소유권 변경 효과 / 물건 변경 효과 | 13,406 / 9,454 |
| 명시적 enabling/displacement 연결 | 10,059 |
| 같은 유형 인접 반복 / 최대 연속 | 0 / 1 |
| 종료: 사건 한도 / cooldown 소진 | 989 / 11 |
| 활동 세력 수 분포 | 2:10, 3:72, 4:199, 5:246, 6:473 |
| 최종 폐허 장소 수 분포 | 0:83, 1:245, 2:315, 3:229, 4:91, 5:37 |

명시적 연결 중 이주→재점유 3,455, 사고→재점유 1,373,
유실→회수 1,981회를 기록했다. 분열 세력의 후속 적대 점유 변경 1,309회,
이주·점유 후 같은 장소의 관계 변화 2,544회는 **관찰된 상태 연쇄**다.
뒤 두 숫자는 개별 사건의 동기가 입증됐다는 의미의 인과선 수가 아니다.
통계 도구에 각 연결의 대표 Seed/Event ID를 함께 남겼다.

이름·연도·인구 수량·provenance를 제외한 최종 구조 signature와 효과 순서는
각각 1,000개였다. ID/장소 배치까지 포함한 구조 구분이므로 위상 동형성을
제거한 다양성 점수가 아니며, 이 숫자만으로 창발성을 판정하지 않는다.

## 정성 검토 — 고정 5개 + 실제 무작위 추출 5개

무작위 Seed는 최초 pilot 실행에서 RNG randomize로 추출해 고정했다.
다음 표는 최종 `phase_a_3`의 전 사건 효과·원인·최종 상태를 읽은 에이전트
검토다. 인간 전문가의 세계관 승인이나 플레이테스트를 대신하지 않는다.
각 이력의 초기 상태, 전체 연대기, 효과, 명시적 원인, 최종 상태는 samples.md에 있다.

| Seed | 실제 관찰 및 문제 |
| --- | --- |
| 1 | e0001이 부모를 퇴역시키고 두 후계 세력을 만든 뒤 e0003의 적대로 site_1 사용권이 바뀐다. e0006의 보관자 이탈/유실을 e0014가 회수한다. 후반 관계가 우호→중립 등으로 재변경되어 동기 밀도가 낮다. 최종 6세력/폐허2. |
| 2 | e0007 사고 후 e0009에서 원래 주민이 손상 장소를 재점유한다. e0015에 물건이 묻힌 폐허는 복구하지 않으며 e0035에 또 다른 보관 물건을 잃는다. 분열은 두 번뿐이고 최종4세력/폐허2로 다른 정치 구조를 남긴다. |
| 42 | e0000 유실 물건이 e0012에서 다른 세력에게 회수된다. site_3의 적대 점유 변경 이후 e0021 파괴가 이동 후보를 좁히고 e0024/e0027의 이탈 원인이 된다. 폐허에서 관계 변화는 계속 가능하다(주변 지역 거주 모델). 최종6세력/폐허1. |
| 1001 | 한 세력의 제도적 분열과 다른 세력의 후반 교체가 다르게 전개된다. e0026이 비워 둔 site_3는 이미 이주해 있던 faction_1이 e0028에 점유한다. 물건이 잦게 이동·유실되며 경로나 거래 이유는 모델링하지 않는다. 최종6세력/폐허1. |
| 10492 | 초기 부모 소멸과 두 후계자 형성이 먼저 발생한다. site_4의 파괴 e0004에서 떠난 집단이 e0011 이동, e0014 재점유로 다른 현장을 만든다. e0016/e0017은 피해 후 재점유를 보이고 손상은 남는다. 최종4세력/폐허1. |
| 1807263119 | 두 초기 시설을 재점유 후 다시 파괴하고, 이어 세 곳의 기존 손상 장소도 파괴한다. e0032 이후 접근 가능한 시설이 0인데도 주변 주민의 정치적 분열·관계 변화가 진행된다. 논리상 허용되나 생존/경제 모델 부재와 장기 수렴의 가장 뚜렷한 한계다. 최종5세력/폐허5. |
| 1521980171 | e0016 사고 뒤 서로 다른 인구집단이 e0020/e0022/e0024/e0027에서 분산 이동한다. site_2/site_3를 이용하는 최종 구조는 유지되지만 e0034로 두 번째 물건도 유실된다. 파괴만 누적하고 회복은 없어 비관적 편향이 있다. 최종4세력/폐허3. |
| 1665175286 | 기존 사고 유실 물건을 e0023까지 회수하지 않는 긴 공백이 있다. e0019에서 형성된 faction_4가 e0022에서 재분열하여 birth provenance가 실제 후속 조건을 연결한다. e0025/e0027의 관계 반전은 다른 사건을 끼운 반복이다. 최종6세력/폐허1. |
| 958857423 | e0011과 e0018의 연속 세대 교체로 점유권/계보가 누적되고, site_2/3/4 파괴가 주민을 두 초기 시설 주변으로 몰아간다. e0031 사고 후 e0033 재점유에서도 양쪽 물건은 자동 복구되지 않는다. 최종6세력/폐허3. |
| 1977506391 | 형제 세력의 우호→적대→우호 변화와 별도 이주가 섞인다. e0018의 유실은 e0031에 후대 세력이 회수하고 e0034 사고로 다시 잃는다. 상태 이력은 다르지만 반복되는 보관/유실 패턴은 의미적 다양성 개선 과제다. 최종4세력/폐허3. |

## 조정 근거와 Phase B 전 권고

초기 pilot은 90%가 6세력, 동일 유형 최대10연속이었다. 그래서 분열/사고
가중치를 1→0.4 / 0.8→0.4로 줄이고 즉시 반복만 막는 cooldown을 추가했다.
최종 47.3%가 6세력이며 즉시 반복은 0이다. 콘텐츠 revision마다 RNG namespace도
달라졌으므로 이는 paired-seed ablation이 아니라 분포 수준의 탐색적 비교다.
향상과 남은 수렴을 함께 기록하며 최적 조정이라고 주장하지 않는다.

1. **인구·제도 범위:** 고정된 여섯 indivisible group과 split-only formation이
   여섯 세력으로 밀어낸다. 다음 실험은 작은 범위의 병합/부분 집단 이동을
   별도 설계하고 long-horizon 분포로 평가할 것. 목표 세력 수를 다시 도입하지 말 것.
2. **물리적 회복과 생존:** 이번에는 유효한 기술 복구 경로가 없으므로 상태는
   손상 방향으로만 진행한다. 단순 사용 시설의 회복을 추가하더라도 기술
   이해/작동 능력과 구분할 것. 지역 거주와 시설 진입의 구분을 명시할 것.
3. **관계·물건 반복:** cooldown은 인접 반복만 막는다. 동기 없는 관계 반전,
   오가는 이주, 유실/회수는 남는다. AI 전체를 만들기 전에 대상별 지속 조건이나
   실제 자원/접촉 근거 한 가지를 작은 규칙으로 시험할 것.
4. **원인 의미:** enabling provenance는 충분조건/정치적 동기를 보증하지 않는다.
   관련 없는 과거를 묶지 말고, 사실 필드별 마지막 변화만 보존하는 현 방식의
   누락·과잉을 추가 content마다 검토할 것. Claim은 별도 계층에서만 처리할 것.
5. **확장 비용:** 새 연산은 schema·copy·serialization·validation 동시 수정이
   필요하다. DSL이나 unrestricted Dictionary로 이 검사를 회피하지 말 것.
6. **플레이 검증:** 현재 상태가 실제 작은 지역의 출입·소유권·주민·물건
   위치를 다르게 만들 수 있는지 다음 범위에서 검토할 것. UI/아이템/월드맵을
   연결하지 않은 현재 결과를 플레이 가능성 승인으로 간주하지 말 것.

v6 Phase A는 제거·확장이 가능한 작은 실험으로 유지한다. v5의 기본 경로와
세이브·소비자 계약을 전환하는 결정은 이번 결과에 포함하지 않는다.
