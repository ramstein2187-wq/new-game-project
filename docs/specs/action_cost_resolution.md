+++
status = "구현 완료"
areas = ["시간/액션", "코어"]
type = "알고리즘"
systems = "ActionCostResolver / StatResolver"
milestones = "M031 (task branch)"
code_paths = ["game/actions/action_cost_resolver.gd", "game/effects/", "game/actors/actor.gd"]
diagram = "docs/diagrams/action_cost_resolution.svg"
+++
# Action 비용 · Stat 해석

![비용 해석](../diagrams/action_cost_resolution.svg)

M031 task branch의 query API다. main 통합은 별도다.
`actor.stat_breakdown(stat)`은 base와 effect ADD/MULTIPLY를 해석한다.
`action.cost_breakdown(game, actor_id)`는 `get_cost`와 같은 경로다.
결과는 저장/cache하지 않는다. 조회는 RNG, event, 시간을 소비하지 않는다.

Ownership은 Actor → EffectStore → ActiveEffect → GameplayEffectDefinition이다.
StatResolver는 Store 계산에 delegate하고, ActionCostResolver는 Actor를 통해 값만 받는다.
Store 내부에서 live Definition/modifier를 읽으며 외부로 raw 참조를 반환하지 않는다.
삽입 시 격리 복사, 공개 조회 시 깊은 snapshot, 계산 시 Resource 복사 없음.
같은 Definition ID는 source가 달라도 한 instance만 허용한다. add/remove/clear 직후
다음 query는 새 상태를 계산한다. StatCatalog의 정확히 7개 ID만 modifier 대상이다.

## 비용 순서

1. Action base: Move 직선 1000/대각선 1400, melee 1000, Interact 500, Wait 1000.
2. intrinsic Weapon Action cost_multiplier.
3. Move는 resolved movement_speed와 기존 Body locomotion_efficiency로 나눈다.
4. 필요한 tags를 모두 만족하는 외부 비용 modifier: ADD 후 MULTIPLY.
5. 한 번 ceil 후 최소 1. 정수 경계의 8 machine-epsilon 이내 부동소수 오차만
   최종 단계에서 정수로 맞춘다. 중간 반올림은 없다.
6. 기존 perform_action이 정수 cost를 Scheduler에 전달한다.

각 modifier family에서 ADD 먼저/MULTIPLY 다음, effect ID 사전순, 각 effect
배열 선언순으로 계산한다. 빈 selector는 거부한다. MOVE/PHYSICAL,
ATTACK/MELEE/PHYSICAL, INTERACT/PHYSICAL, WAIT만 있다. Wait는 PHYSICAL이 아니다.

## 계산 근거 예

| source | operation | value | result |
| --- | --- | ---: | ---: |
| move:cardinal | BASE | 1000 | 1000 |
| movement_speed | DIVIDE | 1.3333333333333333 | 750 |
| body:locomotion | DIVIDE | 0.75 | 1000 |
| travel (effect) | MULTIPLY | 0.8 | 800 |
| final_rounding | CEIL | 800 | 800 |
| minimum_cost | MAX | 1 | 800 |

speed step에 species base와 stat modifier의 nested breakdown이 있다.
모든 step은 source, operation, value, result를 가지며 effect step은 effect_id도 있다.
Effect step의 추가 source_id는 ActiveEffect origin(예: skill:rapid_strike)이다.
effect_id는 Definition identity, 기존 source는 authored modifier label이다.
source_id는 계산/정렬에 사용하지 않으며 기존 breakdown 필드와 순서는 유지한다.
비용 결과에는 valid/cost/unrounded, stat 결과에는 valid/stat/base/value가 있다.
event schema는 바꾸지 않는다.

## 거부와 한계

없는 Actor, invalid intrinsic, 비양수 speed/Body 효율, 비유한 값,
최종 절대값 > 2^31-1은 valid=false/cost=0/reason으로 반환한다.
거부된 Action은 기존 pipeline에서 시간/RNG/event를 소비하지 않는다.
Body 불능을 최소 1로 되살리지 않는다. Effect 제거는 다음 query에 반영된다.
비용 query는 legality 전체를 검사하지 않는다. 실제 실행은 can_execute/차례를
먼저 검증한다. 새 gameplay 연결은 movement_speed뿐이다.
[설계/미룬 기능](../decisions/attributes_effects.md).
