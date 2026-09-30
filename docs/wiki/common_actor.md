+++
status = "구현 완료"
areas = ["코어", "전투", "AI"]
milestones = "M019, M024"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M019_common_actor.md"
icon = "👥"
+++
# 공통 Actor · 다중 NPC

## 개요

플레이어와 NPC가 공통 Actor 소유 구조를 사용하도록 일반화하고 실제 플레이 장면에 여러 NPC를 배치한 단계다.

## 현재 구조

Actor 단위로 능력치, 신체, active `AttackDefinition`, weapon ID, AI, 위치, facing 등 상태를 분리하고 `ActorRegistry`가 개체를 관리한다. 공유 `ActorDefinition`은 species/body template, proficiency, movement_speed와 prototype loadout을 제공하며, 각 Actor는 전투 튜닝과 부상이 서로 누출되지 않도록 runtime 사본을 가진다.

## 기본 생성 장면

M031 task branch에서는 직접 이동비용을 movement_speed로 교체하며,
능력치는 STR/DEX/CON/PER/INT/WIL이다. Actor는 active effect 사본을 소유하고
base/resolved 값을 질의로 구분한다. [Modifier/Effect](attributes_effects.md).

기본 generated scene은 플레이어와 번호가 붙은 Rat 3마리를 사용한다. 작은 맵에서는 가능한 수만큼 배치하고 reset 시 구성된 roster를 복원한다.

## 검증 상태

M019는 main에 통합되어 자동 검증을 통과했다. 다만 3-NPC 장면의 수동 pacing/readability 평가는 별도 후속 확인 항목이다.

## 다음 확장

faction/controller, perception, target memory, companion 등은 이 Actor 구조 위에서 확장할 후보들이다.
