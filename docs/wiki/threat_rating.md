+++
status = "부분 구현"
areas = ["시뮬레이션", "전투", "AI"]
milestones = "M023"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/specs/threat_rating.md"
icon = "📈"
+++
# 몬스터 Threat Rating

## 목적

플레이어 레벨에 맞춰 적을 자동 스케일하지 않고, 각 몬스터의 실제 전투 데이터와 행동 특성에서 **버전된 내부 위협도**를 산출하기 위한 시스템이다.

## 현재 상태

TR-v0는 **초기 calibration** 단계다. M023의 paired side-swap과 M024의 실제 피해 주사위·무기·방어구·10개 신규 hostile prototype을 이용해 M025에서 Rat 포함 11종 전체 round-robin을 측정했다. 두 독립 표본, 총 44,000 encounter에서 stall/error가 없었고 상대적 순위가 재현되었다. 현재 `simulation_score`는 저장하지만 final Threat Rating은 아직 null이다.

## 평가 요소

- 명중 확률, 방어 후 기대 피해, 공격 시간 비용과 관통
- HP, 방어구, 신체 부위와 기능 중복성
- 직선/대각선 이동 비용과 접근 능력
- AI 정책, aggression/fear, 특수 Action과 상태효과
- production 전투 시뮬레이션의 실제 승패·피해·행동 수·시간·기능 상실

## 측정 원칙

정적 데이터는 초기 prior와 sanity check로만 사용하고, 최종 Rating은 M022/M023 production 시뮬레이터로 보정한다. M023의 `side_swap_v1`은 동일 seed에서 A/B의 scheduler·방 slot을 교환하고 combatant identity 기준으로 결과를 다시 합산한다. 승패와 별도로 hit/miss, armor outcome, 실제 피해, body-part disable, slot별 성능을 기록한다. 여러 기준 상대와 기준 플레이어 프로필은 후속 작업이다.

## 데이터 기록

각 결과는 모델 버전, 기준 상대, run 수, seed 범위, 정적/시뮬레이션 근거를 함께 남긴다. 모델이 달라지면 같은 몬스터도 별도 Threat 기록으로 보존한다.

## M024 측정 상태

Feral Dog/Wolf, Raider/Giant Beetle, Raider/Armored Raider를 각각 20 paired seed로 실행해 총 120 encounter에서 오류와 stall이 없고, damage dice·armor outcome·body disable metric이 기록됨을 확인했다. 이 표본은 밸런스 확정에 사용하지 않는다.

## M025 초기 측정

현재 roster-relative `simulation_score` 순서는 Rat < Feral Dog < Cave Lizard < Raider < Giant Spider < Wolf < Giant Beetle < Boar < Giant Crab < Feral Ape < Armored Raider다. 이 값은 현 로스터 평균 승률이므로 로스터가 바뀌면 변할 수 있다.

## Bradley-Terry TR-v1 초안

M025는 pairwise 승패 전체를 regularized Bradley-Terry 모델로 피팅한다. 첫 200 paired seed block을 calibration, 두 번째 독립 block을 validation으로 사용했으며 두 피팅 모두 7회 반복 안에 수렴했다. 임시 Elo 호환 점수는 Rat 약 264, Wolf 약 1000, Boar 약 1167, Giant Crab 약 1283, Feral Ape 약 1590, Armored Raider 약 1671이다. validation에서 모든 점수는 24점 이내로 재현되었다.

점수 차이 400은 약 90.9% 예상 1:1 승률이라는 확률적 의미를 갖는다. 다만 현재 1000은 roster-centered 임시 원점이다. 또한 Boar vs Giant Crab처럼 실제 승률과 단일 strength 축의 예측이 약 0.17까지 어긋나는 matchup이 있어 residual을 상성/특수 상호작용의 증거로 별도 보존한다.

## 현재 경계

고정 benchmark profile, 최종 절대 원점, 통계적 불확실성 계산과 encounter cost 변환은 아직 확정되지 않았다. 따라서 `final_threat_rating`은 null을 유지한다. 자세한 알고리즘은 docs/specs/threat_rating.md가 원본이다.
