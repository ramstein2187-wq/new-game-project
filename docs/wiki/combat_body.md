+++
status = "구현 완료"
areas = ["전투"]
milestones = "M017"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/milestones/M017_combat_body_phase1.md"
icon = "🎯"
+++
# D20 전투 · 신체 · 방어구

## 개요

D20 명중, 능력치, 신체 부위, 부상, 1계층 방어구를 기존 Action/시간 시스템에 연결한 1차 전투 모델이다.

## 공격 흐름

기존 입력/AI → `perform_action` 검증 → `AttackAction` → D20 판정 → 가중 신체 부위 선택 → 선택적 1계층 방어구 판정 → 부위 손상과 HP 감소 → 기존 로그/스케줄러/사망 처리.

유효한 피격 부위를 찾지 못하면 안전하게 피해 0으로 끝난다.

## 신체와 기능

공격 능력은 특정 이름의 팔을 하드코딩하기보다 기능을 가진 실제 body part 인스턴스에 연결된다. 공격 기능이 손상되면 상황 수정치가 붙고 locomotion 부위들의 상태는 이동 비용에도 영향을 준다.

## 현재 경계

절단, 의수/의족, 다중 무기/오프핸드, 조준, 상처 유형/치유, 다층 방어구, 영속 저장은 후속 범위다.
