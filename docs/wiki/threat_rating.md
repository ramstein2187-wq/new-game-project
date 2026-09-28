+++
status = "설계"
areas = ["시뮬레이션", "전투", "AI"]
milestones = "M022 후속"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/specs/threat_rating.md"
icon = "📈"
+++
# 몬스터 Threat Rating

## 목적

플레이어 레벨에 맞춰 적을 자동 스케일하지 않고, 각 몬스터의 실제 전투 데이터와 행동 특성에서 **버전된 내부 위협도**를 산출하기 위한 시스템이다.

## 현재 상태

TR-v0는 **설계 단계의 측정 계약**이다. 현재 Rat에는 Threat 기록이 연결되지만 최종 Threat Rating 숫자는 아직 null이다. 검증되지 않은 값을 문서 편의를 위해 임의로 넣지 않는다.

## 평가 요소

- 명중 확률, 방어 후 기대 피해, 공격 시간 비용과 관통
- HP, 방어구, 신체 부위와 기능 중복성
- 직선/대각선 이동 비용과 접근 능력
- AI 정책, aggression/fear, 특수 Action과 상태효과
- production 전투 시뮬레이션의 실제 승패·피해·행동 수·시간·기능 상실

## 측정 원칙

정적 데이터는 초기 prior와 sanity check로만 사용하고, 최종 Rating은 M022 계열 production 시뮬레이터로 보정한다. Threat용 측정에서는 side swap 또는 동등한 대칭화와 여러 기준 상대가 필요하다.

## 데이터 기록

각 결과는 모델 버전, 기준 상대, run 수, seed 범위, 정적/시뮬레이션 근거를 함께 남긴다. 모델이 달라지면 같은 몬스터도 별도 Threat 기록으로 보존한다.

## 현재 경계

최종 스케일, component weight, 표준 기준군, side-swap batch와 통계적 불확실성 계산은 아직 확정되지 않았다. 자세한 알고리즘은 docs/specs/threat_rating.md가 원본이다.
