+++
status = "구현 완료"
areas = ["UI/로그", "코어", "전투", "시간/액션"]
milestones = "M032 — task branch"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/character-overview-v1/docs/milestones/M032_character_overview.md"
icon = "🧾"
+++
# Character Screen · Overview

M032 `codex/character-overview-v1`에서 구현한 read-only presentation이다.
main 병합과 수동 플레이 승인은 별도다. F5 생성 맵과 F6 fixed room에서 **C**로
열고 C/Esc/Close로 닫는다. 열려 있는 동안 gameplay 및 debug 변경 입력을 막으며,
turn simulation을 별도로 pause하지 않는다.

기본 화면은 Identity, 여섯 Primary Attribute STR/DEX/CON/PER/INT/WIL,
현재/최대 HP, Main Attack/Damage/Penetration, Average Armor, cardinal standard
Move Time, 실제 body 손상과 기존 active Effects만 보여준다. Body/Equipment/
Abilities/Traits 탭은 비활성 navigation이며 실제 화면은 아직 없다.
현재 player는 원래의 `You / Human` identity를 사용한다. 이 combat prototype은
sprite 대신 원을 그리므로 새 portrait pipeline이나 가짜 identity를 만들지 않았다.

주요 값은 **기본 결과 → hover 빠른 설명 → click/Enter Inspector 상세 출처**로
읽는다. `›` 표시와 pointer, hover/focus 테두리로 inspectable임을 표현한다.
Inspector는 값/제목/본문을 받는 재사용 가능한 UI이며 Actor를 소유하지 않는다.
Tab/Enter/Space로 값 선택이 가능하다. 1080p/1440p/4K에서 세 영역을 유지하고,
좁은 창에서는 세로로 배치한다. 전체 내용 및 Inspector는 필요한 경우 스크롤한다.

Average Armor는 `BodyInstance.average_armor_breakdown()`에서
**Σ(max(0, part.weight) / 실제 weight 합 × max(0, part.armor))**로 조회한다.
`select_part()`와 동일하게 손상/disabled 부위도 포함하며 weight 0은 기여하지 않는다.
무장갑 sentinel -1은 0, 전체 weight 0/빈 body는 0이다. 기본 화면은 소수 한 자리,
Inspector는 각 부위 확률/장갑/weighted contribution/armor 출처를 설명한다.
Penetration, Damage Type, armor profile 및 특정 공격자는 계산에 들어가지 않는다.

Move Time은 `MoveAction(Vector2i.RIGHT).cost_breakdown()`을 읽으며 destination
유효성 검사는 하지 않는다. 불능 이동은 0 μt 대신 Unavailable로 표시한다.
Inspector는 M031 resolver의 단계, Effect provenance, 최종 ceil/minimum을 설명한다.

능력치는 `Actor.stat_breakdown()`의 resolved 값을 표시한다. Modifier는 기존
`AbilityScores.modifier(int(value))`이며 소수 점수는 기존 int API 경계에서 버린다.
**M031에서 primary attribute Effects는 아직 combat에 연결되지 않았다.** 공격은
실제 combat이 사용하는 base AbilityScores/ability_for/proficiency/부상 situation을
설명하며, Inspector도 이 차이를 명시한다. 독립 Accuracy/Attack Bonus/Dodge stat은
없다. Attack Bonus는 기본 공격의 설명/hover 안에서만 기존 판정 구성으로 제시한다.

화면은 open/선택/host refresh 때 현재 runtime을 다시 읽는다. HP/stat/armor 캐시,
게임플레이 상태 복사본, modifier 재계산, live Effect Resource 참조는 없다.
EffectStore 공개 격리 snapshot을 잠시 읽고 UI에는 scalar 값만 전달한다.
사망, reset, 생성 맵 regeneration 이후에도 현재 Actor를 읽는다.

자동 query/input/layout 검증 및 실제 렌더 캡처는 수동 가독성/플레이 승인과 다르다.
Balance, exported package, live Notion mirror 검증은 이번 작업 범위 밖이다.

[알고리즘/ownership 상세](../specs/character_overview.md),
[작업 기록/수동 검증](../milestones/M032_character_overview.md).
