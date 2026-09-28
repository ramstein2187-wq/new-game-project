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

TR-v1 draft는 **중립 arena calibration** 단계다. M023의 paired side-swap과 M024의 실제 피해 주사위·무기·방어구·10개 신규 hostile prototype을 이용해 M025에서 Rat 포함 11종 전체 round-robin을 측정한다. universal rating은 `neutral_open_v1`에서 산출하며, 두 독립 표본 총 44,000 encounter에서 stall/error가 없었다. 현재 `simulation_score`와 provisional Bradley-Terry rating은 저장하지만 final Threat Rating은 아직 null이다.

## 평가 요소

- 명중 확률, 방어 후 기대 피해, 공격 시간 비용과 관통
- HP, 방어구, 신체 부위와 기능 중복성
- 직선/대각선 이동 비용과 접근 능력
- AI 정책, aggression/fear, 특수 Action과 상태효과
- production 전투 시뮬레이션의 실제 승패·피해·행동 수·시간·기능 상실

## 측정 원칙

정적 데이터는 초기 prior와 sanity check로만 사용하고, Rating은 M022/M023 production 시뮬레이터로 보정한다. `side_swap_v1`은 동일 seed에서 A/B의 scheduler·slot을 교환하고 combatant identity 기준으로 결과를 다시 합산한다. M025의 `neutral_open_v1`은 외곽 경계와 고정 시작 거리만 유지하고 문·내부 장애물·특수 지형을 제거한다. 승패와 별도로 hit/miss, armor outcome, 실제 피해, body-part disable, slot별 성능을 기록한다. AI는 production policy를 그대로 사용하며 revision을 결과와 함께 기록한다.

## 데이터 기록

각 결과는 모델 버전, arena, AI policy revision, 기준 상대, run 수, seed 범위, 정적/시뮬레이션 근거를 함께 남긴다. 전투 데이터·규칙·AI 행동이 실질적으로 달라지면 영향을 받는 Threat evidence를 다시 측정한다.

## M024 측정 상태

Feral Dog/Wolf, Raider/Giant Beetle, Raider/Armored Raider를 각각 20 paired seed로 실행해 총 120 encounter에서 오류와 stall이 없고, damage dice·armor outcome·body disable metric이 기록됨을 확인했다. 이 표본은 밸런스 확정에 사용하지 않는다.

## M025 초기 측정

첫 pass는 기존 닫힌 문이 있는 테스트룸을 사용했으나 Boar–Giant Crab 분석에서 first-contact timing이 크게 왜곡됨을 확인해 rating 근거에서는 제외했다. 현재 `neutral_open_v1`의 roster-relative 성능은 Rat < Feral Dog < Cave Lizard < Giant Spider≈Raider < Wolf < Giant Beetle < Boar < Giant Crab < Feral Ape < Armored Raider 순이다. 이 평균 승률 자체는 로스터가 바뀌면 변할 수 있다.

## Bradley-Terry TR-v1 초안

M025는 neutral pairwise 승패 전체를 regularized Bradley-Terry 모델로 피팅한다. 첫 200 paired seed block을 calibration, 두 번째 독립 block을 validation으로 사용했으며 두 피팅 모두 8회 반복 안에 수렴했다. 임시 Elo 호환 점수는 Rat 약 214, Wolf 약 989, Giant Beetle 약 1110, Boar 약 1134, Giant Crab 약 1388, Feral Ape 약 1496, Armored Raider 약 1731이다. validation에서 모든 점수는 20점 이내로 재현되었다.

점수 차이 400은 약 90.9% 예상 1:1 승률이라는 확률적 의미를 갖는다. 현재 1000은 roster-centered 임시 원점이다. 최대 pair residual은 calibration 0.079, validation 0.084 정도로, legacy room의 약 0.17보다 크게 줄었다. residual은 완벽히 제거해야 할 오류가 아니라 상성·행동 특성 진단 자료로 보존한다.

## 현재 경계

최종 절대 원점, 통계적 불확실성 계산과 encounter cost 변환은 아직 확정되지 않았다. AI는 향후 계속 개선될 수 있으며, material behavior change 때 revision을 올리고 affected ratings를 재측정하는 것을 정상 workflow로 본다. 따라서 `final_threat_rating`은 null을 유지한다. 자세한 알고리즘은 docs/specs/threat_rating.md가 원본이다.
