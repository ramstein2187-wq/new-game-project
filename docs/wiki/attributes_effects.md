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
GameplayEffectDefinition 하나가 여러 modifier를 제공하며 Actor에 명시적으로 추가/제거한다.
ID당 한 개만 허용하고 사본을 소유한다. resolved stat을 저장하지 않고 질의마다 계산한다.
실제 gameplay 연결은 movement_speed이며 primary stat 질의는 향후 확장을 위한 API다.

Action 비용은 base → Weapon Action 배율 → 이동 speed/Body → 외부 modifier →
최종 ceil → 최소 1 순서다. MOVE/ATTACK/MELEE/INTERACT/WAIT/PHYSICAL 태그의
필요한 조합만 제공한다. Wait는 PHYSICAL이 아니다. ADD 후 MULTIPLY, effect ID와
선언 순서로 결정적으로 적용한다. Cost/stat breakdown에서 source와 각 계산 결과를 조회한다.

Body 부상, 공격/방어, AI, Scheduler tie 규칙은 기존 구현을 유지한다.
Global Quickness, DEX 전체 속도, duration/stacking, Skill/Trait/Thought 시스템은 없다.

[설계 결정](../decisions/attributes_effects.md),
[M031 검증/이동표](../milestones/M031_attributes_effects_foundation.md).
