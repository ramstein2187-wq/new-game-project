+++
status = "구현 완료"
areas = ["전투", "코어"]
type = "상태 모델"
systems = "BodyTemplate / BodyInstance / capability"
milestones = "M017"
code_paths = ["time_cost/combat/body_template.gd", "time_cost/combat/body_instance.gd", "time_cost/combat/combat_species.gd"]
diagram = "docs/diagrams/body_injury.svg"
+++
# 신체 부위 · 부상 · 기능 효율 상세

![신체 부위와 기능 효율](../diagrams/body_injury.svg)

## 부위 상태

각 부위는 maximum/current integrity를 가진다.

- current <= 0: disabled, 기본 효율 0.
- 0 < current <= maximum×0.5: damaged, 기본 효율 0.5.
- 그보다 큼: healthy, 기본 효율 1.

자기 자신이 살아 있어도 parent chain 중 하나가 disabled면 실제 효율은 0이다.

## Locomotion

`capability("locomotion")`은 locomotion 기능을 가진 원래 모든 부위의 효율 평균이다.

`actual_move_cost = ceil(base_move_cost / locomotion_efficiency)`

현재 예시:

- Human 한 다리 damaged: 평균 0.75 → 직선 1334 / 대각선 1867.
- Rat 한 다리 damaged: 평균 0.875 → 직선 858 / 대각선 1200.
- 효율이 0이면 이동 자체가 불가능하다.

## 공격 부위

Actor 생성 시 species의 attack capability를 가진 부위를 attack part로 바인딩한다.

- Human: weapon_manipulation → 현재 선언 순서상 right arm.
- Rat: bite → head.

공격 부위 효율이 0.5면 명중 situation -2, 0이면 공격 불가다. 현재 다른 팔로 자동 전환하지 않는다.

## Human 템플릿

Torso integrity 40 / weight 45 / armor 100. Head 20/15. 양팔 20/10 weapon_manipulation. 양다리 25/10 locomotion.

## Rat 템플릿

Torso 16/45/armor100. Head 8/15/bite. Foreleg 두 개 각 6/10/locomotion. Hindleg 두 개 각 8/10/locomotion. Tail 4/0.

## 현재 한계

절단, 출혈, 통증, 의수/의족, vital organ, 장비 슬롯, offhand fallback과 런타임 신체 변형은 없다.
