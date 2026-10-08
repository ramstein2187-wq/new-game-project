+++
status = "구현 완료"
areas = ["코어", "시간/액션", "전투"]
milestones = "M031 / M033 / M034 / M046"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/m031-attributes-effects-foundation/docs/milestones/M031_attributes_effects_foundation.md"
icon = "🧩"
+++
# 능력치 · Modifier · Effect 기반

M031 task branch에서 구현했다. main 통합과 수동 플레이 평가는 별도다.

현재 능력치는 STR/DEX/CON/PER/INT/WIL이며 기본 10, 12점 배분, 기존 modifier
공식을 유지한다. ActorDefinition에는 직접 이동비용 대신 movement_speed가 있다.
Effect가 없는 현재 모든 Actor의 healthy/부상 이동비용은 이전 결과를 보존한다.

StatModifier와 ActionCostModifier는 source, 대상, FLAT/PERCENT, 값을 가진 Resource다.
작은 독립 ModifierOperation.Kind enum을 공유한다. Percent는 +0.20 = +20% delta다.
최종 ownership은 Actor → EffectStore → ActiveEffect → GameplayEffectDefinition이다.
Definition은 authored static Resource, ActiveEffect는 Actor별 적용 instance와 source_id,
EffectStore는 ownership/mutation/결정적 계산/snapshot 경계를 담당한다.
Actor의 add/remove/has/clear API를 통해 변경한다. Definition ID당 하나만 허용하며
source가 달라도 중복 삽입을 거부한다. 삽입 시 Definition을 격리 복사하고,
active_effects()는 기존 Definition snapshot, active_effect_instances()는 provenance를
포함한 안전한 instance snapshot을 제공한다. live Resource 반환 helper는 없다.
질의는 Store 내부 참조를 읽어 계산하며 Resource deep-copy나 resolved cache가 없다.
M046은 문자열 사전순 scalar ID 배열만 캐시한다.
성공한 add/remove와 clear 후 다음 조회에서 재구축하며 실패한 변경은 무효화하지 않는다.
내부 배열은 read-only이고 공개 snapshot은 계속 깊은 복사다. modifier 선언 순서는 유지한다.
StatCatalog는 여섯 primary와 MOVEMENT_SPEED ID만 정의하고 modifier validation을 담당한다.
AbilityScores는 여전히 primary 값/배분을 담당한다.
M031에서는 실제 gameplay 연결이 movement_speed뿐이었고 primary stat 질의는 확장 API였다.
M033 task branch에서는 primary runtime check를 연결한다. STR/DEX/CON/PER/INT/WIL의
관할 의미는 각각 Force/Execution/Endurance/Awareness/Understanding/Control이다.
판정은 resolved primary 하나의 modifier만 소비하고, 명시적으로 alternate가 선언된
경우에만 둘 중 하나를 선택한다. 둘을 더하지 않는다. 현재 best_str_dex 무기가 첫
명시적 alternate 사례다. 공격/피해와 방어측 DEX difficulty는 이 공통 경로를 사용한다.
movement_speed는 primary가 아니며 DEX/Execution과 계속 분리된다.

Stat 공식은 **Base × (1 + Σ Percent) + Σ Flat**이다. Percent들은 서로 합산하고
base에만 적용한다. STR 10, +20%, +30%, flat +2는 17이다. movement_speed도 같다.
FLAT은 Percent로 증폭되지 않는다. Breakdown은 BASE → PERCENT → FLAT 및 totals를 보인다.

Action 공식은 **Adjusted Base × (1 + Σ Percent) + Σ Flat**이다.
Move는 base / movement_speed / Body로 adjusted base를 먼저 계산한다.
Weapon Action cost_percent와 external percent는 같은 pool에 합산하고 flat을 더한다.
마지막 한 번 ceil → 최소 1이다. MOVE/ATTACK/MELEE/INTERACT/WAIT/PHYSICAL 태그의
필요한 조합만 제공한다. Wait는 PHYSICAL이 아니다. 두 계산 모두 각 phase에서 문자열 effect ID와
선언 순서로 결정적으로 적용한다. Cost/stat breakdown은 기존 source(수식 이름)와
effect_id(Definition ID)를 유지하고 source_id(예: skill:rapid_strike)를 추가해 origin을 구분한다.
기존 호출자의 기본 origin은 system이다. Cost는 adjusted_base/percent_total/flat_total/
unrounded/rounded/final cost까지 보여준다. 기존 Weapon Action은 old value - 1로 migrate해
단독 750/1250/1500/1750 시간을 보존했다. Percent/cost cap은 없고 -100% 이하 cost는
최종 minimum 1을 쓴다. 비양수 이동 speed는 Move를 거부한다.
Action-time 조절은 rare/legible/strong 기믹을 위한 기반이며 일반 성장 보너스로 전제하지 않는다.

Body 부상, AI, Scheduler tie 규칙은 기존 구현을 유지한다.
M046의 get_cost는 동일한 authoritative 계산의 설명 생성만 끈다. Move stat 및 외부
Action Cost Modifier까지 flag를 전달해 비용 설명용 step/배열/nested stat trace를 생략한다.
cost_breakdown은 기존 상세 필드·중간값·provenance·실패 reason을 유지하며 Overview/
Inspector는 이 상세 경로를 계속 사용한다. 기존 Body 효율의 생존 확인에서 발생하는
HP/CON 설명 조회는 유지한다. 결과값 캐시나 별도 숫자 수식은 추가하지 않는다.
[M046 내부 경로와 무효화 규칙](../specs/action_cost_resolution.md).
공격/방어의 수식과 RNG 순서는 유지하되 primary modifier 입력만 resolved 공통 경로로
통일한다. Global Quickness, DEX 전체 속도, duration/stacking,
Skill/Trait/Thought 시스템은 없다.

M034 `codex/con-hp-scaling-integration`에서는 CON/Endurance를 명시적인 Max HP
derived mechanic에 연결했다. `max(1, round(Base HP × (1 + 0.05 × (resolved CON − 10))))`이며
Human Base HP는 30이다. ActorDefinition.max_hp는 content Base HP, Actor.max_hp는
기존 CON resolver에서 조회한 runtime 값이다. 판정용 ability modifier로 바꾸거나
primary_attribute_check를 재사용하지 않는다. Effect Flat/Percent는 기존 CON 계산을
거쳐 HP에 반영된다. 받은 피해량을 보존해 최대치 증가/감소만큼 현재 HP도 바뀌고,
감소로 사망할 수 있지만 이후 증가로 자동 부활하지 않는다. 기존 배분/reset API도
같은 정책을 사용한다. [HP 결정/정책](../decisions/con_max_hp.md),
[상태/공식 상세](../specs/con_max_hp.md). main 통합과 수동 평가는 별도다.

[설계 결정](../decisions/attributes_effects.md),
[M031 검증/이동표](../milestones/M031_attributes_effects_foundation.md).
