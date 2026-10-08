# History Generator v5 — Sparse History & Playable Archaeology

현재 프로젝트의 History Generator v4 revision2를 기반으로 **generation version 5**를 새로 설계·구현하라.

이번 작업의 목표는 단순히 v4의 문장을 개선하는 것이 아니다.

v5의 핵심 목표는:

> **역사를 완성된 인과관계 이야기로 생성하지 말고, 서로 다른 시대에 남은 사실·흔적·기억을 생성하라.  
> 그리고 그 흔적들이 플레이어에게 실제 탐험·전투·대화·조사·세력 선택을 만들어내게 하라.**

즉 v5는 **procedural history generator이자 playable historical content foundation**이어야 한다.

---

# 0. 작업 원칙

- 기존 repository와 실제 구현을 먼저 충분히 읽고 작업하라.
- 현재 v4 revision2의 설계·테스트·보고서를 우선적으로 검토하라.
- `main`에는 병합하지 않는다.
- 별도 branch/worktree에서 작업한다.
- 완료 시 commit + push까지 한다.
- 기존 v2/v3/v4 명시 실행 경로와 frozen compatibility를 깨지 않는다.
- 기존 Canon, Origin, population, naming, faction culture/identity, Claims, Project/Scar 안전 경계를 유지한다.
- 새로운 sapient species / Origin / lineage를 임의로 만들지 않는다.
- 안정적인 Outerworld 탈출/궤도문명/Deep 정복/기계 의식 확정 등 기존 LOCKED/RESERVED mystery를 해답으로 만들지 않는다.
- 현재의 8 Projects / 15 Scars의 핵심 로어는 유지하되 필요하면 v5용 authored text/content를 확장한다.
- 구현 편의를 위해 세계관의 미스터리를 해결하지 않는다.
- 샘플 하나를 예쁘게 만들기 위한 seed-specific special case를 금지한다.

가능하면 version/revision은 명확히 분리한다.

예:

`generation_version = 5`

`history-v5-authored-1`

기존 v4 데이터와 결과는 historical compatibility로 유지한다.

---

# 1. v5 핵심 철학 — Sparse Historical Fabric

v5의 objective history는 **완전한 인과망이 아니다.**

역사적 사실 사이의 기본 관계는 다음 세 종류로 생각한다.

### 1. Explicit Causation

실제 기록상 명확한 원인과 결과.

예:

- Ark launch → physical interception → Failed Exodus
- coercive biological program → generational cognitive reduction → Imposed Diminution
- infrastructure destruction → cascading service failure

이 경우에는 실제 prerequisite/evidence/cause chain을 유지한다.

### 2. Historical Association

두 사건·시설·집단 사이에 실제 접점은 있지만 인과는 확정하지 않는다.

예:

- 과거 Cortical Array 시설이 있던 지역에 후대의 특정 공동체가 존재한다.
- 오래된 Genome Archive를 현재 faction이 관리한다.

“그래서 그 공동체가 생겼다”라고는 말하지 않는다.

### 3. Unlinked Coexistence

같은 세계에 존재할 뿐이다.

이것이 **기본값**이어야 한다.

Far-Sky Array, clone caste, Deep settlement failure, religious community가 같은 세계에 존재한다고 해서 서로 연결하는 설명을 만들지 않는다.

---

# 2. 중요 원칙 — 역사 사이의 공백을 의도적으로 남겨라

다음과 같은 출력은 정상이며 오히려 바람직하다.

```text
-298 polity founded

[147 years with no selected major historical record]

-151 political merger

[93 years]

-58 Deep settlement failure

present day
```

이 공백은 “아무 일도 없었다”는 뜻이 아니다.

단지 generator가 그 기간의 모든 역사를 설명하지 않는다는 뜻이다.

**설명되지 않은 전환은 validation failure가 아니다.**

예:

```text
formation_origin = fragmentation
way_of_life = infrastructure_guild
```

라고 해서

“기술자들이 독립했기 때문에 Infrastructure Guild가 되었다”

라는 중간사를 자동 생성하지 않는다.

확정되는 것은:

- 과거에 특정 polity에서 분리되었다.
- 현재 Infrastructure Guild 성격을 가진다.

그 사이의 맥락은 의도적으로 비워둘 수 있다.

---

# 3. Project 내부는 강한 인과를 유지하되 phase를 실제 진행으로 바꿔라

Project 내부 chain은 예외적으로 비교적 강한 인과를 가진다.

그러나 현재 v4의 문제처럼 동일 narrative를 여러 stage에서 반복하지 않는다.

각 stage는 반드시 이전 stage에 없던 **새로운 사실 또는 상태 변화**를 하나 이상 표현해야 한다.

예:

Genome Archive:

1. sample registry
2. preservation trials
3. archive construction
4. long-term operation
5. terminal outcome

각 단계는 실제로 서로 다른 사건이어야 한다.

Meridian:

1. survey authority / initial standards
2. reference network
3. geodetic infrastructure
4. map comparison / discrepancies
5. bounded result

Cortical Array:

1. neural-interface research
2. linked human cohort
3. network construction
4. persistent computation
5. bounded result / strange outcome

Second Mind:

1. study recovered machine behavior
2. simple emulation
3. autonomous prototype
4. self-repair
5. distributed learning
6. result

Adaptive Simplification:

1. resource hypothesis
2. consent registry
3. developmental trial
4. generation-scale program
5. measured result

각 phase에 동일한 설명을 복사하지 않는다.

Validator 또는 content audit를 통해 한 Project 안에서 여러 stage의 `narrative`가 완전히 동일하게 복제되는 문제를 잡을 수 있게 하라.

---

# 4. Crisis / Collapse 구조를 다양화하라

현재의 반복적인:

`pressure → response → consequence`

그리고 다시:

`h_pressure → h_response → h_failure → collapse`

리듬을 완화한다.

v5에서는 regional historical episode가 다양한 궤적을 가질 수 있다.

최소 다음 유형을 지원하라.

- `acute_breakdown`
- `managed_retreat`
- `political_bifurcation`
- `slow_erosion`
- `partial_stabilization`
- `displacement`

모든 episode가 collapse로 이어지지 않는다.

예:

```text
radiative haze
→ eastern districts evacuated
→ polity remains functional for decades
```

또는:

```text
succession dispute
→ rival administrations coexist
```

또는:

```text
geophysical stress
→ population dispersal
→ infrastructure partially rebuilt elsewhere
```

후대에 별개의 원인으로 옛 polity가 무너질 수 있다.

서로 다른 episode 사이의 인과관계를 억지로 만들지 않는다.

시간 간격도 고정 6년 반복처럼 보이지 않도록 episode 성격에 따라 자연스럽게 분산한다.

단, chronology와 deterministic replay는 유지한다.

---

# 5. Topology의 combinatorial split bias를 반드시 수정하라

현재 `HistoryTopology`는 operation bias와 parameter 경우의 수가 섞여 있다.

예를 들어 split 하나가:

- 2 children + retain
- 2 children + dissolve
- 3 children + retain
- 3 children + dissolve

의 여러 candidate로 증식하면서, `split`의 실질적인 선택 확률이 의도 이상으로 커진다.

v5에서는 반드시:

```text
1. choose operation
2. choose parameters for that operation
```

으로 분리하라.

예:

```text
operation = weighted_pick(...)
if operation == split:
    children = ...
    retain_parent = ...
```

parameter 조합의 수가 operation 확률에 영향을 주면 안 된다.

---

# 6. Topology family가 실제로 서로 다른 정치적 세계를 만들어야 한다

현재의 7 family는 유지하거나 매우 신중하게 확장할 수 있다.

- polycentric_succession
- remnant_mosaic
- late_fragmentation
- consolidation_resplit
- layered_migration
- no_direct_heir
- enclave_continuity

각 family의 **formation distribution이 실제 corpus에서 분명히 달라야 한다.**

### Polycentric Succession

여러 후계자가 옛 체제의 정통성을 나누거나 경쟁한다.

### Late Fragmentation

오랫동안 존속한 소수 정치체가 비교적 최근 여러 조각으로 갈라진다.

이 family에서는 fragmentation이 매우 많은 것이 정상이다.

### Layered Migration

서로 다른 시대의 newcomer / migrant polity가 겹쳐 존재한다.

### Enclave Continuity

아주 오래된 독립 공동체 하나 이상이 큰 체제들의 흥망을 살아남는다.

### No Direct Heir

현재 polity 중 옛 국가의 명확한 institutional heir가 없다.

### Consolidation–Resplit

실제 정치적 통합이 한번 발생하고, 그 통합체가 후대 다시 분열한다.

### Remnant Mosaic

서로 다른 독립 생존 집단과 재조직이 모자이크처럼 존재한다.

목표는 global fragmentation 수치를 억지로 평준화하는 것이 아니다.

**family마다 정치적 장르가 달라 보여야 한다.**

5,000-world statistics에 반드시:

- family별 현재 faction 수
- family별 formation_origin 분포
- split / merge / migration / newcomer / reorganization 등의 operation 빈도
- lineage depth
- direct-heir 비율
- newcomer 비율

을 따로 보고하라.

전체 평균 하나로 숨기지 않는다.

---

# 7. Faction의 역사와 현재 성격을 과도하게 연결하지 마라

다음 값들은 서로 독립적으로 존재할 수 있다.

- formation_origin
- ancestry_kind
- political_continuity
- way_of_life
- regional_roles
- culture
- doctrine
- current priorities

`way_of_life`가 특정 formation의 필연적 결과라고 만들지 않는다.

Optional `founding_basis` 같은 field를 도입하고 싶다면:

- 실제 evidence가 있을 때만 사용
- 모든 faction에 필수 아님
- 빈칸을 설명하려는 filler로 사용 금지

를 지켜라.

---

# 8. 새로운 핵심 레이어 — Historical Traces

Objective History에서 현재까지 살아남은 **물질적·사회적 흔적**을 별도의 derived/playable layer로 만든다.

중요:

**Trace는 Objective Event 자체가 아니다.**

과거 사건의 결과로 현재 플레이어가 접할 수 있는 증거/장소/물체/기록/제도다.

예시 카테고리:

### Physical

- ruined facility
- sealed shaft
- wreck fragment
- crater
- abandoned habitation
- altered terrain
- collapsed tunnel
- surviving tower
- buried structure
- damaged service junction
- orbital debris
- biological residue
- preserved machinery

### Documentary

- expedition register
- maintenance log
- census
- selection list
- map archive
- conflicting map
- treatment order
- casualty list
- machine telemetry
- legal charter
- custody record
- oral transcription
- damaged data lattice

### Institutional / social

- memorial
- taboo
- custody right
- inherited legal claim
- machine compact
- evacuation register
- rotating office institution
- clone status law
- sealed district
- restricted archive

### Living / active

- still-operating machine
- malfunctioning defense
- adapted human community
- clone-born population
- active environmental system
- autonomous maintenance unit
- inhabited repurposed ruin

Trace는 현재 실제 world content로 소비할 수 있는 ID와 provenance를 가져야 한다.

---

# 9. Trace 콘텐츠를 충분히 많이 만들어라

이번 v5에서는 **콘텐츠 양 자체도 목표**다.

단순히 범용 trace 5개를 돌려쓰지 않는다.

최소한 다음 수준의 authored breadth를 목표로 하라.

### Projects

8 Project 각각에 대해:

- 여러 phase에서 파생 가능한 trace
- success / partial / abandonment / catastrophe / unknown 등의 결과별 trace
- 최소 몇 가지 서로 다른 physical/documentary/institutional trace 조합

Project 하나가 항상 같은 흔적 세트를 만들지 않게 한다.

### Scars

15 Scar 각각에 대해:

- physical trace
- documentary trace
- social/institutional trace

중 최소 2종 이상을 지원하되 Scar 특성에 맞게 구성한다.

### Ordinary political/social history

Project/Scar가 없는 세계에서도:

- abandoned offices
- migration records
- old border works
- ruined settlements
- trade records
- merged civic archives
- ancestral sites
- machine maintenance sites
- lost Deep homes
- clone records
- reused ruins

등 충분히 많은 trace source가 있어야 한다.

**콘텐츠 목표:**

가능하면 첫 v5 shipping catalog에서 최소:

- **40+ distinct trace archetypes**
- **30+ distinct historical-question archetypes**
- **50+ investigation interaction/hook variants**

정도를 목표로 하라.

단순 문자열 variant로 숫자만 채우지 말고 **게임적으로 구별되는 archetype** 위주로 센다.

더 많이 만들 수 있고 품질이 유지된다면 적극적으로 확장하라.

---

# 10. Historical Question

Trace들로부터 **Historical Question**을 파생한다.

Question은 objective truth가 아니다.

플레이어가 세계를 보며 자연스럽게 가질 수 있는 조사 질문이다.

예:

- What stopped the Ark?
- What happened to the final Deep expedition?
- Why do these maps disagree?
- Who built this machine?
- Did this population leave, die, or disappear?
- Were these linked minds still individual people?
- Why was this district sealed?
- Who ordered this biological program?
- Is this current polity actually the legal successor?
- What happened to the missing settlement?
- Did this machine attack autonomously or under command?
- Is this person-like system a continuation, copy, or something else?
- Why are fragments of the same archive held by rival factions?
- What caused this habitat to become unlivable?
- Was this wreckage part of an actual orbital structure?
- Why did this Deep settlement fail?
- Did the original founder survive the replication program?
- How did this autonomous enclave survive when the surrounding polity collapsed?

Question은 최소 세 종류로 분류할 수 있다.

### Recoverable Fact

충분히 조사하면 비교적 명확한 사실을 복원할 수 있다.

### Contested Interpretation

증거는 많지만 여러 해석이 가능하다.

### Open Mystery

조사를 충분히 해도 핵심은 확정할 수 없다.

Open Mystery를 실패한 조사로 취급하지 않는다.

플레이어는 새로운 사실과 더 좁혀진 가능성을 얻을 수 있어야 한다.

---

# 11. Evidence Gradient

각 Historical Question은 가능하면 여러 evidence level을 가진다.

예:

```text
rumor
↓
weak/documentary clue
↓
physical corroboration
↓
strong historical conclusion
↓
remaining uncertainty
```

한 번의 terminal click으로 모든 답을 주지 않는다.

중요 질문은 보통 **3~5개의 서로 다른 Trace**를 통해 조사할 수 있게 설계하라.

가능하면 서로 다른 gameplay context에 분산한다.

예:

- one ruin
- one faction archive
- one physical artifact
- one dangerous location
- one living witness/institution

모든 clue를 같은 dungeon room에 넣는 구조는 피한다.

---

# 12. Playable Investigation

Historical Question은 실제 gameplay affordance를 가져야 한다.

단순히 lore text를 읽는 것으로 끝내지 않는다.

가능한 interaction family:

- exploration
- hazardous traversal
- combat
- stealth/infiltration
- repair/reactivation
- technical inspection
- biological inspection
- map comparison
- artifact comparison
- negotiation
- trade
- theft
- faction trust/access
- escort/recovery
- environmental manipulation
- machine interaction
- choice over ownership/custody
- destruction/preservation
- controlled activation
- evidence disclosure/concealment

현재 실제 gameplay system이 아직 구현되지 않은 interaction은 **playable hook contract/data**까지만 구현해도 된다.

하지만 단순한 prose suggestion이어서는 안 된다.

예를 들어:

```text
interaction_type
required_context/tags
target_trace_id
possible_access_modes
information_gain
world_action_hooks
```

처럼 후속 시스템이 소비할 수 있는 구조를 가져야 한다.

---

# 13. 중요한 원칙 — 조사는 반드시 무언가를 가능하게 해야 한다

중요 Historical Question은 단순 encyclopedia entry로 끝나지 않는다.

충분한 evidence를 모으면 최소 하나 이상의 **Actionable Consequence**가 발생할 수 있어야 한다.

예:

- new location access
- safer route
- hazard prediction
- machine bypass
- facility activation
- facility shutdown
- faction dialogue evidence
- challenge a faction claim
- support a faction claim
- reveal hidden custody
- transfer an archive
- destroy evidence
- preserve evidence
- unlock technical procedure
- identify usable machinery
- choose who receives recovered material
- alter access rights
- expose historical responsibility
- keep information secret
- reopen or seal a historical site

지식 자체가 **world interaction permission**이 될 수 있게 한다.

---

# 14. 정답을 찾은 뒤 무엇을 할지가 중요하다

Historical Question은 가능한 경우:

```text
investigate
→ learn
→ decide
```

구조를 갖는다.

예:

Imposed Diminution 관련 facility를 발견했다.

플레이어가 조사하여 실제 biological coercion 기록을 확인했다.

그 이후 가능한 행동:

- 피해 관련 공동체에 자료 전달
- 공개
- 숨김
- 연구자료만 회수
- 시설 봉인
- 시설 파괴
- 다른 faction에 넘김

단, generator가 윤리적 “정답”을 강제하지 않는다.

가능한 결과와 이해관계만 제공한다.

---

# 15. Living History 재정의

Living History는:

> “현재 정치가 과거 사건의 직접적인 결과”

가 아니다.

정의는:

> **현재에도 물리적·사회적·제도적으로 접근 가능한 과거**

로 한다.

예:

Last Descent가 실제로 존재했고 shaft가 남아 있다.

현재 Infrastructure Guild가 그것을 열고 싶어 한다.

이 둘 사이에 200년짜리 causal explanation을 만들 필요는 없다.

현재 세력이 왜 관심을 가지는지는:

- 현재 필요
- 현재 ideology
- current regional role
- opportunism

정도로도 충분하다.

---

# 16. Issue도 느슨하게 연결하라

Historical Trace가 현재 faction conflict를 만들 수는 있다.

하지만 반드시:

```text
past event
→ inherited trauma
→ ideology
→ current policy
```

전체 chain을 생성하지 않는다.

예:

`Reopen the Last Descent`

라는 현재 Issue가 있다면:

- Infrastructure Guild: reopen
- Village Union: oppose
- Trading House: limited expedition

정도면 충분하다.

왜 그런 입장을 갖게 되었는지 모든 중간사는 생성하지 않아도 된다.

---

# 17. 세계당 콘텐츠 밀도

사용자가 “이런 콘텐츠가 많았으면 좋겠다”고 명시했다.

그러므로 v5는 몇 개의 showcase mystery만 만드는 시스템이어서는 안 된다.

단, 모든 history event를 playable mystery로 만들면 과밀해진다.

권장 구조:

### 역사 전체

많은 사건과 흔적이 존재.

### Minor Historical Traces

세계 곳곳에 비교적 많은 작은 흔적.

이들은:

- 장소 분위기
- 작은 발견
- 지역 지식
- environmental storytelling
- minor rewards

를 제공한다.

### Historical Questions

한 세계에 여러 개 존재할 수 있다.

모두 major quest일 필요 없음.

### Major Playable Questions

현재 플레이와 강하게 연결되는 것은 **3~6개 정도**를 목표로 한다.

이 외에도 minor investigative hooks가 여러 개 존재할 수 있다.

즉:

> **큰 미스터리는 적당히, 작은 역사적 발견은 풍부하게.**

를 목표로 한다.

---

# 18. 질문과 흔적을 서로 재사용할 수 있게 하라

하나의 Trace가 반드시 하나의 Question에만 속할 필요는 없다.

예:

오래된 machine telemetry가:

- Autonomous Systems Crisis 조사
- 특정 faction의 custody claim
- Second Mind Project 흔적

세 맥락에서 각각 다른 의미를 가질 수 있다.

하지만 재사용 때문에 억지 인과를 만들지 않는다.

같은 증거가 서로 다른 질문에 관련될 뿐이다.

이런 교차가 세계를 더 풍부하게 만든다.

---

# 19. Narrative rendering 개선

Objective History는 사실을 보존한다.

Readable text는 별도의 deterministic renderer를 통해 다양화할 수 있다.

가능하면:

`content/history/history_v5_rendering.json`

같은 독립된 authored content layer를 고려하라.

Narrative variant RNG는 canonical history generation RNG와 완전히 분리한다.

문구를 추가하거나 순서를 바꿔도:

- faction topology
- Project
- Scar
- chronology
- population
- outcomes

가 바뀌지 않아야 한다.

우선 반복이 심한:

- local political founding
- custody
- minor relation
- Project phase
- generic response/consequence

부터 개선한다.

다만 prose variant가 semantic progression을 대신해서는 안 된다.

---

# 20. 새 분석 지표

5,000-world analysis에 다음을 추가하라.

### Causal Density

최소한 다음 edge를 구별한다.

- project_internal_edges
- scar_internal_edges
- topology_edges
- cross_episode_edges

우리가 특히 감시할 것은 `cross_episode_edges`.

Project/Scar 내부 chain은 높아도 괜찮다.

서로 무관한 역사 episode 사이를 불필요하게 연결하지 않는다.

### Explanation Coverage

현재의 중요한 요소 중 다른 사건에 의해 명시적으로 설명되는 비율을 측정할 수 있으면 기록한다.

100%를 목표로 하지 않는다.

### Trace statistics

- traces/world
- trace archetype exposure
- physical/documentary/institutional/living distribution
- traces with multiple possible uses

### Question statistics

- questions/world
- recoverable/contested/open distribution
- evidence count per question
- number of gameplay interaction families per question
- questions with actionable consequences

### Political diversity

- formation distribution by family
- lineage depth
- newcomer share
- direct-heir share
- split share
- current faction count

### Content diversity

- distinct trace archetypes reached
- question archetypes reached
- investigation interactions reached
- actionable outcomes reached

---

# 21. Validation

기존 v4 safety를 모두 유지한다.

특히:

- deterministic replay
- chronological validity
- entity lifecycle
- valid population provenance
- no fabricated Origin/species/lineage
- mystery safety
- Project/Scar prerequisite evidence
- Ark no true successful escape
- Deep no stable conquest/civilization
- machine consciousness not proven
- Observer/Preservator motive not invented
- v2/v3/v4 frozen compatibility
- catalog reorder isolation where applicable

추가로 v5 validator는:

- trace must reference actual canonical evidence
- question cannot invent facts
- evidence cannot claim more than source event
- open mystery cannot become resolved without authorized evidence
- actionable consequence cannot fabricate historical truth
- narrative variation cannot mutate canonical generation
- gameplay hook must reference an existing trace/question/context
- evidence count/source IDs must be valid
- historical gap is legal
- absence of causal link is legal

을 검사한다.

---

# 22. Codex가 직접 정성 평가할 것

이번 작업은 **테스트 통과로 끝내지 않는다.**

첫 implementation이 끝나면 5,000-world corpus를 생성한다.

그 다음 **generator와 무관한 무작위 방식으로 20개 seed를 실제 추출**한다.

좋아 보이는 seed를 골라서는 안 된다.

선택된 seed 목록을 보고서에 기록한다.

각 history의 **raw readable output을 실제로 처음부터 끝까지 읽어라.**

그리고 다음 8개 항목을 각각 10점 만점으로 평가한다.

1. Lore Fit
2. Historical Plausibility
3. Interest
4. Political Diversity
5. Imaginative Space
6. Non-Repetition
7. Temporal Depth
8. Gameplay Potential

### Imaginative Space

높은 점수는:

“정보가 부족해서 무슨 말인지 모르겠다”

가 아니다.

> 확실한 사실은 충분하지만, 그 사이의 연결과 의미를 독자가 자연스럽게 상상할 공간이 있다.

를 뜻한다.

### Gameplay Potential

다음 질문에 답한다.

> “이 세계를 실제로 플레이한다면 무엇을 하고 싶은가?”

각 seed마다 반드시 **최소 2개의 구체적인 playable historical hook**을 직접 적어라.

예:

- sealed Last Descent shaft를 재개방하고 서로 다른 expedition record를 비교
- clone founder inheritance claim을 둘러싼 archive/relic investigation
- orbital wreck fragments를 여러 위치에서 회수하여 launch interception을 검증

“interesting mystery” 같은 추상적 표현은 인정하지 않는다.

실제 플레이 행동을 적는다.

---

# 23. Best / Worst 분석

20개를 다 읽은 뒤:

### Best 3

왜 좋은가?

구체적인 event/faction/trace/question 조합을 인용해 설명하라.

### Worst 3

왜 나쁜가?

다음과 같은 실제 문제를 지적하라.

- repetitive prose
- repetitive topology
- too causal
- too disconnected
- uninteresting evidence
- lore-only hook
- weak faction relevance
- insufficient player action
- question with no satisfying evidence gradient
- too many mysteries
- too few ordinary histories

### Recurring defects

20개 표본에서 반복되는 문제를 실제 count와 함께 정리하라.

예:

```text
7/20: fragmentation still dominates outside late_fragmentation
5/20: major questions rely mostly on document reading
4/20: too many traces clustered in one site
3/20: objective history over-explains faction motivation
...
```

---

# 24. 반드시 Self-Critique를 작성하라

보고서에 별도 섹션:

## What I got wrong

을 만들고 직접 답하라.

다음은 금지한다.

> “All tests passed and overall quality is good.”

대신:

> 내가 구현한 설계 중 실제 샘플을 읽어보니 무엇이 예상보다 나빴는가?

를 구체적으로 써라.

---

# 25. Qualitative Review 후 최소 한 번 수정

작업 흐름:

```text
implement
↓
automated tests
↓
5000-world corpus
↓
random 20 qualitative review
↓
self-critique
↓
targeted revision pass
↓
full automated validation again
↓
fresh random 20 qualitative review
↓
final report
```

첫 번째 20개와 두 번째 20개는 **다른 무작위 sample**을 사용한다.

첫 sample seed를 보고 special-case patch를 만들지 않는다.

수정은 반드시 일반 규칙 또는 authored content 개선이어야 한다.

---

# 26. 두 번째 평가에서는 Before/After를 비교

다음 항목을 비교한다.

- average scores
- worst-3 quality
- recurring defects
- formation distribution
- prose repetition
- playable hook diversity
- evidence interaction diversity
- imaginative-space score
- gameplay-potential score

특히:

> 첫 review에서 발견한 문제들이 실제로 fresh sample에서 줄었는가?

를 평가하라.

---

# 27. Hard gate와 Soft gate를 구분

### Hard gate

반드시 0 failure:

- validation
- deterministic replay
- compatibility
- chronology
- mystery resolution violation
- fabricated evidence
- invalid population
- invalid references

### Soft qualitative targets

평균 목표:

- Lore Fit ≥ 9
- Plausibility ≥ 8
- Interest ≥ 8
- Political Diversity ≥ 8
- Imaginative Space ≥ 8.5
- Non-Repetition ≥ 8
- Temporal Depth ≥ 8
- Gameplay Potential ≥ 8

숫자를 억지로 맞추기 위해 자기 평가를 부풀리지 않는다.

목표 미달이면 그대로 보고하라.

---

# 28. 콘텐츠 양을 평가에 포함

이번 v5에서 **콘텐츠 breadth가 부족하면 완료로 보지 않는다.**

Final report에 다음을 반드시 기록하라.

- authored Project phase narratives 수
- trace archetype 수
- historical-question archetype 수
- investigation interaction variants 수
- actionable-consequence variants 수
- 실제 5,000 seeds에서 도달한 비율
- unreachable content가 있는지
- 지나치게 흔한 top 10
- 지나치게 희귀한 bottom 10

단순히 definition만 많이 만들고 실제 generator에서 거의 나오지 않으면 안 된다.

---

# 29. 디버그 출력

사람이 history를 읽고 평가하기 쉽게 debug output을 개선한다.

한 seed에서 최소 다음을 읽을 수 있어야 한다.

```text
OBJECTIVE HISTORY

CURRENT FACTIONS

SURVIVING TRACES

HISTORICAL QUESTIONS

EVIDENCE

POSSIBLE PLAYER INTERACTIONS

ACTIONABLE CONSEQUENCES

CLAIMS / INTERPRETATIONS
```

Truth와 interpretation을 명확히 구분한다.

Historical Question의 text가 Objective Truth처럼 출력되지 않게 한다.

---

# 30. 실제 샘플 보고서

최종 결과물에는 최소 다음을 남겨라.

```text
docs/reviews/history_v5/
    delivery.md
    architecture.md
    validation.md
    statistics.json
    corpus_statistics.md
    qualitative_review_round1.md
    qualitative_review_round2.md
    samples_round1.md
    samples_round2.md
    self_critique.md
    changed_files.md
```

파일명은 repo convention에 맞게 조정 가능하다.

sample에는 가능한 한 **raw generated text를 그대로** 남긴다.

rewrite된 소설식 summary만 남기지 않는다.

---

# 31. 최종 보고 때 반드시 답할 질문

최종 보고서와 응답에서 명확하게 답하라.

1. v5가 v4보다 무엇을 덜 설명하게 되었는가?
2. 무엇은 여전히 명시적 인과로 남는가?
3. topology split bias를 어떻게 수정했는가?
4. 7 topology family가 실제 corpus에서 얼마나 달라졌는가?
5. 현재 세력 형성 분포는 어떻게 달라졌는가?
6. Project phase 반복은 얼마나 줄었는가?
7. trace는 얼마나 생성되는가?
8. question은 얼마나 생성되는가?
9. 실제로 플레이 가능한 interaction 종류는 몇 개인가?
10. lore-reading-only content가 얼마나 남아 있는가?
11. random 20 review에서 가장 좋은 세 세계는 무엇이었나?
12. 가장 나쁜 세 세계는 무엇이었나?
13. 첫 review 후 무엇을 수정했나?
14. fresh second review에서 실제로 나아졌나?
15. 여전히 마음에 들지 않는 부분은 무엇인가?
16. 다음 단계에서 실제 world/quest/gameplay integration에 무엇이 필요한가?

---

# 32. 중요한 설계 판단

이번 작업에서 “더 완벽한 역사 시뮬레이션”을 만들려고 하지 마라.

우리가 원하는 것은:

> **몇 개의 확실한 사실이 존재하고,  
> 그 사실의 흔적이 세계에 남아 있으며,  
> 플레이어가 흔적을 직접 찾아다니고,  
> 서로 다른 증거를 연결해서 질문에 접근하며,  
> 때로는 답을 얻고 때로는 더 좋은 질문을 얻고,  
> 그 지식을 가지고 현재 세계에 행동하는 것.**

세계는 generator가 전부 설명했기 때문에 깊어 보이는 것이 아니다.

**플레이어가 보이지 않는 중간사를 상상할 수 있기 때문에 깊어 보여야 한다.**

그리고 역사는 단순히 읽을 lore가 되어서는 안 된다.

> **좋은 역사적 사실 하나는 장소 하나, 물건 하나, 사람 하나, 위험 하나, 선택 하나 중 적어도 몇 가지를 만들어낼 수 있어야 한다.**

이 원칙을 v5 전체 설계의 기준으로 삼아라.

---

# 33. Non-goals

이번 작업에서 불필요하게 범위를 폭발시키지 않는다.

- 완전한 quest scripting engine 구현 아님
- 실제 모든 dungeon geometry 생성 아님
- NPC dialogue system 전면 구현 아님
- 모든 faction diplomacy simulation 구현 아님
- economy simulation 구현 아님
- global territory simulation 구현 아님
- player knowledge UI 완성 아님

대신 이 시스템들이 나중에 소비할 수 있는 **canonical trace/question/investigation/action contract**를 제대로 구현한다.

현재 이미 존재하는 시스템과 자연스럽게 연결 가능한 부분은 연결한다.

---

# 34. 최종 Git 처리

모든 구현, 테스트, corpus, qualitative review, revision pass가 끝난 뒤:

- 전체 관련 테스트 실행
- 전체 Godot test suite 실행
- working tree audit
- generated artifact가 지나치게 거대한지 확인
- 불필요한 corpus JSON을 commit하는 문제를 검토
- expected unrelated/untracked files를 건드리지 않음
- commit
- push
- remote SHA 확인

**main에는 merge하지 않는다.**

마지막 응답은 구현 성공을 자랑하는 식으로 끝내지 말고:

- 무엇을 구현했는지
- 수치 검증 결과
- 직접 읽은 결과
- 실제로 발견한 결함
- 수정 전/후 차이
- 남은 약점
- branch / commit / push 상태

를 명확히 보고하라.