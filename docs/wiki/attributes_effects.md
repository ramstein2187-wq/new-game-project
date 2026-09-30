+++
status = "구현 완료"
areas = ["코어", "시간/액션", "전투"]
milestones = "M031 — task branch"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/m031-attributes-effects-foundation/docs/milestones/M031_attributes_effects_foundation.md"
icon = "🧩"
+++
# 능력치 · Modifier · Effect 기반

M031 task branch에서 구현했다. main 통합과 수동 플레이 평가는 별도다.

현재 능력치는 STR/DEX/CON/PER/INT/WIL이며 기본 10, 12점 배분, 기존 modifier
공식을 유지한다. ActorDefinition에는 직접 이동비용 대신 movement_speed가 있다.
현재 모든 Actor의 healthy/부상 이동비용은 이전 결과를 보존한다.

StatModifier와 ActionCostModifier는 source, 대상, ADD/MULTIPLY, 값을 가진 Resource다.
최종 ownership은 Actor → EffectStore → ActiveEffect → GameplayEffectDefinition이다.
Definition은 authored static Resource, ActiveEffect는 Actor별 적용 instance와 source_id,
EffectStore는 ownership/mutation/결정적 계산/snapshot 경계를 담당한다.
Actor의 add/remove/has/clear API를 통해 변경한다. Definition ID당 하나만 허용하며
source가 달라도 중복 삽입을 거부한다. 삽입 시 Definition을 격리 복사하고,
active_effects()는 기존 Definition snapshot, active_effect_instances()는 provenance를
포함한 안전한 instance snapshot을 제공한다. live Resource 반환 helper는 없다.
질의는 Store 내부 참조를 읽어 계산하며 Resource deep-copy나 resolved cache가 없다.
StatCatalog는 여섯 primary와 MOVEMENT_SPEED ID만 정의하고 modifier validation을 담당한다.
AbilityScores는 여전히 primary 값/배분을 담당한다.
실제 gameplay 연결은 movement_speed이며 primary stat 질의는 향후 확장을 위한 API다.

Action 비용은 base → Weapon Action 배율 → 이동 speed/Body → 외부 modifier →
최종 ceil → 최소 1 순서다. MOVE/ATTACK/MELEE/INTERACT/WAIT/PHYSICAL 태그의
필요한 조합만 제공한다. Wait는 PHYSICAL이 아니다. ADD 후 MULTIPLY, effect ID와
선언 순서로 결정적으로 적용한다. Cost/stat breakdown은 기존 source(수식 이름)와
effect_id(Definition ID)를 유지하고 source_id(예: skill:rapid_strike)를 추가해 origin을 구분한다.
기존 호출자의 기본 origin은 system이다. 계산 값과 순서는 유지한다.

Body 부상, 공격/방어, AI, Scheduler tie 규칙은 기존 구현을 유지한다.
Global Quickness, DEX 전체 속도, duration/stacking, Skill/Trait/Thought 시스템은 없다.

[설계 결정](../decisions/attributes_effects.md),
[M031 검증/이동표](../milestones/M031_attributes_effects_foundation.md).
