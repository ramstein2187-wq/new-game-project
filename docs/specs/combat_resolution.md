+++
status = "구현 완료"
areas = ["전투", "코어"]
type = "알고리즘"
systems = "D20 hit / damage dice / hit location / armor / damage"
milestones = "M017, M018, M024, M027"
code_paths = ["game/combat/combat_rules.gd", "game/time_cost_game.gd", "game/actions/attack_action.gd", "game/combat/combat_content_catalog.gd"]
diagram = "docs/diagrams/combat_resolution.svg"
+++
# 근접 전투 판정 알고리즘 상세

## 전체 흐름

공격 capability/손 수 유효성 → 기본 비용 1000 × 선택 Weapon Action 배율 → D20 명중 → 피격 부위 → 피해 주사위 + 능력 수정치 → 선택 부위 단일 방어층의 profile 배율 × armor → penetration 차감 → 부위 integrity → 전체 HP → 사망 순서다.

플레이어, Rat, 신규 몬스터와 M023 simulator가 모두 `AttackAction -> TimeCostGame.perform_action() -> CombatRules/Body -> CombatEvent -> TimeScheduler` 경로를 사용한다.

## 명중과 피해

- 명중: `d20 + ability modifier + proficiency + situation >= 10 + target DEX modifier`.
- 피해: `DamageDice 합 + 같은 공격의 relevant ability modifier`, 최소 0.
- Proficiency는 명중에만 들어가며 피해에 더하지 않는다.
- Finesse는 STR/DEX modifier 중 높은 쪽을 명중과 피해에 함께 사용한다.
- 자연 1/20 예외와 Critical Hit은 없다.

`AttackDefinition`은 공격 ID, 피해 주사위, Cut/Puncture/Blunt, 관통, 능력 규칙, required capability와 수를 소유한다. `WeaponDefinition`은 이를 조합하고 손 수와 properties를 기록한다. 일반 공격 시간은 무기에 없다. M027의 `WeaponActionDefinition`은 기본 공격에 type/penetration/damage/situation 변경과 cost multiplier만 제공하며 독립 공격 전체를 복제 저장하지 않는다.

## Capability와 부상

특정 `right_arm` 이름이 아니라 실제 body part의 capability로 공격 가능 여부를 판정한다. 한손 무기는 가장 효율이 높은 한 부위를 선택하므로 반대 팔로 대체할 수 있다. 무기 사용 요구량은 `WeaponDefinition.required_hands`에서 유도하고 무기 정의의 기존 attack count 불일치는 invalid다. Maul은 `weapon_manipulation x2`를 요구한다. 장비 보유와 사용 가능 여부는 별개이므로 팔 기능 상실은 장비를 제거하지 않는다. Bite와 Claw는 각자 capability를 사용한다.

선택된 필수 부위 중 하나라도 damaged면 기존 situation -2를 사용한다. 새로운 연속형 부상 공식은 추가하지 않았다.

## 피격 부위와 방어구

명중 후 body-part weight 누적 분포로 한 부위를 선택한다. disabled 부위도 물리적으로 존재하므로 피격 가능하고 weight 0은 제외된다.

선택 부위에는 한 armor value만 존재한다.

- `adjusted_armor = round(armor × profile_multiplier(profile, damage_type))`
- `effective = clamp(adjusted_armor - penetration, 0, 200)`
- Full% = `min(effective / 2, 100)`
- Partial% = `min(effective / 2, 100 - Full%)`
- 나머지는 Bypass.
- Full: 피해 0.
- Partial: `ceil(raw_damage / 2)`, Cut/Puncture/Blunt 모두 Blunt로 변환.
- Bypass/Unarmored: raw 피해와 유형 유지.

자연 방어와 장비 방어가 같은 판정을 사용한다. `ArmorDefinition.profile`과 `ActorDefinition.natural_armor_profile`은 등록된 profile ID를 참조한다. 현재 제공되는 초기 프로파일은 SOFT/MAIL/RIGID지만 닫힌 enum이 아니며, 배율 데이터는 `ArmorProfileCatalog`에 모여 있다. 프로파일이 특정 damage type 값을 생략하면 ×1.0으로 처리한다. 따라서 이후 profile이나 damage type을 추가할 때 기존 방어구 전부를 수정할 필요가 없다. [M027 결정과 표](../decisions/physical_combat_weapon_actions.md)를 참조한다. 제공된 콘텐츠는 같은 부위에 두 층을 겹치지 않는다.

## RNG 순서

1. D20.
2. 명중하면 hit location.
3. damage dice.
4. 선택 부위에 armor가 있으면 armor roll.
5. 피해 적용.

Full Block이어도 damage dice는 먼저 소비된다. 이 순서는 자동 테스트로 고정된다.

## CombatEvent 데이터

공격/무기/Weapon Action ID와 이름, cost multiplier/최종 비용, 필요 capability/기능성 개수/efficiency, 원래·최종 피해 유형, base armor/profile/modifier/effective armor, ability와 modifier, proficiency, situation, D20/total/difficulty/hit, body part, dice 식과 각 roll, raw/final damage, damage type/penetration, armor value/result, 부위 전후 integrity/state, 남은 HP와 defeated를 구조적으로 보존한다.

## 현재 경계

Critical, 비물리 피해 유형, 출혈/독/장기/절단, 다층·내구 방어구, 무기 내구도, 인벤토리/전리품, 원거리, multiattack, dual wield, versatile, 최종 Speed 공식과 최종 Threat Rating은 별도 범위다.

## M029 콘텐츠 로딩 경계 (작업 브랜치)

`.tres` 콘텐츠 → `catalog.tres` 참조 목록 → 중복 ID/잘못된 참조/정의 검증 →
외부 리소스를 포함한 전체 복제 → 기존 ActorDefinition/WeaponDefinition → 위 전투 경로.
공격·피해·스케줄러의 순서와 수치는 변경하지 않는다. Rat도 동일한 원본에서 로드하며
기존 팩터리 API는 wrapper로 유지한다. 문서 JSON은 같은 정의로부터 생성하고,
Notion sync 전에 생성 fingerprint를 검증한다. [데이터 흐름과 경계](../decisions/combat_content_authoring.md).
