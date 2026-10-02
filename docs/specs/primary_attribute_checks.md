+++
status = "구현 중"
areas = ["코어", "전투"]
type = "알고리즘"
systems = "PrimaryAttributeCheck / Actor / AttackDefinition"
milestones = "M033"
code_paths = ["game/combat/primary_attribute_check.gd", "game/actors/actor.gd", "game/combat/attack_definition.gd", "game/time_cost_game.gd"]
+++
# Primary Attribute Runtime Check

Primary Attribute는 STR/DEX/CON/PER/INT/WIL 여섯 개이며 관할 의미는
Force/Execution/Endurance/Awareness/Understanding/Control이다.

```text
authored primary
   + optional explicit alternate
              ↓
PrimaryAttributeCheck
   → resolved_stat(primary/alternate)
   → choose exactly one
   → AbilityScores.modifier(int(score))
              ↓
existing gameplay formula
```

한 판정은 primary modifier 하나만 소비한다. alternate는 authored rule이 명시한
경우에만 허용하고, 두 modifier를 합산하지 않는다. alternate가 더 높을 때만
대체하며 동률은 authored primary를 유지한다. movement_speed 같은 non-primary는
이 resolver에 들어갈 수 없다.

현재 직접 STR/DEX 공격은 해당 resolved primary를 사용하고, best_str_dex는
STR primary + DEX explicit alternate로 해석한다. defender difficulty는 resolved
DEX 하나를 쓴다. 기존 수식과 RNG 순서는 유지한다. DEX/Execution은 movement_speed,
initiative 또는 전체 action cost를 자동 변경하지 않는다.
