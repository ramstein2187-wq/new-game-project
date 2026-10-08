# M043 — History Generator v4
## Civilizational Projects, Scars, SF History Vocabulary & Canonical Terminology Migration

현재 M042 History Generator v3를 기반으로 **History Generator v4**를 구현하라.

이번 작업의 핵심 목표는 단순히 사건 종류를 늘리는 것이 아니다.

v4는 다음과 같은 역사 생성기로 발전해야 한다.

> 사람들은 이 세계에서 단순히 왕국을 세우고 싸우기만 하지 않는다.
> 하늘을 탈출하려 하고, 행성 심부를 파고들고, 기억을 보존하고,
> 인간의 형태를 다시 설계하고, 기계와 융합하고,
> 외우주에 귀를 기울이며, 때로는 이해할 수 없는 이유로 사라진다.

즉 v4에서는:

- ordinary political history
- social history
- anomalous history
- civilizational-scale projects
- civilizational scars

가 함께 존재해야 한다.

중요:
SF 사건이 모든 세계를 뒤덮으면 안 된다.
평범한 정치사와 생활사 사이에 몇 개의 강력한 signature history가 존재하는 구조를 목표로 한다.

---

# 0. Current repository state / 작업 기준

현재 기준 branch/worktree:

- branch: `codex/history-social-incidents-v1`
- M042 commit:
  `8cb6f3dfc3735e648f561bb5eaa37a52228ceaf2`
- worktree:
  `C:\GameDev\history-social-incidents-v1`

현재 worktree에는 M042 이후 의도적으로 수정한 uncommitted changes가 존재한다.

내용:
- Core / Deep Core → Preservator terminology
- Planetary Regulation Network
- Environmental Regulation Module
- Observer 시대 시설 은폐 → Observer 통제 상실 후 점진적 노출
- Faith / 신앙 terminology 방향
- 관련 lore/spec/content 수정

이 변경은 절대 reset/revert하지 말고 먼저 diff를 감사한 뒤 v4 작업에 포함한다.

새 branch:

`codex/history-generator-v4`

를 만든다.

main에는 병합하지 않는다.

EverRogue `.png.import` sidecar 12개는 unrelated artifact이므로 절대 commit하지 않는다.

작업 종료 시:
- implementation
- tests
- corpus validation
- docs
- commit
- push
까지 완료한다.

---

# 1. Version contract

v4:

- `generation_version = 4`
- `architecture_version = 2`

기존 explicit paths:

- v2 = generation 2 / architecture 1
- v3 = generation 3 / architecture 2

는 historical compatibility path로 유지한다.

중요:
v2/v3 fixture를 새 용어로 덮어쓰지 않는다.

v4부터 새 canonical IDs를 사용한다.

가능하면:
- v2 exact replay PASS
- v3 exact replay PASS
- v4 new canonical output

을 동시에 만족시켜라.

legacy ID compatibility는 명시적 boundary에 격리한다.

---

# 2. Canonical terminology migration

## Preservator hierarchy

v4에서 lore/display 기준 `Core / Deep Core`를 폐기한다.

Canonical hierarchy:

- **The Preservator**
  - Observer 시대의 행성 규모 관리·보존 architecture 전체

- **Planetary Regulation Network**
  - 행성 규모의 분산 조절망

- **Environmental Regulation Module**
  - 환경 기능 단위

- **Regional Control Station**
- **Regulation Node**
- **Control Node**
  - 현장 시설 계층

The Preservator는 하나의 행성 중심 컴퓨터 한 대가 아니다.

Planetary Regulation Network, orbital defense systems, fleet remnants,
other Observer-era systems가 현재 하나의 단일 AI 의지 아래 있다고 가정하지 않는다.

Observer 시대에는 이 시설들의 실체가 인간 사회에 거의 감춰져 있었다.

Observer 통제 소실 후:

- concealment failure
- maintenance decay
- seal failure
- access-control degradation
- geological exposure

등을 통해 시설들이 점차 드러났다.

현대 지식 단계:

1. 일반인
   - 고대 기계
   - 금지된 지하 시설
   - 날씨를 바꾸는 폐허

2. 기술자/탐험가
   - 반복되는 facility/node 규격 인식

3. 일부 학자
   - Planetary Regulation Network 가설

4. 극소수
   - The Preservator architecture 추론

5. Developer Canon
   - 실제로 존재함

Objective History가 subsystem provenance를 안다고 해서
역사 속 주민이나 faction Claim도 그것을 알고 있었다고 가정하지 않는다.

---

# 3. v4 canonical ID migration

v4 output에서는 legacy `core_*`를 canonical ID로 사용하지 않는다.

예:

`core_intervention`
→ `preservator_intervention`

`deep_core`
→ `planetary_regulation_network`

`environmental_infrastructure`
→ `environmental_regulation_module`

`core_intent`
→ `preservator_current_intent`

`core_intervention_purpose`
→ `preservator_intervention_purpose`

`core_tidal_energy`
→ `preservator_tidal_energy`

v2/v3 compatibility path 안에서는 과거 이름을 유지해도 된다.

가능하면 legacy mapping을 한 compatibility/migration layer에 집중시킨다.

---

# 4. Faith terminology cleanup

추상적 문화 축에서는:

`ritual`
→ `faith`

예:

- `social_anchor: faith`
- `interpretation_mode: faith`

Institutional terminology:

`ritual_authority`
→ `religious_authority`

`ritual_schism`
→ `religious_schism`

`ritual_site`
→ `sacred_site`

`ritual_stewardship`
→ `sacred_stewardship`

Display:

- Faith / 신앙
- Religious Authority / 종교 권위체
- Religious Schism / 종교 분열
- Sacred Site / 성소·신앙 장소
- Sacred Stewardship / 신앙 전통 관리

단 실제 행위로서의 `ritual`, `rite`, `communal rite`는 계속 사용할 수 있다.

즉:

- faith = 믿음/세계관
- religious = 제도화된 종교
- sacred = 신앙 대상·장소·관리
- ritual/rite = 실제 의식 행위

로 역할을 분리한다.

---

# 5. Other terminology cleanup

v4 canonical rename:

`facility_community`
→ `facility_enclave`

`resource_or_trade_commune`
→ `exchange_commune`

`regional_body`
→ `regional_assembly`

`office_fragmentation`
→ `administrative_breakdown`

`impact_machine`
→ `crater_machine`

`salvage_custom`
→ `salvage_tradition`

`human_final_authority`
→ `human_authority_reaffirmed`

`rotating_office_compact`
→ `office_rotation_charter`

다음은 이번 구현에서 임의 rename하지 말고 review 후보로 남긴다:

- Modified Human Community
- Deep Boundary Keepers
- Hazard Memory
- Local Mandate
- Bounded Automation
- Machine Revelation
- New Ecology
- Ecological Communion

---

# 6. New conceptual layer:
# Civilizational Project vs Civilizational Scar

v4에서 이것을 명확히 구분한다.

## Civilizational Project

한 사회가 수십 년 이상:

- 인구
- 노동
- 자원
- 정치적 정당성
- 전문 인력

을 하나의 거대한 목표에 집중한 역사.

예:

- Ark Project
- Deep Descent Project
- Deep-Space Listening Array
- Continuity Vault
- Genome Ark
- Orbital Habitat
- Climate Reconstruction Array
- Machine Coordination Nexus
- Transmutation Complex

Project 자체는 반드시 실패할 필요가 없다.

결과:

- success
- partial success
- abandonment
- unknown outcome
- catastrophe

중 하나가 가능해야 한다.

## Civilizational Scar

문명 전체의 기억에 오래 남는 중대한 역사적 상흔.

예:

- Failed Exodus
- The Last Descent
- Biological Shutdown
- Collective Fracture
- Machine Insurrection
- Silent Depopulation
- Targeted Extermination
- Mass Morphogenic Event
- Continuity Transfer
- Identity Collapse

Project가 Scar를 만들 수 있지만,
모든 Scar가 Project에서 나오는 것은 아니다.

구조적으로:

Civilizational Project
→ consequence
→ optional Civilizational Scar

를 표현할 수 있게 한다.

---

# 7. Ark / Failed Exodus

신규 Civilizational Project family:

## Ark Project

한 사회가 행성 밖으로 인간/자료/유전체 등을 탈출시키기 위한 거대 사업을 수행한다.

가능한 chain:

`exodus_feasibility_study`
→ `ark_project`
→ `ark_selection`
→ `ark_construction`
→ `ark_launch`
→ `orbital_interdiction`
→ `failed_exodus`

가능한 interdiction subtype:

### `launch_destruction`
발사 후 Observer-era orbital system이 방주를 파괴.

### `guidance_capture`
방주의 항법이 외부 명령에 의해 변경되어 탈출 궤도 진입 실패.

### `propulsion_suppression`
특정 고도/궤도에서 추진체계가 예상과 다르게 기능 중단.

### `orbital_containment`
방주가 파괴되지 않고 행성 궤도에 갇힘.

### `silent_denial`
발사 직전 또는 발사 과정에서 통신/발사/궤도 통제 기능이 차단되어 실제 출항 불가.

Objective History에서:

Observer-era system이 물리적으로 launch/exodus를 차단했다는 증거가 충분하면
그 사실은 저장할 수 있다.

하지만 다음은 RESERVED:

- 왜 막았는가
- 어떤 rule을 위반했는가
- human containment가 목적이었는가
- preservation 때문이었는가

이유를 generator가 답하지 않는다.

Possible scars:

- failed_exodus
- orbital_ark
- ark_wreck
- abandoned_launch_complex
- launch_memorial
- ark_manifest

Ark Selection은 사회갈등을 만들 수 있다.

예:
- lottery
- specialist priority
- lineage priority
- children/reproductive population priority
- genome-only preservation
- political elite capture
- religious selection
- clone-template selection

단 실제 selected population/evidence가 없으면 임의 lineage를 만들지 않는다.

---

# 8. The Last Descent / Deep Descent Project

Ark의 위쪽 방향과 대칭되는 문명적 프로젝트.

## Deep Descent Project

인간이 행성 내부, 궁극적으로 내핵 방향으로 계속 내려가려는 대규모 탐사/굴착 프로젝트.

가능한 chain:

`deep_survey`
→ `deep_descent_project`
→ `permanent_descent_infrastructure`
→ `successive_expeditions`
→ `unmapped_substructure_discovery`
→ `final_descent`
→ communications irregularity
→ partial evacuation attempt
→ `deep_expedition_loss`

대표 Scar:

**The Last Descent**

Objective facts may include:

- expedition reached unprecedented depth
- permanent shaft/infrastructure existed
- communications failed
- only a small fraction returned
- access later sealed/collapsed/became unreachable
- Preservator-era infrastructure changed state around same period if objectively supported

But do NOT resolve:

- what they found
- exactly what killed them
- whether Preservator intentionally exterminated them
- whether an Innerworld organism caused it
- whether it was geophysical failure

가능한 Claims:

- they crossed a forbidden boundary
- the Deep consumed them
- Preservator erased them
- they found something below
- ordinary engineering failure

Objective History는 하나를 정답으로 선택하지 않는다.

---

# 9. Megaproject family

최소 다음 Civilizational Project archetypes를 구현 가능하게 설계한다.

모든 것을 같은 빈도로 shipping할 필요는 없다.

### `ark_project`
행성 탈출.

### `deep_descent_project`
행성 심부 탐사.

### `deep_space_listening_array`
거대 심우주 전파 수신기.

### `continuity_vault`
기억/인지 패턴/identity archive 보존.

### `genome_ark`
유전체/배아/lineage archive 보존.

### `orbital_habitat_project`
행성 궤도 영구 정착.

### `climate_reconstruction_array`
지역 또는 대규모 환경 재설계.

### `machine_coordination_nexus`
광범위한 기계 network coordination.

### `transmutation_complex`
대규모 생체/기계 신체 개조.

모든 project는:
- authorization
- resource concentration
- construction
- activation/use
- consequence
구조를 가질 수 있다.

필요하면:
- labor mobilization
- specialist caste formation
- forced relocation
- political opposition
등도 support events로 사용 가능.

---

# 10. Deep-Space Listening Array

대표 신규 project.

개발자 분류:

**Deep-Space Listening Array**

세계 내부 이름 예:
**Far-Sky Array**

가능한 chain:

`astronomical_survey`
→ `signal_debate`
→ `deep_space_listening_project`
→ decades of construction
→ `array_activation`
→ consequence

가능한 consequence:

### Silence
아무 의미 있는 신호도 찾지 못함.

사회/정치적으로:
- massive resource waste
- legitimacy collapse
- abandonment

이 가능.

### `unclassified_signal`
실제 반복 신호는 관측되지만 origin unknown.

절대 자동으로:
- Outerworld
- Observer
- alien civilization

이라고 결정하지 않는다.

### `orbital_reaction`
Array activation과 Observer-era orbital system activation이 시간적으로 근접.

Objective:
correlation.

금지:
causality를 자동 확정.

### `signal_fixation`
operators/scholars/social groups가 특정 pattern에 장기간 집착.

원인이:
- real message
- analysis artifact
- cultural phenomenon
- machine manipulation

중 무엇인지는 unresolved.

### `transmission_reversal`
어느 시점부터 수신기가 송신 기능을 수행한 흔적이 발견됨.

누가 또는 무엇이 변경했는지는 unknown 가능.

시설은 현재도 작동할 수 있다.

예:
수백 년째 같은 방향을 추적하는 안테나.

---

# 11. Regional Pressure redesign

v3의 Preservator 계열:

- simple route isolation
- simple shutdown
- slope failure

같이 너무 작은/행정적인 사건은 v4에서 확장 또는 교체한다.

새 Preservator pressure 후보:

### `regulation_quarantine`
지역 barrier가 격리 상태로 전환.

### `network_severance`
도로/지하통로/서비스 link 여러 개가 짧은 기간에 연쇄 차단.

### `sealed_horizon`
주요 외부 경로가 하나씩 폐쇄되어 지역 전체가 고립.

### `service_cascade`
물/열/환기/수송/기타 service infrastructure가 순차적으로 실패.

### `hydrological_reversal`
지하수/하천/배수/저수 체계가 비정상적으로 재편.

### `climate_desynchronization`
장기간 안정적이던 기후/강수 주기가 기존 패턴과 분리.

### `subsurface_pressure_bloom`
여러 지점에서 지하 유체압/가스/열압이 동시에 상승하여
침하, 분출, 구조손상 발생.

### `regulation_spasm`
다수 regulation subsystem이 짧은 시간에 연속적 상태 변화.

예:
rainfall shift
→ pressure change
→ service interruption
→ access sealing

Objective:
multiple systems changed state.

금지:
“Preservator가 사람을 죽이려 했다.”

### `unclassified_intervention`
명확한 인공적/조정적 물리 변화는 있으나
어느 known subsystem에도 귀속 불가능.

가능하면 cause가 진짜 unknown으로 남을 수 있어야 한다.

---

# 12. Human/SF pressure expansion

일반 역사형 pressure를 유지한다.

추가 gated candidates:

### `identity_dispute`
clone / copied memory / duplicated legal identity.

### `augmentation_conflict`
bodily modification 범위 갈등.

### `memory_ownership_dispute`
저장된 memory/personality record의 ownership conflict.

### `continuity_crisis`
copied/executed identity의 legal/political continuity 문제.

### `lineage_persecution`
실재하는 lineage/cohort 대상의 구조적 박해.

단 prerequisite 없는 lineage를 발명하지 않는다.

---

# 13. Response Motif expansion

약 10~14개 수준으로 확장.

기존:

- regional_autonomy
- religious_schism
- maintainer_secession
- household_council

추가:

### `quarantine_cordon`
물리적 격리선 설치.

### `population_dispersal`
집중 인구를 여러 거점으로 분산.

### `archive_evacuation`
records/genome/memory/critical archive 우선 대피.

### `continuity_project`
기억/인지 패턴을 non-biological storage/execution substrate에 보존하려는 프로젝트.

중요:
성공적인 consciousness transfer라고 확정하지 않는다.

### `sealed_districts`
일부 구역을 포기·봉쇄.

### `gene_bank_refuge`
genome-preservation capability가 있을 때만.

### `machine_delegation`
위험 업무/maintenance를 automated systems에 위임.
machine capability prerequisite 필요.

### `identity_registry`
clone/copy/duplicate identity 문제가 있을 때 legal identity 등록.

### `memory_custody`
memory archive 접근/복제/소유 통제.

### `emergency_collective`
재난 대응 조직이 기존 행정보다 우위에 서는 비상체제.

---

# 14. Collapse Pattern expansion

다음 ordinary + SF collapse를 조합한다.

### `civil_war`

### `mass_exodus`

### `administrative_breakdown`

### `targeted_extermination`

특정 actual population/group/cohort에 대한 조직적 제거.

필수:
- target provenance
- perpetrator/reference where known
- killings/forced removal/policy evidence
- population/site consequences

내부 ID는 단순 `genocide`로 하지 않는다.

후대 Claim/학자 표현에서 genocide라는 용어를 사용할 수 있지만
generator가 너무 적은 조건으로 법적·역사학적 판정을 하지 않는다.

### `silent_depopulation`

사람들이 사라졌지만:

- battle record 없음
- mass grave 없음
- mass migration 없음
- clear evacuation 없음

cause = unknown.

Preservator/disease/Outerworld/upload 등으로 자동 설명하지 않는다.

### `continuity_transfer`

continuity project 후 가능.

Objective:

- neural/cognitive pattern extraction
- data storage
- execution/reconstruction traces

가능.

금지:

- consciousness survived
- soul transferred
- same person continued

### `population_failure`

생존자는 있으나 reproduction/birth continuity 붕괴.

### `infrastructure_cascade`

복수 생존 인프라 연쇄 붕괴.

### `identity_collapse`

clone/copy/upload identity 문제 때문에
legal/personhood/inheritance system이 붕괴.

### `automated_succession`

인간 행정이 사라진 뒤 automated system이 일부 기능을 계속 수행.

Machine sapience를 자동 의미하지 않는다.

### `ecological_displacement`

환경 재편으로 기존 settlement/lifestyle이 유지 불가능.

---

# 15. Biological kill switch

신규 Civilizational Scar 후보:

### `biological_shutdown`

특정 human-derived lineage/cohort/population에서
동시다발적이고 유사한 생리 기능 붕괴가 발생.

Objective evidence may include:

- same physiological failure pattern
- lineage/cohort specificity
- abrupt mortality
- molecular/genetic marker correlation

하지만 다음은 자동 확정하지 않는다:

- original designers inserted a kill switch
- an enemy intentionally triggered it
- Preservator triggered it
- natural disease caused it

“biological kill switch”는 possible interpretation일 수 있다.

실제 history에서 engineered trigger가 객관적으로 입증되는 경우에만
더 강한 fact를 저장한다.

Doctrine hooks:
- Ancestral Genome
- Pure Flesh
- Designed Kinship
- Last Human Measure

등이 사용할 evidence provenance를 남긴다.

---

# 16. Semi-sapient / cognitive regression

단 하나의 “degeneration” event로 뭉개지 않는다.

## `imposed_cognitive_regression`

외부 개입 또는 제도적 프로그램에 의해
population의 cognitive capacity가 장기간 감소.

실제 authored semi-sapient/population content가 없으면 shipping gate 유지.

## `chosen_cognitive_regression`

사회가 의도적으로 특정 cognitive capacity를 줄이는 방향을 선택.

possible motivations in Claims:

- cognition causes suffering
- higher cognition attracts danger
- civilization itself is the problem
- social stability
- religious doctrine

하지만 Objective History는
그 belief가 실제로 맞았는지 결정하지 않는다.

Display/history nickname 후보:

**The Retreat from Thought**

---

# 17. Machine collective mind

## `machine_coordination_nexus`

Civilizational Project 또는 machine history prerequisite.

## `collective_mind_formation`

다수 unit가 shared coordination substrate에 연결.

중요:
“정말 하나의 의식”이었다는 metaphysical fact는 자동 확정하지 않는다.

## `collective_mind_fracture`

network가 붕괴/분절되어 independent clusters/units가 나타남.

Display candidate:
**Collective Fracture**

Possible aftermath:

- independent machine communities
- restorationists
- fragmented command loops
- conflicting copies of shared memory

가능.

하지만 approved machine-social content가 없으면
shipping에서 완전한 machine faction을 자동 생성하지 않는다.

---

# 18. Machine Insurrection

### `machine_insurrection`

실제 조건:

- autonomous/automated systems existed
- explicit command refusal or divergence
- organized conflict against human authority
- objective damage/territorial/service consequence

필요.

중요:

Machine Insurrection != proof of machine consciousness.

Claims may interpret it as:

- rebellion
- liberation
- catastrophic malfunction
- corrupted command hierarchy
- old Observer instruction

Objective History는 evidence 이상을 확정하지 않는다.

---

# 19. Assimilation

`assimilation`을 하나의 모호한 event로 사용하지 않는다.

구분:

### `social_assimilation`
language/custom/institution identity absorption.

### `biological_assimilation`
population의 biological traits가 다른 biological system에 수렴.

### `mechanogenic_assimilation`
human/biological tissue가 machine/synthetic structure로 치환되거나
machine substrate에 구조적으로 편입.

이것은 단순 prosthetic augmentation과 구분한다.

Possible facts:

- high proportion of biological tissue replaced
- synthetic structures integrated
- network linkage established

금지:

- original person died
- machine consumed them
- they became a superior species

같은 해석은 Claim/Culture로 남긴다.

### `cognitive_assimilation`
memory/behavior/self-model이 다른 cognitive system에 수렴.

### `network_assimilation`
individual identities가 shared network에 편입.

각 assimilation type은 prerequisite가 다르다.

---

# 20. Population redesign / modification

### `population_redesign`

한 사회가 여러 세대에 걸쳐
population의 biological traits를 계획적으로 변경.

Objective:
actual modification program.

Possible outcomes:

- stable adapted population
- lineage conflict
- mechanogenic assimilation
- reproductive failure
- mass mutation

누가 “옳은 인간 형태”인지 generator가 판단하지 않는다.

---

# 21. Mass Morphogenic Event

대표 mystery Scar.

### `mass_morphogenic_event`

넓은 지역에서 짧은 역사 기간 안에:

- humans
- animals
- plants
- possibly microbes

의 developmental/morphological 변화가 동시다발적으로 증가.

객관적으로:
- mutation/developmental anomaly incidence spike
- geographic clustering
- repeated morphological pattern
- biological records

등은 기록 가능.

원인은 unresolved 가능:

- environmental contamination
- engineered organism
- ancient biotechnology
- radiation
- Outerworld material
- Preservator infrastructure
- unknown

자동으로 어느 하나에 귀속하지 않는다.

가능하면 이 사건은 대표적인 Civilizational Scar로 취급한다.

---

# 22. Reproductive Silence

신규 후보:

### `reproductive_shutdown`

Display candidate:
**Reproductive Silence**

생존 인구는 존재하지만:
- pregnancies/births
- viable offspring
- germline continuity

가 급격히 감소/중단.

원인은 unknown일 수 있다.

Biological Shutdown과 구별:

- biological_shutdown = existing individuals의 생리적 붕괴
- reproductive_shutdown = 다음 세대 생산 실패

---

# 23. Memory anomalies

신규 anomalous/SF history 후보:

### `memory_convergence`
서로 다른 사람들이 같은 기억 조각을 보고하기 시작.

### `distributed_identity_event`
서로 떨어진 여러 개체가 동일한 인물의 기억/자기서사를 주장.

Objective:
shared memory pattern / identity claims / record match.

금지:
누가 원본인지 자동 결정.

---

# 24. Anomalous Discovery expansion

현재 6개 수준에서 약 15~20개로 확장한다.

최종 후보:

- crater_machine
- embedded_artifact
- manufactured_fragment
- sealed_chamber
- stratum_fragment
- surface_wreckage
- memory_lattice
- cognitive_echo
- identity_duplicate
- empty_settlement
- preserved_cohort
- chronological_anomaly
- biological_archive
- unmapped_substructure
- silent_regulation_node
- active_regulation_node
- nonlocal_material
- sealed_human_record
- cognitive_archive
- abandoned_launch_complex
- orbital_ark / ark_wreck where appropriate

중복되는 것은 구현 전 정리 가능.

## `cognitive_echo`

historical person과 높은 behavioral/memory correspondence를 보이는 system.

절대:
“same person”
이라고 확정하지 않는다.

## `memory_lattice`

human memory/neural pattern과 구조적 유사성을 가진 대규모 data structure.

“soul archive”라고 확정하지 않는다.

## `empty_settlement`

battle/evacuation evidence 없이 주민 기록이 끊어진 settlement.

## `chronological_anomaly`

주변 geological/historical context와 반복적으로 맞지 않는 dating result.

## `active_regulation_node`

아직 작동하지만 function/purpose가 완전히 이해되지 않는 Regulation Node.

## `nonlocal_material`

알려진 local planetary geology/manufacturing과 맞지 않는 material.

Outerworld라고 자동 확정하지 않는다.

Generic anomalous discovery는 기본적으로 origin=unknown 원칙 유지.

---

# 25. Consciousness upload / Continuity philosophy

“Consciousness Upload”라는 objective fact를 만들지 않는다.

Project/response:

- Continuity Project
- Continuity Vault

Outcome:

- Continuity Transfer

Objective facts:

- neural pattern extraction
- memory extraction
- data storage
- behavioral execution
- record similarity

가능.

다음은 항상 unresolved:

Person A
→ data A'
→ executed entity A''

에서

`A == A''`

인가?

Generator는 답하지 않는다.

Cultures may believe:

- memory continuity = survival
- body continuity = personhood
- copies are equal persons
- copies are imitations
- substrate is irrelevant
- substrate defines identity

이번 milestone에서 full Doctrine expansion은 하지 않되
downstream evidence hooks를 제공한다.

---

# 26. Deep-Space Listening / Far-Sky lore

Deep-Space Listening Array는 단순 facility가 아니라
사회 전체를 변화시키는 megaproject가 될 수 있다.

Project consequences may include:

- resource concentration
- specialist elite
- forced relocation
- political opposition
- religious interpretation
- legitimacy tied to successful activation

Possible historical stories:

A.
Array completed.
Nothing meaningful detected.
Political legitimacy collapses.

B.
Repeating narrowband signal detected.
Origin unknown.
Society divides over interpretation.

C.
Array activation temporally coincides with Observer-era orbital activity.
Causality unknown.

D.
Array eventually transmits rather than receives.
Who changed it unknown.

E.
Facility remains active centuries later,
tracking the same region of the sky.

---

# 27. Cause → Response → Collapse compatibility

v4에서 pressure/response/collapse를 완전히 독립 random choice로 뽑지 않는다.

작은 authored compatibility data를 사용한다.

예:

Preservator network disaster
→ emergency_collective / population_dispersal / sealed_districts
→ infrastructure_cascade / mass_exodus

identity crisis
→ identity_registry / memory_custody
→ identity_collapse

existential demographic crisis
→ continuity_project
→ continuity_transfer

religious conflict
→ religious_schism
→ civil_war

actual persecuted population + extremist political response
→ targeted_extermination

unknown anomaly
→ quarantine_cordon
→ silent_depopulation

Deep exploration
→ deep_descent_project
→ The Last Descent

spaceflight ambition
→ ark_project
→ Failed Exodus

machine coordination
→ machine_coordination_nexus
→ collective_mind_fracture / machine_insurrection

한 pressure가 하나의 response를 강제하지 않는다.

History opens a possibility space.

---

# 28. Unknown must remain genuinely unknown

매우 중요한 contract.

`unknown`은 나중에 generator가 자동으로 explanation을 집어넣는 slot이 아니다.

다음 사건은 끝까지 unknown일 수 있다:

- silent depopulation
- The Last Descent
- unclassified intervention
- mass morphogenic event
- cognitive echo
- nonlocal material
- Far-Sky signal
- distributed identity event
- biological shutdown

Observer / Preservator / Outerworld가 만능 설명이 되면 안 된다.

일부 mystery는 developer Canon에서도 미정일 수 있다.

---

# 29. Origin / population safety

기존 M039/M042 규칙 유지.

Canonical Origins:

- planetary
- human_derived
- observer
- innerworld
- outerworld
- unknown

규칙:

- Clone != Origin
- Deep residence != Innerworld Origin
- political merge != biological fusion
- machine integration != automatic machine Origin
- mechanogenic assimilation does not automatically create a new approved lineage
- discovery of nonlocal material != Outerworld proof

현재 shipping catalog가 human_baseline만 허용한다면
새 SF 사건을 위해 새 species/lineage를 임의 생성하지 않는다.

Gated content stays gated.

---

# 30. Rarity philosophy

기존 원칙 유지:

> Rarity should create different combinations, not hide expensive content from players who may see only one or two worlds.

추천 구조:

### Ordinary history
거의 모든 세계에 존재.

- succession
- trade
- migration
- political fragmentation
- ordinary disaster

### Unusual history
한 세계에서 몇 개 정도 볼 가능성이 있음.

- machine conflict
- biotechnology
- cloning
- megaproject
- major anomaly

### Civilizational Scar
세계당 0~2개 정도가 자연스러운 수준부터 corpus를 통해 조정.

대표:
- Failed Exodus
- The Last Descent
- Biological Shutdown
- Collective Fracture
- Silent Depopulation
- Mass Morphogenic Event
- Continuity Transfer
- Targeted Extermination

개별 사건을 0.1% 같은 dead content로 만들지 않는다.

정확한 숫자는 미리 강제하지 말고 5,000-seed corpus 후 조정한다.

---

# 31. Data architecture

가능하면 다음 구조로 정리한다.

Authored catalogs:

- pressure definitions
- response definitions
- collapse definitions
- discovery definitions
- civilizational projects
- civilizational scars
- prerequisite/compatibility rules

Generic planners:

- pressure planner
- response/collapse resolver
- project planner
- discovery planner

기존 HistoricalEvent/effect schema와 provenance 원칙을 최대한 재사용한다.

피할 것:

- 거대한 if/else tree
- seed-specific hacks
- prose를 truth source로 사용
- fake evidence
- doctrine이 history를 역으로 생성
- name가 fact를 생성

---

# 32. Determinism / RNG ownership

v2/v3 RNG namespace는 절대 흔들지 않는다.

v4 namespaces를 별도 사용한다.

예:

- history/v4/pressure
- history/v4/response
- history/v4/collapse
- history/v4/project
- history/v4/scar
- history/v4/discovery
- history/v4/preservator
- history/v4/identity-history

새 discovery 항목 추가가:
- topology
- faction count
- naming

을 불필요하게 흔들지 않게 한다.

---

# 33. Tests

최소 다음 focused tests를 추가한다.

## Version compatibility
- v2 exact replay unchanged
- v3 exact replay unchanged
- v4 canonical IDs no longer emit legacy core/ritual IDs

## Terminology
- Preservator vocabulary present
- Faith / Religious / Sacred separation
- legacy ID isolated to compatibility layer

## Project prerequisites
- Ark Launch requires Ark Project
- orbital interdiction requires launch or equivalent valid exodus attempt
- Last Descent requires deep descent project/expedition chain
- continuity transfer requires continuity project
- collective fracture requires machine coordination context
- identity collapse requires actual identity duplication/copy context
- mechanogenic assimilation requires relevant machine/biological capability
- targeted extermination requires real target population/group

## Mystery preservation
- silent depopulation cause remains unknown
- Last Descent does not resolve killer
- cognitive echo does not assert same person
- continuity transfer does not assert consciousness survival
- nonlocal material does not assert Outerworld
- mass morphogenic event does not auto-resolve cause
- Far-Sky signal does not auto-resolve origin
- Preservator events do not invent purpose

## Population safety
- no invented lineage
- no invented species
- clone remains cohort/history rather than Origin
- machine assimilation does not silently create species/Origin

## Project/Scar distinction
- project may succeed without scar
- project may fail and create scar
- scar may exist without megaproject where appropriate

## Projection/provenance
- scars trace to objective events
- facility remains/sites trace to construction/destruction events
- Claims never mutate history
- projected replay deterministic

---

# 34. 5,000-seed v4 corpus

최소 5,000 v4 histories를 분석한다.

보고:

## General
- faction count distribution
- event count distribution
- topology diversity

## Pressure
- pressure domain
- individual pressure motifs
- Preservator world exposure
- unknown/unclassified exposure

## Responses
- response motif frequencies

## Collapses
- collapse pattern frequencies

## Projects
- worlds with ≥1 Civilizational Project
- each project exposure:
  - Ark
  - Deep Descent
  - Deep-Space Listening
  - Continuity
  - Genome
  - Orbital Habitat
  - Climate Reconstruction
  - Machine Nexus
  - Transmutation

## Scars
- worlds with ≥1 Civilizational Scar
- Failed Exodus
- Last Descent
- Biological Shutdown
- Collective Fracture
- Machine Insurrection
- Silent Depopulation
- Targeted Extermination
- Mass Morphogenic Event
- Continuity Transfer
- Identity Collapse
- Reproductive Silence
- mechanogenic assimilation

## Discoveries
- each anomalous discovery exposure
- cognitive/memory anomaly exposure
- active regulation node exposure

## Safety
- prerequisite failures
- chronology failures
- fabricated evidence
- invalid population content
- mystery resolution violations
- deterministic replay failures
- v2 compatibility failures
- v3 compatibility failures

모든 rarity는 faction-level뿐 아니라 **world-level exposure**를 반드시 보고한다.

---

# 35. Qualitative review

최소 30~40 raw histories를 사람이 읽을 수 있는 형태로 검토한다.

반드시 representative sample을 찾는다:

1. ordinary political history
2. Ark Project → Failed Exodus
3. orbital containment / failed ark
4. Deep Descent → The Last Descent
5. Far-Sky Array → silence
6. Far-Sky Array → unknown signal
7. Far-Sky Array activation + orbital reaction, correlation only
8. Biological Shutdown
9. chosen cognitive regression
10. imposed cognitive regression if gated content available
11. Machine Coordination Nexus → Collective Fracture
12. Machine Insurrection
13. mechanogenic assimilation
14. population redesign
15. Mass Morphogenic Event
16. Reproductive Silence
17. Silent Depopulation
18. Targeted Extermination
19. Continuity Project → Continuity Transfer
20. Cognitive Echo
21. Distributed Identity
22. Memory Convergence
23. active Regulation Node
24. unclassified intervention
25. Regulation Spasm
26. Infrastructure Cascade
27. same anomaly interpreted differently by two factions
28. same Failed Exodus producing Closed Sky vs Skyward Hunger-like cultural responses if existing doctrine system supports it
29. project succeeds without catastrophe
30. world with no major SF scar, proving ordinary histories still exist

각 sample에서 구분해서 출력:

Objective History
→ Project/Scar
→ Projected Present
→ Faction Identity/Culture
→ Claims

Mystery가 narrative generation 과정에서 accidental answer로 바뀌지 않았는지 사람이 검토한다.

---

# 36. Documentation

업데이트:

- `docs/lore/world_canon_v0_1.md`
- `docs/lore/history_generation_contract.md`
- `docs/specs/history_generator.md`
- `docs/specs/faction_culture.md`
- `docs/specs/social_historical_incidents.md`

신규:

- `docs/milestones/M043_history_generator_v4.md`
- v4 qualitative review
- v4 corpus statistics
- v4 delivery report

Delivery report 끝에:

## Notion Sync Summary

를 작성한다.

반드시 포함:

- canonical terminology changes
- removed/legacy IDs
- new Projects
- new Scars
- new Pressure motifs
- new Responses
- new Collapse patterns
- new Discoveries
- rarity results
- gated/dead content
- lore decisions

Notion 자체는 이 작업에서 직접 수정하지 않아도 된다.
ChatGPT가 report를 기반으로 후속 동기화할 수 있게 작성한다.

---

# 37. Non-goals

이번 M043에서는 하지 않는다:

- full quest generator
- actual upload gameplay
- metaphysical identity answer
- genocide combat simulation
- global war simulation
- full machine civilization simulation
- new alien species creation
- full semi-sapient content authoring
- massive Doctrine expansion
- player UI
- actual megaproject construction gameplay

목표는:

> 이러한 사건이 과거에 일어났다는 objective history를
> 인과·provenance·prerequisite를 보존하며 생성하고,
> 후속 Culture / Simulation / Quest 시스템이 사용할 수 있는 데이터를 제공하는 것.

---

# 38. Final review questions

구현 후 반드시 스스로 답하라.

1. v4가 여전히 “현실 역사 + 몇 개 SF 이벤트” 수준인가,
   아니면 사회의 역사 자체가 SF적 조건에 의해 달라지는가?

2. 모든 bizarre event가 Preservator 탓이 되어버리지는 않았는가?

3. unknown event가 정말 unknown으로 남는가?

4. consciousness/identity 문제의 철학적 답을 코드가 몰래 확정하지 않았는가?

5. rare content가 실제 플레이어에게 사실상 보이지 않는 dead content가 아닌가?

6. 한 세계에 너무 많은 spectacular events가 몰려 설정이 가벼워지지는 않는가?

7. Civilizational Projects가 단순 flavor가 아니라
   정치·인구·유적·문화에 실제 history provenance를 남기는가?

8. Projects와 Scars가 구분되어 있는가?

9. 새 사건 때문에 허가되지 않은 lineage/species가 만들어지지 않는가?

10. 동일 objective history에서 서로 다른 문화적 해석이 가능하게 남아 있는가?

필요하면 corpus를 한 번 조정한 뒤 최종 수치를 제출한다.

---

# 39. Final delivery

완료 시 보고:

- branch
- worktree
- base commit
- final commit SHA
- push status
- main not merged confirmation
- modified/new files
- v3 → v4 migration table
- canonical terminology table
- final Project list
- final Scar list
- final Pressure list
- final Response list
- final Collapse list
- final Discovery list
- 5,000-seed statistics
- dead/gated content
- qualitative review summary
- v2 exact replay result
- v3 exact replay result
- v4 determinism result
- full Godot test result
- unrelated EverRogue sidecars untouched confirmation

설계 충돌이 있으면 임의로 세계관 정답을 만들어 해결하지 않는다.
가장 보수적인 Canon-preserving 선택을 하고 delivery report에 기록한다.

완료 후 commit + push.
main에는 병합하지 않는다.