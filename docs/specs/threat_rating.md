+++
status = "프로토타입"
areas = ["시뮬레이션", "전투", "AI"]
type = "알고리즘"
systems = "Threat Rating / CombatBatchRunner"
milestones = "M023, M025"
code_paths = ["time_cost/simulation/combat_batch_runner.gd", "time_cost/combat/combat_rules.gd", "time_cost/ai/rat_tactics.gd"]
diagram = "docs/diagrams/threat_rating.svg"
+++
# 몬스터 Threat Rating 모델 — TR-v1 draft

![Threat Rating TR-v1 draft](../diagrams/threat_rating.svg)

## 목적

플레이어 레벨에 맞춰 몬스터를 자동 스케일하지 않고, 각 몬스터가 **자기 데이터와 실제 전투 성능에 기반한 내부 위협도**를 갖게 한다.

TR-v1 draft는 아직 최종 절대 점수 체계가 아니라 **버전된 측정 계약 + provisional rating 모델**이다. 몬스터 종류와 플레이어 성장 구조가 더 굳기 전에 임의 절대 기준을 고정하지 않으며, `final_threat_rating`은 비워 둔다.

M023에서 이 계약의 첫 실행 기반이 구현되었다. `CombatBatchRunner.run_matchup()`은 임의의 유효한 `ActorDefinition` 두 개를 production combat에 주입하고, 동일한 seed 집합으로 A→B와 B→A side swap을 수행한 뒤 결과를 다시 combatant identity 기준으로 합산한다. slot A/B 성능은 별도 지표로 남겨 현행 player-priority scheduler와 고정 방 구조의 편향을 관찰한다.

## 1. 정적 특징 벡터

각 몬스터에서 최소 다음 특징을 추출한다.

### 공격
- 기준 상대에 대한 D20 명중 확률.
- 명중 시 방어구 결과를 반영한 기대 피해.
- 공통 Normal Melee Action cost와 향후 Actor Speed/alternate Action에 따른 공격 템포. M024 weapon 자체는 speed를 소유하지 않는다.
- 관통과 피해 유형.

개념적으로:

`expected_damage_per_attack = hit_probability × expected_damage_after_armor`

`offense_rate = expected_damage_per_attack × reference_time / action_cost`

단, 기준 상대의 DV/방어구가 정해져야 실제 비교값이 되므로 현재는 원시 특징을 먼저 저장한다.

### 생존
- global HP.
- 피격 부위 weight와 integrity.
- 방어구에 따른 기대 피해 감소.
- 중요한 기능 부위가 손상/disabled될 때 전투력이 얼마나 빨리 떨어지는지.
- 신체 구조가 제공하는 기능 중복성.

### 기동성
- 직선/대각선 이동 비용.
- 부상 후 locomotion 저하.
- 실제 경로 접근성과 특수 이동 능력.

### 행동 · 특수성
- 공격 이외의 Action 후보.
- 제어, 회복, 소환, 상태이상 같은 비선형 효과.
- AI 정책이 성능에 미치는 영향.
- aggression/fear 같은 동적 성향.

## 2. 정적 점수는 prior이지 최종값이 아니다

정적 특징은 빠른 sanity check와 새 몬스터의 초기 예상값에 쓴다. 그러나 서로 다른 신체 구조, 특수 행동, AI가 결합되면 단순 합산으로 실제 난이도를 설명하기 어렵다.

따라서 **정적 점수만으로 Threat Rating을 확정하지 않는다.**

## 3. Production 시뮬레이션 보정

M022의 원칙을 유지한다.

- 실제 `TimeAction`, AI, `TimeScheduler`, `CombatRules`를 사용한다.
- 별도 간이 전투 규칙을 만들지 않는다.
- simulation error와 stalled를 승패에서 분리한다.

Threat 측정에서는 다음 계약을 사용한다.

1. **Side swap** 또는 동등한 대칭화를 수행한다. M023의 `side_swap_v1`은 동일 combatant pair를 양쪽 scheduler/room slot에 한 번씩 배치한다.
2. 하나의 상대가 아니라 여러 기준 상대/구성을 사용한다. **아직 후속 작업이다.**
3. 동일한 seed 집합을 비교군에 재사용한다. M023 paired batch가 이를 보장한다.
4. 승패뿐 아니라 실제 피해, 행동 수, world time, hit/miss, armor outcome, body-part disable transition을 함께 기록한다.
5. 지형·거리·장비 조건을 모델 버전과 함께 고정한다. M025 universal calibration은 `neutral_open_v1`을 사용한다: 기존 기본 시작 위치 `(2,3)` / `(8,3)`, 외곽 경계만 유지, 내부 장애물 없음, 닫힌 문 없음, 특수 지형 없음.
6. AI도 측정 대상의 일부이므로 policy revision을 결과와 함께 기록한다. 현재 `rat_tactics_v1`, `basic_melee_v1`을 사용하며, 행동을 실질적으로 바꾸는 AI 수정은 revision을 올리고 영향을 받는 TR 근거를 재측정한다.

Side swap은 slot/초기 위치 비대칭을 줄이고 편향을 수치로 드러내기 위한 프로토콜이다. `neutral_open_v1`은 여기에 더해 문·병목·장애물 같은 전술적 맥락을 universal TR에서 의도적으로 통제한다. 그런 환경은 실제 게임에서 플레이어와 AI가 활용할 전술 요소이며, 필요하면 별도의 contextual experiment로 측정한다.

## 4. Bradley-Terry 보정과 Rating 스케일

M025에서는 `neutral_open_v1`의 전체 pairwise 결과를 하나의 일반 전투력 축으로 압축하기 위해 regularized Bradley-Terry 모델을 사용한다.

`P(A > B) = sigmoid(theta_A - theta_B)`

각 `theta`는 latent combat strength다. 0%/100% 승률이 있는 matchup에서도 무한대로 발산하지 않도록 `lambda = 1.0` L2 regularization을 적용한다. 피팅은 Newton iteration으로 수행한다. 현재 neutral calibration의 두 독립 200-paired-seed block은 모두 8회 안에 수렴했다.

사람이 읽기 쉬운 임시 점수는 Elo와 같은 확률 의미를 갖도록 다음으로 변환한다.

`bt_rating = 1000 + theta * 400 / ln(10)`

따라서 rating 차이 400은 10:1 odds, 즉 강한 쪽 약 90.9% 예상 승률을 뜻한다. 현재 1000은 roster 평균을 맞춘 **임시 원점**이며 final TR의 절대 기준은 아니다. 추후 immutable benchmark profile이 절대 원점을 고정한다.

최종 숫자 원점과 benchmark는 아직 미정이다.

후속 보정에서는 다음 순서를 권장한다.

1. `neutral_open_v1`에서 대칭 batch를 돌려 pairwise 성능 행렬을 얻는다.
2. regularized Bradley-Terry로 일반 전투력 축과 matchup residual을 얻는다.
3. 정적 특징이 실제 성능을 얼마나 설명하는지 비교한다.
4. 설명되지 않는 차이를 신체/특수 행동/AI component로 추적한다.
5. AI가 바뀌면 policy revision을 올리고 영향을 받는 표본을 재측정한다.
6. 플레이어 성장과 encounter 설계가 충분히 굳은 뒤에만 benchmark anchor, uncertainty와 최종 Threat/encounter-cost mapping을 고정한다.

즉 **Threat Rating은 게임 디자인 입력값이 아니라, 데이터 + 측정에서 파생되는 버전된 값**으로 취급한다.

## 5. 기록 계약

각 Threat 기록은 최소한 다음을 남긴다.

- monster ID.
- model version.
- static score.
- simulation score.
- final rating.
- baseline.
- run count와 seed 범위.
- 공격/생존/행동 근거.
- 측정상의 주의점.

숫자가 아직 검증되지 않았다면 0을 쓰지 않고 **null**로 둔다. 0은 실제로 위협이 없다는 의미가 될 수 있기 때문이다.

## M025 초기 보정 상태

Rat과 M024 신규 hostile 10종에 대해 11종 전체 round-robin을 두 독립 seed block으로 측정했다. 첫 pass는 legacy fixed room을 사용했지만 Boar–Giant Crab 분석에서 닫힌 문이 first-contact timing과 승률을 크게 바꾸는 것이 확인되어 rating 근거에서 제외하고 diagnostic history로만 보존한다.

현재 기준은 `neutral_open_v1`이다. 두 독립 200-paired-seed block, 전체 44,000 encounter에서 stall과 simulation error는 0이었다. calibration/validation BT fit은 모두 8회에 수렴했고 모든 provisional rating이 20점 이내로 재현되었다. 최대 절대 pair residual은 0.0791 / 0.0844로, legacy room의 약 0.17보다 크게 감소했다. `simulation_score`는 neutral arena에서 현재 고정 11종 calibration roster의 나머지 10종을 상대로 한 평균 decisive win rate다.

이 값들은 여전히 최종 TR이 아니다. 현재 1000 원점은 roster-centered이며, benchmark anchor와 encounter-cost 변환은 플레이어 성장/조우 설계가 더 굳은 뒤 결정한다. 상세 표본은 `docs/reviews/2026-09-28-m025-neutral-calibration-pass2.md`를 참조한다.

## 현재 한계

현재 11종 neutral pairwise 표본과 regularized Bradley-Terry prototype은 확보했다. 단일 strength 축의 최대 pair residual은 약 0.08 수준이며 residual은 상성/행동 특성 진단 데이터로 보존한다. AI는 아직 초기 `rat_tactics_v1` / `basic_melee_v1` 단계이므로 향후 전술 AI 개선에 따라 rating이 변하는 것은 정상이며, revision을 통해 재현성과 비교 가능성을 유지한다. 정식 통계적 불확실성, final scale의 절대 원점, encounter-cost 변환은 아직 구현되지 않았다.
