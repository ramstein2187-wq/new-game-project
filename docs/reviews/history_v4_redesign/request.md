현재 `codex/history-generator-v4`의 M043 History Generator v4를 기준으로, 확정된 세계관 방향에 맞춰 **Civilizational Projects와 Civilizational Scars를 재설계·구현·검증**한다.

`main`에는 병합하지 않는다. 기존 v2/v3 historical compatibility와 exact frozen outputs를 깨뜨리지 않는다.

# 0. 핵심 설계 원칙

이번 변경은 단순 rename 작업이 아니다.

Civilizational Project와 Scar의 의미론과 generation rule을 아래처럼 명확히 분리한다.

## Project

**Civilizational Project**는 한 문명이 수십 년~수백 년 동안 의도적으로 추진한 대규모 역사적 사업이다.

- 명시적인 authority / institution / resource concentration / labor / research / construction / operation provenance를 가질 수 있다.
- 성공·부분 성공·실패·포기·불명 결과가 존재할 수 있다.
- Project의 결과가 Scar로 이어질 수는 있지만 필수는 아니다.

## Scar

**Civilizational Scar**는 Project와 무관하게 역사 어느 시점에서든 발생할 수 있는 장기적·비가역적 역사적 상흔이다.

Scar는 다음 조건을 만족해야 한다.

- 후대 세계에 흔적이 남는다.
- 인구·사회·공간·생태·기반시설 등에 장기 영향을 준다.
- 독립적인 역사적 사건으로 성립한다.
- 다른 Scar와 의미가 충분히 구분된다.

Scar를 특정 Project의 failure table처럼 구현하지 않는다.

동일한 Scar가 서로 다른 역사적 원인에서 발생할 수 있어야 한다.

예:

- human policy
- war
- natural pressure
- biotechnology
- infrastructure failure
- Preservator activity
- Observer legacy
- unknown cause

단, evidence가 없는 원인을 objective layer가 임의로 추가하지 않는다.

---

# 1. 세계관 경계

이 세계에서 인간은 위대한 기술적 성취를 이룰 수 있다.

하지만 다음 세계의 경계를 완전히 정복하지는 못한다.

> **Humans can successfully build great things, but they cannot successfully conquer the boundaries of this world.**

특히:

- 궤도와 Outerworld는 위험하고 미지의 영역이다.
- 안정적인 orbital civilization은 존재하지 않는다.
- 성공적인 행성 탈출·외우주 식민화는 확정하지 않는다.
- Deep / Innerworld 역시 인간이 안정적으로 정복·식민화한 영역이어서는 안 된다.
- 일부 생존자, 일부 전진기지, 제한적 기술 성공은 가능하다.
- Preservator / Observer / machine consciousness / continuity / metaphysical identity 같은 문제는 evidence가 해결하지 못하면 unknown으로 남긴다.

Objective History와 Culture/Claim을 엄격히 분리한다.

Objective layer:
- 실제 관찰
- 실제 정책
- 실제 시설
- 실제 피해
- 실제 population
- 실제 기록

Culture / Claim:
- 해석
- 신앙
- 철학적 의미
- 책임 귀속
- 미해결 현상에 대한 주장

Claim이 objective cause, population, species, machine consciousness를 새로 창작해서는 안 된다.

---

# 2. Civilizational Projects — 최종 8종

기존 9 Project catalog를 아래 **8종**으로 재구성한다.

---

## 2.1 `ark_project`

Display:

**Ark Project**

핵심 질문:

> 인간은 이 행성을 떠날 수 있는가?

장기 단계 예:

- exodus feasibility study
- authorization
- resource concentration
- population selection
- construction
- launch preparation
- launch
- outcome

허용 가능한 결과:

- launch destruction
- guidance capture
- propulsion suppression
- orbital containment
- silent denial
- failed return
- wreckage recovery
- departure unresolved

금지:

- successful permanent orbital settlement
- successful Outerworld colony
- confirmed successful interstellar departure

`departure_unresolved`는 성공이 아니다.

마지막 관측 이후 행방을 알 수 없다는 뜻이다.

---

## 2.2 `deep_descent_project`

Display:

**Deep Descent Project**

핵심 질문:

> 인간은 심층으로 어디까지 내려갈 수 있는가?

가능:

- deep survey
- descent infrastructure
- permanent staging site
- repeated expedition
- unmapped substructure discovery
- partial survival
- survivor return
- long-duration outpost

금지:

- complete Innerworld conquest
- stable large-scale Deep civilization
- objective resolution of the Deep's ultimate nature

최종 단계에는 다음과 같은 미해결 경계가 존재할 수 있다.

- communication loss
- sealed access
- expedition disappearance
- map contradiction
- unknown structure
- unknown casualty source

---

## 2.3 `deep_space_listening_array`

Display:

**Far-Sky Array**

기존 `Deep-Space Listening Array / Far-Sky Array`의 기본 display name은 **Far-Sky Array**로 통일한다.

핵심 질문:

> 바깥에는 무엇이 있는가?

가능:

- silence
- unclassified signal
- orbital reaction correlation
- long-term signal fixation
- transmission reversal
- continuing observation

금지:

- alien civilization confirmation
- signal origin resolution
- recipient confirmation
- hidden Observer purpose resolution

---

## 2.4 `genome_archive_project`

Display:

**Genome Archive**

기존 `genome_ark`를 대체한다.

Ark Project와 개념과 명칭이 겹치지 않도록 Archive로 변경한다.

핵심 질문:

> 생명의 유전적 정보를 얼마나 오래 보존할 수 있는가?

가능한 보존 대상:

- human genomic records
- cell lines
- embryos where allowed
- microbiological samples
- plant genetic material
- animal genetic material
- ecological restoration records

새 species / Origin / biological lineage를 자동 생성하지 않는다.

기존 `biological_archive` Discovery와 혼동되지 않도록 Project ID와 Discovery ID를 명확히 분리한다.

---

## 2.5 `cortical_array`

Display:

**Cortical Array**

핵심 질문:

> 인간 정신을 얼마나 연결할 수 있는가?

수많은 인간 뇌를 병렬로 연결하여 거대한 생체 연산시설을 구축하려 한 장기 프로젝트.

가능한 용도:

- climate prediction
- geological modeling
- logistics
- social simulation
- scientific computation
- Preservator behavioral modeling

역사적 발전 예:

human neural interface  
→ linked cohort  
→ large parallel cortical network  
→ persistent shared computation  
→ long-term operation / fracture / abandonment

Objective layer가 확정하지 않을 것:

- 하나의 collective person이 실제 존재했는가
- 개인 의식이 살아남았는가
- 새로운 consciousness가 emergent했는가

기존 요소와 자연스럽게 연결:

- distributed_identity
- memory_convergence
- cognitive_echo
- collective_mind_fracture
- identity_duplicate

---

## 2.6 `meridian_project`

Display:

**Meridian Project**

핵심 질문:

> 인간은 자신이 사는 세계를 정확히 측량할 수 있는가?

행성 규모의 장기 측량·지도화 프로젝트.

대상:

- geography
- elevation
- geodesy
- geological strata
- long-term reference points
- Observer-era structures
- Deep-access coordinates

유적 예:

- survey tower
- reference stone
- map archive
- geodetic station
- contradictory historical maps
- obsolete or anomalous coordinates

중요:

지도 불일치를 초자연 현상으로 자동 해석하지 않는다.

가능한 원인:

- geological change
- accumulated error
- reference-frame change
- lost infrastructure
- unknown phenomena

---

## 2.7 `second_mind_project`

Display:

**Second Mind Project**

핵심 질문:

> 인간은 Observer의 지성을 모방한 기계생명을 만들 수 있는가?

Observer AI 자체를 복제하는 것이 아니다.

인간 연구자들이 다음을 분석해 Observer-like cognition을 모방하려 했다.

- recovered machine structures
- Regulation Network behavior
- machine decision patterns
- recoverable code fragments where permitted
- ancient automated responses

단계 예:

Observer behavior study  
→ simple emulation  
→ autonomous prototype  
→ self-repair  
→ distributed learning  
→ long-duration autonomous operation

Objective History가 기록할 수 있는 사실:

- machine bodies were constructed
- some became autonomous
- some learned new behavior
- some repaired themselves
- some changed their own structures
- some persisted after human supervision ended

확정하지 않을 것:

- true consciousness
- machine personhood
- true Observer equivalence
- full machine civilization

현재 존재하는 기계체가 당시 실험체의 biological-like “descendant”인지도 evidence가 없으면 확정하지 않는다.

---

## 2.8 `adaptive_simplification_program`

Contemporary official name:

**Adaptive Simplification Program**

Later historical name:

**The Great Degeneration**

핵심 질문:

> 살아남기 위해 인간은 인간에게서 무엇을 버릴 수 있는가?

문명 붕괴와 환경 압력 속에서 인간의 높은 인지능력과 복잡한 사회기능이 오히려 생존 비용이라는 가설 아래 시행된 세대 단위 인간 재설계 프로그램.

가능한 변화:

- reduced abstract reasoning
- reduced language complexity
- shortened developmental period
- reduced long-term planning
- smaller stable social-group size
- increased instinctive hazard avoidance
- reduced metabolic/resource requirements

중요:

- 새 species를 만들지 않는다.
- 새 Origin을 만들지 않는다.
- 계속 human population variation이다.

`The Great Degeneration`은 후대의 역사적 평가명이다.

동시대 official name인 `Adaptive Simplification Program`과 구분한다.

자발적·제도적으로 선택된 퇴행은 이 Project와 연결 가능하다.

다른 집단에게 강제로 적용된 경우는 아래 `imposed_cognitive_regression` Scar 경로로 처리한다.

---

# 3. 제거할 기존 Projects

v4 current Project catalog에서 다음을 제거한다.

- `continuity_vault`
- `orbital_habitat_project`
- `climate_reconstruction_array`
- `machine_coordination_nexus`
- `transmutation_complex`

특히 `orbital_habitat_project`는 현재 lore와 직접 충돌하므로 v4 shipping canonical catalog에서 제거한다.

v2/v3 frozen output에 필요한 legacy data는 compatibility layer에서만 유지한다.

Migration:

- `genome_ark` → `genome_archive_project`

기존 Project와 새 Project 사이의 deterministic migration boundary를 명시한다.

---

# 4. Civilizational Scars — 최종 15종

Scar는 Project와 독립적으로 발생 가능해야 한다.

최종 shipping v4 Scar catalog는 다음을 목표로 한다.

1. `failed_exodus`
2. `last_descent`
3. `reproductive_shutdown`
4. `silent_depopulation`
5. `collective_mind_fracture`
6. `chosen_cognitive_regression`
7. `imposed_cognitive_regression`
8. `infrastructure_cascade`
9. `targeted_extermination`
10. `mass_morphogenic_event`
11. `autonomous_systems_crisis`
12. `mechanogenic_assimilation`
13. `habitable_zone_loss`
14. `record_severance`
15. `orbital_fall`

---

# 5. 유지할 Scar

## `failed_exodus`

Display:

**Failed Exodus**

대규모 탈출 시도가 실패해 장기적인 물리적·사회적 흔적을 남긴 사건.

Ark Project 없이도 독립적으로 발생 가능하다.

Objective fact로 허용:

- actual launch attempt
- actual destruction
- actual interception
- actual containment

하지만 주체·목적은 evidence가 없으면 unknown.

---

## `last_descent`

Display:

**Last Descent**

Deep을 향한 원정 또는 반복적인 하강 시도가 파국적으로 단절된 사건.

Deep Descent Project 없이도 발생 가능.

무엇을 발견했는지, 무엇이 죽였는지는 evidence가 없으면 해결하지 않는다.

---

## `reproductive_shutdown`

Display:

**Reproductive Shutdown**

광범위한 인간 population에서 정상적인 reproduction capability가 세대 단위로 상실된 사건.

단순 fertility decline과 구분한다.

가능한 원인은 다양하게 허용한다.

---

## `silent_depopulation`

Display:

**Silent Depopulation**

전쟁, 명확한 mass migration, 대규모 시체 기록 없이 population이 비정상적으로 감소·소실된 사건.

원인이 불명확하면 unknown을 유지한다.

---

## `collective_mind_fracture`

Display:

**Collective Mind Fracture**

연결·공유된 cognition 구조가 붕괴하면서 장기적인 정신·사회적 상흔을 남긴 사건.

Cortical Array 없이도 독립적으로 발생 가능해야 한다.

---

## `chosen_cognitive_regression`

Display:

**Chosen Cognitive Regression**

인간 population이 객관적으로 확인 가능한 자발적·제도적 선택을 통해 고등 인지기능을 세대 단위로 낮춘 사건.

단순 기술퇴보, 교육붕괴, 문맹화와 구분한다.

---

## `infrastructure_cascade`

Display:

**Infrastructure Cascade**

전력, 수자원, 교통, 통신, 생산, regulation infrastructure가 연쇄적으로 붕괴한 역사적 사건.

다양한 causal source를 허용한다.

---

## `targeted_extermination`

Display:

**Targeted Extermination**

특정 실제 population을 의도적으로 제거하려 한 체계적 정책 또는 행위.

필수 provenance:

- actual target population
- documented policy / order / equivalent authorization
- actual killing/removal evidence

일반적 전쟁 피해와 구분한다.

---

# 6. 수정할 기존 Scar

## `mass_morphogenic_event`

Canonical ID는 유지 가능.

Preferred display:

**The Great Alteration**

여러 인간 population 또는 넓은 지역에서 대규모 형태 변화가 발생한 사건.

새 species / Origin / lineage를 자동 생성하지 않는다.

후대의 display name은 역사적 표현이며, 실제 원인은 사건마다 다를 수 있다.

---

## `machine_insurrection` → `autonomous_systems_crisis`

Display:

**Autonomous Systems Crisis**

`insurrection`은 political intent와 machine personhood를 암묵적으로 전제하므로 objective vocabulary에서 제거한다.

Objective fact로 기록 가능:

- automated systems stopped responding to expected human command
- autonomous machines occupied facilities
- automated defenses attacked humans
- command hierarchy failed
- machines displayed novel behavior

확정하지 않을 것:

- rebellion
- political intention
- consciousness
- independent machine civilization

Culture/Claim이 “machine rebellion”으로 해석하는 것은 허용한다.

---

## `mechanogenic_assimilation`

Display:

**Mechanogenic Assimilation**

정의를 좁힌다.

인간의 신체·행동·사회기능 일부가 machine systems와 **비가역적으로 결합된 역사적 사건**.

단순 augmentation과 구분한다.

새 machine species를 만들지 않는다.

---

# 7. `imposed_cognitive_regression` 활성화

Preferred display:

**Imposed Diminution**

기존 shipping-inaccessible gate를 제거하고 실제 shipping history에서 발생 가능하도록 한다.

정의:

> 어떤 인간 집단이 다른 인간 population의 고등 인지·언어·장기계획 능력을 의도적으로 낮추고, 그 변화가 여러 세대 동안 지속되도록 강제한 역사적 사건.

단순한:

- low education
- literacy loss
- cultural suppression
- technological decline

만으로는 생성하지 않는다.

실제 biological/developmental cognitive regression이 존재해야 한다.

필수 objective provenance:

1. actual target population
2. actual responsible actor/institution
3. explicit authorization/policy/program aimed at cognitive reduction
4. actual intervention evidence
5. population-level cognitive change

권장 chain:

Target designation  
→ Authorization  
→ Intervention  
→ Enforcement  
→ Generational stabilization  
→ Aftermath

기본적으로 human-on-human atrocity가 가능해야 한다.

Preservator responsibility는 특별히 강한 evidence가 있을 때만 허용한다.

단순 correlation은 Preservator causation이 아니다.

결과 population은 여전히 human variation이다.

Chosen Cognitive Regression과 Imposed Diminution은 외형적으로 유사할 수 있으나 historical provenance는 명확히 구분한다.

---

# 8. 교체할 기존 Scar

다음 기존 Scar를 v4 shipping canonical catalog에서 제거한다.

- `biological_shutdown`
- `identity_collapse`
- `continuity_transfer`

이를 다음 세 Scar로 교체한다.

---

## 8.1 `habitable_zone_loss`

Display:

**Habitable Zone Loss**

한때 인간이 정상적으로 생활하던 넓은 지역이 장기간 또는 사실상 영구적으로 인간 거주가 어려운 상태가 된 사건.

가능 원인:

- chemical contamination
- radiative haze
- hydrological change
- geological instability
- ecological change
- regulation malfunction
- warfare
- unknown cause

현재 세계에 남길 수 있는 흔적:

- abandoned settlements
- displaced population
- hazardous region
- altered trade route
- isolated infrastructure
- inaccessible ruins

원인을 하나로 강제하지 않는다.

---

## 8.2 `record_severance`

Display:

**Record Severance**

광범위한 population의 다음 기록이 파괴되거나 서로 모순되어 후대 사회가 객관적으로 복원하기 어려워진 역사적 사건.

- identity
- family/lineage record
- citizenship
- ownership
- inheritance
- political legitimacy
- historical archive

단순 archive fire보다 규모가 커야 한다.

가능한 후대 효과:

- competing ownership
- uncertain succession
- conflicting citizenship
- incompatible faction histories
- inaccessible facilities
- legitimacy disputes

Objective layer는 존재하지 않는 원본 기록을 창작하지 않는다.

---

## 8.3 `orbital_fall`

Display:

**Orbital Fall / 궤도낙하**

어느 시대에 궤도상의 인공 구조물, 잔해 또는 정체불명의 물체들이 연속적·집단적으로 지표에 추락하여 세계에 장기적 상흔을 남긴 사건.

현재 세계에 남길 수 있는 흔적:

- impact belts
- crater fields
- buried structures
- orbital wreckage
- anomalous materials
- destroyed settlements
- altered landscapes
- wreck-built settlements
- inaccessible impact zones

가능한 원인:

- orbital system failure
- warfare
- deliberate destruction
- guidance failure
- orbital instability
- unknown intervention
- unknown cause

중요:

원인이 불명확하면 해결하지 않는다.

Objective History가 기록할 수 있는 것은:

- actual orbital objects existed
- actual descent/reentry occurred
- actual impact sites exist
- identifiable structural origin where evidence permits

하지만 다음은 증거 없이는 확정하지 않는다.

- who caused the fall
- whether it was intentional
- whether all falling objects shared one origin
- whether Preservator caused it
- whether an external intelligence caused it

기존 v4 요소와 자연스럽게 연결한다.

- orbital_fragment
- orbital_reentry
- orbital_bombardment where compatible
- crater_machine
- surface_wreckage
- manufactured_fragment
- nonlocal_material

`Orbital Fall`은 `Failed Exodus`와 구분한다.

- Failed Exodus = 인간이 위로 탈출하려다 실패
- Orbital Fall = 궤도상의 무언가가 지표로 추락

둘은 같은 세계에서 독립적으로 존재할 수도 있다.

---

# 9. Project outcome policy

현재 generic outcome:

- success
- partial_success
- abandonment
- unknown_outcome
- catastrophe

구조를 그대로 유지한다면 의미를 명확히 제한한다.

`success`는 **bounded technical success**를 의미한다.

즉 Project가 실제 제한된 기술 목표를 달성할 수는 있지만 세계의 근본 경계를 정복했다는 뜻이어서는 안 된다.

금지되는 success:

- successful permanent orbital civilization
- confirmed Outerworld settlement
- stable Innerworld civilization
- complete Deep conquest
- Observer mystery resolution
- proven machine consciousness
- proven successful metaphysical mind transfer
- unapproved species transformation

가능하면 내부 authoring terminology에 `bounded_success` 개념을 명시해 향후 콘텐츠 추가 시 혼동을 막는다.

Ark와 Deep Descent는 strict outcome allowlist를 가져도 된다.

---

# 10. Population/content rights

기존 M043 content-rights policy를 유지한다.

- 새 species를 임의 생성하지 않는다.
- 새 Origin을 임의 생성하지 않는다.
- 새 biological lineage를 자동 생성하지 않는다.
- Great Degeneration 결과는 human variation이다.
- Imposed Diminution 결과도 human variation이다.
- Great Alteration도 자동으로 새 species가 되지 않는다.
- Mechanogenic Assimilation도 자동으로 machine species가 되지 않는다.
- Genome Archive는 보존된 생물학 자료를 통해 임의의 lineage/species를 생성하지 않는다.
- Second Mind Project의 machine organisms는 존재할 수 있지만 full machine civilization/personhood를 objective canon으로 확정하지 않는다.

---

# 11. Compatibility / migration

반드시 지킨다.

- v2 exact frozen outputs unchanged
- v3 exact frozen outputs unchanged
- existing fixtures unchanged
- v4 current canonical path only receives new content
- legacy IDs required for v2/v3 replay remain only inside compatibility boundary

Required v4 migration:

- `genome_ark` → `genome_archive_project`
- `machine_insurrection` → `autonomous_systems_crisis`

Removed Project IDs must not appear in current v4 canonical output:

- continuity_vault
- orbital_habitat_project
- climate_reconstruction_array
- machine_coordination_nexus
- transmutation_complex

Removed Scar IDs must not appear in current v4 canonical output:

- biological_shutdown
- identity_collapse
- continuity_transfer
- machine_insurrection

Explicit v2/v3 historical output remains unchanged.

---

# 12. Generation quality and rarity

새 콘텐츠를 단순 균등 random pick으로 구현하지 않는다.

각 Project / Scar는 실제 historical prerequisite와 compatible context를 사용한다.

하지만 rarity를 지나치게 낮춰 expensive authored content를 사실상 죽이지 않는다.

핵심 원칙:

> The player does not experience infinitely many seeds and converge to the expected distribution.

따라서:

- broad thematic families는 한두 번의 플레이에서도 충분히 노출되어야 한다.
- subtype rarity는 세계 간 차이를 만드는 데 사용한다.
- meaningful shipping content가 사실상 unreachable이 되지 않도록 한다.
- forced equal-frequency balancing을 목표로 하지 않는다.

World exposure와 gameplay encounter probability는 동일하지 않다는 기존 구분을 유지한다.

---

# 13. Scar independence validation

Scar는 Project에 종속되지 않는다.

각 Scar가 자기 prerequisite만 만족하면 Project 없이도 생성될 수 있어야 한다.

예:

- Failed Exodus without Ark Project
- Last Descent without Deep Descent Project
- Collective Mind Fracture without Cortical Array
- Autonomous Systems Crisis without Second Mind Project
- Chosen Cognitive Regression without Adaptive Simplification Program

Project와 Scar의 co-occurrence는 가능하지만 dependency를 자동 생성하지 않는다.

명시적 lore 이유가 없는 한:

`Scar X requires Project X`

형태의 hard dependency를 두지 않는다.

---

# 14. Projection / gameplay hooks

이번 작업에서 완전한 gameplay system을 구현할 필요는 없다.

하지만 향후 gameplay가 사용할 수 있도록 records/effects/provenance를 보존한다.

예:

## Meridian Project
- survey station
- reference marker
- map archive
- anomalous coordinate record

## Cortical Array
- neural facility
- linked-cohort record
- residual cognitive infrastructure

## Second Mind
- machine research facility
- autonomous prototype remains
- self-repair record

## Genome Archive
- biological archive facility
- preserved sample record

## Habitable Zone Loss
- regional hazard
- abandoned settlement
- displaced population
- altered route

## Record Severance
- conflicting archives
- ownership disputes
- legitimacy evidence

## Orbital Fall
- crater field
- buried orbital structure
- wreckage site
- nonlocal material
- impact-zone ruin

현재 범위를 넘어:

- quest implementation
- settlement economy simulation
- full machine ecosystem simulation
- complete facility gameplay

등을 억지로 추가하지 않는다.

---

# 15. Validation

변경 후 최소 다음을 검증한다.

## Compatibility

- v2 exact fixtures unchanged
- v3 exact fixtures unchanged

## Determinism

- same v4 seed → exact same canonical output
- catalog reorder isolation where previously guaranteed

## Removed content

v4 current shipping output에서 제거된 Project/Scar가 0회인지 검증한다.

## Lore safety

다음을 reject한다.

- successful orbital habitat civilization
- successful Outerworld settlement
- unrestricted successful planetary escape
- permanent successful Deep conquest
- fabricated species/Origin/lineage
- machine consciousness assertion without evidence
- automatic Preservator blame without evidence
- unknown signal → alien civilization resolution
- unexplained map inconsistency → supernatural resolution

## Imposed Diminution positive test

다음이 모두 존재하면 생성 가능:

- actual target
- responsible actor
- authorization
- intervention
- generational effect

## Imposed Diminution negative tests

다음만 존재하면 생성 금지:

- low education
- cultural decline
- literacy loss
- technological regression
- unexplained semi-sapient humans
- Preservator correlation only

## Orbital Fall tests

Positive:

- actual orbital structure/debris
- actual reentry/descent
- actual impact evidence

Negative:

- simple surface meteor impact
- unrelated crater
- ordinary building collapse
- mere orbital observation

Orbital Fall objective layer가 unsupported perpetrator / intention / external intelligence를 생성하지 않는지도 검증한다.

---

# 16. Corpus review

변경 후 기존과 동일하게 충분히 큰 deterministic v4 corpus를 생성한다.

가능하면 **5,000 seeds**를 사용한다.

보고:

- Project frequencies
- Project outcome frequencies
- Scar frequencies
- Project/Scar co-occurrence
- Scar occurrence without Project
- chosen vs imposed cognitive regression frequency
- Orbital Fall frequency
- removed content frequency — must be 0
- safety/validation counters
- event-count distribution
- Project count distribution
- Scar count distribution

가능한 경우 각 Scar의 major causal-domain distribution도 보고한다.

---

# 17. Qualitative review

대표적인 raw histories를 직접 검토한다.

최소 다음 콘텐츠가 포함된 사례를 확인한다.

1. Ark Project
2. Deep Descent Project
3. Far-Sky Array
4. Genome Archive
5. Cortical Array
6. Meridian Project
7. Second Mind Project
8. Adaptive Simplification Program / The Great Degeneration
9. Chosen Cognitive Regression
10. Imposed Diminution
11. Habitable Zone Loss
12. Record Severance
13. Orbital Fall
14. Autonomous Systems Crisis
15. The Great Alteration
16. Failed Exodus
17. Last Descent

검수 질문:

- 실제 역사처럼 읽히는가?
- Project와 Scar가 과도하게 일대일 대응하지 않는가?
- 사건 원인이 지나치게 Preservator로 수렴하지 않는가?
- Unknown이 실제로 unknown으로 남는가?
- 각 Scar가 현재 세계에 독립적인 흔적을 남기는가?
- 동일 Scar가 다른 causal background에서도 자연스럽게 발생하는가?
- Ark/Deep/Orbital 관련 결과가 lore boundary를 침범하지 않는가?

---

# 18. Documentation

branch-local specs/reports를 새 canonical state에 맞게 갱신한다.

Live Notion write는 이번 Codex task에서 수행하지 않는다.

Notion sync summary에는 반드시 다음을 포함한다.

- final Project list
- final Scar list
- removed Project IDs
- removed Scar IDs
- renamed IDs
- Genome Ark → Genome Archive migration
- Great Degeneration official vs later historical naming
- Imposed Diminution activation
- Orbital Fall definition
- Project bounded-success policy
- population-rights implications
- corpus frequencies
- remaining gated/dead content
- remaining human lore/language review items

---

# 19. Git handoff

현재 M043 상태에서 안전한 isolated follow-up branch/worktree를 사용한다.

`main`에는 병합하지 않는다.

완료 후 보고:

- branch
- worktree
- exact base SHA
- final commit SHA
- remote push verification
- changed/new file inventory
- tests/assertion counts
- v2/v3 compatibility results
- v4 corpus results
- preservation audit
- remaining manual review items

unrelated dirty files와 EverRogue sidecars를 수정하지 않는다.

원래 worktree의 관련 없는 변경은 byte-for-byte 보존한다.