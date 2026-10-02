+++
status = "구현 완료"
areas = ["UI/로그", "코어", "전투", "시간/액션"]
milestones = "M032 / M033 / M034"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M032_character_overview.md"
icon = "🧾"
+++
# Character Screen · Overview

M032는 `codex/character-overview-v1`에서 시작해 adaptive Inspector follow-up을 거쳐
PR #36으로 main에 통합된 read-only presentation이다. 수동 플레이/가독성 승인은 별도다. F5 생성 맵과 F6 fixed room에서 **C**로
열고 C/Esc/Close로 닫는다. 열려 있는 동안 gameplay 및 debug 변경 입력을 막으며,
turn simulation을 별도로 pause하지 않는다.

기본 화면은 Identity, 여섯 Primary Attribute STR/DEX/CON/PER/INT/WIL,
현재/최대 HP, Main Attack/Damage/Penetration, Average Armor, cardinal standard
Move Time, 실제 body 손상과 기존 active Effects만 보여준다. Body/Equipment/
Abilities/Traits 탭은 비활성 navigation이며 실제 화면은 아직 없다.
현재 player는 원래의 `You / Human` identity를 사용한다. 이 combat prototype은
sprite 대신 원을 그리므로 새 portrait pipeline이나 가짜 identity를 만들지 않았다.

주요 값은 **기본 결과 → hover 빠른 설명 → click/Enter Inspector 상세 출처**로
읽는다. 화면을 처음 열면 Inspector는 닫혀 있고 Identity + Overview가 가용 폭을 모두
사용한다. row를 선택하면 Inspector가 열리며 넓은 화면에서는 Overview와 Inspector가
약 1.7:1로 폭을 나눈다. Inspector의 Close는 선택 표시를 해제하고 Overview가 다시
전체 폭을 회수한다. C/Esc는 기존처럼 Character Screen 전체를 닫는다.

각 inspectable row는 `Label / Optional Hint / Final Value`를 분리한다. Attribute row는
한 줄짜리 dense/flat list로 표시하며 label wrapping을 금지한다. 넓은 화면에서는
Strength/Dexterity/Constitution/Perception/Intelligence/Willpower를 쓰고, 좁은
화면에서는 STR/DEX/CON/PER/INT/WIL 약어로 전환한다. Hint/Final 열은 능력치에 맞게
좁게 유지해 이름 영역을 우선 확보한다. Hint에는 resolved score에서 계산한 기존 D20
Ability Modifier만 둔다. 즉 Hint는 Effect 변화량이 아니다. HP/공격/방어/이동 등은
의미 있는 Hint가 아직 없으므로 빈 열을 유지하고 Final Value만 보여준다. Current State는
기본 화면에서 Healthy 또는 condition 개수로 요약하고 세부 body/effect 목록은 Inspector에 둔다.
능력치 row의 평상시 card 테두리는 숨기고 hover/press/focus와 `›`, pointer, 조용한
선택 marker로 inspectable임을 표현한다.
Inspector는 값/제목/본문을 받는 재사용 가능한 UI이며 Actor를 소유하지 않는다.
Inspector의 signed modifier 수치만 저채도 초록(양수)/빨강(음수)으로 표시한다.
0/+0/-0은 기존 중립색, 최종 Attack Bonus/Damage/resolved stat/Move Time은 더 밝은
중립 강조를 사용한다. +/- 부호와 라벨은 유지하며 라벨이나 행 전체를 색칠하지 않는다.
Inspector의 Resolved 능력치, Attack Bonus, Damage, 최종 Move Time 앞에는 중립색
구분선 한 줄을 표시하여 modifier breakdown과 최종 결과를 구분한다.
HP/armor/penetration/weight/확률/base/divisor/중간 결과 및 modifier pool 합계는
양수라는 이유로 초록색이 되지 않는다. Attribute/Effect FLAT·PERCENT와 공격의
ability/proficiency/situation, nested movement-speed Effect만 같은 sign 규칙을 쓴다.
비용 delta도 숫자 부호 기준으로 표시하며, 유불리 판정을 새로 계산하지 않는다.
색상은 InspectorNumberStyle 한 곳에 정의한다. 표현 모델의 text/tone span을
RichTextLabel로 렌더링하며 출처 이름은 BBCode로 해석하지 않는다. 기존 plain body와
기본 hover tooltip은 그대로 유지한다. [표현 개선 작업 기록](../reviews/2026-09-30-character-modifier-tones.md).
Tab/Enter/Space로 값 선택이 가능하다. 1080p/1440p/4K에서는 Inspector가 열렸을 때
가로 분할하고, 좁은 창에서는 Overview 내부와 Inspector를 세로로 배치한다. 전체 내용 및
Inspector는 필요한 경우 스크롤한다.

Average Armor는 `BodyInstance.average_armor_breakdown()`에서
**Σ(max(0, part.weight) / 실제 weight 합 × max(0, part.armor))**로 조회한다.
`select_part()`와 동일하게 손상/disabled 부위도 포함하며 weight 0은 기여하지 않는다.
무장갑 sentinel -1은 0, 전체 weight 0/빈 body는 0이다. 기본 화면은 소수 한 자리,
Inspector는 각 부위 확률/장갑/weighted contribution/armor 출처를 설명한다.
Penetration, Damage Type, armor profile 및 특정 공격자는 계산에 들어가지 않는다.

Move Time은 `MoveAction(Vector2i.RIGHT).cost_breakdown()`을 읽으며 destination
유효성 검사는 하지 않는다. 불능 이동은 0 μt 대신 Unavailable로 표시한다.
Inspector는 M031 resolver의 단계, Effect provenance, 최종 ceil/minimum을 설명한다.

M034 task branch의 Health는 Actor.hp / Actor.max_hp / Actor.max_hp_breakdown을
그대로 읽는다. Inspector는 Base HP, CON/Endurance의 base와 Effect 단계/출처,
resolved CON, HP 기여율, 최종 Max HP를 설명한다. UI에는 HP 계산식이나 캐시가 없다.
최대치 변경은 받은 피해량을 보존하며 감소로 사망할 수 있고 이후 증가로 부활하지 않는다.
[HP 공식과 상태 정책](../specs/con_max_hp.md). 기존 Overview 범위와 입력 동작은 유지한다.

능력치는 `Actor.stat_breakdown()`의 resolved 값을 표시한다. Modifier는 기존
`AbilityScores.modifier(int(value))`이며 소수 점수는 기존 int API 경계에서 버린다.
M033 task branch부터 공격도 같은 resolved primary 경로를 사용한다. 각 판정은
Primary Attribute 하나만 소비하며, `best_str_dex`처럼 규칙이 alternate를 명시한
경우에만 더 높은 modifier의 능력치 하나를 선택한다. 두 modifier를 합치지 않는다.
STR/DEX/CON/PER/INT/WIL의 관할 의미는 Force/Execution/Endurance/Awareness/
Understanding/Control이며 Inspector에서 현재 공격 능력치의 domain을 함께 설명한다.
DEX/Execution은 `movement_speed`와 분리되어 Move Time을 자동 변경하지 않는다.
독립 Accuracy/Attack Bonus/Dodge stat은 없다. Attack Bonus는 기본 공격의
설명/hover 안에서만 기존 판정 구성으로 제시한다.

화면은 open/선택/host refresh 때 현재 runtime을 다시 읽는다. HP/stat/armor 캐시,
게임플레이 상태 복사본, modifier 재계산, live Effect Resource 참조는 없다.
EffectStore 공개 격리 snapshot을 잠시 읽고 UI에는 scalar 값만 전달한다.
사망, reset, 생성 맵 regeneration 이후에도 현재 Actor를 읽는다.

자동 query/input/layout 검증 및 실제 렌더 캡처는 수동 가독성/플레이 승인과 다르다.
Balance, exported package, live Notion mirror 검증은 이번 작업 범위 밖이다.

[알고리즘/ownership 상세](../specs/character_overview.md),
[작업 기록/수동 검증](../milestones/M032_character_overview.md).
