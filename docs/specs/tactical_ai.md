+++
status = "구현 완료"
areas = ["AI", "전투"]
type = "알고리즘"
systems = "RatTactics / TacticalPlanner"
milestones = "M015, M018, M019"
code_paths = ["time_cost/ai/rat_tactics.gd", "time_cost/ai/tactical_choice.gd", "time_cost/ai/tactical_planner.gd"]
diagram = "docs/diagrams/tactical_ai.svg"
+++
# 설명 가능한 전술 AI 알고리즘 상세

![설명 가능한 전술 AI](../diagrams/tactical_ai.svg)

## 구조

`RatTactics`가 후보를 만들고 `TacticalPlanner`가 합법 후보 중 최고 점수를 선택한다. 실행은 공통 Action 파이프라인에 맡긴다.

## Fear

`fear = max(0, round((max_hp - hp) × 120 / max_hp) + fear_bonus)`

HP가 줄수록 fear가 커지고 같은 Actor의 행동 선호가 달라진다.

## 현재 후보 점수

- Attack: `100 + aggression/2 - fear`.
- Approach: `70 + aggression/2 - fear`.
- 닫힌 문 열기: `80 + aggression/2 - fear`.
- Retreat: `15 + fear×2 - aggression/2`.
- Wait: base 0 fallback.

Retreat는 fear > 0이고 실제로 target과의 squared distance를 늘리는 합법적인 8방향 칸이 있을 때만 생성된다.

## Planner

null, `can_execute=false`, cost<=0 후보를 제거한 뒤 가장 높은 score를 고른다. 점수가 같으면 후보 배열에서 먼저 나온 후보가 이겨 결정성을 유지한다.

선택된 reasons, factors, score, 고려 후보 목록과 `visible_cue`를 Action에 복사하고 CombatEvent까지 보존한다.

## 설명 가능성

내부 utility 점수 자체를 플레이어에게 그대로 보여주지는 않는다. 대신 retreat 같은 observable cue와 player log가 같은 원인 데이터에서 파생될 수 있게 보존한다.

## 현재 한계

시야/청각, faction, 기억, 협력, 위험 지형, 스킬 cooldown, 장기 목표와 utility normalization은 아직 없다.
