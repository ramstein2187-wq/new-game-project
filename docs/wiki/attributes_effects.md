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
StatCatalog는 여섯 primary와 MOVEMENT_SPEED ID만 정의하고 modifier validation을 담당한다.
AbilityScores는 여전히 primary 값/배분을 담당한다.
M031은 movement_speed를 연결했고, baseline `005c7a6`은 raw resolved CON으로 Max HP를
연결했다. M033 작업 브랜치는 여섯 primary 중 authored governing 하나를 실제 공격의
명중/피해에 연결하고 defender의 기존 DEX 난이도에 resolved DEX를 사용한다.
Weapon Action은 선택적 ability_rule_override로 자기 행동의 governing rule만 바꾼다.
Attack/Character Inspector는 Actor의 같은 query-time modifier breakdown을 읽는다.

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

Body 부상, 공격/방어 수식, AI, Scheduler tie 규칙은 기존 구현을 유지한다.
Primary Effects는 governing modifier와 defender DEX 입력을 바꾸지만, PER가 자동으로
일반 Accuracy를 올리거나 INT가 AI 정책을 개선하지 않는다. CON/HP 공식·최종 round·
최소1·damage 보존·사망 후 비부활도 유지한다. Detection/interaction/resistance는 deferred다.
Global Quickness, DEX 전체 속도, duration/stacking, Skill/Trait/Thought 시스템은 없다.

[설계 결정](../decisions/attributes_effects.md),
[M031 검증/이동표](../milestones/M031_attributes_effects_foundation.md).
